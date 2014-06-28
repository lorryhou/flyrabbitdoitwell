.class public abstract Lcom/fruitsmobile/basket/SpriteBase;
.super Lcom/fruitsmobile/basket/DrawableObject;
.source "SpriteBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;,
        Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;
    }
.end annotation


# static fields
.field private static final fShaderSrcWithTexture:Ljava/lang/String; = "precision mediump float;uniform sampler2D u_texture;varying vec2 v_texcoord;void main(){\tgl_FragColor = texture2D(u_texture, v_texcoord);}"

.field private static final fShaderSrcWithoutTexture:Ljava/lang/String; = "precision mediump float;uniform vec4 u_Color;void main(){\tgl_FragColor = u_Color;}"

.field public static forceNeedRecommit:Z = false

.field protected static spriteShaderProgramWithTexture:Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram; = null

.field protected static spriteShaderProgramWithoutTexture:Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram; = null

.field public static final vShaderSrcWithTexture:Ljava/lang/String; = "precision mediump float;uniform mat4 u_vmatrix;attribute vec4 a_Position;attribute vec2 a_texcoord;varying vec2 v_texcoord;void main(){\tgl_Position = u_vmatrix * a_Position;\tv_texcoord = a_texcoord;}"

.field private static final vShaderSrcWithoutTexture:Ljava/lang/String; = "precision mediump float;uniform mat4 u_vmatrix;attribute vec4 a_Position;void main(){\tgl_Position = u_vmatrix * a_Position;}"


# instance fields
.field private datastamp:I

.field private needChecked:Z

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "a_Position"

    .line 58
    sput-boolean v5, Lcom/fruitsmobile/basket/SpriteBase;->forceNeedRecommit:Z

    .line 215
    new-instance v0, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;

    new-instance v1, Lcom/fruitsmobile/basket/resources/StringCodeLocation;

    const-string v2, "precision mediump float;uniform mat4 u_vmatrix;attribute vec4 a_Position;attribute vec2 a_texcoord;varying vec2 v_texcoord;void main(){\tgl_Position = u_vmatrix * a_Position;\tv_texcoord = a_texcoord;}"

    invoke-direct {v1, v2}, Lcom/fruitsmobile/basket/resources/StringCodeLocation;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/fruitsmobile/basket/resources/StringCodeLocation;

    const-string v3, "precision mediump float;uniform sampler2D u_texture;varying vec2 v_texcoord;void main(){\tgl_FragColor = texture2D(u_texture, v_texcoord);}"

    invoke-direct {v2, v3}, Lcom/fruitsmobile/basket/resources/StringCodeLocation;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "a_Position"

    aput-object v7, v3, v5

    const-string v4, "a_texcoord"

    aput-object v4, v3, v6

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;-><init>(Lcom/fruitsmobile/basket/resources/Location;Lcom/fruitsmobile/basket/resources/Location;[Ljava/lang/String;Z)V

    sput-object v0, Lcom/fruitsmobile/basket/SpriteBase;->spriteShaderProgramWithTexture:Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;

    .line 224
    new-instance v0, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;

    new-instance v1, Lcom/fruitsmobile/basket/resources/StringCodeLocation;

    const-string v2, "precision mediump float;uniform mat4 u_vmatrix;attribute vec4 a_Position;void main(){\tgl_Position = u_vmatrix * a_Position;}"

    invoke-direct {v1, v2}, Lcom/fruitsmobile/basket/resources/StringCodeLocation;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/fruitsmobile/basket/resources/StringCodeLocation;

    const-string v3, "precision mediump float;uniform vec4 u_Color;void main(){\tgl_FragColor = u_Color;}"

    invoke-direct {v2, v3}, Lcom/fruitsmobile/basket/resources/StringCodeLocation;-><init>(Ljava/lang/String;)V

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "a_Position"

    aput-object v7, v3, v5

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;-><init>(Lcom/fruitsmobile/basket/resources/Location;Lcom/fruitsmobile/basket/resources/Location;[Ljava/lang/String;Z)V

    sput-object v0, Lcom/fruitsmobile/basket/SpriteBase;->spriteShaderProgramWithoutTexture:Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/fruitsmobile/basket/DrawableObject;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fruitsmobile/basket/SpriteBase;->visible:Z

    .line 56
    iput v1, p0, Lcom/fruitsmobile/basket/SpriteBase;->datastamp:I

    .line 57
    iput-boolean v1, p0, Lcom/fruitsmobile/basket/SpriteBase;->needChecked:Z

    .line 24
    return-void
.end method


# virtual methods
.method protected checkProgram(Lcom/fruitsmobile/basket/opengl/GL20;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;

    .prologue
    .line 82
    sget-object v0, Lcom/fruitsmobile/basket/SpriteBase;->spriteShaderProgramWithTexture:Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->isActived()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    sget-object v0, Lcom/fruitsmobile/basket/SpriteBase;->spriteShaderProgramWithTexture:Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->active()V

    .line 85
    :cond_0
    sget-object v0, Lcom/fruitsmobile/basket/SpriteBase;->spriteShaderProgramWithTexture:Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    sget-object v0, Lcom/fruitsmobile/basket/SpriteBase;->spriteShaderProgramWithTexture:Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 88
    :cond_1
    sget-object v0, Lcom/fruitsmobile/basket/SpriteBase;->spriteShaderProgramWithoutTexture:Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->isActived()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    sget-object v0, Lcom/fruitsmobile/basket/SpriteBase;->spriteShaderProgramWithoutTexture:Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->active()V

    .line 91
    :cond_2
    sget-object v0, Lcom/fruitsmobile/basket/SpriteBase;->spriteShaderProgramWithoutTexture:Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 92
    sget-object v0, Lcom/fruitsmobile/basket/SpriteBase;->spriteShaderProgramWithoutTexture:Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 94
    :cond_3
    return-void
.end method

.method protected createSnapshotData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;-><init>()V

    return-object v0
.end method

.method public isOnScreen()Z
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/SpriteBase;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/SpriteBase;->visible:Z

    return v0
.end method

.method public needRecommit(Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;)Z
    .locals 3
    .param p1, "snapshot"    # Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;

    .prologue
    const/4 v2, 0x1

    .line 61
    iput-boolean v2, p0, Lcom/fruitsmobile/basket/SpriteBase;->needChecked:Z

    .line 62
    iget v0, p0, Lcom/fruitsmobile/basket/SpriteBase;->datastamp:I

    iget v1, p1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->datastamp:I

    if-eq v0, v1, :cond_0

    .line 63
    iget v0, p0, Lcom/fruitsmobile/basket/SpriteBase;->datastamp:I

    iput v0, p1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->datastamp:I

    move v0, v2

    .line 66
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/fruitsmobile/basket/SpriteBase;->forceNeedRecommit:Z

    goto :goto_0
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL10;Ljava/lang/Object;)V
    .locals 9
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const v4, 0x8078

    const/16 v8, 0x1406

    const/16 v3, 0xde1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 97
    move-object v0, p2

    check-cast v0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;

    move-object v1, v0

    .line 99
    .local v1, "snapshot":Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;
    iget-object v2, v1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    if-eqz v2, :cond_0

    .line 100
    iget-object v2, v1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v2}, Lcom/fruitsmobile/basket/math/Matrix;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/fruitsmobile/basket/opengl/GL10;->glLoadMatrixf(Ljava/nio/Buffer;)V

    .line 105
    :goto_0
    const v2, 0x8074

    invoke-interface {p1, v2}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnableClientState(I)V

    .line 107
    iget-object v2, v1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    .line 108
    invoke-interface {p1, v3}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnable(I)V

    .line 109
    invoke-interface {p1, v4}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnableClientState(I)V

    .line 110
    iget-object v2, v1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v2}, Lcom/fruitsmobile/basket/resources/Texture;->bind()V

    .line 111
    iget-object v2, v1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v7, v8, v6, v2}, Lcom/fruitsmobile/basket/opengl/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 117
    :goto_1
    const v2, 0x8076

    invoke-interface {p1, v2}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisableClientState(I)V

    .line 118
    iget v2, v1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->red:F

    iget v3, v1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    mul-float/2addr v2, v3

    iget v3, v1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->green:F

    iget v4, v1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    mul-float/2addr v3, v4

    iget v4, v1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->blue:F

    iget v5, v1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    mul-float/2addr v4, v5

    iget v5, v1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/fruitsmobile/basket/opengl/GL10;->glColor4f(FFFF)V

    .line 120
    iget-object v2, v1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v7, v8, v6, v2}, Lcom/fruitsmobile/basket/opengl/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 121
    iget v2, v1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->mode:I

    iget v3, v1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->start:I

    iget v4, v1, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->count:I

    invoke-interface {p1, v2, v3, v4}, Lcom/fruitsmobile/basket/opengl/GL10;->glDrawArrays(III)V

    .line 122
    return-void

    .line 102
    :cond_0
    sget-object v2, Lcom/fruitsmobile/basket/math/Matrix;->IdentityMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v2}, Lcom/fruitsmobile/basket/math/Matrix;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/fruitsmobile/basket/opengl/GL10;->glLoadMatrixf(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-interface {p1, v3}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisable(I)V

    .line 114
    invoke-interface {p1, v4}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisableClientState(I)V

    goto :goto_1
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL20;Ljava/lang/Object;)V
    .locals 10
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/16 v4, 0x1406

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 125
    move-object v0, p2

    check-cast v0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;

    move-object v9, v0

    .line 126
    .local v9, "snapshot":Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;
    invoke-virtual {p0, p1}, Lcom/fruitsmobile/basket/SpriteBase;->checkProgram(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 130
    iget-object v1, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    if-eqz v1, :cond_0

    iget-object v1, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 131
    sget-object v8, Lcom/fruitsmobile/basket/SpriteBase;->spriteShaderProgramWithTexture:Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;

    .line 132
    .local v8, "shader":Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;
    invoke-virtual {v8, p1}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->use(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 133
    invoke-virtual {v8, v2}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->glEnableVertexAttribArray(I)V

    .line 134
    invoke-virtual {v8, v2}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v2

    iget-object v7, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    move-object v1, p1

    move v6, v5

    invoke-interface/range {v1 .. v7}, Lcom/fruitsmobile/basket/opengl/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 135
    iget-object v1, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v8, v1}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->setUniformTexture(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 142
    :goto_0
    iget-object v1, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v8, v1}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->setUniformVertexMatrix(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 148
    :goto_1
    iget v1, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->red:F

    iget v2, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    mul-float/2addr v1, v2

    iget v2, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->green:F

    iget v6, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    mul-float/2addr v2, v6

    iget v6, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->blue:F

    iget v7, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    mul-float/2addr v6, v7

    iget v7, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    invoke-virtual {v8, v1, v2, v6, v7}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->setUniformColor(FFFF)V

    .line 151
    invoke-virtual {v8, v5}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->glEnableVertexAttribArray(I)V

    .line 152
    invoke-virtual {v8, v5}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v2

    iget-object v7, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    move-object v1, p1

    move v6, v5

    invoke-interface/range {v1 .. v7}, Lcom/fruitsmobile/basket/opengl/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 153
    iget v1, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->mode:I

    iget v2, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->start:I

    iget v3, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->count:I

    invoke-interface {p1, v1, v2, v3}, Lcom/fruitsmobile/basket/opengl/GL20;->glDrawArrays(III)V

    .line 154
    return-void

    .line 137
    .end local v8    # "shader":Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;
    :cond_0
    sget-object v8, Lcom/fruitsmobile/basket/SpriteBase;->spriteShaderProgramWithoutTexture:Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;

    .line 138
    .restart local v8    # "shader":Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;
    invoke-virtual {v8, p1}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->use(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 139
    invoke-interface {p1, v2}, Lcom/fruitsmobile/basket/opengl/GL20;->glDisableVertexAttribArray(I)V

    goto :goto_0

    .line 145
    :cond_1
    sget-object v1, Lcom/fruitsmobile/basket/math/Matrix;->IdentityMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v8, v1}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->setUniformVertexMatrix(Lcom/fruitsmobile/basket/math/Matrix;)V

    goto :goto_1
.end method

.method public setNeedRecommit()V
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/fruitsmobile/basket/SpriteBase;->needChecked:Z

    if-eqz v0, :cond_0

    .line 71
    iget v0, p0, Lcom/fruitsmobile/basket/SpriteBase;->datastamp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fruitsmobile/basket/SpriteBase;->datastamp:I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fruitsmobile/basket/SpriteBase;->needChecked:Z

    .line 74
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/fruitsmobile/basket/SpriteBase;->visible:Z

    .line 34
    return-void
.end method
