.class public Lcom/fruitsmobile/basket/GameEngine;
.super Ljava/lang/Object;
.source "GameEngine.java"

# interfaces
.implements Lcom/fruitsmobile/basket/MotionService$Handler;
.implements Lcom/fruitsmobile/basket/interfaces/Engine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fruitsmobile/basket/GameEngine$GameRenderer;
    }
.end annotation


# static fields
.field static frameSwitchLock:Ljava/lang/Object;

.field static logicFrameCount:I

.field protected static pauseLock:Ljava/lang/Object;

.field public static paused:Z

.field static renderFrameCount:I


# instance fields
.field public activity:Lcom/fruitsmobile/basket/GameActivity;

.field engineReady:Z

.field protected finished:Z

.field private glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

.field protected lastTime:J

.field private loading:Lcom/fruitsmobile/basket/interfaces/Loading;

.field private loadingResource:Z

.field protected logicThread:Ljava/lang/Thread;

.field private matrix_stack:Lcom/fruitsmobile/basket/util/MatrixStack;

.field private rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

.field private surfaceHeight:F

.field private surfaceWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    sput v1, Lcom/fruitsmobile/basket/GameEngine;->logicFrameCount:I

    .line 65
    sput v1, Lcom/fruitsmobile/basket/GameEngine;->renderFrameCount:I

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fruitsmobile/basket/GameEngine;->frameSwitchLock:Ljava/lang/Object;

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fruitsmobile/basket/GameEngine;->pauseLock:Ljava/lang/Object;

    .line 197
    sput-boolean v1, Lcom/fruitsmobile/basket/GameEngine;->paused:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/RenderQueueManager;-><init>()V

    iput-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    .line 37
    iput-boolean v2, p0, Lcom/fruitsmobile/basket/GameEngine;->loadingResource:Z

    .line 39
    iput-object v1, p0, Lcom/fruitsmobile/basket/GameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    .line 42
    iput-object v1, p0, Lcom/fruitsmobile/basket/GameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    .line 62
    iput-object v1, p0, Lcom/fruitsmobile/basket/GameEngine;->logicThread:Ljava/lang/Thread;

    .line 68
    new-instance v0, Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;-><init>()V

    iput-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->matrix_stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    .line 188
    iput-boolean v2, p0, Lcom/fruitsmobile/basket/GameEngine;->finished:Z

    .line 190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fruitsmobile/basket/GameEngine;->lastTime:J

    .line 240
    iput-boolean v2, p0, Lcom/fruitsmobile/basket/GameEngine;->engineReady:Z

    .line 34
    return-void
.end method

.method public static createFullScreeen(Lcom/fruitsmobile/basket/GameActivity;)Lcom/fruitsmobile/basket/GameEngine;
    .locals 3
    .param p0, "activity"    # Lcom/fruitsmobile/basket/GameActivity;

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 306
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 307
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 308
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 310
    new-instance v0, Lcom/fruitsmobile/basket/GameEngine;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/GameEngine;-><init>()V

    .line 311
    .local v0, "ret":Lcom/fruitsmobile/basket/GameEngine;
    invoke-virtual {v0, p0}, Lcom/fruitsmobile/basket/GameEngine;->attachActivity(Lcom/fruitsmobile/basket/GameActivity;)V

    .line 312
    return-object v0
.end method

.method public static createLandscapeFullScreen(Lcom/fruitsmobile/basket/GameActivity;)Lcom/fruitsmobile/basket/GameEngine;
    .locals 3
    .param p0, "activity"    # Lcom/fruitsmobile/basket/GameActivity;

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 343
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 344
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 345
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 346
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fruitsmobile/basket/GameActivity;->setRequestedOrientation(I)V

    .line 348
    new-instance v0, Lcom/fruitsmobile/basket/GameEngine;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/GameEngine;-><init>()V

    .line 349
    .local v0, "ret":Lcom/fruitsmobile/basket/GameEngine;
    invoke-virtual {v0, p0}, Lcom/fruitsmobile/basket/GameEngine;->attachActivity(Lcom/fruitsmobile/basket/GameActivity;)V

    .line 350
    return-object v0
.end method

.method public static createPortraitFullScreen(Lcom/fruitsmobile/basket/GameActivity;)Lcom/fruitsmobile/basket/GameEngine;
    .locals 4
    .param p0, "activity"    # Lcom/fruitsmobile/basket/GameActivity;

    .prologue
    const/4 v3, 0x1

    .line 323
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 324
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 325
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 326
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 327
    invoke-virtual {p0, v3}, Lcom/fruitsmobile/basket/GameActivity;->setRequestedOrientation(I)V

    .line 329
    new-instance v0, Lcom/fruitsmobile/basket/GameEngine;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/GameEngine;-><init>()V

    .line 330
    .local v0, "ret":Lcom/fruitsmobile/basket/GameEngine;
    invoke-virtual {v0, p0}, Lcom/fruitsmobile/basket/GameEngine;->attachActivity(Lcom/fruitsmobile/basket/GameActivity;)V

    .line 331
    return-object v0
.end method


# virtual methods
.method public attachActivity(Lcom/fruitsmobile/basket/GameActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/fruitsmobile/basket/GameActivity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fruitsmobile/basket/GameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    .line 50
    sput-object p1, Lcom/fruitsmobile/basket/util/Util;->context:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    invoke-direct {v0, p1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    .line 55
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 56
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    new-instance v1, Lcom/fruitsmobile/basket/GameEngine$GameRenderer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fruitsmobile/basket/GameEngine$GameRenderer;-><init>(Lcom/fruitsmobile/basket/GameEngine;Lcom/fruitsmobile/basket/GameEngine$1;)V

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->setRenderer(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    invoke-virtual {p1, v0}, Lcom/fruitsmobile/basket/GameActivity;->setContentView(Landroid/view/View;)V

    .line 60
    return-void
.end method

.method protected createLogicThread()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->logicThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fruitsmobile/basket/GameEngine$1;

    invoke-direct {v1, p0}, Lcom/fruitsmobile/basket/GameEngine$1;-><init>(Lcom/fruitsmobile/basket/GameEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->logicThread:Ljava/lang/Thread;

    .line 236
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->logicThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 238
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 380
    const-string v0, "Basket"

    const-string v1, "finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget-object v0, Lcom/fruitsmobile/basket/GameEngine;->pauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 382
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/fruitsmobile/basket/GameEngine;->paused:Z

    .line 383
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fruitsmobile/basket/GameEngine;->finished:Z

    .line 384
    sget-object v1, Lcom/fruitsmobile/basket/GameEngine;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 385
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fruitsmobile/basket/GameEngine;->engineReady:Z

    .line 386
    iget-object v1, p0, Lcom/fruitsmobile/basket/GameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/fruitsmobile/basket/GameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/GameActivity;->setContentView(Landroid/view/View;)V

    .line 387
    invoke-static {}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->onDeviceLost()V

    .line 388
    invoke-static {}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->clearActive()V

    .line 389
    monitor-exit v0

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected drawFrame(Lcom/fruitsmobile/basket/opengl/GL10;)V
    .locals 7
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;

    .prologue
    .line 75
    invoke-static {}, Lcom/fruitsmobile/basket/Time;->update()V

    .line 76
    invoke-static {}, Lcom/fruitsmobile/basket/FPSCounter;->onFrame()V

    .line 78
    iget-boolean v5, p0, Lcom/fruitsmobile/basket/GameEngine;->loadingResource:Z

    if-eqz v5, :cond_1

    .line 79
    iget-object v5, p0, Lcom/fruitsmobile/basket/GameEngine;->loading:Lcom/fruitsmobile/basket/interfaces/Loading;

    invoke-static {p1, v5}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadResourceTick(Lcom/fruitsmobile/basket/opengl/GLCommon;Lcom/fruitsmobile/basket/interfaces/Loading;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 80
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/fruitsmobile/basket/GameEngine;->loadingResource:Z

    .line 81
    iget-object v5, p0, Lcom/fruitsmobile/basket/GameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    invoke-virtual {v5, p1}, Lcom/fruitsmobile/basket/GameActivity;->onResourceLoaded(Lcom/fruitsmobile/basket/opengl/GL10;)V

    .line 103
    :cond_0
    return-void

    .line 86
    :cond_1
    iget-object v5, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->Swap()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    iget-object v5, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->unLoadTextureInRender()V

    .line 91
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    .line 92
    .local v0, "activity":Lcom/fruitsmobile/basket/GameActivity;
    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/GameActivity;->onDrawFrame(Lcom/fruitsmobile/basket/opengl/GL10;)V

    .line 96
    :cond_2
    iget-object v5, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->getRenderingList()[Lcom/fruitsmobile/basket/interfaces/Drawable;

    move-result-object v4

    .line 97
    .local v4, "list":[Lcom/fruitsmobile/basket/interfaces/Drawable;
    iget-object v5, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->getRenderingData()[Ljava/lang/Object;

    move-result-object v2

    .line 98
    .local v2, "data":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->getRenderingCount()I

    move-result v1

    .line 100
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 101
    aget-object v5, v4, v3

    aget-object v6, v2, v3

    invoke-interface {v5, p1, v6}, Lcom/fruitsmobile/basket/interfaces/Drawable;->render(Lcom/fruitsmobile/basket/opengl/GL10;Ljava/lang/Object;)V

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected drawFrame(Lcom/fruitsmobile/basket/opengl/GL20;)V
    .locals 7
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;

    .prologue
    .line 106
    invoke-static {}, Lcom/fruitsmobile/basket/Time;->update()V

    .line 107
    invoke-static {}, Lcom/fruitsmobile/basket/FPSCounter;->onFrame()V

    .line 109
    iget-boolean v5, p0, Lcom/fruitsmobile/basket/GameEngine;->loadingResource:Z

    if-eqz v5, :cond_1

    .line 110
    iget-object v5, p0, Lcom/fruitsmobile/basket/GameEngine;->loading:Lcom/fruitsmobile/basket/interfaces/Loading;

    invoke-static {p1, v5}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadResourceTick(Lcom/fruitsmobile/basket/opengl/GLCommon;Lcom/fruitsmobile/basket/interfaces/Loading;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 111
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/fruitsmobile/basket/GameEngine;->loadingResource:Z

    .line 112
    iget-object v5, p0, Lcom/fruitsmobile/basket/GameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    invoke-virtual {v5, p1}, Lcom/fruitsmobile/basket/GameActivity;->onResourceLoaded(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 134
    :cond_0
    return-void

    .line 117
    :cond_1
    iget-object v5, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->Swap()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    iget-object v5, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->unLoadTextureInRender()V

    .line 122
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    .line 123
    .local v0, "activity":Lcom/fruitsmobile/basket/GameActivity;
    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/GameActivity;->onDrawFrame(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 127
    :cond_2
    iget-object v5, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->getRenderingList()[Lcom/fruitsmobile/basket/interfaces/Drawable;

    move-result-object v4

    .line 128
    .local v4, "list":[Lcom/fruitsmobile/basket/interfaces/Drawable;
    iget-object v5, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->getRenderingData()[Ljava/lang/Object;

    move-result-object v2

    .line 129
    .local v2, "data":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->getRenderingCount()I

    move-result v1

    .line 131
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 132
    aget-object v5, v4, v3

    aget-object v6, v2, v3

    invoke-interface {v5, p1, v6}, Lcom/fruitsmobile/basket/interfaces/Drawable;->render(Lcom/fruitsmobile/basket/opengl/GL20;Ljava/lang/Object;)V

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getFrameTime()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/fruitsmobile/basket/GameEngine;->lastTime:J

    return-wide v0
.end method

.method public getMatrixStack()Lcom/fruitsmobile/basket/util/MatrixStack;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->matrix_stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    return-object v0
.end method

.method public getSurfaceHeight()F
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/fruitsmobile/basket/GameEngine;->surfaceHeight:F

    return v0
.end method

.method public getSurfaceWidth()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/fruitsmobile/basket/GameEngine;->surfaceWidth:F

    return v0
.end method

.method protected onLogicFrame(J)V
    .locals 3
    .param p1, "timeSpan"    # J

    .prologue
    .line 165
    invoke-static {}, Lcom/fruitsmobile/basket/Time;->updateLoop()V

    .line 166
    invoke-static {}, Lcom/fruitsmobile/basket/FPSCounter;->onLoop()V

    .line 168
    iget-boolean v1, p0, Lcom/fruitsmobile/basket/GameEngine;->loadingResource:Z

    if-eqz v1, :cond_0

    .line 169
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->ignoreTouchEvent()V

    .line 186
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-static {p0}, Lcom/fruitsmobile/basket/MotionService;->onLogicFrame(Lcom/fruitsmobile/basket/MotionService$Handler;)V

    .line 174
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    .line 175
    .local v0, "activity":Lcom/fruitsmobile/basket/GameActivity;
    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/GameActivity;->onGameLoop(J)V

    .line 177
    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/GameActivity;->tick(J)V

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v2}, Lcom/fruitsmobile/basket/RenderQueueManager;->Clear()V

    .line 181
    if-eqz v0, :cond_2

    .line 182
    iget-object v2, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/GameActivity;->commit(Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 184
    :cond_2
    iget-object v2, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 185
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL10;II)V
    .locals 4
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v3, 0x0

    .line 147
    const-string v0, "Basket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    int-to-float v0, p2

    iput v0, p0, Lcom/fruitsmobile/basket/GameEngine;->surfaceWidth:F

    .line 149
    int-to-float v0, p3

    iput v0, p0, Lcom/fruitsmobile/basket/GameEngine;->surfaceHeight:F

    .line 150
    invoke-static {p1}, Lcom/fruitsmobile/basket/util/GLHelper;->setGL(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 151
    invoke-interface {p1, v3, v3, p2, p3}, Lcom/fruitsmobile/basket/opengl/GL10;->glViewport(IIII)V

    .line 152
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fruitsmobile/basket/GameActivity;->onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL10;II)V

    .line 153
    return-void
.end method

.method protected onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL20;II)V
    .locals 4
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v3, 0x0

    .line 156
    const-string v0, "Basket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    int-to-float v0, p2

    iput v0, p0, Lcom/fruitsmobile/basket/GameEngine;->surfaceWidth:F

    .line 158
    int-to-float v0, p3

    iput v0, p0, Lcom/fruitsmobile/basket/GameEngine;->surfaceHeight:F

    .line 159
    invoke-static {p1}, Lcom/fruitsmobile/basket/util/GLHelper;->setGL(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 160
    invoke-interface {p1, v3, v3, p2, p3}, Lcom/fruitsmobile/basket/opengl/GL20;->glViewport(IIII)V

    .line 161
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fruitsmobile/basket/GameActivity;->onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL20;II)V

    .line 162
    return-void
.end method

.method protected onSurfaceCreated(Lcom/fruitsmobile/basket/opengl/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v1, 0x1

    .line 243
    invoke-static {}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->onDeviceLost()V

    .line 244
    invoke-static {p1}, Lcom/fruitsmobile/basket/util/GLHelper;->setGL(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 245
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameEngine;->createLogicThread()V

    .line 246
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/GameEngine;->engineReady:Z

    if-nez v0, :cond_0

    .line 247
    iput-boolean v1, p0, Lcom/fruitsmobile/basket/GameEngine;->engineReady:Z

    .line 248
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/GameActivity;->onEngineReady(Lcom/fruitsmobile/basket/opengl/GL10;)V

    .line 251
    :cond_0
    iput-boolean v1, p0, Lcom/fruitsmobile/basket/GameEngine;->loadingResource:Z

    .line 252
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->loading:Lcom/fruitsmobile/basket/interfaces/Loading;

    invoke-static {p1, v0}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->startLoadResource(Lcom/fruitsmobile/basket/opengl/GLCommon;Lcom/fruitsmobile/basket/interfaces/Loading;)Z

    .line 253
    return-void
.end method

.method protected onSurfaceCreated(Lcom/fruitsmobile/basket/opengl/GL20;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v1, 0x1

    .line 256
    invoke-static {}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->onDeviceLost()V

    .line 257
    invoke-static {p1}, Lcom/fruitsmobile/basket/util/GLHelper;->setGL(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 258
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameEngine;->createLogicThread()V

    .line 259
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/GameEngine;->engineReady:Z

    if-nez v0, :cond_0

    .line 260
    iput-boolean v1, p0, Lcom/fruitsmobile/basket/GameEngine;->engineReady:Z

    .line 261
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/GameActivity;->onEngineReady(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 264
    :cond_0
    iput-boolean v1, p0, Lcom/fruitsmobile/basket/GameEngine;->loadingResource:Z

    .line 265
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->loading:Lcom/fruitsmobile/basket/interfaces/Loading;

    invoke-static {p1, v0}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->startLoadResource(Lcom/fruitsmobile/basket/opengl/GLCommon;Lcom/fruitsmobile/basket/interfaces/Loading;)Z

    .line 266
    return-void
.end method

.method protected onSurfaceLost()V
    .locals 2

    .prologue
    .line 269
    const-string v0, "Basket"

    const-string v1, "surface lost!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-static {}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->onDeviceLost()V

    .line 271
    return-void
.end method

.method public onTouchDown(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 393
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/GameActivity;->onTouchDown(I)V

    .line 394
    return-void
.end method

.method public onTouchUp(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/GameActivity;->onTouchUp(I)V

    .line 398
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 354
    const-string v0, "Basket"

    const-string v1, "paused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->onPause()V

    .line 358
    :cond_0
    sget-object v0, Lcom/fruitsmobile/basket/GameEngine;->pauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/fruitsmobile/basket/GameEngine;->paused:Z

    .line 360
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    iput-boolean v2, v0, Lcom/fruitsmobile/basket/RenderQueueManager;->paused:Z

    .line 362
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    monitor-enter v0

    .line 363
    :try_start_1
    iget-object v1, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 364
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 365
    return-void

    .line 360
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 364
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    const-string v0, "Basket"

    const-string v1, "resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->onResume()V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    iput-boolean v2, v0, Lcom/fruitsmobile/basket/RenderQueueManager;->paused:Z

    .line 373
    sget-object v0, Lcom/fruitsmobile/basket/GameEngine;->pauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/fruitsmobile/basket/GameEngine;->paused:Z

    .line 375
    sget-object v1, Lcom/fruitsmobile/basket/GameEngine;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 376
    monitor-exit v0

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLoading(Lcom/fruitsmobile/basket/interfaces/Loading;)V
    .locals 0
    .param p1, "loading"    # Lcom/fruitsmobile/basket/interfaces/Loading;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/fruitsmobile/basket/GameEngine;->loading:Lcom/fruitsmobile/basket/interfaces/Loading;

    .line 46
    return-void
.end method

.method public unLoadTexture(Lcom/fruitsmobile/basket/resources/Texture;)V
    .locals 1
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/RenderQueueManager;->unLoadTexture(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 403
    return-void
.end method
