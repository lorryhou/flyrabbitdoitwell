.class public Lcom/fruitsmobile/basket/opengl/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"

# interfaces
.implements Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected onDrawFrame(Lcom/fruitsmobile/basket/opengl/GL10;)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;

    .prologue
    .line 49
    return-void
.end method

.method protected onDrawFrame(Lcom/fruitsmobile/basket/opengl/GL20;)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;

    .prologue
    .line 59
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;

    .prologue
    .line 31
    move-object v0, p1

    check-cast v0, Lcom/fruitsmobile/basket/opengl/GLCommon;

    move-object v1, v0

    .line 32
    .local v1, "glc":Lcom/fruitsmobile/basket/opengl/GLCommon;
    invoke-interface {v1}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glVersion()I

    move-result v2

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_0

    .line 33
    check-cast v1, Lcom/fruitsmobile/basket/opengl/GL20;

    .end local v1    # "glc":Lcom/fruitsmobile/basket/opengl/GLCommon;
    invoke-virtual {p0, v1}, Lcom/fruitsmobile/basket/opengl/Renderer;->onDrawFrame(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 36
    :goto_0
    return-void

    .line 35
    .restart local v1    # "glc":Lcom/fruitsmobile/basket/opengl/GLCommon;
    :cond_0
    check-cast v1, Lcom/fruitsmobile/basket/opengl/GL10;

    .end local v1    # "glc":Lcom/fruitsmobile/basket/opengl/GLCommon;
    invoke-virtual {p0, v1}, Lcom/fruitsmobile/basket/opengl/Renderer;->onDrawFrame(Lcom/fruitsmobile/basket/opengl/GL10;)V

    goto :goto_0
.end method

.method protected onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL10;II)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 46
    return-void
.end method

.method protected onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL20;II)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 56
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL;II)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 23
    move-object v0, p1

    check-cast v0, Lcom/fruitsmobile/basket/opengl/GLCommon;

    move-object v1, v0

    .line 24
    .local v1, "glc":Lcom/fruitsmobile/basket/opengl/GLCommon;
    invoke-interface {v1}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glVersion()I

    move-result v2

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_0

    .line 25
    check-cast v1, Lcom/fruitsmobile/basket/opengl/GL20;

    .end local v1    # "glc":Lcom/fruitsmobile/basket/opengl/GLCommon;
    invoke-virtual {p0, v1, p2, p3}, Lcom/fruitsmobile/basket/opengl/Renderer;->onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL20;II)V

    .line 28
    :goto_0
    return-void

    .line 27
    .restart local v1    # "glc":Lcom/fruitsmobile/basket/opengl/GLCommon;
    :cond_0
    check-cast v1, Lcom/fruitsmobile/basket/opengl/GL10;

    .end local v1    # "glc":Lcom/fruitsmobile/basket/opengl/GLCommon;
    invoke-virtual {p0, v1, p2, p3}, Lcom/fruitsmobile/basket/opengl/Renderer;->onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL10;II)V

    goto :goto_0
.end method

.method protected onSurfaceCreated(Lcom/fruitsmobile/basket/opengl/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 43
    return-void
.end method

.method protected onSurfaceCreated(Lcom/fruitsmobile/basket/opengl/GL20;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 53
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 15
    move-object v0, p1

    check-cast v0, Lcom/fruitsmobile/basket/opengl/GLCommon;

    move-object v1, v0

    .line 16
    .local v1, "glc":Lcom/fruitsmobile/basket/opengl/GLCommon;
    invoke-interface {v1}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glVersion()I

    move-result v2

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_0

    .line 17
    check-cast v1, Lcom/fruitsmobile/basket/opengl/GL20;

    .end local v1    # "glc":Lcom/fruitsmobile/basket/opengl/GLCommon;
    invoke-virtual {p0, v1, p2}, Lcom/fruitsmobile/basket/opengl/Renderer;->onSurfaceCreated(Lcom/fruitsmobile/basket/opengl/GL20;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 20
    :goto_0
    return-void

    .line 19
    .restart local v1    # "glc":Lcom/fruitsmobile/basket/opengl/GLCommon;
    :cond_0
    check-cast v1, Lcom/fruitsmobile/basket/opengl/GL10;

    .end local v1    # "glc":Lcom/fruitsmobile/basket/opengl/GLCommon;
    invoke-virtual {p0, v1, p2}, Lcom/fruitsmobile/basket/opengl/Renderer;->onSurfaceCreated(Lcom/fruitsmobile/basket/opengl/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    goto :goto_0
.end method

.method public onSurfaceLost()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
