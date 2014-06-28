.class public Lcom/fruitsmobile/basket/SingleThreadGameEngine;
.super Ljava/lang/Object;
.source "SingleThreadGameEngine.java"

# interfaces
.implements Lcom/fruitsmobile/basket/MotionService$Handler;
.implements Lcom/fruitsmobile/basket/interfaces/Engine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fruitsmobile/basket/SingleThreadGameEngine$1;,
        Lcom/fruitsmobile/basket/SingleThreadGameEngine$GameRenderer;
    }
.end annotation


# static fields
.field static frameSwitchLock:Ljava/lang/Object;

.field private static pauseLock:Ljava/lang/Object;

.field public static paused:Z

.field static renderFrameCount:I


# instance fields
.field private activity:Lcom/fruitsmobile/basket/GameActivity;

.field engineReady:Z

.field private glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

.field private lastTime:J

.field private loading:Lcom/fruitsmobile/basket/interfaces/Loading;

.field private loadingResource:Z

.field private matrix_stack:Lcom/fruitsmobile/basket/util/MatrixStack;

.field private rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

.field private surfaceHeight:F

.field private surfaceWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    sput v1, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->renderFrameCount:I

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->frameSwitchLock:Ljava/lang/Object;

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->pauseLock:Ljava/lang/Object;

    .line 181
    sput-boolean v1, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->paused:Z

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

    iput-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    .line 37
    iput-boolean v2, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->loadingResource:Z

    .line 39
    iput-object v1, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    .line 42
    iput-object v1, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    .line 63
    new-instance v0, Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;-><init>()V

    iput-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->matrix_stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->lastTime:J

    .line 183
    iput-boolean v2, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->engineReady:Z

    .line 34
    return-void
.end method

.method public static createFullScreeen(Lcom/fruitsmobile/basket/GameActivity;)Lcom/fruitsmobile/basket/SingleThreadGameEngine;
    .locals 3
    .param p0, "activity"    # Lcom/fruitsmobile/basket/GameActivity;

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 246
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 247
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 249
    new-instance v0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/SingleThreadGameEngine;-><init>()V

    .line 250
    .local v0, "ret":Lcom/fruitsmobile/basket/SingleThreadGameEngine;
    invoke-virtual {v0, p0}, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->attachActivity(Lcom/fruitsmobile/basket/GameActivity;)V

    .line 251
    return-object v0
.end method

.method public static createLandscapeFullScreen(Lcom/fruitsmobile/basket/GameActivity;)Lcom/fruitsmobile/basket/SingleThreadGameEngine;
    .locals 3
    .param p0, "activity"    # Lcom/fruitsmobile/basket/GameActivity;

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 281
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 282
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 283
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fruitsmobile/basket/GameActivity;->setRequestedOrientation(I)V

    .line 285
    new-instance v0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/SingleThreadGameEngine;-><init>()V

    .line 286
    .local v0, "ret":Lcom/fruitsmobile/basket/SingleThreadGameEngine;
    invoke-virtual {v0, p0}, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->attachActivity(Lcom/fruitsmobile/basket/GameActivity;)V

    .line 287
    return-object v0
.end method

.method public static createPortraitFullScreen(Lcom/fruitsmobile/basket/GameActivity;)Lcom/fruitsmobile/basket/SingleThreadGameEngine;
    .locals 4
    .param p0, "activity"    # Lcom/fruitsmobile/basket/GameActivity;

    .prologue
    const/4 v3, 0x1

    .line 262
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 263
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 264
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 265
    invoke-virtual {p0, v3}, Lcom/fruitsmobile/basket/GameActivity;->setRequestedOrientation(I)V

    .line 267
    new-instance v0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/SingleThreadGameEngine;-><init>()V

    .line 268
    .local v0, "ret":Lcom/fruitsmobile/basket/SingleThreadGameEngine;
    invoke-virtual {v0, p0}, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->attachActivity(Lcom/fruitsmobile/basket/GameActivity;)V

    .line 269
    return-object v0
.end method


# virtual methods
.method public attachActivity(Lcom/fruitsmobile/basket/GameActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/fruitsmobile/basket/GameActivity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    .line 50
    sput-object p1, Lcom/fruitsmobile/basket/util/Util;->context:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    invoke-direct {v0, p1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    .line 54
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 55
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    new-instance v1, Lcom/fruitsmobile/basket/SingleThreadGameEngine$GameRenderer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fruitsmobile/basket/SingleThreadGameEngine$GameRenderer;-><init>(Lcom/fruitsmobile/basket/SingleThreadGameEngine;Lcom/fruitsmobile/basket/SingleThreadGameEngine$1;)V

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->setRenderer(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;)V

    .line 57
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    invoke-virtual {p1, v0}, Lcom/fruitsmobile/basket/GameActivity;->setContentView(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method public destroy()V
    .locals 4

    .prologue
    .line 317
    const-string v0, "Basket"

    const-string v1, "finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    sget-object v0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->pauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->paused:Z

    .line 320
    sget-object v1, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 321
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->engineReady:Z

    .line 322
    iget-object v1, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/GameActivity;->setContentView(Landroid/view/View;)V

    .line 323
    invoke-static {}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->onDeviceLost()V

    .line 324
    invoke-static {}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->clearActive()V

    .line 325
    monitor-exit v0

    .line 326
    return-void

    .line 325
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
    .line 70
    invoke-static {}, Lcom/fruitsmobile/basket/Time;->update()V

    .line 71
    invoke-static {}, Lcom/fruitsmobile/basket/FPSCounter;->onFrame()V

    .line 72
    sget v5, Lcom/fruitsmobile/basket/Time;->ticksSinceLastFrame:I

    int-to-long v5, v5

    invoke-virtual {p0, v5, v6}, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->onLogicFrame(J)V

    .line 74
    iget-boolean v5, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->loadingResource:Z

    if-eqz v5, :cond_1

    .line 75
    iget-object v5, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->loading:Lcom/fruitsmobile/basket/interfaces/Loading;

    invoke-static {p1, v5}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadResourceTick(Lcom/fruitsmobile/basket/opengl/GLCommon;Lcom/fruitsmobile/basket/interfaces/Loading;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->loadingResource:Z

    .line 95
    :cond_0
    return-void

    .line 80
    :cond_1
    iget-object v5, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->Swap()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    .line 84
    .local v0, "activity":Lcom/fruitsmobile/basket/GameActivity;
    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/GameActivity;->onDrawFrame(Lcom/fruitsmobile/basket/opengl/GL10;)V

    .line 88
    :cond_2
    iget-object v5, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->getRenderingList()[Lcom/fruitsmobile/basket/interfaces/Drawable;

    move-result-object v4

    .line 89
    .local v4, "list":[Lcom/fruitsmobile/basket/interfaces/Drawable;
    iget-object v5, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->getRenderingData()[Ljava/lang/Object;

    move-result-object v2

    .line 90
    .local v2, "data":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->getRenderingCount()I

    move-result v1

    .line 92
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 93
    aget-object v5, v4, v3

    aget-object v6, v2, v3

    invoke-interface {v5, p1, v6}, Lcom/fruitsmobile/basket/interfaces/Drawable;->render(Lcom/fruitsmobile/basket/opengl/GL10;Ljava/lang/Object;)V

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected drawFrame(Lcom/fruitsmobile/basket/opengl/GL20;)V
    .locals 7
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;

    .prologue
    .line 98
    invoke-static {}, Lcom/fruitsmobile/basket/Time;->update()V

    .line 99
    invoke-static {}, Lcom/fruitsmobile/basket/FPSCounter;->onFrame()V

    .line 100
    sget v5, Lcom/fruitsmobile/basket/Time;->ticksSinceLastFrame:I

    int-to-long v5, v5

    invoke-virtual {p0, v5, v6}, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->onLogicFrame(J)V

    .line 101
    iget-boolean v5, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->loadingResource:Z

    if-eqz v5, :cond_1

    .line 102
    iget-object v5, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->loading:Lcom/fruitsmobile/basket/interfaces/Loading;

    invoke-static {p1, v5}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->loadResourceTick(Lcom/fruitsmobile/basket/opengl/GLCommon;Lcom/fruitsmobile/basket/interfaces/Loading;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 103
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->loadingResource:Z

    .line 123
    :cond_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    .line 109
    .local v0, "activity":Lcom/fruitsmobile/basket/GameActivity;
    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/GameActivity;->onDrawFrame(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 113
    :cond_2
    iget-object v5, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->Swap()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    iget-object v5, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->getRenderingList()[Lcom/fruitsmobile/basket/interfaces/Drawable;

    move-result-object v4

    .line 117
    .local v4, "list":[Lcom/fruitsmobile/basket/interfaces/Drawable;
    iget-object v5, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->getRenderingData()[Ljava/lang/Object;

    move-result-object v2

    .line 118
    .local v2, "data":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/RenderQueueManager;->getRenderingCount()I

    move-result v1

    .line 120
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 121
    aget-object v5, v4, v3

    aget-object v6, v2, v3

    invoke-interface {v5, p1, v6}, Lcom/fruitsmobile/basket/interfaces/Drawable;->render(Lcom/fruitsmobile/basket/opengl/GL20;Ljava/lang/Object;)V

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getFrameTime()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->lastTime:J

    return-wide v0
.end method

.method public getMatrixStack()Lcom/fruitsmobile/basket/util/MatrixStack;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->matrix_stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    return-object v0
.end method

.method public getSurfaceHeight()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->surfaceHeight:F

    return v0
.end method

.method public getSurfaceWidth()F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->surfaceWidth:F

    return v0
.end method

.method protected onLogicFrame(J)V
    .locals 3
    .param p1, "timeSpan"    # J

    .prologue
    .line 154
    invoke-static {}, Lcom/fruitsmobile/basket/Time;->updateLoop()V

    .line 155
    invoke-static {}, Lcom/fruitsmobile/basket/FPSCounter;->onLoop()V

    .line 156
    invoke-static {p0}, Lcom/fruitsmobile/basket/MotionService;->onLogicFrame(Lcom/fruitsmobile/basket/MotionService$Handler;)V

    .line 158
    iget-boolean v1, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->loadingResource:Z

    if-eqz v1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    .line 163
    .local v0, "activity":Lcom/fruitsmobile/basket/GameActivity;
    iget-object v1, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v2, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v2}, Lcom/fruitsmobile/basket/RenderQueueManager;->Clear()V

    .line 165
    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/GameActivity;->onGameLoop(J)V

    .line 167
    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/GameActivity;->tick(J)V

    .line 168
    iget-object v2, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/GameActivity;->commit(Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 171
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

    .line 136
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

    .line 137
    int-to-float v0, p2

    iput v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->surfaceWidth:F

    .line 138
    int-to-float v0, p3

    iput v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->surfaceHeight:F

    .line 139
    invoke-static {p1}, Lcom/fruitsmobile/basket/util/GLHelper;->setGL(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 140
    invoke-interface {p1, v3, v3, p2, p3}, Lcom/fruitsmobile/basket/opengl/GL10;->glViewport(IIII)V

    .line 141
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fruitsmobile/basket/GameActivity;->onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL10;II)V

    .line 142
    return-void
.end method

.method protected onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL20;II)V
    .locals 4
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v3, 0x0

    .line 145
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

    .line 146
    int-to-float v0, p2

    iput v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->surfaceWidth:F

    .line 147
    int-to-float v0, p3

    iput v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->surfaceHeight:F

    .line 148
    invoke-static {p1}, Lcom/fruitsmobile/basket/util/GLHelper;->setGL(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 149
    invoke-interface {p1, v3, v3, p2, p3}, Lcom/fruitsmobile/basket/opengl/GL20;->glViewport(IIII)V

    .line 150
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fruitsmobile/basket/GameActivity;->onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL20;II)V

    .line 151
    return-void
.end method

.method protected onSurfaceCreated(Lcom/fruitsmobile/basket/opengl/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v1, 0x1

    .line 186
    invoke-static {p1}, Lcom/fruitsmobile/basket/util/GLHelper;->setGL(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 187
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->engineReady:Z

    if-nez v0, :cond_0

    .line 188
    iput-boolean v1, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->engineReady:Z

    .line 189
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/GameActivity;->onEngineReady(Lcom/fruitsmobile/basket/opengl/GL10;)V

    .line 192
    :cond_0
    iput-boolean v1, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->loadingResource:Z

    .line 193
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->loading:Lcom/fruitsmobile/basket/interfaces/Loading;

    invoke-static {p1, v0}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->startLoadResource(Lcom/fruitsmobile/basket/opengl/GLCommon;Lcom/fruitsmobile/basket/interfaces/Loading;)Z

    .line 194
    return-void
.end method

.method protected onSurfaceCreated(Lcom/fruitsmobile/basket/opengl/GL20;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v1, 0x1

    .line 197
    invoke-static {p1}, Lcom/fruitsmobile/basket/util/GLHelper;->setGL(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 198
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->engineReady:Z

    if-nez v0, :cond_0

    .line 199
    iput-boolean v1, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->engineReady:Z

    .line 200
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/GameActivity;->onEngineReady(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 203
    :cond_0
    iput-boolean v1, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->loadingResource:Z

    .line 204
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->loading:Lcom/fruitsmobile/basket/interfaces/Loading;

    invoke-static {p1, v0}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->startLoadResource(Lcom/fruitsmobile/basket/opengl/GLCommon;Lcom/fruitsmobile/basket/interfaces/Loading;)Z

    .line 205
    return-void
.end method

.method protected onSurfaceLost()V
    .locals 2

    .prologue
    .line 208
    const-string v0, "Basket"

    const-string v1, "surface lost!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->onDeviceLost()V

    .line 210
    return-void
.end method

.method public onTouchDown(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/GameActivity;->onTouchDown(I)V

    .line 330
    return-void
.end method

.method public onTouchUp(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->activity:Lcom/fruitsmobile/basket/GameActivity;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/GameActivity;->onTouchUp(I)V

    .line 334
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 291
    const-string v0, "Basket"

    const-string v1, "paused"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->onPause()V

    .line 295
    :cond_0
    sget-object v0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->pauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->paused:Z

    .line 297
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    iput-boolean v2, v0, Lcom/fruitsmobile/basket/RenderQueueManager;->paused:Z

    .line 299
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    monitor-enter v0

    .line 300
    :try_start_1
    iget-object v1, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 301
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 302
    return-void

    .line 297
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 301
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

    .line 305
    const-string v0, "Basket"

    const-string v1, "resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->glView:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->onResume()V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->rqm:Lcom/fruitsmobile/basket/RenderQueueManager;

    iput-boolean v2, v0, Lcom/fruitsmobile/basket/RenderQueueManager;->paused:Z

    .line 310
    sget-object v0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->pauseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->paused:Z

    .line 312
    sget-object v1, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 313
    monitor-exit v0

    .line 314
    return-void

    .line 313
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
    iput-object p1, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->loading:Lcom/fruitsmobile/basket/interfaces/Loading;

    .line 46
    return-void
.end method

.method public unLoadTexture(Lcom/fruitsmobile/basket/resources/Texture;)V
    .locals 0
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    .line 340
    return-void
.end method
