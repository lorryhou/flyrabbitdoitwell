.class Lcom/fruitsmobile/basket/opengl/GLSurfaceView$DefaultContextFactory;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Lcom/fruitsmobile/basket/opengl/GLSurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fruitsmobile/basket/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;


# direct methods
.method private constructor <init>(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)V
    .locals 1

    .prologue
    .line 555
    iput-object p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    const/16 v0, 0x3098

    iput v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;Lcom/fruitsmobile/basket/opengl/GLSurfaceView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView;
    .param p2, "x1"    # Lcom/fruitsmobile/basket/opengl/GLSurfaceView$1;

    .prologue
    .line 555
    invoke-direct {p0, p1}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 559
    const/4 v1, 0x3

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$200(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 562
    .local v0, "attrib_list":[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v2, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$DefaultContextFactory;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    # getter for: Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView;->access$200(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;)I

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    :goto_0
    invoke-interface {p1, p2, p3, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 568
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 569
    return-void
.end method