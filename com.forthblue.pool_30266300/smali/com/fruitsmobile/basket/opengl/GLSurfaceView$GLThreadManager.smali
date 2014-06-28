.class Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fruitsmobile/basket/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static final kGLES_20:I = 0x20000


# instance fields
.field private mEglOwner:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView$1;

    .prologue
    .line 1387
    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1442
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_1

    .line 1444
    iget v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    .line 1445
    iput-boolean v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1447
    :cond_0
    iput-boolean v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1450
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;

    .prologue
    .line 1431
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v0, :cond_1

    .line 1432
    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1433
    iget v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    if-ge v0, v1, :cond_0

    .line 1434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1435
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1437
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1439
    :cond_1
    monitor-exit p0

    return-void

    .line 1431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseEglSurfaceLocked(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    .line 1424
    :cond_0
    monitor-enter p0

    .line 1425
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1426
    monitor-exit p0

    .line 1428
    return-void

    .line 1426
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    .prologue
    .line 1390
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    # setter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->mExited:Z
    invoke-static {p1, v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->access$902(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;Z)Z

    .line 1391
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    .line 1394
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    monitor-exit p0

    return-void

    .line 1390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglSurfaceLocked(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;)Z
    .locals 2
    .param p1, "thread"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    .prologue
    const/4 v1, 0x1

    .line 1405
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    if-nez v0, :cond_1

    .line 1406
    :cond_0
    iput-object p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    .line 1407
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    move v0, v1

    .line 1414
    :goto_0
    return v0

    .line 1410
    :cond_1
    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1411
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 1412
    goto :goto_0

    .line 1414
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
