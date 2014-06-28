.class public Lcom/forthblue/pool/sprite/SaleButton;
.super Lcom/forthblue/pool/sprite/StaticImageButton;
.source "SaleButton.java"


# static fields
.field static offset_x:[F

.field static offset_y:[F


# instance fields
.field private buy_count:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field private price:Lcom/forthblue/pool/sprite/BitmapFontSprite;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 13
    new-array v0, v3, [F

    aput v1, v0, v2

    sput-object v0, Lcom/forthblue/pool/sprite/SaleButton;->offset_x:[F

    .line 14
    new-array v0, v3, [F

    aput v1, v0, v2

    sput-object v0, Lcom/forthblue/pool/sprite/SaleButton;->offset_y:[F

    return-void
.end method

.method public constructor <init>(Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/fruitsmobile/basket/resources/TextureRegion;[Lcom/fruitsmobile/basket/resources/TextureRegion;Ljava/lang/String;)V
    .locals 2
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/TextureRegion;
    .param p2, "count_region"    # Lcom/fruitsmobile/basket/resources/TextureRegion;
    .param p3, "font"    # [Lcom/fruitsmobile/basket/resources/TextureRegion;
    .param p4, "font_map"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    .line 18
    new-instance v0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-direct {v0, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    iput-object v0, p0, Lcom/forthblue/pool/sprite/SaleButton;->buy_count:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 19
    new-instance v0, Lcom/forthblue/pool/sprite/BitmapFontSprite;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/forthblue/pool/sprite/BitmapFontSprite;-><init>(Lcom/forthblue/pool/sprite/TileTextureFont;)V

    iput-object v0, p0, Lcom/forthblue/pool/sprite/SaleButton;->price:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    .line 20
    iget-object v0, p0, Lcom/forthblue/pool/sprite/SaleButton;->price:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    invoke-virtual {v0, p3, p4}, Lcom/forthblue/pool/sprite/BitmapFontSprite;->setRegion([Lcom/fruitsmobile/basket/resources/TextureRegion;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 1
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Lcom/forthblue/pool/sprite/StaticImageButton;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 43
    iget-object v0, p0, Lcom/forthblue/pool/sprite/SaleButton;->buy_count:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/forthblue/pool/sprite/SaleButton;->buy_count:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 45
    iget-object v0, p0, Lcom/forthblue/pool/sprite/SaleButton;->buy_count:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/sprite/SaleButton;->price:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/forthblue/pool/sprite/SaleButton;->price:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    invoke-virtual {v0}, Lcom/forthblue/pool/sprite/BitmapFontSprite;->setNeedRecommit()V

    .line 49
    iget-object v0, p0, Lcom/forthblue/pool/sprite/SaleButton;->price:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    invoke-virtual {v0, p1, p2}, Lcom/forthblue/pool/sprite/BitmapFontSprite;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 51
    :cond_1
    return-void
.end method

.method public setPosition(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 25
    iget-object v0, p0, Lcom/forthblue/pool/sprite/SaleButton;->buy_count:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/forthblue/pool/sprite/SaleButton;->buy_count:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const/high16 v1, 0x41f00000

    sub-float v1, p1, v1

    const/high16 v2, 0x41880000

    sub-float v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/sprite/SaleButton;->price:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    if-eqz v0, :cond_1

    .line 29
    iget-object v0, p0, Lcom/forthblue/pool/sprite/SaleButton;->price:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    const/high16 v1, 0x41e80000

    sub-float v1, p1, v1

    iput v1, v0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->x:F

    .line 30
    iget-object v0, p0, Lcom/forthblue/pool/sprite/SaleButton;->price:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    const/high16 v1, 0x41500000

    add-float/2addr v1, p2

    iput v1, v0, Lcom/forthblue/pool/sprite/BitmapFontSprite;->y:F

    .line 32
    :cond_1
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/forthblue/pool/sprite/SaleButton;->price:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/forthblue/pool/sprite/SaleButton;->price:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    invoke-virtual {v0, p1}, Lcom/forthblue/pool/sprite/BitmapFontSprite;->setText(Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method
