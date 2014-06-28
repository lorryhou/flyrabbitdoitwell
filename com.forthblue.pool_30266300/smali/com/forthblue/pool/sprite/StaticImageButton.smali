.class public Lcom/forthblue/pool/sprite/StaticImageButton;
.super Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
.source "StaticImageButton.java"

# interfaces
.implements Lcom/fruitsmobile/basket/interfaces/Motionable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/forthblue/pool/sprite/StaticImageButton$Handler;
    }
.end annotation


# instance fields
.field public captureScale:F

.field currentMotionId:I

.field public handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

.field public id:I

.field public insideAlpha:F

.field public insideScale:F

.field protected isInside:Z

.field public normalAlpha:F

.field public normalScale:F

.field protected touchable:Z


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Texture;)V
    .locals 2
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;

    .prologue
    const/high16 v1, 0x3f800000

    .line 30
    invoke-direct {p0, p1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->touchable:Z

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->currentMotionId:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside:Z

    .line 64
    iput v1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->insideScale:F

    .line 65
    iput v1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->insideAlpha:F

    .line 67
    iput v1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->normalScale:F

    .line 68
    iput v1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->normalAlpha:F

    .line 70
    iput v1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->captureScale:F

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V
    .locals 2
    .param p1, "region"    # Lcom/fruitsmobile/basket/resources/TextureRegion;

    .prologue
    const/high16 v1, 0x3f800000

    .line 34
    invoke-direct {p0, p1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->touchable:Z

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->currentMotionId:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside:Z

    .line 64
    iput v1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->insideScale:F

    .line 65
    iput v1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->insideAlpha:F

    .line 67
    iput v1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->normalScale:F

    .line 68
    iput v1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->normalAlpha:F

    .line 70
    iput v1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->captureScale:F

    .line 35
    return-void
.end method

.method private setInside(Z)V
    .locals 3
    .param p1, "isInside"    # Z

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside:Z

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    if-eqz v0, :cond_0

    .line 74
    iput-boolean p1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside:Z

    .line 76
    if-eqz p1, :cond_1

    .line 78
    iget v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->insideAlpha:F

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/sprite/StaticImageButton;->setAlpha(F)V

    .line 79
    iget-object v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getRegionSrcWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->insideScale:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getRegionSrcHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->insideScale:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/forthblue/pool/sprite/StaticImageButton;->setSize(FF)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->normalAlpha:F

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/sprite/StaticImageButton;->setAlpha(F)V

    .line 83
    iget-object v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getRegionSrcWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->normalScale:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->texture_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getRegionSrcHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->normalScale:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/forthblue/pool/sprite/StaticImageButton;->setSize(FF)V

    goto :goto_0
.end method


# virtual methods
.method public isInside(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x40000000

    .line 38
    invoke-virtual {p0}, Lcom/forthblue/pool/sprite/StaticImageButton;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->touchable:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 48
    :goto_0
    return v0

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/forthblue/pool/sprite/StaticImageButton;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    .line 43
    invoke-virtual {p0}, Lcom/forthblue/pool/sprite/StaticImageButton;->getY()F

    move-result v0

    sub-float/2addr p2, v0

    .line 45
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/forthblue/pool/sprite/StaticImageButton;->getWidth()F

    move-result v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->captureScale:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/forthblue/pool/sprite/StaticImageButton;->getHeight()F

    move-result v1

    div-float/2addr v1, v3

    iget v2, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->captureScale:F

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 46
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    .line 48
    goto :goto_0
.end method

.method public onMotionBegin(IFF)V
    .locals 2
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 54
    iget v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->currentMotionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 55
    invoke-static {p1}, Lcom/fruitsmobile/basket/MotionService;->cancelMotion(I)V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iput p1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->currentMotionId:I

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/forthblue/pool/sprite/StaticImageButton;->setInside(Z)V

    goto :goto_0
.end method

.method public onMotionCancel(I)V
    .locals 1
    .param p1, "motionid"    # I

    .prologue
    .line 111
    iget v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->currentMotionId:I

    if-eq v0, p1, :cond_0

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->currentMotionId:I

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/forthblue/pool/sprite/StaticImageButton;->setInside(Z)V

    goto :goto_0
.end method

.method public onMotionMove(IFF)V
    .locals 1
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 100
    iget v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->currentMotionId:I

    if-eq v0, p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/forthblue/pool/sprite/StaticImageButton;->setInside(Z)V

    goto :goto_0

    .line 106
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/forthblue/pool/sprite/StaticImageButton;->setInside(Z)V

    goto :goto_0
.end method

.method public onMotionOver(IFF)V
    .locals 2
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 89
    iget v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->currentMotionId:I

    if-eq v0, p1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->currentMotionId:I

    .line 93
    invoke-virtual {p0, p2, p3}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    iget v1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    invoke-interface {v0, v1}, Lcom/forthblue/pool/sprite/StaticImageButton$Handler;->onButtonClick(I)V

    .line 96
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/forthblue/pool/sprite/StaticImageButton;->setInside(Z)V

    goto :goto_0
.end method

.method public setTouchable(ZF)V
    .locals 1
    .param p1, "touchable"    # Z
    .param p2, "touch_rgb"    # F

    .prologue
    const/high16 v0, 0x3f800000

    .line 21
    iput-boolean p1, p0, Lcom/forthblue/pool/sprite/StaticImageButton;->touchable:Z

    .line 22
    if-nez p1, :cond_0

    .line 23
    invoke-virtual {p0, p2, p2, p2, v0}, Lcom/forthblue/pool/sprite/StaticImageButton;->setColor(FFFF)V

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/forthblue/pool/sprite/StaticImageButton;->setColor(FFFF)V

    goto :goto_0
.end method
