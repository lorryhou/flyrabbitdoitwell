.class public Lcom/forthblue/pool/sprite/HoleEffectSprite;
.super Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
.source "HoleEffectSprite.java"


# instance fields
.field private alpha_accel:F

.field private effect_type:I

.field private scale:F

.field private scale_width:F

.field private showing:Z


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Texture;)V
    .locals 1
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 15
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->scale:F

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->showing:Z

    .line 45
    const v0, 0x3c23d70a

    iput v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->alpha_accel:F

    .line 13
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->showing:Z

    .line 35
    return-void
.end method

.method public getEffectType()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->effect_type:I

    return v0
.end method

.method public setEffect(ILcom/fruitsmobile/basket/resources/Texture;)V
    .locals 2
    .param p1, "effect_type"    # I
    .param p2, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    .line 20
    invoke-virtual {p0, p2}, Lcom/forthblue/pool/sprite/HoleEffectSprite;->setTexture(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 21
    iput p1, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->effect_type:I

    .line 22
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x43b40000

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->angle:F

    .line 23
    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p2}, Lcom/fruitsmobile/basket/resources/Texture;->getImageWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->scale_width:F

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/forthblue/pool/sprite/HoleEffectSprite;->show()V

    .line 27
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 38
    iget-boolean v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->showing:Z

    if-eqz v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->scale:F

    .line 41
    iput-boolean v1, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->showing:Z

    .line 42
    invoke-virtual {p0, v1}, Lcom/forthblue/pool/sprite/HoleEffectSprite;->setVisible(Z)V

    goto :goto_0
.end method

.method public tick(J)V
    .locals 4
    .param p1, "timeSpan"    # J

    .prologue
    const/high16 v2, 0x3f800000

    const v1, 0x3dcccccd

    const/4 v3, 0x0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->tick(J)V

    .line 50
    iget-boolean v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->showing:Z

    if-eqz v0, :cond_3

    .line 51
    iget v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->scale:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->scale:F

    .line 52
    iget v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->scale:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 53
    iput v2, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->scale:F

    .line 61
    :cond_0
    :goto_0
    iget v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->scale_width:F

    iget v1, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->scale:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->scale_width:F

    iget v2, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->scale:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/forthblue/pool/sprite/HoleEffectSprite;->setSize(FF)V

    .line 63
    iget v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->alpha:F

    iget v1, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->alpha_accel:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->alpha:F

    .line 64
    iget v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->alpha_accel:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    iget v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->alpha:F

    const v1, 0x3fa66666

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 65
    const v0, -0x43dc28f6

    iput v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->alpha_accel:F

    .line 69
    :cond_1
    :goto_1
    iget v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->effect_type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 70
    iget v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->angle:F

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->angle:F

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/forthblue/pool/sprite/HoleEffectSprite;->setNeedRecommit()V

    .line 73
    return-void

    .line 55
    :cond_3
    iget v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->scale:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->scale:F

    .line 56
    iget v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->scale:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    .line 57
    iput v3, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->scale:F

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/sprite/HoleEffectSprite;->setVisible(Z)V

    goto :goto_0

    .line 66
    :cond_4
    iget v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->alpha_accel:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iget v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->alpha:F

    const v1, 0x3f4ccccd

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 67
    const v0, 0x3c23d70a

    iput v0, p0, Lcom/forthblue/pool/sprite/HoleEffectSprite;->alpha_accel:F

    goto :goto_1
.end method
