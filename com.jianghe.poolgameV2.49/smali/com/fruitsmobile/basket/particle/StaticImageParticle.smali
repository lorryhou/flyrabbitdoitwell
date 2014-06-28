.class public Lcom/fruitsmobile/basket/particle/StaticImageParticle;
.super Lcom/fruitsmobile/basket/DrawableObject;
.source "StaticImageParticle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;,
        Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;,
        Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;
    }
.end annotation


# static fields
.field public static final MAX_SINGLE_DRAW_COUNT:I = 0x40

.field private static final fShaderSrcWithTexture:Ljava/lang/String; = "precision mediump float;uniform sampler2D u_texture;varying vec2 v_texcoord;varying vec4 v_color;void main(){\tgl_FragColor = v_color * texture2D(u_texture, v_texcoord);}"

.field static indexBuffer:Ljava/nio/ByteBuffer; = null

.field protected static spriteShaderProgramWithTexture:Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram; = null

.field private static final vShaderSrcWithTexture:Ljava/lang/String; = "precision mediump float;uniform mat4 u_vmatrix;attribute vec4 a_Position;attribute vec4 a_color;attribute vec2 a_texcoord;varying vec4 v_color;varying vec2 v_texcoord;void main(){\tgl_Position = u_vmatrix * a_Position;\tv_texcoord = a_texcoord;\tv_color = a_color;}"


# instance fields
.field private final cap:I

.field public centerx:F

.field public centery:F

.field public scalex:F

.field public scaley:F

.field protected spriteCount:I

.field protected sprites:[Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

.field texcoordBuffer:Ljava/nio/ByteBuffer;

.field protected texture:Lcom/fruitsmobile/basket/resources/Texture;

.field public update:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 54
    const/16 v0, 0x180

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->indexBuffer:Ljava/nio/ByteBuffer;

    .line 55
    sget-object v0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->indexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 57
    sget-object v0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->indexBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->nativeWriteIndexBuffer(Ljava/nio/Buffer;I)V

    .line 300
    new-instance v0, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;

    new-instance v1, Lcom/fruitsmobile/basket/resources/StringCodeLocation;

    const-string v2, "precision mediump float;uniform mat4 u_vmatrix;attribute vec4 a_Position;attribute vec4 a_color;attribute vec2 a_texcoord;varying vec4 v_color;varying vec2 v_texcoord;void main(){\tgl_Position = u_vmatrix * a_Position;\tv_texcoord = a_texcoord;\tv_color = a_color;}"

    invoke-direct {v1, v2}, Lcom/fruitsmobile/basket/resources/StringCodeLocation;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/fruitsmobile/basket/resources/StringCodeLocation;

    const-string v3, "precision mediump float;uniform sampler2D u_texture;varying vec2 v_texcoord;varying vec4 v_color;void main(){\tgl_FragColor = v_color * texture2D(u_texture, v_texcoord);}"

    invoke-direct {v2, v3}, Lcom/fruitsmobile/basket/resources/StringCodeLocation;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "a_Position"

    aput-object v5, v3, v4

    const-string v4, "a_color"

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "a_texcoord"

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;-><init>(Lcom/fruitsmobile/basket/resources/Location;Lcom/fruitsmobile/basket/resources/Location;[Ljava/lang/String;Z)V

    sput-object v0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteShaderProgramWithTexture:Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;

    .line 310
    invoke-static {}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->nativeClassInit()V

    .line 311
    return-void
.end method

.method public constructor <init>(ILcom/fruitsmobile/basket/resources/Texture;)V
    .locals 3
    .param p1, "cap"    # I
    .param p2, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/fruitsmobile/basket/DrawableObject;-><init>()V

    .line 48
    iput v2, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteCount:I

    .line 106
    iput-boolean v2, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->update:Z

    .line 304
    iput v0, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->centerx:F

    iput v0, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->centery:F

    .line 305
    iput v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->scalex:F

    iput v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->scaley:F

    .line 63
    invoke-direct {p0, p2}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->setTexture(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 64
    iput p1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->cap:I

    .line 66
    new-array v0, p1, [Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iput-object v0, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->sprites:[Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    .line 67
    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private static native nativeWriteColorBuffer(Ljava/nio/Buffer;IFFFF)V
.end method

.method private static native nativeWriteIndexBuffer(Ljava/nio/Buffer;I)V
.end method

.method private static native nativeWriteTexcoordBuffer(Ljava/nio/Buffer;IFF)V
.end method

.method private static native nativeWriteVertexBuffer(Ljava/nio/Buffer;IFFFFF)V
.end method

.method private setTexture(Lcom/fruitsmobile/basket/resources/Texture;)V
    .locals 4
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    if-eq v0, p1, :cond_0

    .line 71
    iput-object p1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 73
    const/16 v0, 0x200

    invoke-static {v0}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->texcoordBuffer:Ljava/nio/ByteBuffer;

    .line 74
    iget-object v0, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->texcoordBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x40

    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/Texture;->getImageWidthProportion()F

    move-result v2

    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/Texture;->getImageHeightProportion()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->nativeWriteTexcoordBuffer(Ljava/nio/Buffer;IFF)V

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public alloc()Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;
    .locals 3

    .prologue
    .line 80
    iget v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteCount:I

    iget v2, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->cap:I

    if-lt v1, v2, :cond_0

    .line 81
    const/4 v1, 0x0

    .line 87
    :goto_0
    return-object v1

    .line 82
    :cond_0
    iget v0, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteCount:I

    .line 83
    .local v0, "index":I
    iget-object v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->sprites:[Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->sprites:[Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    invoke-virtual {p0}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->create()Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-result-object v2

    aput-object v2, v1, v0

    .line 85
    iget-object v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->sprites:[Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    aget-object v1, v1, v0

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->id:I

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->sprites:[Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method protected checkProgram(Lcom/fruitsmobile/basket/opengl/GL20;)V
    .locals 1
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;

    .prologue
    .line 195
    sget-object v0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteShaderProgramWithTexture:Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;->isActived()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    sget-object v0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteShaderProgramWithTexture:Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;->active()V

    .line 198
    :cond_0
    sget-object v0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteShaderProgramWithTexture:Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    sget-object v0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteShaderProgramWithTexture:Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;

    invoke-virtual {v0, p1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;->load(Lcom/fruitsmobile/basket/opengl/GLCommon;)V

    .line 201
    :cond_1
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteCount:I

    .line 104
    return-void
.end method

.method protected commitTo(Lcom/fruitsmobile/basket/interfaces/Engine;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 129
    iget v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteCount:I

    if-nez v1, :cond_0

    .line 130
    const/4 v1, 0x0

    .line 154
    :goto_0
    return v1

    .line 132
    :cond_0
    invoke-interface {p1}, Lcom/fruitsmobile/basket/interfaces/Engine;->getMatrixStack()Lcom/fruitsmobile/basket/util/MatrixStack;

    move-result-object v8

    .line 134
    .local v8, "ms":Lcom/fruitsmobile/basket/util/MatrixStack;
    move-object v0, p2

    check-cast v0, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;

    move-object v9, v0

    .line 135
    .local v9, "snap":Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;
    iget-object v1, v9, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1

    .line 136
    iget v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->cap:I

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v9, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    .line 138
    :cond_1
    iget-object v1, v9, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->colorBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_2

    .line 139
    iget v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->cap:I

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v9, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->colorBuffer:Ljava/nio/ByteBuffer;

    .line 141
    :cond_2
    invoke-virtual {v8}, Lcom/fruitsmobile/basket/util/MatrixStack;->push()V

    .line 142
    invoke-virtual {v8}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v1

    iget v3, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->centerx:F

    iget v4, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->centery:F

    invoke-virtual {v1, v3, v4}, Lcom/fruitsmobile/basket/math/Matrix;->pushTranslate2D(FF)V

    .line 143
    invoke-virtual {v8}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v1

    iget v3, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->scalex:F

    iget v4, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->scaley:F

    invoke-virtual {v1, v3, v4}, Lcom/fruitsmobile/basket/math/Matrix;->pushScale2D(FF)V

    .line 144
    invoke-virtual {v8}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v1

    iget-object v3, v9, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v1, v3}, Lcom/fruitsmobile/basket/math/Matrix;->copyTo(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 145
    invoke-virtual {v8}, Lcom/fruitsmobile/basket/util/MatrixStack;->pop()V

    .line 147
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteCount:I

    if-ge v2, v1, :cond_3

    iget v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->cap:I

    if-ge v2, v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->sprites:[Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    aget-object v10, v1, v2

    .line 149
    .local v10, "sprite":Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;
    iget-object v1, v9, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    iget v3, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->x:F

    iget v4, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->y:F

    iget v5, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    iget v6, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusy:F

    iget v7, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->angle:F

    invoke-static/range {v1 .. v7}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->nativeWriteVertexBuffer(Ljava/nio/Buffer;IFFFFF)V

    .line 150
    iget-object v1, v9, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->colorBuffer:Ljava/nio/ByteBuffer;

    iget v3, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->red:F

    iget v4, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->green:F

    iget v5, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->blue:F

    iget v6, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    invoke-static/range {v1 .. v6}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->nativeWriteColorBuffer(Ljava/nio/Buffer;IFFFF)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 152
    .end local v10    # "sprite":Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;
    :cond_3
    iget v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteCount:I

    iput v1, v9, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->count:I

    .line 154
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected create()Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;-><init>()V

    return-object v0
.end method

.method protected createSnapshotData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;-><init>()V

    return-object v0
.end method

.method public deleteAt(I)V
    .locals 5
    .param p1, "i"    # I

    .prologue
    .line 95
    iget-object v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->sprites:[Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    aget-object v0, v1, p1

    .line 96
    .local v0, "tmp":Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;
    iget-object v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->sprites:[Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget-object v2, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->sprites:[Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v3, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteCount:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteCount:I

    aget-object v2, v2, v3

    aput-object v2, v1, p1

    .line 97
    iget-object v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->sprites:[Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v2, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteCount:I

    aput-object v0, v1, v2

    .line 98
    iget-object v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->sprites:[Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    aget-object v1, v1, p1

    iput p1, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->id:I

    .line 99
    iget-object v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->sprites:[Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v2, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteCount:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteCount:I

    iput v2, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->id:I

    .line 100
    return-void
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL10;Ljava/lang/Object;)V
    .locals 11
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 159
    move-object v0, p2

    check-cast v0, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;

    move-object v9, v0

    .line 161
    .local v9, "snapshot":Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;
    iget-object v1, v9, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/math/Matrix;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glLoadMatrixf(Ljava/nio/Buffer;)V

    .line 163
    const/16 v1, 0xbe2

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnable(I)V

    .line 164
    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {p1, v1, v2}, Lcom/fruitsmobile/basket/opengl/GL10;->glBlendFunc(II)V

    .line 166
    const v1, 0x8074

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnableClientState(I)V

    .line 168
    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnable(I)V

    .line 169
    const v1, 0x8078

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnableClientState(I)V

    .line 170
    iget-object v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/resources/Texture;->bind()V

    .line 171
    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->texcoordBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/fruitsmobile/basket/opengl/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 173
    const v1, 0x8076

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnableClientState(I)V

    .line 175
    iget v1, v9, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->count:I

    div-int/lit8 v10, v1, 0x40

    .line 176
    .local v10, "t":I
    iget v1, v9, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->count:I

    rem-int/lit8 v8, v1, 0x40

    .line 179
    .local v8, "r":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 180
    const/4 v2, 0x4

    const/16 v3, 0x1406

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->colorBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v7, 0x40

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v6, v1, 0x8

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/fruitsmobile/basket/opengl/GL10;->glColorPointerV(IIILjava/nio/Buffer;I)V

    .line 181
    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v7, 0x40

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v6, v1, 0x8

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/fruitsmobile/basket/opengl/GL10;->glVertexPointerV(IIILjava/nio/Buffer;I)V

    .line 183
    const/4 v1, 0x5

    const/16 v2, 0x180

    const/16 v3, 0x1401

    sget-object v4, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->indexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/fruitsmobile/basket/opengl/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 179
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 186
    :cond_0
    if-lez v8, :cond_1

    .line 187
    const/4 v2, 0x4

    const/16 v3, 0x1406

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->colorBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v7, 0x40

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v6, v1, 0x8

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/fruitsmobile/basket/opengl/GL10;->glColorPointerV(IIILjava/nio/Buffer;I)V

    .line 188
    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v7, 0x40

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v6, v1, 0x8

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/fruitsmobile/basket/opengl/GL10;->glVertexPointerV(IIILjava/nio/Buffer;I)V

    .line 190
    const/4 v1, 0x5

    mul-int/lit8 v2, v8, 0x6

    const/16 v3, 0x1401

    sget-object v4, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->indexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/fruitsmobile/basket/opengl/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 192
    :cond_1
    return-void
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL20;Ljava/lang/Object;)V
    .locals 14
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 205
    move-object/from16 v0, p2

    check-cast v0, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;

    move-object v12, v0

    .line 207
    .local v12, "snapshot":Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;
    invoke-virtual {p0, p1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->checkProgram(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 209
    const/16 v1, 0xbe2

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->glEnable(I)V

    .line 210
    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {p1, v1, v2}, Lcom/fruitsmobile/basket/opengl/GL20;->glBlendFunc(II)V

    .line 214
    sget-object v11, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteShaderProgramWithTexture:Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;

    .line 215
    .local v11, "shader":Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;
    invoke-virtual {v11, p1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;->use(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 217
    iget-object v1, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;->setUniformTexture(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 219
    iget-object v1, v12, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, v12, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;->setUniformVertexMatrix(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 225
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->glEnableVertexAttribArray(I)V

    .line 226
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->glEnableVertexAttribArray(I)V

    .line 227
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->glEnableVertexAttribArray(I)V

    .line 229
    const/4 v1, 0x2

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->texcoordBuffer:Ljava/nio/ByteBuffer;

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/fruitsmobile/basket/opengl/GL20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 231
    iget v1, v12, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->count:I

    div-int/lit8 v13, v1, 0x40

    .line 232
    .local v13, "t":I
    iget v1, v12, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->count:I

    rem-int/lit8 v10, v1, 0x40

    .line 235
    .local v10, "r":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v13, :cond_1

    .line 236
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v2

    const/4 v3, 0x4

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v12, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->colorBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v9, 0x40

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v8, v1, 0x8

    move-object v1, p1

    invoke-interface/range {v1 .. v8}, Lcom/fruitsmobile/basket/opengl/GL20;->glVertexAttribPointerV(IIIZILjava/nio/Buffer;I)V

    .line 238
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v12, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v9, 0x40

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v8, v1, 0x8

    move-object v1, p1

    invoke-interface/range {v1 .. v8}, Lcom/fruitsmobile/basket/opengl/GL20;->glVertexAttribPointerV(IIIZILjava/nio/Buffer;I)V

    .line 241
    const/4 v1, 0x5

    const/16 v2, 0x180

    const/16 v3, 0x1401

    sget-object v4, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->indexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/fruitsmobile/basket/opengl/GL20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 235
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 222
    .end local v9    # "i":I
    .end local v10    # "r":I
    .end local v13    # "t":I
    :cond_0
    sget-object v1, Lcom/fruitsmobile/basket/math/Matrix;->IdentityMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;->setUniformVertexMatrix(Lcom/fruitsmobile/basket/math/Matrix;)V

    goto :goto_0

    .line 244
    .restart local v9    # "i":I
    .restart local v10    # "r":I
    .restart local v13    # "t":I
    :cond_1
    if-lez v10, :cond_2

    .line 245
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v2

    const/4 v3, 0x4

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v12, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->colorBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v9, 0x40

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v8, v1, 0x8

    move-object v1, p1

    invoke-interface/range {v1 .. v8}, Lcom/fruitsmobile/basket/opengl/GL20;->glVertexAttribPointerV(IIIZILjava/nio/Buffer;I)V

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v12, Lcom/fruitsmobile/basket/particle/StaticImageParticle$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v9, 0x40

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v8, v1, 0x8

    move-object v1, p1

    invoke-interface/range {v1 .. v8}, Lcom/fruitsmobile/basket/opengl/GL20;->glVertexAttribPointerV(IIIZILjava/nio/Buffer;I)V

    .line 250
    const/4 v1, 0x5

    mul-int/lit8 v2, v10, 0x6

    const/16 v3, 0x1401

    sget-object v4, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->indexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/fruitsmobile/basket/opengl/GL20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 252
    :cond_2
    return-void
.end method

.method public tick(J)V
    .locals 6
    .param p1, "timeSpan"    # J

    .prologue
    const/4 v5, 0x0

    .line 110
    iget-boolean v3, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->update:Z

    if-nez v3, :cond_1

    .line 125
    :cond_0
    return-void

    .line 112
    :cond_1
    long-to-float v3, p1

    const v4, 0x3dcccccd

    mul-float v2, v3, v4

    .line 113
    .local v2, "time_span":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->spriteCount:I

    if-ge v0, v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->sprites:[Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    aget-object v1, v3, v0

    .line 115
    .local v1, "particle_sprite":Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;
    iget v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->x:F

    iget v4, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->vx:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->x:F

    .line 116
    iget v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->y:F

    iget v4, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->vy:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->y:F

    .line 117
    iget v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    const v4, 0x3c23d70a

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    .line 118
    iget v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    iget v4, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->dismiss:F

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    .line 119
    iget v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusy:F

    iget v4, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->dismiss:F

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusy:F

    .line 120
    iget v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    cmpg-float v3, v3, v5

    if-lez v3, :cond_2

    iget v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusy:F

    cmpg-float v3, v3, v5

    if-lez v3, :cond_2

    iget v3, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_3

    .line 121
    :cond_2
    invoke-virtual {p0, v0}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->deleteAt(I)V

    .line 122
    add-int/lit8 v0, v0, -0x1

    .line 113
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
