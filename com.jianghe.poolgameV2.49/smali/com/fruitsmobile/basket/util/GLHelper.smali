.class public Lcom/fruitsmobile/basket/util/GLHelper;
.super Ljava/lang/Object;
.source "GLHelper.java"


# static fields
.field public static gl:Lcom/fruitsmobile/basket/opengl/GLCommon;

.field public static gl10:Lcom/fruitsmobile/basket/opengl/GL10;

.field public static gl20:Lcom/fruitsmobile/basket/opengl/GL20;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setGL(Lcom/fruitsmobile/basket/opengl/GLCommon;)V
    .locals 2
    .param p0, "gl"    # Lcom/fruitsmobile/basket/opengl/GLCommon;

    .prologue
    .line 14
    sput-object p0, Lcom/fruitsmobile/basket/util/GLHelper;->gl:Lcom/fruitsmobile/basket/opengl/GLCommon;

    .line 15
    invoke-interface {p0}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glVersion()I

    move-result v0

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    .line 16
    check-cast p0, Lcom/fruitsmobile/basket/opengl/GL20;

    .end local p0    # "gl":Lcom/fruitsmobile/basket/opengl/GLCommon;
    sput-object p0, Lcom/fruitsmobile/basket/util/GLHelper;->gl20:Lcom/fruitsmobile/basket/opengl/GL20;

    .line 20
    :goto_0
    return-void

    .line 18
    .restart local p0    # "gl":Lcom/fruitsmobile/basket/opengl/GLCommon;
    :cond_0
    check-cast p0, Lcom/fruitsmobile/basket/opengl/GL10;

    .end local p0    # "gl":Lcom/fruitsmobile/basket/opengl/GLCommon;
    sput-object p0, Lcom/fruitsmobile/basket/util/GLHelper;->gl10:Lcom/fruitsmobile/basket/opengl/GL10;

    goto :goto_0
.end method
