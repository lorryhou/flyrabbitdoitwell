.class Lcom/fruitsmobile/basket/GameEngine$GameRenderer;
.super Lcom/fruitsmobile/basket/opengl/Renderer;
.source "GameEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fruitsmobile/basket/GameEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fruitsmobile/basket/GameEngine;


# direct methods
.method private constructor <init>(Lcom/fruitsmobile/basket/GameEngine;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/fruitsmobile/basket/GameEngine$GameRenderer;->this$0:Lcom/fruitsmobile/basket/GameEngine;

    invoke-direct {p0}, Lcom/fruitsmobile/basket/opengl/Renderer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fruitsmobile/basket/GameEngine;Lcom/fruitsmobile/basket/GameEngine$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fruitsmobile/basket/GameEngine;
    .param p2, "x1"    # Lcom/fruitsmobile/basket/GameEngine$1;

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/fruitsmobile/basket/GameEngine$GameRenderer;-><init>(Lcom/fruitsmobile/basket/GameEngine;)V

    return-void
.end method


# virtual methods
.method protected onDrawFrame(Lcom/fruitsmobile/basket/opengl/GL10;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine$GameRenderer;->this$0:Lcom/fruitsmobile/basket/GameEngine;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/GameEngine;->drawFrame(Lcom/fruitsmobile/basket/opengl/GL10;)V

    .line 276
    return-void
.end method

.method protected onDrawFrame(Lcom/fruitsmobile/basket/opengl/GL20;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine$GameRenderer;->this$0:Lcom/fruitsmobile/basket/GameEngine;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/GameEngine;->drawFrame(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 288
    return-void
.end method

.method protected onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL10;II)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine$GameRenderer;->this$0:Lcom/fruitsmobile/basket/GameEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fruitsmobile/basket/GameEngine;->onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL10;II)V

    .line 280
    return-void
.end method

.method protected onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL20;II)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 291
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine$GameRenderer;->this$0:Lcom/fruitsmobile/basket/GameEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fruitsmobile/basket/GameEngine;->onSurfaceChanged(Lcom/fruitsmobile/basket/opengl/GL20;II)V

    .line 292
    return-void
.end method

.method protected onSurfaceCreated(Lcom/fruitsmobile/basket/opengl/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine$GameRenderer;->this$0:Lcom/fruitsmobile/basket/GameEngine;

    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/GameEngine;->onSurfaceCreated(Lcom/fruitsmobile/basket/opengl/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 284
    return-void
.end method

.method protected onSurfaceCreated(Lcom/fruitsmobile/basket/opengl/GL20;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine$GameRenderer;->this$0:Lcom/fruitsmobile/basket/GameEngine;

    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/GameEngine;->onSurfaceCreated(Lcom/fruitsmobile/basket/opengl/GL20;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 296
    return-void
.end method

.method public onSurfaceLost()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/fruitsmobile/basket/GameEngine$GameRenderer;->this$0:Lcom/fruitsmobile/basket/GameEngine;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/GameEngine;->onSurfaceLost()V

    .line 300
    return-void
.end method
