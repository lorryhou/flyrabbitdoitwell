.class public Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;
.super Lcom/fruitsmobile/basket/resources/ShaderProgram;
.source "GameLoading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/forthblue/pool/GameLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SpriteShaderProgram"
.end annotation


# instance fields
.field private uniform_texture:I

.field private uniform_vmatrix:I


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Location;Lcom/fruitsmobile/basket/resources/Location;[Ljava/lang/String;)V
    .locals 0
    .param p1, "vShaderSrc"    # Lcom/fruitsmobile/basket/resources/Location;
    .param p2, "fShaderSrc"    # Lcom/fruitsmobile/basket/resources/Location;
    .param p3, "attributes"    # [Ljava/lang/String;

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/fruitsmobile/basket/resources/ShaderProgram;-><init>(Lcom/fruitsmobile/basket/resources/Location;Lcom/fruitsmobile/basket/resources/Location;[Ljava/lang/String;)V

    .line 189
    return-void
.end method


# virtual methods
.method public load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V
    .locals 4
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GLCommon;

    .prologue
    .line 196
    iget v2, p0, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->shaderId:I

    if-nez v2, :cond_0

    invoke-interface {p1}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glVersion()I

    move-result v2

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_0

    .line 197
    move-object v0, p1

    check-cast v0, Lcom/fruitsmobile/basket/opengl/GL20;

    move-object v1, v0

    .line 198
    .local v1, "gl20":Lcom/fruitsmobile/basket/opengl/GL20;
    invoke-super {p0, p1}, Lcom/fruitsmobile/basket/resources/ShaderProgram;->load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 199
    iget v2, p0, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->shaderId:I

    const-string v3, "u_texture"

    invoke-interface {v1, v2, v3}, Lcom/fruitsmobile/basket/opengl/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->uniform_texture:I

    .line 200
    iget v2, p0, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->shaderId:I

    const-string v3, "u_vmatrix"

    invoke-interface {v1, v2, v3}, Lcom/fruitsmobile/basket/opengl/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->uniform_vmatrix:I

    .line 202
    .end local v1    # "gl20":Lcom/fruitsmobile/basket/opengl/GL20;
    :cond_0
    return-void
.end method

.method public setUniformTexture(Lcom/fruitsmobile/basket/resources/Texture;)V
    .locals 3
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    .line 205
    sget-object v0, Lcom/fruitsmobile/basket/util/GLHelper;->gl20:Lcom/fruitsmobile/basket/opengl/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->glActiveTexture(I)V

    .line 206
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/Texture;->bind()V

    .line 207
    sget-object v0, Lcom/fruitsmobile/basket/util/GLHelper;->gl20:Lcom/fruitsmobile/basket/opengl/GL20;

    iget v1, p0, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->uniform_texture:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/fruitsmobile/basket/opengl/GL20;->glUniform1i(II)V

    .line 208
    return-void
.end method

.method public setUniformVertexMatrix(Lcom/fruitsmobile/basket/math/Matrix;)V
    .locals 5
    .param p1, "mat"    # Lcom/fruitsmobile/basket/math/Matrix;

    .prologue
    .line 211
    sget-object v0, Lcom/fruitsmobile/basket/util/GLHelper;->gl20:Lcom/fruitsmobile/basket/opengl/GL20;

    iget v1, p0, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->uniform_vmatrix:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/fruitsmobile/basket/math/Matrix;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/fruitsmobile/basket/opengl/GL20;->glUniformMatrix4fv(IIZLjava/nio/Buffer;)V

    .line 212
    return-void
.end method
