.class Lcom/fruitsmobile/basket/SingleThreadGameEngine$GameRenderer;
.super Lcom/fruitsmobile/basket/opengl/Renderer;
.source "SingleThreadGameEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fruitsmobile/basket/SingleThreadGameEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fruitsmobile/basket/SingleThreadGameEngine;


# direct methods
.method private constructor <init>(Lcom/fruitsmobile/basket/SingleThreadGameEngine;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine$GameRenderer;->this$0:Lcom/fruitsmobile/basket/SingleThreadGameEngine;

    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/Renderer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fruitsmobile/basket/SingleThreadGameEngine;Lcom/fruitsmobile/basket/SingleThreadGameEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fruitsmobile/basket/SingleThreadGameEngine;
    .param p2, "x1"    # Lcom/fruitsmobile/basket/SingleThreadGameEngine$1;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/fruitsmobile/basket/SingleThreadGameEngine$GameRenderer;-><init>(Lcom/fruitsmobile/basket/SingleThreadGameEngine;)V

    return-void
.end method


# virtual methods
.method protected onDrawFrame(Lcom/fruitsmobile/basket/opengl/GL10;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine$GameRenderer;->this$0:Lcom/fruitsmobile/basket/SingleThreadGameEngine;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->drawFrame(Lcom/fruitsmobile/basket/opengl/GL10;)V

    .line 223
    return-void
.end method

.method protected onDrawFrame(Lcom/fruitsmobile/basket/opengl/GL20;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine$GameRenderer;->this$0:Lcom/fruitsmobile/basket/SingleThreadGameEngine;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->drawFrame(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 227
    return-void
.end method

.method protected onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL10;II)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine$GameRenderer;->this$0:Lcom/fruitsmobile/basket/SingleThreadGameEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL10;II)V

    .line 215
    return-void
.end method

.method protected onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL20;II)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine$GameRenderer;->this$0:Lcom/fruitsmobile/basket/SingleThreadGameEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL20;II)V

    .line 231
    return-void
.end method

.method protected onSurfaceCreated(Lcom/fruitsmobile/basket/opengl/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine$GameRenderer;->this$0:Lcom/fruitsmobile/basket/SingleThreadGameEngine;

    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->onSurfaceCreated(Lcom/fruitsmobile/basket/opengl/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 219
    return-void
.end method

.method protected onSurfaceCreated(Lcom/fruitsmobile/basket/opengl/GL20;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine$GameRenderer;->this$0:Lcom/fruitsmobile/basket/SingleThreadGameEngine;

    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->onSurfaceCreated(Lcom/fruitsmobile/basket/opengl/GL20;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 235
    return-void
.end method

.method public onSurfaceLost()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/fruitsmobile/basket/SingleThreadGameEngine$GameRenderer;->this$0:Lcom/fruitsmobile/basket/SingleThreadGameEngine;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/SingleThreadGameEngine;->onSurfaceLost()V

    .line 240
    return-void
.end method
