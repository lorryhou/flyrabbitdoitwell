.class Lcom/fruitsmobile/basket/opengl/GLSurfaceView$SimpleEGLConfigChooser;
.super Lcom/fruitsmobile/basket/opengl/GLSurfaceView$ComponentSizeChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fruitsmobile/basket/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;Z)V
    .locals 9
    .param p2, "withDepthBuffer"    # Z

    .prologue
    const/4 v8, 0x5

    const/4 v2, 0x4

    const/4 v5, 0x0

    .line 749
    iput-object p1, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$SimpleEGLConfigChooser;->this$0:Lcom/fruitsmobile/basket/opengl/GLSurfaceView;

    .line 750
    if-eqz p2, :cond_0

    const/16 v0, 0x10

    move v6, v0

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/fruitsmobile/basket/opengl/GLSurfaceView;IIIIII)V

    .line 753
    iput v8, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$SimpleEGLConfigChooser;->mRedSize:I

    .line 754
    const/4 v0, 0x6

    iput v0, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$SimpleEGLConfigChooser;->mGreenSize:I

    .line 755
    iput v8, p0, Lcom/fruitsmobile/basket/opengl/GLSurfaceView$SimpleEGLConfigChooser;->mBlueSize:I

    .line 756
    return-void

    :cond_0
    move v6, v5

    .line 750
    goto :goto_0
.end method
