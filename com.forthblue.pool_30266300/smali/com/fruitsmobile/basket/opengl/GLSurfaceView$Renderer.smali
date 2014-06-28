.class public interface abstract Lcom/fruitsmobile/basket/opengl/GLSurfaceView$Renderer;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fruitsmobile/basket/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Renderer"
.end annotation


# virtual methods
.method public abstract onDrawFrame(Ljavax/microedition/khronos/opengles/GL;)V
.end method

.method public abstract onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL;II)V
.end method

.method public abstract onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end method

.method public abstract onSurfaceLost()V
.end method
