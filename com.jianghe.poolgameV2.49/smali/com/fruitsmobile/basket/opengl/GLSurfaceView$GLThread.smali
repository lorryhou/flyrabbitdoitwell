.class Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fruitsmobile/basket/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mHasFocus:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;

.field private mRequestRender:Z

.field private mSafeMode:Z

.field private mShouldExit:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .param p2, "renderer"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 969
    iput-object p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    .line 970
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1340
    iput-boolean v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mSafeMode:Z

    .line 971
    iput v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 972
    iput v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 973
    iput-boolean v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 974
    iput v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 975
    iput-object p2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRenderer:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;

    .line 976
    return-void
.end method

.method static synthetic access$902(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;
    .param p1, "x1"    # Z

    .prologue
    .line 968
    iput-boolean p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1005
    new-instance v10, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;

    iget-object v11, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    invoke-direct {v10, v11}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;-><init>(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)V

    iput-object v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;

    .line 1006
    iput-boolean v12, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1007
    iput-boolean v12, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1009
    const/4 v5, 0x0

    .line 1010
    .local v5, "gl":Ljavax/microedition/khronos/opengles/GL;
    const/4 v1, 0x0

    .line 1011
    .local v1, "createEglSurface":Z
    const/4 v7, 0x0

    .line 1012
    .local v7, "sizeChanged":Z
    const/4 v9, 0x0

    .line 1013
    .local v9, "wantRenderNotification":Z
    const/4 v2, 0x0

    .line 1014
    .local v2, "doRenderNotification":Z
    const/4 v8, 0x0

    .line 1015
    .local v8, "w":I
    const/4 v6, 0x0

    .line 1016
    .local v6, "h":I
    const/4 v3, 0x0

    .line 1017
    .local v3, "event":Ljava/lang/Runnable;
    const/4 v4, 0x0

    .line 1019
    .local v4, "framesSinceResetHack":I
    :cond_0
    :goto_0
    :try_start_0
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1021
    :goto_1
    :try_start_1
    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v10, :cond_1

    .line 1022
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1169
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v10

    monitor-enter v10

    .line 1170
    :try_start_2
    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1171
    iget-object v11, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v11}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1172
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v11

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 1025
    :cond_1
    :try_start_3
    iget-object v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1026
    iget-object v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/Runnable;

    move-object v3, v0

    .line 1109
    :goto_2
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1111
    if-eqz v3, :cond_e

    .line 1112
    :try_start_4
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1113
    const/4 v3, 0x0

    .line 1114
    goto :goto_0

    .line 1031
    :cond_2
    :try_start_5
    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v10, :cond_3

    .line 1032
    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1036
    :cond_3
    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v10, :cond_5

    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v10, :cond_5

    .line 1037
    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v10, :cond_4

    .line 1038
    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1040
    :cond_4
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1041
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 1045
    :cond_5
    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v10, :cond_6

    .line 1046
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1047
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 1050
    :cond_6
    if-eqz v2, :cond_7

    .line 1051
    const/4 v9, 0x0

    .line 1052
    const/4 v2, 0x0

    .line 1053
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1054
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 1058
    :cond_7
    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v10, :cond_d

    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v10, :cond_d

    iget v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v10, :cond_d

    iget v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v10, :cond_d

    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v10, :cond_8

    iget v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v10, v13, :cond_d

    .line 1062
    :cond_8
    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v10, :cond_9

    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v10, :cond_9

    .line 1064
    iget-object v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v10}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->verifyContext()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1065
    iget-object v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v10}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1066
    iget-object v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRenderer:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;

    invoke-interface {v10}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;->onSurfaceLost()V

    .line 1067
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1071
    :cond_9
    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-nez v10, :cond_a

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->tryAcquireEglSurfaceLocked(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1072
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1073
    iget-object v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v10}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->start()V

    .line 1075
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 1078
    :cond_a
    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v10, :cond_b

    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v10, :cond_b

    .line 1079
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1080
    const/4 v1, 0x1

    .line 1081
    const/4 v7, 0x1

    .line 1084
    :cond_b
    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v10, :cond_d

    .line 1085
    iget-object v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v10}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$800(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1086
    const/4 v7, 0x1

    .line 1087
    iget v8, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1088
    iget v6, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1089
    const/4 v9, 0x1

    .line 1098
    iget-object v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    const/4 v12, 0x0

    # setter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v10, v12}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$802(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;Z)Z

    .line 1102
    :goto_3
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    .line 1109
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1169
    :catchall_2
    move-exception v10

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v11

    monitor-enter v11

    .line 1170
    :try_start_7
    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1171
    iget-object v12, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v12}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1172
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v10

    .line 1100
    :cond_c
    const/4 v10, 0x0

    :try_start_8
    iput-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    goto :goto_3

    .line 1107
    :cond_d
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    .line 1117
    :cond_e
    :try_start_9
    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHasFocus:Z

    if-eqz v10, :cond_13

    .line 1118
    if-eqz v1, :cond_f

    .line 1119
    iget-object v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;

    iget-object v11, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    invoke-virtual {v11}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v5

    .line 1120
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL;)V

    .line 1121
    iget-object v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRenderer:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;

    iget-object v11, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;

    iget-object v11, v11, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v10, v5, v11}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1122
    const/4 v1, 0x0

    .line 1123
    const/4 v4, 0x0

    .line 1127
    :cond_f
    if-eqz v7, :cond_10

    .line 1128
    iget-object v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRenderer:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;

    invoke-interface {v10, v5, v8, v6}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL;II)V

    .line 1129
    const/4 v7, 0x0

    .line 1148
    :cond_10
    if-gt v4, v13, :cond_11

    iget-boolean v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mSafeMode:Z

    if-nez v10, :cond_12

    .line 1149
    :cond_11
    iget-object v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRenderer:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;

    invoke-interface {v10, v5}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL;)V

    .line 1152
    :cond_12
    add-int/lit8 v4, v4, 0x1

    .line 1154
    iget-object v10, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v10}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->swap()Z

    move-result v10

    if-nez v10, :cond_13

    .line 1156
    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->stopEglLocked()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1160
    :cond_13
    if-eqz v9, :cond_0

    .line 1161
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1172
    :catchall_3
    move-exception v10

    :try_start_a
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v10
.end method

.method private stopEglLocked()V
    .locals 1

    .prologue
    .line 997
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 998
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 999
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1000
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->releaseEglSurfaceLocked(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;)V

    .line 1002
    :cond_0
    return-void
.end method


# virtual methods
.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1187
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1188
    :try_start_0
    iget v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    .line 1189
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1221
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1222
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1223
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1224
    monitor-exit v0

    .line 1225
    return-void

    .line 1224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1228
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1229
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1230
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1231
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1232
    monitor-exit v0

    .line 1233
    return-void

    .line 1232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1283
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1284
    :try_start_0
    iput-boolean p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHasFocus:Z

    .line 1285
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1286
    monitor-exit v0

    .line 1288
    return-void

    .line 1286
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onWindowResize(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1236
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1237
    :try_start_0
    iput p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1238
    iput p2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1239
    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    const/4 v3, 0x1

    # setter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v2, v3}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$802(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;Z)Z

    .line 1240
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1241
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1242
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1245
    :goto_0
    iget-boolean v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1247
    :try_start_1
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1248
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1249
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1252
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1253
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1311
    if-nez p1, :cond_0

    .line 1312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1314
    :cond_0
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1315
    :try_start_0
    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1316
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1317
    monitor-exit v0

    .line 1318
    return-void

    .line 1317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1293
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1294
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1295
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1296
    :goto_0
    iget-boolean v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1298
    :try_start_1
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1299
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1300
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1303
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1304
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1193
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1194
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1195
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1196
    monitor-exit v0

    .line 1197
    return-void

    .line 1196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 984
    :try_start_0
    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;)V

    .line 990
    :goto_0
    return-void

    .line 985
    :catch_0
    move-exception v0

    .line 988
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    .line 1177
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1178
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1180
    :cond_1
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1181
    :try_start_0
    iput p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1182
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1183
    monitor-exit v0

    .line 1184
    return-void

    .line 1183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSafeMode(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 1321
    iput-boolean p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mSafeMode:Z

    .line 1322
    return-void
.end method

.method public surfaceCreated()V
    .locals 2

    .prologue
    .line 1200
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1201
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1202
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1203
    monitor-exit v0

    .line 1204
    return-void

    .line 1203
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1207
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1208
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1209
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1210
    :goto_0
    iget-boolean v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1212
    :try_start_1
    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1213
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1214
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1217
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1218
    return-void
.end method
