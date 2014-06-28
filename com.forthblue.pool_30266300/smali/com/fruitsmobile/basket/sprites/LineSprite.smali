.class public Lcom/fruitsmobile/basket/sprites/LineSprite;
.super Lcom/fruitsmobile/basket/SpriteBase;
.source "LineSprite.java"


# instance fields
.field protected alpha:F

.field protected blue:F

.field protected green:F

.field protected red:F

.field protected x0:F

.field protected x1:F

.field protected y0:F

.field protected y1:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000

    .line 9
    invoke-direct {p0}, Lcom/fruitsmobile/basket/SpriteBase;-><init>()V

    .line 43
    iput v0, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->red:F

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->green:F

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->blue:F

    iput v0, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->alpha:F

    return-void
.end method


# virtual methods
.method protected commitTo(Lcom/fruitsmobile/basket/interfaces/Engine;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/sprites/LineSprite;->isOnScreen()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 38
    :goto_0
    return v1

    .line 16
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;

    move-object v7, v0

    .line 17
    .local v7, "snapshot":Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;
    invoke-virtual {p0, v7}, Lcom/fruitsmobile/basket/sprites/LineSprite;->needRecommit(Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v8

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, v7, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    if-nez v1, :cond_2

    .line 21
    new-instance v1, Lcom/fruitsmobile/basket/math/Matrix;

    invoke-direct {v1}, Lcom/fruitsmobile/basket/math/Matrix;-><init>()V

    iput-object v1, v7, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    .line 23
    :cond_2
    iget-object v1, v7, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_3

    .line 24
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v7, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    .line 27
    :cond_3
    iget-object v1, v7, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->x0:F

    iget v4, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->y0:F

    iget v5, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->x1:F

    iget v6, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->y1:F

    invoke-static/range {v1 .. v6}, Lcom/fruitsmobile/basket/util/Util;->writeLine2D(Ljava/nio/Buffer;IFFFF)V

    .line 28
    invoke-interface {p1}, Lcom/fruitsmobile/basket/interfaces/Engine;->getMatrixStack()Lcom/fruitsmobile/basket/util/MatrixStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v1

    iget-object v3, v7, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v1, v3}, Lcom/fruitsmobile/basket/math/Matrix;->copyTo(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 30
    iput v8, v7, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->mode:I

    .line 31
    iput v2, v7, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->start:I

    .line 32
    const/4 v1, 0x2

    iput v1, v7, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->count:I

    .line 34
    iget v1, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->red:F

    iput v1, v7, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->red:F

    .line 35
    iget v1, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->green:F

    iput v1, v7, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->green:F

    .line 36
    iget v1, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->blue:F

    iput v1, v7, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->blue:F

    .line 37
    iget v1, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->alpha:F

    iput v1, v7, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    move v1, v8

    .line 38
    goto :goto_0
.end method

.method public getX0()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->x0:F

    return v0
.end method

.method public getX1()F
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->x1:F

    return v0
.end method

.method public getY0()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->y0:F

    return v0
.end method

.method public getY1()F
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->y1:F

    return v0
.end method

.method public setLinePosition(FFFF)V
    .locals 0
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .prologue
    .line 46
    iput p1, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->x0:F

    .line 47
    iput p2, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->y0:F

    .line 48
    iput p3, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->x1:F

    .line 49
    iput p4, p0, Lcom/fruitsmobile/basket/sprites/LineSprite;->y1:F

    .line 50
    invoke-virtual {p0}, Lcom/fruitsmobile/basket/sprites/LineSprite;->setNeedRecommit()V

    .line 51
    return-void
.end method
