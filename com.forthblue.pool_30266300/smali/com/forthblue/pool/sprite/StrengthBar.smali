.class public Lcom/forthblue/pool/sprite/StrengthBar;
.super Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
.source "StrengthBar.java"

# interfaces
.implements Lcom/fruitsmobile/basket/interfaces/Motionable;


# instance fields
.field private currentMotionId:I

.field game:Lcom/forthblue/pool/ui/GameScene;


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Texture;Lcom/forthblue/pool/ui/GameScene;)V
    .locals 1
    .param p1, "loadTexture"    # Lcom/fruitsmobile/basket/resources/Texture;
    .param p2, "game"    # Lcom/forthblue/pool/ui/GameScene;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/sprite/StrengthBar;->currentMotionId:I

    .line 19
    iput-object p2, p0, Lcom/forthblue/pool/sprite/StrengthBar;->game:Lcom/forthblue/pool/ui/GameScene;

    .line 20
    return-void
.end method


# virtual methods
.method protected commitTo(Lcom/fruitsmobile/basket/interfaces/Engine;Ljava/lang/Object;)Z
    .locals 15
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/forthblue/pool/sprite/StrengthBar;->game:Lcom/forthblue/pool/ui/GameScene;

    iget v1, v1, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    iget-object v2, p0, Lcom/forthblue/pool/sprite/StrengthBar;->game:Lcom/forthblue/pool/ui/GameScene;

    iget-object v2, v2, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v2}, Lcom/forthblue/pool/rules/PoolRule;->getMaxStrength()F

    move-result v2

    div-float v6, v1, v2

    .line 38
    .local v6, "percent":F
    invoke-interface/range {p1 .. p1}, Lcom/fruitsmobile/basket/interfaces/Engine;->getMatrixStack()Lcom/fruitsmobile/basket/util/MatrixStack;

    move-result-object v13

    .line 39
    .local v13, "ms":Lcom/fruitsmobile/basket/util/MatrixStack;
    iget-object v1, p0, Lcom/forthblue/pool/sprite/StrengthBar;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/forthblue/pool/sprite/StrengthBar;->isOnScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, v6, v1

    if-gtz v1, :cond_1

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 79
    :goto_0
    return v1

    .line 41
    :cond_1
    move-object/from16 v0, p2

    check-cast v0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;

    move-object v14, v0

    .line 43
    .local v14, "snapshot":Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;
    iget-object v1, v14, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    if-nez v1, :cond_2

    .line 44
    new-instance v1, Lcom/fruitsmobile/basket/math/Matrix;

    invoke-direct {v1}, Lcom/fruitsmobile/basket/math/Matrix;-><init>()V

    iput-object v1, v14, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    .line 47
    :cond_2
    invoke-virtual {v13}, Lcom/fruitsmobile/basket/util/MatrixStack;->push()V

    .line 48
    invoke-virtual {v13}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/forthblue/pool/sprite/StrengthBar;->x:F

    iget v3, p0, Lcom/forthblue/pool/sprite/StrengthBar;->y:F

    invoke-virtual {v1, v2, v3}, Lcom/fruitsmobile/basket/math/Matrix;->pushTranslate2D(FF)V

    .line 49
    iget v1, p0, Lcom/forthblue/pool/sprite/StrengthBar;->angle:F

    const v2, 0x3c23d70a

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/forthblue/pool/sprite/StrengthBar;->angle:F

    const v2, -0x43dc28f6

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 50
    :cond_3
    invoke-virtual {v13}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/forthblue/pool/sprite/StrengthBar;->angle:F

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/math/Matrix;->pushRotation2D(F)V

    .line 51
    :cond_4
    invoke-virtual {v13}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/forthblue/pool/sprite/StrengthBar;->width:F

    iget v3, p0, Lcom/forthblue/pool/sprite/StrengthBar;->height:F

    invoke-virtual {v1, v2, v3}, Lcom/fruitsmobile/basket/math/Matrix;->pushScale2D(FF)V

    .line 52
    invoke-virtual {v13}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v1

    iget-object v2, v14, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/math/Matrix;->copyTo(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 53
    invoke-virtual {v13}, Lcom/fruitsmobile/basket/util/MatrixStack;->pop()V

    .line 55
    const/high16 v1, 0x3f800000

    cmpl-float v1, v6, v1

    if-lez v1, :cond_5

    .line 56
    const/high16 v6, 0x3f800000

    .line 58
    :cond_5
    iget-object v1, v14, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_6

    .line 59
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v14, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    .line 61
    :cond_6
    iget-object v1, v14, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_7

    .line 62
    const/16 v1, 0x8

    invoke-static {v1}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v14, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    .line 64
    :cond_7
    iget-object v1, v14, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    const/high16 v3, -0x41000000

    const/high16 v4, -0x41000000

    const/high16 v5, 0x3f800000

    invoke-static/range {v1 .. v6}, Lcom/fruitsmobile/basket/util/Util;->writeRect2D(Ljava/nio/Buffer;IFFFF)V

    .line 67
    iget-object v7, v14, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/forthblue/pool/sprite/StrengthBar;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getU()F

    move-result v9

    iget-object v1, p0, Lcom/forthblue/pool/sprite/StrengthBar;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getV()F

    move-result v10

    iget-object v1, p0, Lcom/forthblue/pool/sprite/StrengthBar;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getU2()F

    move-result v11

    iget-object v1, p0, Lcom/forthblue/pool/sprite/StrengthBar;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getRegionSrcHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    iget-object v2, p0, Lcom/forthblue/pool/sprite/StrengthBar;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-virtual {v2}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getTexture()Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fruitsmobile/basket/resources/Texture;->getTextureHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v12, v1, v2

    invoke-static/range {v7 .. v12}, Lcom/fruitsmobile/basket/util/Util;->writeRect2D(Ljava/nio/Buffer;IFFFF)V

    .line 69
    const/4 v1, 0x5

    iput v1, v14, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->mode:I

    .line 70
    iget-object v1, p0, Lcom/forthblue/pool/sprite/StrengthBar;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getTexture()Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v1

    iput-object v1, v14, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 71
    const/4 v1, 0x0

    iput v1, v14, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->start:I

    .line 72
    const/4 v1, 0x4

    iput v1, v14, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->count:I

    .line 74
    iget v1, p0, Lcom/forthblue/pool/sprite/StrengthBar;->red:F

    iput v1, v14, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->red:F

    .line 75
    iget v1, p0, Lcom/forthblue/pool/sprite/StrengthBar;->green:F

    iput v1, v14, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->green:F

    .line 76
    iget v1, p0, Lcom/forthblue/pool/sprite/StrengthBar;->blue:F

    iput v1, v14, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->blue:F

    .line 77
    iget v1, p0, Lcom/forthblue/pool/sprite/StrengthBar;->alpha:F

    iput v1, v14, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    .line 79
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public isInside(FF)Z
    .locals 3
    .param p1, "xx"    # F
    .param p2, "yy"    # F

    .prologue
    const/4 v2, 0x0

    .line 25
    iget v0, p0, Lcom/forthblue/pool/sprite/StrengthBar;->currentMotionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 31
    :goto_0
    return v0

    .line 27
    :cond_0
    iget v0, p0, Lcom/forthblue/pool/sprite/StrengthBar;->x:F

    sub-float/2addr p1, v0

    .line 28
    iget v0, p0, Lcom/forthblue/pool/sprite/StrengthBar;->y:F

    sub-float/2addr p2, v0

    .line 29
    iget v0, p0, Lcom/forthblue/pool/sprite/StrengthBar;->width:F

    neg-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/forthblue/pool/sprite/StrengthBar;->height:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 30
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 31
    goto :goto_0
.end method

.method public onMotionBegin(IFF)V
    .locals 0
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 83
    iput p1, p0, Lcom/forthblue/pool/sprite/StrengthBar;->currentMotionId:I

    .line 84
    return-void
.end method

.method public onMotionCancel(I)V
    .locals 2
    .param p1, "motionid"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/forthblue/pool/sprite/StrengthBar;->game:Lcom/forthblue/pool/ui/GameScene;

    const/4 v1, 0x0

    iput v1, v0, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/sprite/StrengthBar;->currentMotionId:I

    .line 104
    return-void
.end method

.method public onMotionMove(IFF)V
    .locals 4
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 95
    iget v0, p0, Lcom/forthblue/pool/sprite/StrengthBar;->height:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 96
    iget p3, p0, Lcom/forthblue/pool/sprite/StrengthBar;->height:F

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/sprite/StrengthBar;->game:Lcom/forthblue/pool/ui/GameScene;

    const v1, -0x42333333

    iget v2, p0, Lcom/forthblue/pool/sprite/StrengthBar;->height:F

    div-float v2, p3, v2

    iget-object v3, p0, Lcom/forthblue/pool/sprite/StrengthBar;->game:Lcom/forthblue/pool/ui/GameScene;

    iget-object v3, v3, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v3}, Lcom/forthblue/pool/rules/PoolRule;->getMaxStrength()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    .line 99
    return-void
.end method

.method public onMotionOver(IFF)V
    .locals 3
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v0, p0, Lcom/forthblue/pool/sprite/StrengthBar;->game:Lcom/forthblue/pool/ui/GameScene;

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    iget-object v1, p0, Lcom/forthblue/pool/sprite/StrengthBar;->game:Lcom/forthblue/pool/ui/GameScene;

    iget-object v1, v1, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v1}, Lcom/forthblue/pool/rules/PoolRule;->getMinStrength()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/forthblue/pool/sprite/StrengthBar;->game:Lcom/forthblue/pool/ui/GameScene;

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/forthblue/pool/sprite/StrengthBar;->game:Lcom/forthblue/pool/ui/GameScene;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/GameScene;->shoot()V

    .line 89
    iget-object v0, p0, Lcom/forthblue/pool/sprite/StrengthBar;->game:Lcom/forthblue/pool/ui/GameScene;

    iput v2, v0, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    .line 91
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/sprite/StrengthBar;->currentMotionId:I

    .line 92
    return-void
.end method
