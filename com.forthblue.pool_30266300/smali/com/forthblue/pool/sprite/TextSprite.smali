.class public Lcom/forthblue/pool/sprite/TextSprite;
.super Lcom/fruitsmobile/basket/SpriteBase;
.source "TextSprite.java"


# static fields
.field public static final MAX_SINGLE_DRAW_COUNT:I = 0x20

.field public static final TEXT_ANCHOR_CENTER:I = 0x5

.field public static final TEXT_ANCHOR_LEFT_TOP:I = 0x0

.field public static final TEXT_ANCHOR_RIGHT_TOP:I = 0x2

.field public static final TEXT_ANCHOR_TOP:I = 0x1

.field static indexBuffer:Ljava/nio/ByteBuffer;


# instance fields
.field public alpha:F

.field public anchor:I

.field public angle:F

.field public blue:F

.field count:I

.field public distance:F

.field protected font:Lcom/forthblue/pool/sprite/TileTextureFont;

.field public green:F

.field protected height:F

.field public red:F

.field public scalex:F

.field public scaley:F

.field protected texcoordBuffer:Ljava/nio/ByteBuffer;

.field protected texture:Lcom/fruitsmobile/basket/resources/Texture;

.field protected vertexBuffer:Ljava/nio/ByteBuffer;

.field protected width:F

.field public x:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const/16 v0, 0xc0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/forthblue/pool/sprite/TextSprite;->indexBuffer:Ljava/nio/ByteBuffer;

    .line 33
    sget-object v0, Lcom/forthblue/pool/sprite/TextSprite;->indexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    sget-object v0, Lcom/forthblue/pool/sprite/TextSprite;->indexBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/fruitsmobile/basket/util/Util;->writeRectsIndexBuffer(Ljava/nio/Buffer;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/forthblue/pool/sprite/TileTextureFont;)V
    .locals 3
    .param p1, "font"    # Lcom/forthblue/pool/sprite/TileTextureFont;

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/fruitsmobile/basket/SpriteBase;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    .line 28
    iput-object v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->texcoordBuffer:Ljava/nio/ByteBuffer;

    .line 49
    iput v1, p0, Lcom/forthblue/pool/sprite/TextSprite;->width:F

    .line 50
    iput v1, p0, Lcom/forthblue/pool/sprite/TextSprite;->height:F

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->anchor:I

    .line 58
    iput v1, p0, Lcom/forthblue/pool/sprite/TextSprite;->distance:F

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->count:I

    .line 219
    iput v1, p0, Lcom/forthblue/pool/sprite/TextSprite;->x:F

    iput v1, p0, Lcom/forthblue/pool/sprite/TextSprite;->y:F

    .line 220
    iput v1, p0, Lcom/forthblue/pool/sprite/TextSprite;->angle:F

    .line 221
    iput v2, p0, Lcom/forthblue/pool/sprite/TextSprite;->scalex:F

    iput v2, p0, Lcom/forthblue/pool/sprite/TextSprite;->scaley:F

    .line 223
    iput v2, p0, Lcom/forthblue/pool/sprite/TextSprite;->red:F

    iput v2, p0, Lcom/forthblue/pool/sprite/TextSprite;->green:F

    iput v2, p0, Lcom/forthblue/pool/sprite/TextSprite;->blue:F

    iput v2, p0, Lcom/forthblue/pool/sprite/TextSprite;->alpha:F

    .line 39
    invoke-virtual {p0, p1}, Lcom/forthblue/pool/sprite/TextSprite;->setFont(Lcom/forthblue/pool/sprite/TileTextureFont;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected commitTo(Lcom/fruitsmobile/basket/interfaces/Engine;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f000000

    .line 96
    invoke-virtual {p0}, Lcom/forthblue/pool/sprite/TextSprite;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/forthblue/pool/sprite/TextSprite;->count:I

    if-nez v3, :cond_1

    .line 97
    :cond_0
    const/4 v3, 0x0

    .line 134
    :goto_0
    return v3

    .line 98
    :cond_1
    invoke-interface {p1}, Lcom/fruitsmobile/basket/interfaces/Engine;->getMatrixStack()Lcom/fruitsmobile/basket/util/MatrixStack;

    move-result-object v1

    .line 99
    .local v1, "ms":Lcom/fruitsmobile/basket/util/MatrixStack;
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->push()V

    .line 100
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/forthblue/pool/sprite/TextSprite;->x:F

    iget v5, p0, Lcom/forthblue/pool/sprite/TextSprite;->y:F

    invoke-virtual {v3, v4, v5}, Lcom/fruitsmobile/basket/math/Matrix;->pushTranslate2D(FF)V

    .line 101
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/forthblue/pool/sprite/TextSprite;->angle:F

    invoke-virtual {v3, v4}, Lcom/fruitsmobile/basket/math/Matrix;->pushRotation2D(F)V

    .line 102
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/forthblue/pool/sprite/TextSprite;->scalex:F

    iget v5, p0, Lcom/forthblue/pool/sprite/TextSprite;->scaley:F

    invoke-virtual {v3, v4, v5}, Lcom/fruitsmobile/basket/math/Matrix;->pushScale2D(FF)V

    .line 103
    iget v3, p0, Lcom/forthblue/pool/sprite/TextSprite;->anchor:I

    packed-switch v3, :pswitch_data_0

    .line 117
    :goto_1
    :pswitch_0
    move-object v0, p2

    check-cast v0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;

    move-object v2, v0

    .line 118
    .local v2, "ss":Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;
    iget-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    if-nez v3, :cond_2

    .line 119
    new-instance v3, Lcom/fruitsmobile/basket/math/Matrix;

    invoke-direct {v3}, Lcom/fruitsmobile/basket/math/Matrix;-><init>()V

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    .line 121
    :cond_2
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    iget-object v4, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v3, v4}, Lcom/fruitsmobile/basket/math/Matrix;->copyTo(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 123
    iget-object v3, p0, Lcom/forthblue/pool/sprite/TextSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    .line 124
    iget-object v3, p0, Lcom/forthblue/pool/sprite/TextSprite;->texcoordBuffer:Ljava/nio/ByteBuffer;

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    .line 125
    iget v3, p0, Lcom/forthblue/pool/sprite/TextSprite;->red:F

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->red:F

    .line 126
    iget v3, p0, Lcom/forthblue/pool/sprite/TextSprite;->green:F

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->green:F

    .line 127
    iget v3, p0, Lcom/forthblue/pool/sprite/TextSprite;->blue:F

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->blue:F

    .line 128
    iget v3, p0, Lcom/forthblue/pool/sprite/TextSprite;->alpha:F

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    .line 130
    iget-object v3, p0, Lcom/forthblue/pool/sprite/TextSprite;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 131
    iget v3, p0, Lcom/forthblue/pool/sprite/TextSprite;->count:I

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->count:I

    .line 133
    invoke-interface {p1}, Lcom/fruitsmobile/basket/interfaces/Engine;->getMatrixStack()Lcom/fruitsmobile/basket/util/MatrixStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fruitsmobile/basket/util/MatrixStack;->pop()V

    .line 134
    const/4 v3, 0x1

    goto :goto_0

    .line 107
    .end local v2    # "ss":Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;
    :pswitch_1
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/forthblue/pool/sprite/TextSprite;->width:F

    neg-float v4, v4

    mul-float/2addr v4, v6

    invoke-virtual {v3, v4, v7}, Lcom/fruitsmobile/basket/math/Matrix;->pushTranslate2D(FF)V

    goto :goto_1

    .line 110
    :pswitch_2
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/forthblue/pool/sprite/TextSprite;->width:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v7}, Lcom/fruitsmobile/basket/math/Matrix;->pushTranslate2D(FF)V

    goto :goto_1

    .line 113
    :pswitch_3
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/forthblue/pool/sprite/TextSprite;->width:F

    neg-float v4, v4

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/forthblue/pool/sprite/TextSprite;->height:F

    neg-float v5, v5

    mul-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/fruitsmobile/basket/math/Matrix;->pushTranslate2D(FF)V

    goto :goto_1

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->width:F

    return v0
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL10;Ljava/lang/Object;)V
    .locals 12
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL10;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/high16 v6, 0x46180000

    const/16 v5, 0xde1

    const/16 v3, 0x1406

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 139
    const/16 v1, 0x2801

    invoke-interface {p1, v5, v1, v6}, Lcom/fruitsmobile/basket/opengl/GL10;->glTexParameterf(IIF)V

    .line 140
    const/16 v1, 0x2800

    invoke-interface {p1, v5, v1, v6}, Lcom/fruitsmobile/basket/opengl/GL10;->glTexParameterf(IIF)V

    .line 142
    move-object v0, p2

    check-cast v0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;

    move-object v9, v0

    .line 144
    .local v9, "snapshot":Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;
    iget-object v1, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/math/Matrix;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glLoadMatrixf(Ljava/nio/Buffer;)V

    .line 146
    const v1, 0x8074

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnableClientState(I)V

    .line 148
    invoke-interface {p1, v5}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnable(I)V

    .line 149
    const v1, 0x8078

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glEnableClientState(I)V

    .line 150
    iget-object v1, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/resources/Texture;->bind()V

    .line 152
    iget v1, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->red:F

    iget v5, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    mul-float/2addr v1, v5

    iget v5, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->green:F

    iget v6, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    mul-float/2addr v5, v6

    iget v6, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->blue:F

    iget v11, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    mul-float/2addr v6, v11

    iget v11, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    invoke-interface {p1, v1, v5, v6, v11}, Lcom/fruitsmobile/basket/opengl/GL10;->glColor4f(FFFF)V

    .line 153
    const v1, 0x8076

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL10;->glDisableClientState(I)V

    .line 155
    iget v1, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->count:I

    div-int/lit8 v10, v1, 0x20

    .line 156
    .local v10, "t":I
    iget v1, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->count:I

    rem-int/lit8 v8, v1, 0x20

    .line 159
    .local v8, "r":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 160
    iget-object v5, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v7, 0x20

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v6, v1, 0x8

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/fruitsmobile/basket/opengl/GL10;->glVertexPointerV(IIILjava/nio/Buffer;I)V

    .line 161
    iget-object v5, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v7, 0x20

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v6, v1, 0x8

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/fruitsmobile/basket/opengl/GL10;->glTexCoordPointerV(IIILjava/nio/Buffer;I)V

    .line 163
    const/4 v1, 0x5

    const/16 v5, 0xc0

    const/16 v6, 0x1401

    sget-object v11, Lcom/forthblue/pool/sprite/TextSprite;->indexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1, v5, v6, v11}, Lcom/fruitsmobile/basket/opengl/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 159
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 166
    :cond_0
    if-lez v8, :cond_1

    .line 167
    iget-object v5, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v7, 0x20

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v6, v1, 0x8

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/fruitsmobile/basket/opengl/GL10;->glVertexPointerV(IIILjava/nio/Buffer;I)V

    .line 168
    iget-object v5, v9, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v7, 0x20

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v6, v1, 0x8

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/fruitsmobile/basket/opengl/GL10;->glTexCoordPointerV(IIILjava/nio/Buffer;I)V

    .line 170
    const/4 v1, 0x5

    mul-int/lit8 v2, v8, 0x6

    const/16 v3, 0x1401

    sget-object v4, Lcom/forthblue/pool/sprite/TextSprite;->indexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/fruitsmobile/basket/opengl/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 172
    :cond_1
    return-void
.end method

.method public render(Lcom/fruitsmobile/basket/opengl/GL20;Ljava/lang/Object;)V
    .locals 14
    .param p1, "gl"    # Lcom/fruitsmobile/basket/opengl/GL20;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 176
    move-object/from16 v0, p2

    check-cast v0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;

    move-object v12, v0

    .line 178
    .local v12, "snapshot":Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;
    invoke-virtual {p0, p1}, Lcom/forthblue/pool/sprite/TextSprite;->checkProgram(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 182
    sget-object v11, Lcom/forthblue/pool/sprite/TextSprite;->spriteShaderProgramWithTexture:Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;

    .line 183
    .local v11, "shader":Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;
    invoke-virtual {v11, p1}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->use(Lcom/fruitsmobile/basket/opengl/GL20;)V

    .line 185
    iget-object v1, v12, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->setUniformTexture(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 187
    iget-object v1, v12, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, v12, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->setUniformVertexMatrix(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 192
    :goto_0
    iget v1, v12, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->red:F

    iget v2, v12, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    mul-float/2addr v1, v2

    iget v2, v12, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->green:F

    iget v3, v12, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    mul-float/2addr v2, v3

    iget v3, v12, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->blue:F

    iget v4, v12, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    mul-float/2addr v3, v4

    iget v4, v12, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    invoke-virtual {v11, v1, v2, v3, v4}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->setUniformColor(FFFF)V

    .line 195
    iget v1, v12, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->count:I

    div-int/lit8 v13, v1, 0x20

    .line 196
    .local v13, "t":I
    iget v1, v12, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->count:I

    rem-int/lit8 v10, v1, 0x20

    .line 198
    .local v10, "r":I
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->glEnableVertexAttribArray(I)V

    .line 199
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/fruitsmobile/basket/opengl/GL20;->glEnableVertexAttribArray(I)V

    .line 202
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v13, :cond_1

    .line 203
    mul-int/lit8 v1, v9, 0x20

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v8, v1, 0x8

    .line 204
    .local v8, "p":I
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v12, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    move-object v1, p1

    invoke-interface/range {v1 .. v8}, Lcom/fruitsmobile/basket/opengl/GL20;->glVertexAttribPointerV(IIIZILjava/nio/Buffer;I)V

    .line 205
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v12, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    move-object v1, p1

    invoke-interface/range {v1 .. v8}, Lcom/fruitsmobile/basket/opengl/GL20;->glVertexAttribPointerV(IIIZILjava/nio/Buffer;I)V

    .line 207
    const/4 v1, 0x5

    const/16 v2, 0xc0

    const/16 v3, 0x1401

    sget-object v4, Lcom/forthblue/pool/sprite/TextSprite;->indexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/fruitsmobile/basket/opengl/GL20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 202
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 190
    .end local v8    # "p":I
    .end local v9    # "i":I
    .end local v10    # "r":I
    .end local v13    # "t":I
    :cond_0
    sget-object v1, Lcom/fruitsmobile/basket/math/Matrix;->IdentityMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->setUniformVertexMatrix(Lcom/fruitsmobile/basket/math/Matrix;)V

    goto :goto_0

    .line 210
    .restart local v9    # "i":I
    .restart local v10    # "r":I
    .restart local v13    # "t":I
    :cond_1
    if-lez v10, :cond_2

    .line 211
    mul-int/lit8 v1, v9, 0x20

    mul-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v8, v1, 0x8

    .line 212
    .restart local v8    # "p":I
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v12, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    move-object v1, p1

    invoke-interface/range {v1 .. v8}, Lcom/fruitsmobile/basket/opengl/GL20;->glVertexAttribPointerV(IIIZILjava/nio/Buffer;I)V

    .line 213
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/fruitsmobile/basket/SpriteBase$SpriteShaderProgram;->getAttribLocation(I)I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v12, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    move-object v1, p1

    invoke-interface/range {v1 .. v8}, Lcom/fruitsmobile/basket/opengl/GL20;->glVertexAttribPointerV(IIIZILjava/nio/Buffer;I)V

    .line 215
    const/4 v1, 0x5

    mul-int/lit8 v2, v10, 0x6

    const/16 v3, 0x1401

    sget-object v4, Lcom/forthblue/pool/sprite/TextSprite;->indexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/fruitsmobile/basket/opengl/GL20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 217
    .end local v8    # "p":I
    :cond_2
    return-void
.end method

.method public setFont(Lcom/forthblue/pool/sprite/TileTextureFont;)V
    .locals 1
    .param p1, "font"    # Lcom/forthblue/pool/sprite/TileTextureFont;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/forthblue/pool/sprite/TextSprite;->font:Lcom/forthblue/pool/sprite/TileTextureFont;

    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/forthblue/pool/sprite/TileTextureFont;->getTexture()Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 47
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 12
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->count:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 65
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    .line 66
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->texcoordBuffer:Ljava/nio/ByteBuffer;

    .line 68
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->count:I

    .line 70
    iput v2, p0, Lcom/forthblue/pool/sprite/TextSprite;->height:F

    .line 72
    const/4 v11, 0x0

    .line 73
    .local v11, "x":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    iget v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->count:I

    if-ge v9, v0, :cond_5

    .line 74
    if-lez v9, :cond_2

    .line 75
    iget v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->distance:F

    add-float/2addr v11, v0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->font:Lcom/forthblue/pool/sprite/TileTextureFont;

    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/TileTextureFont;->getIndexOf(C)I

    move-result v10

    .line 77
    .local v10, "index":I
    if-gez v10, :cond_4

    .line 78
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->texcoordBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v9, 0x4

    mul-int/lit8 v1, v1, 0x2

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/fruitsmobile/basket/util/Util;->writeRect2D(Ljava/nio/Buffer;IFFFF)V

    .line 79
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v9, 0x4

    mul-int/lit8 v1, v1, 0x2

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/fruitsmobile/basket/util/Util;->writeRect2D(Ljava/nio/Buffer;IFFFF)V

    .line 73
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->font:Lcom/forthblue/pool/sprite/TileTextureFont;

    invoke-virtual {v0, v10}, Lcom/forthblue/pool/sprite/TileTextureFont;->getWidth(I)F

    move-result v7

    .line 82
    .local v7, "width":F
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->font:Lcom/forthblue/pool/sprite/TileTextureFont;

    invoke-virtual {v0, v10}, Lcom/forthblue/pool/sprite/TileTextureFont;->getHeight(I)F

    move-result v8

    .line 84
    .local v8, "height":F
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->texcoordBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, v9, 0x4

    mul-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/forthblue/pool/sprite/TextSprite;->font:Lcom/forthblue/pool/sprite/TileTextureFont;

    invoke-virtual {v3, v10}, Lcom/forthblue/pool/sprite/TileTextureFont;->getBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v0, v1, v3, v4, v5}, Lcom/fruitsmobile/basket/util/Util;->copyFloatBuffer(Ljava/nio/Buffer;ILjava/nio/Buffer;II)V

    .line 85
    iget-object v3, p0, Lcom/forthblue/pool/sprite/TextSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v0, v9, 0x4

    mul-int/lit8 v4, v0, 0x2

    move v5, v11

    move v6, v2

    invoke-static/range {v3 .. v8}, Lcom/fruitsmobile/basket/util/Util;->writeRect2D(Ljava/nio/Buffer;IFFFF)V

    .line 86
    add-float/2addr v11, v7

    .line 87
    iget v0, p0, Lcom/forthblue/pool/sprite/TextSprite;->height:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_3

    .line 88
    iput v8, p0, Lcom/forthblue/pool/sprite/TextSprite;->height:F

    goto :goto_1

    .line 91
    .end local v7    # "width":F
    .end local v8    # "height":F
    .end local v10    # "index":I
    :cond_5
    iput v11, p0, Lcom/forthblue/pool/sprite/TextSprite;->width:F

    .line 92
    return-void
.end method
