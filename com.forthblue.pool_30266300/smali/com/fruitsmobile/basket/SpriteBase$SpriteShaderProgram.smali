.class public Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;
.super Lcom/fruitsmobile/basket/resources/ShaderProgram;
.source "SpriteBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fruitsmobile/basket/SpriteBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SpriteShaderProgram"
.end annotation


# instance fields
.field private uniform_color:I

.field private uniform_texture:I

.field private uniform_vmatrix:I

.field withTexture:Z


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Location;Lcom/fruitsmobile/basket/resources/Location;[Ljava/lang/String;Z)V
    .locals 0
    .param p1, "vShaderSrc"    # Lcom/fruitsmobile/basket/resources/Location;
    .param p2, "fShaderSrc"    # Lcom/fruitsmobile/basket/resources/Location;
    .param p3, "attributes"    # [Ljava/lang/String;
    .param p4, "withTexture"    # Z

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/fruitsmobile/basket/resources/ShaderProgram;-><init>(Lcom/fruitsmobile/basket/resources/Location;Lcom/fruitsmobile/basket/resources/Location;[Ljava/lang/String;)V

    .line 161
    iput-boolean p4, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->withTexture:Z

    .line 162
    return-void
.end method


# virtual methods
.method public load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V
    .locals 4
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GLCommon;

    .prologue
    .line 170
    iget v2, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->shaderId:I

    if-nez v2, :cond_1

    invoke-interface {p1}, Lcom/fruitsmobile/basket/opengl/GLCommon;->glVersion()I

    move-result v2

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_1

    .line 171
    move-object v0, p1

    check-cast v0, Lcom/fruitsmobile/basket/opengl/GL20;

    move-object v1, v0

    .line 172
    .local v1, "gl20":Lcom/fruitsmobile/basket/opengl/GL20;
    invoke-super {p0, p1}, Lcom/fruitsmobile/basket/resources/ShaderProgram;->load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 173
    iget-boolean v2, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->withTexture:Z

    if-eqz v2, :cond_0

    .line 174
    iget v2, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->shaderId:I

    const-string v3, "u_texture"

    invoke-interface {v1, v2, v3}, Lcom/fruitsmobile/basket/opengl/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->uniform_texture:I

    .line 176
    :cond_0
    iget v2, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->shaderId:I

    const-string v3, "u_vmatrix"

    invoke-interface {v1, v2, v3}, Lcom/fruitsmobile/basket/opengl/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->uniform_vmatrix:I

    .line 177
    iget v2, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->shaderId:I

    const-string v3, "u_Color"

    invoke-interface {v1, v2, v3}, Lcom/fruitsmobile/basket/opengl/GL20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->uniform_color:I

    .line 179
    .end local v1    # "gl20":Lcom/fruitsmobile/basket/opengl/GL20;
    :cond_1
    return-void
.end method

.method public setUniformColor(FFFF)V
    .locals 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 194
    sget-object v0, Lcom/fruitsmobile/basket/util/GLHelper;->gl20:Lcom/fruitsmobile/basket/opengl/GL20;

    iget v1, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->uniform_color:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/fruitsmobile/basket/opengl/GL20;->glUniform4f(IFFFF)V

    .line 195
    return-void
.end method

.method public setUniformTexture(Lcom/fruitsmobile/basket/resources/Texture;)V
    .locals 3
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->withTexture:Z

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/fruitsmobile/basket/util/GLHelper;->gl20:Lcom/fruitsmobile/basket/opengl/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->glActiveTexture(I)V

    .line 184
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/Texture;->bind()V

    .line 185
    sget-object v0, Lcom/fruitsmobile/basket/util/GLHelper;->gl20:Lcom/fruitsmobile/basket/opengl/GL20;

    iget v1, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->uniform_texture:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/fruitsmobile/basket/opengl/GL20;->glUniform1i(II)V

    .line 187
    :cond_0
    return-void
.end method

.method public setUniformVertexMatrix(Lcom/fruitsmobile/basket/math/Matrix;)V
    .locals 5
    .param p1, "mat"    # Lcom/fruitsmobile/basket/math/Matrix;

    .prologue
    .line 190
    sget-object v0, Lcom/fruitsmobile/basket/util/GLHelper;->gl20:Lcom/fruitsmobile/basket/opengl/GL20;

    iget v1, p0, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->uniform_vmatrix:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/fruitsmobile/basket/math/Matrix;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/fruitsmobile/basket/opengl/GL20;->glUniformMatrix4fv(IIZLjava/nio/Buffer;)V

    .line 191
    return-void
.end method
