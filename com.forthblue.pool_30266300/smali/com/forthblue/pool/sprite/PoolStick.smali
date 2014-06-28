.class public Lcom/forthblue/pool/sprite/PoolStick;
.super Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
.source "PoolStick.java"

# interfaces
.implements Lcom/fruitsmobile/basket/interfaces/Motionable;


# instance fields
.field angleBase:F

.field public currentMotionId:I

.field public distance:F

.field game:Lcom/forthblue/pool/ui/GameScene;

.field public vertexBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/forthblue/pool/ui/GameScene;)V
    .locals 1
    .param p1, "loadTexture"    # Lcom/fruitsmobile/basket/resources/TextureRegion;
    .param p2, "game"    # Lcom/forthblue/pool/ui/GameScene;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/fruitsmobile/basket/util/Util;->createFloatBuffer([F)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/forthblue/pool/sprite/PoolStick;->vertexBuffer:Ljava/nio/ByteBuffer;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/forthblue/pool/sprite/PoolStick;->distance:F

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/sprite/PoolStick;->currentMotionId:I

    .line 36
    iput-object p2, p0, Lcom/forthblue/pool/sprite/PoolStick;->game:Lcom/forthblue/pool/ui/GameScene;

    .line 37
    return-void

    .line 20
    nop

    :array_0
    .array-data 4
        0x0
        -0x41000000
        0x0
        0x3f000000
        0x3f800000
        -0x41000000
        0x3f800000
        0x3f000000
    .end array-data
.end method


# virtual methods
.method protected commitTo(Lcom/fruitsmobile/basket/interfaces/Engine;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 77
    invoke-interface {p1}, Lcom/fruitsmobile/basket/interfaces/Engine;->getMatrixStack()Lcom/fruitsmobile/basket/util/MatrixStack;

    move-result-object v1

    .line 78
    .local v1, "ms":Lcom/fruitsmobile/basket/util/MatrixStack;
    iget-object v3, p0, Lcom/forthblue/pool/sprite/PoolStick;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/forthblue/pool/sprite/PoolStick;->isOnScreen()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v6

    .line 106
    :goto_0
    return v3

    .line 80
    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;

    move-object v2, v0

    .line 82
    .local v2, "snapshot":Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;
    iget-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    if-nez v3, :cond_2

    .line 83
    new-instance v3, Lcom/fruitsmobile/basket/math/Matrix;

    invoke-direct {v3}, Lcom/fruitsmobile/basket/math/Matrix;-><init>()V

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    .line 86
    :cond_2
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->push()V

    .line 87
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/forthblue/pool/sprite/PoolStick;->x:F

    iget v5, p0, Lcom/forthblue/pool/sprite/PoolStick;->y:F

    invoke-virtual {v3, v4, v5}, Lcom/fruitsmobile/basket/math/Matrix;->pushTranslate2D(FF)V

    .line 88
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    const/high16 v4, 0x43340000

    iget v5, p0, Lcom/forthblue/pool/sprite/PoolStick;->angle:F

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/fruitsmobile/basket/math/Matrix;->pushRotation2D(F)V

    .line 89
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/forthblue/pool/sprite/PoolStick;->distance:F

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/fruitsmobile/basket/math/Matrix;->pushTranslate2D(FF)V

    .line 90
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/forthblue/pool/sprite/PoolStick;->width:F

    iget v5, p0, Lcom/forthblue/pool/sprite/PoolStick;->height:F

    invoke-virtual {v3, v4, v5}, Lcom/fruitsmobile/basket/math/Matrix;->pushScale2D(FF)V

    .line 91
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->top()Lcom/fruitsmobile/basket/math/Matrix;

    move-result-object v3

    iget-object v4, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexMatrix:Lcom/fruitsmobile/basket/math/Matrix;

    invoke-virtual {v3, v4}, Lcom/fruitsmobile/basket/math/Matrix;->copyTo(Lcom/fruitsmobile/basket/math/Matrix;)V

    .line 92
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/util/MatrixStack;->pop()V

    .line 94
    iget-object v3, p0, Lcom/forthblue/pool/sprite/PoolStick;->vertexBuffer:Ljava/nio/ByteBuffer;

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->vertexBuffer:Ljava/nio/ByteBuffer;

    .line 95
    iget-object v3, p0, Lcom/forthblue/pool/sprite/PoolStick;->texcoordBuffer:Ljava/nio/ByteBuffer;

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texcoordBuffer:Ljava/nio/ByteBuffer;

    .line 96
    const/4 v3, 0x5

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->mode:I

    .line 97
    iget-object v3, p0, Lcom/forthblue/pool/sprite/PoolStick;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-virtual {v3}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getTexture()Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v3

    iput-object v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->texture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 98
    iput v6, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->start:I

    .line 99
    const/4 v3, 0x4

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->count:I

    .line 101
    iget v3, p0, Lcom/forthblue/pool/sprite/PoolStick;->red:F

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->red:F

    .line 102
    iget v3, p0, Lcom/forthblue/pool/sprite/PoolStick;->green:F

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->green:F

    .line 103
    iget v3, p0, Lcom/forthblue/pool/sprite/PoolStick;->blue:F

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->blue:F

    .line 104
    iget v3, p0, Lcom/forthblue/pool/sprite/PoolStick;->alpha:F

    iput v3, v2, Lcom/fruitsmobile/basket/SpriteBase$SpriteSnapshot;->alpha:F

    .line 106
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public isMotioning()Z
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/forthblue/pool/sprite/PoolStick;->currentMotionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMotionBegin(IFF)V
    .locals 10
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x43b40000

    .line 118
    iput p1, p0, Lcom/forthblue/pool/sprite/PoolStick;->currentMotionId:I

    .line 120
    iget-object v1, p0, Lcom/forthblue/pool/sprite/PoolStick;->game:Lcom/forthblue/pool/ui/GameScene;

    iget v2, v1, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    float-to-double v2, v2

    iget-object v4, p0, Lcom/forthblue/pool/sprite/PoolStick;->game:Lcom/forthblue/pool/ui/GameScene;

    iget v4, v4, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    div-float/2addr v4, v8

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    const-wide v6, 0x4076800000000000L

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, v1, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    .line 122
    invoke-static {p3, p2}, Lcom/fruitsmobile/basket/math/MathUtil;->atan2(FF)F

    move-result v0

    .line 123
    .local v0, "r":F
    iget-object v1, p0, Lcom/forthblue/pool/sprite/PoolStick;->game:Lcom/forthblue/pool/ui/GameScene;

    iget v1, v1, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/forthblue/pool/sprite/PoolStick;->angleBase:F

    .line 124
    :goto_0
    iget v1, p0, Lcom/forthblue/pool/sprite/PoolStick;->angleBase:F

    cmpg-float v1, v1, v9

    if-gez v1, :cond_0

    .line 125
    iget v1, p0, Lcom/forthblue/pool/sprite/PoolStick;->angleBase:F

    add-float/2addr v1, v8

    iput v1, p0, Lcom/forthblue/pool/sprite/PoolStick;->angleBase:F

    goto :goto_0

    .line 126
    :cond_0
    :goto_1
    iget v1, p0, Lcom/forthblue/pool/sprite/PoolStick;->angleBase:F

    cmpl-float v1, v1, v8

    if-lez v1, :cond_1

    .line 127
    iget v1, p0, Lcom/forthblue/pool/sprite/PoolStick;->angleBase:F

    sub-float/2addr v1, v8

    iput v1, p0, Lcom/forthblue/pool/sprite/PoolStick;->angleBase:F

    goto :goto_1

    .line 130
    :cond_1
    iget v1, p0, Lcom/forthblue/pool/sprite/PoolStick;->angleBase:F

    const/high16 v2, 0x41700000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v1, p0, Lcom/forthblue/pool/sprite/PoolStick;->angleBase:F

    const/high16 v2, 0x43160000

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/forthblue/pool/sprite/PoolStick;->angleBase:F

    const/high16 v2, 0x43520000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    iget v1, p0, Lcom/forthblue/pool/sprite/PoolStick;->angleBase:F

    const v2, 0x43ac8000

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 131
    :cond_3
    iput v9, p0, Lcom/forthblue/pool/sprite/PoolStick;->angleBase:F

    .line 133
    :cond_4
    return-void
.end method

.method public onMotionCancel(I)V
    .locals 1
    .param p1, "motionid"    # I

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, p1, v0, v0}, Lcom/forthblue/pool/sprite/PoolStick;->onMotionOver(IFF)V

    .line 148
    return-void
.end method

.method public onMotionMove(IFF)V
    .locals 3
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 140
    invoke-static {p3, p2}, Lcom/fruitsmobile/basket/math/MathUtil;->atan2(FF)F

    move-result v0

    .line 141
    .local v0, "r":F
    iget-object v1, p0, Lcom/forthblue/pool/sprite/PoolStick;->game:Lcom/forthblue/pool/ui/GameScene;

    iget v2, p0, Lcom/forthblue/pool/sprite/PoolStick;->angleBase:F

    add-float/2addr v2, v0

    iput v2, v1, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    .line 143
    iget-object v1, p0, Lcom/forthblue/pool/sprite/PoolStick;->game:Lcom/forthblue/pool/ui/GameScene;

    invoke-virtual {v1}, Lcom/forthblue/pool/ui/GameScene;->calcAimTarget()V

    .line 144
    return-void
.end method

.method public onMotionOver(IFF)V
    .locals 1
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/sprite/PoolStick;->currentMotionId:I

    .line 137
    return-void
.end method

.method public setTextureRegion(Lcom/fruitsmobile/basket/resources/TextureRegion;)V
    .locals 6
    .param p1, "texture_region"    # Lcom/fruitsmobile/basket/resources/TextureRegion;

    .prologue
    .line 40
    iget-object v5, p0, Lcom/forthblue/pool/sprite/PoolStick;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    if-eq v5, p1, :cond_1

    .line 41
    iput-object p1, p0, Lcom/forthblue/pool/sprite/PoolStick;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    .line 42
    if-eqz p1, :cond_0

    .line 43
    iget-object v5, p0, Lcom/forthblue/pool/sprite/PoolStick;->texcoordBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 44
    .local v0, "tb":Ljava/nio/FloatBuffer;
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getU()F

    move-result v1

    .line 45
    .local v1, "u":F
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getV()F

    move-result v3

    .line 46
    .local v3, "v":F
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getU2()F

    move-result v2

    .line 47
    .local v2, "u2":F
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getV2()F

    move-result v4

    .line 48
    .local v4, "v2":F
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 49
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 51
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 52
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 54
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 55
    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 57
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 58
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 60
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getRegionSrcWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/forthblue/pool/sprite/PoolStick;->width:F

    .line 63
    invoke-virtual {p1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getRegionSrcHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/forthblue/pool/sprite/PoolStick;->height:F

    .line 65
    .end local v0    # "tb":Ljava/nio/FloatBuffer;
    .end local v1    # "u":F
    .end local v2    # "u2":F
    .end local v3    # "v":F
    .end local v4    # "v2":F
    :cond_0
    invoke-virtual {p0}, Lcom/forthblue/pool/sprite/PoolStick;->setNeedRecommit()V

    .line 67
    :cond_1
    return-void
.end method
