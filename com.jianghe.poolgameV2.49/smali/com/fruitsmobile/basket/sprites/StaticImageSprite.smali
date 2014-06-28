.class public Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
.super Lcom/fruitsmobile/basket/SpriteBase;
.source "StaticImageSprite.java"


# static fields
.field public static vertexBuffer:Ljava/nio/ByteBuffer;


# instance fields
.field protected alpha:F

.field protected angle:F

.field protected blue:F

.field protected green:F

.field protected height:F

.field protected red:F

.field protected texcoordBuffer:Ljava/nio/ByteBuffer;

.field protected texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

.field protected width:F

.field protected x:F

.field protected y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer([F)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    return-void

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
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000

    .line 22
    invoke-direct {p0}, Lcom/fruitsmobile/basket/SpriteBase;-><init>()V

    .line 20
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->texcoordBuffer:Ljava/nio/ByteBuffer;

    .line 121
    iput v2, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->x:F

    iput v2, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->y:F

    .line 123
    iput v2, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->angle:F

    .line 127
    iput v1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->red:F

    iput v1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->green:F

    iput v1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->blue:F

    iput v1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->alpha:F

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Texture;)V
    .locals 3
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000

    .line 25
    invoke-direct {p0}, Lcom/fruitsmobile/basket/SpriteBase;-><init>()V

    .line 20
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->texcoordBuffer:Ljava/nio/ByteBuffer;

    .line 121
    iput v2, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->x:F

    iput v2, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->y:F

    .line 123
    iput v2, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->angle:F

    .line 127
    iput v1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->red:F

    iput v1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->green:F

    iput v1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->blue:F

    iput v1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->alpha:F

    .line 26
    invoke-virtual {p0, p1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setTexture(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 27
    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/Texture;->getImageWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->width:F

    .line 29
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/Texture;->getImageHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->height:F

    .line 31
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V
    .locals 3
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/TextureRegion;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000

    .line 33
    invoke-direct {p0}, Lcom/fruitsmobile/basket/SpriteBase;-><init>()V

    .line 20
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->texcoordBuffer:Ljava/nio/ByteBuffer;

    .line 121
    iput v2, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->x:F

    iput v2, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->y:F

    .line 123
    iput v2, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->angle:F

    .line 127
    iput v1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->red:F

    iput v1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->green:F

    iput v1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->blue:F

    iput v1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->alpha:F

    .line 34
    invoke-virtual {p0, p1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setTextureRegion(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    .line 35
    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getRegionSrcWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->width:F

    .line 37
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getRegionSrcHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->height:F

    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method protected commitTo(Lcom/fruitsmobile/basket/interfaces/Engine;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 85
    iget-object v3, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->isOnScreen()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v6

    .line 116
    :goto_0
    return v3

    .line 87
    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;

    move-object v2, v0

    .line 88
    .local v2, "snapshot":Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;
    invoke-virtual {p0, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->needRecommit(Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v7

    .line 89
    goto :goto_0

    .line 91
    :cond_2
    invoke-interface {p1}, Lcom/fruitsmobile/basket/interfaces/Engine;->getMatrixStack()Lcom/fruitsmobile/basket/util/MatrixStack;

    move-result-object v1

    .line 92
    .local v1, "ms":Lcom/fruitsmobile/basket/util/MatrixStack;
    iget-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    if-nez v3, :cond_3

    .line 93
    new-instance v3, Lcom/fruitsmobile/basket/math/Matrix;

    invoke-direct {v3}, Lcom/fruitsmobile/basket/math/Matrix;-><init>()V

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    .line 96
    :cond_3
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->push()V

    .line 97
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->x:F

    iget v5, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->y:F

    invoke-virtual {v3, v4, v5}, Lcom/fruitsmobile/basket/math/Matrix;->pushTranslate2D(FF)V

    .line 98
    iget v3, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->angle:F

    const v4, 0x3c23d70a

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_4

    iget v3, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->angle:F

    const v4, -0x43dc28f6

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 99
    :cond_4
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->angle:F

    invoke-virtual {v3, v4}, Lcom/fruitsmobile/basket/math/Matrix;->pushRotation2D(F)V

    .line 100
    :cond_5
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->width:F

    iget v5, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->height:F

    invoke-virtual {v3, v4, v5}, Lcom/fruitsmobile/basket/math/Matrix;->pushScale2D(FF)V

    .line 101
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    iget-object v4, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v3, v4}, Lcom/fruitsmobile/basket/math/Matrix;->copyTo(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 102
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->pop()V

    .line 104
    sget-object v3, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->vertexBuffer:Ljava/nio/ByteBuffer;

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    .line 105
    iget-object v3, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->texcoordBuffer:Ljava/nio/ByteBuffer;

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    .line 106
    const/4 v3, 0x5

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->mode:I

    .line 107
    iget-object v3, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-virtual {v3}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getTexture()Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v3

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 108
    iput v6, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->start:I

    .line 109
    const/4 v3, 0x4

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->count:I

    .line 111
    iget v3, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->red:F

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->red:F

    .line 112
    iget v3, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->green:F

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->green:F

    .line 113
    iget v3, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->blue:F

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->blue:F

    .line 114
    iget v3, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->alpha:F

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    move v3, v7

    .line 116
    goto/16 :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->alpha:F

    return v0
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->angle:F

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->height:F

    return v0
.end method

.method public getLeft()F
    .locals 3

    .prologue
    .line 219
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->x:F

    iget v1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->width:F

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public getTexture()Lcom/fruitsmobile/basket/resources/Texture;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getTexture()Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v0

    goto :goto_0
.end method

.method public getTop()F
    .locals 3

    .prologue
    .line 215
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->y:F

    iget v1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->height:F

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->y:F

    return v0
.end method

.method public move(FF)V
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 146
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->x:F

    .line 147
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->y:F

    .line 148
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 149
    return-void
.end method

.method public moveY(F)V
    .locals 1
    .param p1, "dy"    # F

    .prologue
    .line 152
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->y:F

    .line 153
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 154
    return-void
.end method

.method public rotate(F)V
    .locals 6
    .param p1, "w"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->angle:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->angle:F

    .line 179
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->angle:F

    const/high16 v1, 0x44340000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    move v0, v4

    :goto_0
    iget v1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->angle:F

    const/high16 v2, -0x3c4c0000

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    move v1, v4

    :goto_1
    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 180
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->angle:F

    float-to-double v0, v0

    iget v2, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->angle:F

    const/high16 v3, 0x43b40000

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide v4, 0x4076800000000000L

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->angle:F

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 183
    return-void

    :cond_1
    move v0, v3

    .line 179
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 194
    iput p1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->alpha:F

    .line 195
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 196
    return-void
.end method

.method public setAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 173
    iput p1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->angle:F

    .line 174
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 175
    return-void
.end method

.method public setColor(FFFF)V
    .locals 0
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 186
    iput p1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->red:F

    .line 187
    iput p2, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->green:F

    .line 188
    iput p3, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->blue:F

    .line 189
    iput p4, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->alpha:F

    .line 190
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 191
    return-void
.end method

.method public setHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 168
    iput p1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->height:F

    .line 169
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 170
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 130
    iput p1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->x:F

    .line 131
    iput p2, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->y:F

    .line 132
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 133
    return-void
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 157
    iput p1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->width:F

    .line 158
    iput p2, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->height:F

    .line 159
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 160
    return-void
.end method

.method public setTexcoordBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "other"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->texcoordBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-static {v0, v2, p1, v2, v1}, Lcom/fruitsmobile/basket/util/Util;->copyFloatBuffer(Ljava/nio/Buffer;ILjava/nio/Buffer;II)V

    .line 81
    return-void
.end method

.method public setTexture(Lcom/fruitsmobile/basket/resources/Texture;)V
    .locals 1
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    new-instance v0, Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-direct {v0, p1}, Lcom/fruitsmobile/basket/resources/TextureRegion;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    invoke-virtual {p0, v0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setTextureRegion(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    goto :goto_0
.end method

.method public setTextureRegion(Lcom/fruitsmobile/basket/resources/TextureRegion;)V
    .locals 6
    .param p1, "texture_region"    # Lcom/fruitsmobile/basket/resources/TextureRegion;

    .prologue
    .line 42
    iget-object v5, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    if-eq v5, p1, :cond_1

    .line 43
    iput-object p1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v5, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->texcoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 46
    .local v0, "tb":Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getU()F

    move-result v1

    .line 47
    .local v1, "u":F
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getV()F

    move-result v3

    .line 48
    .local v3, "v":F
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getU2()F

    move-result v2

    .line 49
    .local v2, "u2":F
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getV2()F

    move-result v4

    .line 50
    .local v4, "v2":F
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 51
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 53
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 54
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 56
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 57
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 59
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 60
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 62
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getRegionSrcWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->width:F

    .line 65
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getRegionSrcHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->height:F

    .line 67
    .end local v0    # "tb":Ljava/nio/FloatBuffer;
    .end local v1    # "u":F
    .end local v2    # "u2":F
    .end local v3    # "v":F
    .end local v4    # "v2":F
    :cond_0
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 69
    :cond_1
    return-void
.end method

.method public setWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 163
    iput p1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->width:F

    .line 164
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 165
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 136
    iput p1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->x:F

    .line 137
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 138
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 141
    iput p1, p0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->y:F

    .line 142
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 143
    return-void
.end method
