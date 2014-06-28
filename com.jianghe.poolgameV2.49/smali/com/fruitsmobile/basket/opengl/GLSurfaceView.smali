.class public Lcom/fruitsmobile/basket/opengl/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fruitsmobile/basket/opengl/GLSurfaceView$1;,
        Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;,
        Lcom/fruitsmobile/basket/opengl/GLSurfaceView$LogWriter;,
        Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;,
        Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;,
        Lcom/fruitsmobile/basket/opengl/GLSurfaceView$SimpleEGLConfigChooser;,
        Lcom/fruitsmobile/basket/opengl/GLSurfaceView$ComponentSizeChooser;,
        Lcom/fruitsmobile/basket/opengl/GLSurfaceView$BaseConfigChooser;,
        Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLConfigChooser;,
        Lcom/fruitsmobile/basket/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;,
        Lcom/fruitsmobile/basket/opengl/GLSurfaceView$DefaultContextFactory;,
        Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;,
        Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;,
        Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final DRAW_TWICE_AFTER_SIZE_CHANGED:Z = true

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

.field private mGLWrapper:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLWrapper;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1461
    new-instance v0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;-><init>(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$1;)V

    sput-object v0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mSizeChanged:Z

    .line 68
    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1462
    iput-boolean v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mSizeChanged:Z

    .line 77
    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->init()V

    .line 78
    invoke-virtual {p0, v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->setKeepScreenOn(Z)V

    .line 79
    return-void
.end method

.method static synthetic access$200(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)I
    .locals 1
    .param p0, "x0"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    .prologue
    .line 21
    iget v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$202(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    return p1
.end method

.method static synthetic access$300(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLConfigChooser;
    .locals 1
    .param p0, "x0"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLConfigChooser:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;
    .locals 1
    .param p0, "x0"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLContextFactory:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    .locals 1
    .param p0, "x0"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLWrapper:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700()Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->sGLThreadManager:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$802(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mSizeChanged:Z

    return p1
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLThread:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 1382
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1385
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 85
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 86
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 87
    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLThread:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 399
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 400
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLThread:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->requestExitAndWait()V

    .line 401
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLThread:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->onPause()V

    .line 356
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLThread:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->onResume()V

    .line 367
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 388
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowFocusChanged(Z)V

    .line 389
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLThread:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->onWindowFocusChanged(Z)V

    .line 390
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 380
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLThread:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 381
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLThread:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->requestRender()V

    .line 321
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .param p1, "debugFlags"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mDebugFlags:I

    .line 117
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .prologue
    .line 246
    new-instance v0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->setEGLConfigChooser(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 248
    return-void
.end method

.method public setEGLConfigChooser(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLConfigChooser;)V
    .locals 0
    .param p1, "configChooser"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLConfigChooser;

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 210
    iput-object p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLConfigChooser:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLConfigChooser;

    .line 211
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .param p1, "needDepth"    # Z

    .prologue
    .line 228
    new-instance v0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->setEGLConfigChooser(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 229
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 278
    iput p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLContextClientVersion:I

    .line 279
    return-void
.end method

.method public setEGLContextFactory(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 180
    iput-object p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLContextFactory:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;

    .line 181
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 194
    iput-object p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 195
    return-void
.end method

.method public setGLWrapper(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLWrapper;)V
    .locals 0
    .param p1, "glWrapper"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLWrapper;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLWrapper:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLWrapper;

    .line 104
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLThread:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 299
    return-void
.end method

.method public setRenderer(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .param p1, "renderer"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->checkRenderThreadState()V

    .line 155
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLConfigChooser:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;Z)V

    iput-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLConfigChooser:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLConfigChooser;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLContextFactory:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;Lcom/fruitsmobile/basket/opengl/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLContextFactory:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 162
    new-instance v0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/fruitsmobile/basket/opengl/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 164
    :cond_2
    new-instance v0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    invoke-direct {v0, p0, p1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;-><init>(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLThread:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    .line 165
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLThread:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->start()V

    .line 166
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 1
    .param p1, "safeMode"    # Z

    .prologue
    .line 370
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLThread:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->setSafeMode(Z)V

    .line 371
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLThread:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->onWindowResize(II)V

    .line 346
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLThread:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 329
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLThread:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 338
    return-void
.end method
