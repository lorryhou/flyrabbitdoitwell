.class public Lcom/forthblue/pool/GameLoading;
.super Ljava/lang/Object;
.source "GameLoading.java"

# interfaces
.implements Lcom/fruitsmobile/basket/interfaces/Loading;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;
    }
.end annotation


# static fields
.field private static final fShaderSrcWithTexture:Ljava/lang/String; = "precision mediump float;uniform sampler2D u_texture;varying vec2 v_texcoord;void main(){\tgl_FragColor = texture2D(u_texture, v_texcoord);}"

.field protected static program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram; = null

.field public static final vShaderSrcWithTexture:Ljava/lang/String; = "precision mediump float;uniform mat4 u_vmatrix;attribute vec4 a_Position;attribute vec2 a_texcoord;varying vec2 v_texcoord;void main(){\tgl_Position = u_vmatrix * a_Position;\tv_texcoord = a_texcoord;}"


# instance fields
.field private back:Lcom/fruitsmobile/basket/resources/Texture;

.field private height:F

.field private loading:Lcom/fruitsmobile/basket/resources/Texture;

.field stack:Lcom/fruitsmobile/basket/util/MatrixStack;

.field texcoordBuffer:Ljava/nio/ByteBuffer;

.field texcoordMatrix:Lcom/fruitsmobile/basket/math/Matrix;

.field vertexBuffer:Ljava/nio/ByteBuffer;

.field private width:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 232
    new-instance v0, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    new-instance v1, Lcom/fruitsmobile/basket/resources/StringCodeLocation;

    const-string v2, "precision mediump float;uniform mat4 u_vmatrix;attribute vec4 a_Position;attribute vec2 a_texcoord;varying vec2 v_texcoord;void main(){\tgl_Position = u_vmatrix * a_Position;\tv_texcoord = a_texcoord;}"

    invoke-direct {v1, v2}, Lcom/fruitsmobile/basket/resources/StringCodeLocation;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/fruitsmobile/basket/resources/StringCodeLocation;

    const-string v3, "precision mediump float;uniform sampler2D u_texture;varying vec2 v_texcoord;void main(){\tgl_FragColor = texture2D(u_texture, v_texcoord);}"

    invoke-direct {v2, v3}, Lcom/fruitsmobile/basket/resources/StringCodeLocation;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "a_Position"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "a_texcoord"

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;-><init>(Lcom/fruitsmobile/basket/resources/Location;Lcom/fruitsmobile/basket/resources/Location;[Ljava/lang/String;)V

    sput-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const v0, 0x7f020015

    invoke-static {v0}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/forthblue/pool/GameLoading;->back:Lcom/fruitsmobile/basket/resources/Texture;

    .line 22
    const v0, 0x7f02006e

    invoke-static {v0}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/forthblue/pool/GameLoading;->loading:Lcom/fruitsmobile/basket/resources/Texture;

    .line 181
    new-instance v0, Lcom/fruitsmobile/basket/util/MatrixStack;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/util/MatrixStack;-><init>(I)V

    iput-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    .line 182
    new-instance v0, Lcom/fruitsmobile/basket/math/Matrix;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/math/Matrix;-><init>()V

    iput-object v0, p0, Lcom/forthblue/pool/GameLoading;->texcoordMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    .line 183
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer([F)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/forthblue/pool/GameLoading;->vertexBuffer:Ljava/nio/ByteBuffer;

    .line 184
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer([F)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/forthblue/pool/GameLoading;->texcoordBuffer:Ljava/nio/ByteBuffer;

    .line 26
    const/high16 v0, 0x44480000

    iput v0, p0, Lcom/forthblue/pool/GameLoading;->width:F

    .line 27
    const/high16 v0, 0x43f00000

    iput v0, p0, Lcom/forthblue/pool/GameLoading;->height:F

    .line 28
    return-void

    .line 183
    nop

    :array_0
    .array-data 4
        -0x41000000
        -0x41000000
        -0x41000000
        0x3f000000
        0x3f000000
        -0x41000000
        0x3f000000
        0x3f000000
    .end array-data

    .line 184
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000
        0x3f800000
        0x0
        0x3f800000
        0x3f800000
    .end array-data
.end method

.method private load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GLCommon;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->back:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/resources/Texture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->back:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/resources/Texture;->load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->loading:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/resources/Texture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->loading:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/resources/Texture;->load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 42
    :cond_1
    return-void
.end method


# virtual methods
.method public load(Lcom/fruitsmobile/basket/opengl/GL10;)V
    .locals 0
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/forthblue/pool/GameLoading;->load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 46
    return-void
.end method

.method public load(Lcom/fruitsmobile/basket/opengl/GL20;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/forthblue/pool/GameLoading;->load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 50
    sget-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    invoke-virtual {v0, p1}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 51
    return-void
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL10;)V
    .locals 10
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;

    .prologue
    const/high16 v1, 0x3f800000

    const/16 v9, 0x1406

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 57
    invoke-interface {p1, v2, v2, v2, v2}, Lcom/fruitsmobile/basket/opengl/GL10;->glClearColor(FFFF)V

    .line 58
    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glClear(I)V

    .line 60
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnable(I)V

    .line 61
    const v0, 0x8078

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnableClientState(I)V

    .line 62
    const v0, 0x8076

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisableClientState(I)V

    .line 63
    invoke-interface {p1, v1, v1, v1, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glColor4f(FFFF)V

    .line 65
    const v0, 0x8074

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnableClientState(I)V

    .line 66
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->reset()V

    .line 67
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/forthblue/pool/GameLoading;->width:F

    iget v3, p0, Lcom/forthblue/pool/GameLoading;->height:F

    invoke-virtual {v0, v2, v2, v1, v3}, Lcom/fruitsmobile/basket/math/Matrix;->loadOrtho2D(FFFF)V

    .line 69
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->vertexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v8, v9, v7, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 71
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->push()V

    .line 72
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/forthblue/pool/GameLoading;->back:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/resources/Texture;->getImageWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/forthblue/pool/GameLoading;->back:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v3}, Lcom/fruitsmobile/basket/resources/Texture;->getImageHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/fruitsmobile/basket/math/Matrix;->pushScale2D(FF)V

    .line 73
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/math/Matrix;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glLoadMatrixf(Ljava/nio/Buffer;)V

    .line 74
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->back:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/resources/Texture;->bind()V

    .line 75
    iget-object v1, p0, Lcom/forthblue/pool/GameLoading;->texcoordBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->back:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/resources/Texture;->getImageWidthProportion()F

    move-result v4

    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->back:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/resources/Texture;->getImageHeightProportion()F

    move-result v5

    move-object v0, p1

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/fruitsmobile/basket/opengl/GL10;->bglWriteRect2DPoint(Ljava/nio/Buffer;FFFF)V

    .line 76
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->texcoordBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v8, v9, v7, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 77
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {p1, v0, v7, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glDrawArrays(III)V

    .line 78
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->pop()V

    .line 81
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->push()V

    .line 82
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    const/high16 v1, -0x3d600000

    invoke-virtual {v0, v2, v1}, Lcom/fruitsmobile/basket/math/Matrix;->pushTranslate2D(FF)V

    .line 83
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    const/high16 v1, 0x42fe0000

    const/high16 v3, 0x42440000

    invoke-virtual {v0, v1, v3}, Lcom/fruitsmobile/basket/math/Matrix;->pushScale2D(FF)V

    .line 84
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/math/Matrix;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glLoadMatrixf(Ljava/nio/Buffer;)V

    .line 85
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->loading:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/resources/Texture;->bind()V

    .line 86
    iget-object v1, p0, Lcom/forthblue/pool/GameLoading;->texcoordBuffer:Ljava/nio/ByteBuffer;

    const/high16 v3, 0x3e600000

    const/high16 v4, 0x3efe0000

    const/high16 v5, 0x3f440000

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/fruitsmobile/basket/opengl/GL10;->bglWriteRect2DPoint(Ljava/nio/Buffer;FFFF)V

    .line 87
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->texcoordBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v8, v9, v7, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 88
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {p1, v0, v7, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glDrawArrays(III)V

    .line 89
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->pop()V

    .line 93
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->push()V

    .line 94
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    const/high16 v1, 0x43c60000

    const/high16 v3, 0x41c00000

    invoke-virtual {v0, v1, v3}, Lcom/fruitsmobile/basket/math/Matrix;->pushScale2D(FF)V

    .line 95
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/math/Matrix;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glLoadMatrixf(Ljava/nio/Buffer;)V

    .line 96
    iget-object v1, p0, Lcom/forthblue/pool/GameLoading;->texcoordBuffer:Ljava/nio/ByteBuffer;

    const/high16 v4, 0x3f7d0000

    const/high16 v5, 0x3e400000

    move-object v0, p1

    move v3, v2

    invoke-interface/range {v0 .. v5}, Lcom/fruitsmobile/basket/opengl/GL10;->bglWriteRect2DPoint(Ljava/nio/Buffer;FFFF)V

    .line 97
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->texcoordBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v8, v9, v7, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 98
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {p1, v0, v7, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glDrawArrays(III)V

    .line 99
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->pop()V

    .line 101
    invoke-static {}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->getLoadingFraction()F

    move-result v0

    const/high16 v1, 0x3f000000

    sub-float v6, v0, v1

    .line 102
    .local v6, "fraction":F
    const/high16 v0, 0x3f000000

    cmpl-float v0, v6, v0

    if-lez v0, :cond_0

    .line 103
    const/high16 v6, 0x3f000000

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->push()V

    .line 108
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    const/high16 v1, 0x43be0000

    mul-float/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/math/Matrix;->pushTranslate2D(FF)V

    .line 109
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    const/high16 v1, 0x42400000

    const/high16 v2, 0x42400000

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/math/Matrix;->pushScale2D(FF)V

    .line 110
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/math/Matrix;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glLoadMatrixf(Ljava/nio/Buffer;)V

    .line 111
    iget-object v1, p0, Lcom/forthblue/pool/GameLoading;->texcoordBuffer:Ljava/nio/ByteBuffer;

    const/high16 v2, 0x3f010000

    const/high16 v3, 0x3e600000

    const/high16 v4, 0x3e400000

    const/high16 v5, 0x3f400000

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/fruitsmobile/basket/opengl/GL10;->bglWriteRect2DPoint(Ljava/nio/Buffer;FFFF)V

    .line 112
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->texcoordBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v8, v9, v7, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 113
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {p1, v0, v7, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glDrawArrays(III)V

    .line 114
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->pop()V

    .line 116
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisable(I)V

    .line 117
    const v0, 0x8078

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisableClientState(I)V

    .line 118
    const v0, 0x8074

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisableClientState(I)V

    .line 120
    return-void
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL20;)V
    .locals 13
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;

    .prologue
    const/16 v3, 0x1406

    const/4 v2, 0x2

    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 123
    invoke-interface {p1, v7, v7, v7, v7}, Lcom/fruitsmobile/basket/opengl/GL20;->glClearColor(FFFF)V

    .line 124
    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL20;->glClear(I)V

    .line 126
    sget-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    invoke-virtual {v0, p1}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->use(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 128
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->reset()V

    .line 129
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/forthblue/pool/GameLoading;->width:F

    iget v5, p0, Lcom/forthblue/pool/GameLoading;->height:F

    invoke-virtual {v0, v7, v7, v1, v5}, Lcom/fruitsmobile/basket/math/Matrix;->loadOrtho2D(FFFF)V

    .line 131
    sget-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    invoke-virtual {v0, v4}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL20;->glEnableVertexAttribArray(I)V

    .line 132
    sget-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    invoke-virtual {v0, v12}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL20;->glEnableVertexAttribArray(I)V

    .line 134
    sget-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    invoke-virtual {v0, v4}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v1

    iget-object v6, p0, Lcom/forthblue/pool/GameLoading;->vertexBuffer:Ljava/nio/ByteBuffer;

    move-object v0, p1

    move v5, v4

    invoke-interface/range {v0 .. v6}, Lcom/fruitsmobile/basket/opengl/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 136
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->push()V

    .line 137
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/forthblue/pool/GameLoading;->back:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/resources/Texture;->getImageWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/forthblue/pool/GameLoading;->back:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v5}, Lcom/fruitsmobile/basket/resources/Texture;->getImageHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v1, v5}, Lcom/fruitsmobile/basket/math/Matrix;->pushScale2D(FF)V

    .line 138
    iget-object v6, p0, Lcom/forthblue/pool/GameLoading;->texcoordBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->back:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/resources/Texture;->getImageWidthProportion()F

    move-result v9

    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->back:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/resources/Texture;->getImageHeightProportion()F

    move-result v10

    move-object v5, p1

    move v8, v7

    invoke-interface/range {v5 .. v10}, Lcom/fruitsmobile/basket/opengl/GL20;->bglWriteRect2DPoint(Ljava/nio/Buffer;FFFF)V

    .line 139
    sget-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    invoke-virtual {v0, v12}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v1

    iget-object v6, p0, Lcom/forthblue/pool/GameLoading;->texcoordBuffer:Ljava/nio/ByteBuffer;

    move-object v0, p1

    move v5, v4

    invoke-interface/range {v0 .. v6}, Lcom/fruitsmobile/basket/opengl/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 140
    sget-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    iget-object v1, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->setUniformVertexMatrix(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 141
    sget-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    iget-object v1, p0, Lcom/forthblue/pool/GameLoading;->back:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->setUniformTexture(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 142
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {p1, v0, v4, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->glDrawArrays(III)V

    .line 143
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->pop()V

    .line 145
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->push()V

    .line 146
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    const/high16 v1, -0x3d380000

    invoke-virtual {v0, v7, v1}, Lcom/fruitsmobile/basket/math/Matrix;->pushTranslate2D(FF)V

    .line 147
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    const/high16 v1, 0x42fe0000

    const/high16 v5, 0x42440000

    invoke-virtual {v0, v1, v5}, Lcom/fruitsmobile/basket/math/Matrix;->pushScale2D(FF)V

    .line 148
    iget-object v6, p0, Lcom/forthblue/pool/GameLoading;->texcoordBuffer:Ljava/nio/ByteBuffer;

    const/high16 v8, 0x3e600000

    const/high16 v9, 0x3efe0000

    const/high16 v10, 0x3f440000

    move-object v5, p1

    invoke-interface/range {v5 .. v10}, Lcom/fruitsmobile/basket/opengl/GL20;->bglWriteRect2DPoint(Ljava/nio/Buffer;FFFF)V

    .line 149
    sget-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    invoke-virtual {v0, v12}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v1

    iget-object v6, p0, Lcom/forthblue/pool/GameLoading;->texcoordBuffer:Ljava/nio/ByteBuffer;

    move-object v0, p1

    move v5, v4

    invoke-interface/range {v0 .. v6}, Lcom/fruitsmobile/basket/opengl/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 150
    sget-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    iget-object v1, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->setUniformVertexMatrix(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 151
    sget-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    iget-object v1, p0, Lcom/forthblue/pool/GameLoading;->loading:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->setUniformTexture(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 152
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {p1, v0, v4, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->glDrawArrays(III)V

    .line 153
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->pop()V

    .line 155
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->push()V

    .line 156
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    const/high16 v1, 0x43c60000

    const/high16 v5, 0x41c00000

    invoke-virtual {v0, v1, v5}, Lcom/fruitsmobile/basket/math/Matrix;->pushScale2D(FF)V

    .line 157
    iget-object v6, p0, Lcom/forthblue/pool/GameLoading;->texcoordBuffer:Ljava/nio/ByteBuffer;

    const/high16 v9, 0x3f7d0000

    const/high16 v10, 0x3e400000

    move-object v5, p1

    move v8, v7

    invoke-interface/range {v5 .. v10}, Lcom/fruitsmobile/basket/opengl/GL20;->bglWriteRect2DPoint(Ljava/nio/Buffer;FFFF)V

    .line 158
    sget-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    invoke-virtual {v0, v12}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v1

    iget-object v6, p0, Lcom/forthblue/pool/GameLoading;->texcoordBuffer:Ljava/nio/ByteBuffer;

    move-object v0, p1

    move v5, v4

    invoke-interface/range {v0 .. v6}, Lcom/fruitsmobile/basket/opengl/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 159
    sget-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    iget-object v1, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->setUniformVertexMatrix(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 160
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {p1, v0, v4, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->glDrawArrays(III)V

    .line 161
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->pop()V

    .line 163
    invoke-static {}, Lcom/fruitsmobile/basket/resources/HWResourceManager;->getLoadingFraction()F

    move-result v0

    const/high16 v1, 0x3f000000

    sub-float v11, v0, v1

    .line 164
    .local v11, "fraction":F
    const/high16 v0, 0x3f000000

    cmpl-float v0, v11, v0

    if-lez v0, :cond_0

    .line 165
    const/high16 v11, 0x3f000000

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->push()V

    .line 169
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    const/high16 v1, 0x43be0000

    mul-float/2addr v1, v11

    invoke-virtual {v0, v1, v7}, Lcom/fruitsmobile/basket/math/Matrix;->pushTranslate2D(FF)V

    .line 170
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v0

    const/high16 v1, 0x42400000

    const/high16 v5, 0x42400000

    invoke-virtual {v0, v1, v5}, Lcom/fruitsmobile/basket/math/Matrix;->pushScale2D(FF)V

    .line 171
    iget-object v6, p0, Lcom/forthblue/pool/GameLoading;->texcoordBuffer:Ljava/nio/ByteBuffer;

    const/high16 v7, 0x3f010000

    const/high16 v8, 0x3e600000

    const/high16 v9, 0x3e400000

    const/high16 v10, 0x3f400000

    move-object v5, p1

    invoke-interface/range {v5 .. v10}, Lcom/fruitsmobile/basket/opengl/GL20;->bglWriteRect2DPoint(Ljava/nio/Buffer;FFFF)V

    .line 172
    sget-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    invoke-virtual {v0, v12}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v1

    iget-object v6, p0, Lcom/forthblue/pool/GameLoading;->texcoordBuffer:Ljava/nio/ByteBuffer;

    move-object v0, p1

    move v5, v4

    invoke-interface/range {v0 .. v6}, Lcom/fruitsmobile/basket/opengl/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 173
    sget-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    iget-object v1, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->setUniformVertexMatrix(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 174
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {p1, v0, v4, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->glDrawArrays(III)V

    .line 175
    iget-object v0, p0, Lcom/forthblue/pool/GameLoading;->stack:Lcom/fruitsmobile/basket/util/MatrixStack;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/util/MatrixStack;->pop()V

    .line 177
    sget-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    invoke-virtual {v0, v4}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL20;->glDisableVertexAttribArray(I)V

    .line 178
    sget-object v0, Lcom/forthblue/pool/GameLoading;->program:Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;

    invoke-virtual {v0, v12}, Lcom/forthblue/pool/GameLoading$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/fruitsmobile/basket/opengl/GL20;->glDisableVertexAttribArray(I)V

    .line 179
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 31
    iput p1, p0, Lcom/forthblue/pool/GameLoading;->width:F

    .line 32
    iput p2, p0, Lcom/forthblue/pool/GameLoading;->height:F

    .line 33
    return-void
.end method
