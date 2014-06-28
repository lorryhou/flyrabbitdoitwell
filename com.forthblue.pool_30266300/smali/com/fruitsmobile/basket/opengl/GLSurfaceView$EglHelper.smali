.class Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fruitsmobile/basket/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field final synthetic this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 3
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 942
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 849
    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_0

    .line 855
    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 857
    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$500(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 863
    :cond_0
    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$500(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v4, p1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 866
    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_2

    .line 867
    :cond_1
    const-string v1, "createWindowSurface"

    invoke-direct {p0, v1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 874
    :cond_2
    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 875
    const-string v1, "eglMakeCurrent"

    invoke-direct {p0, v1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 879
    :cond_3
    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$200(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 880
    new-instance v0, Lcom/fruitsmobile/basket/opengl/GLES20;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/opengl/GLES20;-><init>()V

    .line 883
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL;
    :goto_0
    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLWrapper:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLWrapper;
    invoke-static {v1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$600(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLWrapper;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 884
    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mGLWrapper:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLWrapper;
    invoke-static {v1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$600(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLWrapper;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    .line 901
    :cond_4
    return-object v0

    .line 882
    .end local v0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    :cond_5
    new-instance v0, Lcom/fruitsmobile/basket/opengl/GLES10;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/opengl/GLES10;-><init>()V

    .restart local v0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    goto :goto_0
.end method

.method public destroySurface()V
    .locals 5

    .prologue
    .line 921
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 922
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 925
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    invoke-static {v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$500(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 928
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 931
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLContextFactory:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;
    invoke-static {v0}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$400(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 933
    iput-object v4, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    .line 936
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 937
    iput-object v4, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 939
    :cond_1
    return-void
.end method

.method public start()V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x0

    const-string v8, "createContext"

    const-string v7, "Basket"

    .line 776
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 781
    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 783
    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    .line 784
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglGetDisplay failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 790
    :cond_0
    new-array v1, v4, [I

    .line 791
    .local v1, "version":[I
    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 792
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglInitialize failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 796
    :cond_1
    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$200(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 799
    :try_start_0
    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLConfigChooser:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLConfigChooser;
    invoke-static {v2}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$300(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v2

    iget-object v3, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 805
    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLContextFactory:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;
    invoke-static {v2}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$400(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4, v5}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 806
    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_3

    .line 807
    :cond_2
    const-string v2, "createContext"

    invoke-direct {p0, v2}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 809
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 810
    const-string v2, "basketgl2"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 812
    const-string v2, "Basket"

    const-string v3, "Create OpenGL ES 2.0 successed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_0
    return-void

    .line 814
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 815
    .local v0, "e":Ljava/lang/Throwable;
    iput-object v6, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 816
    iput-object v6, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 817
    const-string v2, "Basket"

    const-string v2, "Create OpenGL ES 2.0 Failed, try 1.0 instead"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    const/4 v3, 0x0

    # setter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2, v3}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$202(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;I)I

    .line 824
    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLConfigChooser:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLConfigChooser;
    invoke-static {v2}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$300(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v2

    iget-object v3, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 830
    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLContextFactory:Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;
    invoke-static {v2}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$400(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4, v5}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 831
    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_6

    .line 832
    :cond_5
    const-string v2, "createContext"

    invoke-direct {p0, v8}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 835
    :cond_6
    iput-object v6, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 836
    const-string v2, "basketgl1"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 837
    const-string v2, "Basket"

    const-string v2, "Create OpenGL ES 1.0 successed."

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public swap()Z
    .locals 3

    .prologue
    .line 909
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 917
    iget-object v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x300e

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public verifyContext()Z
    .locals 3

    .prologue
    .line 947
    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 948
    .local v0, "currentContext":Ljavax/microedition/khronos/egl/EGLContext;
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    const/16 v2, 0x300e

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
