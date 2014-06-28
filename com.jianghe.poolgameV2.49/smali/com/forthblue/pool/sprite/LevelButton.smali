.class public Lcom/forthblue/pool/sprite/LevelButton;
.super Lcom/forthblue/pool/sprite/StaticImageButton;
.source "LevelButton.java"


# instance fields
.field private level_text:Lcom/forthblue/pool/sprite/IntegerSprite;

.field private lock:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field final offset_x:[F

.field final offset_y:[F

.field private star_a_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

.field private star_array:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field private star_b_region:Lcom/fruitsmobile/basket/resources/TextureRegion;


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/fruitsmobile/basket/resources/TextureRegion;[F[FLcom/forthblue/pool/sprite/TileTextureFont;)V
    .locals 4
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/TextureRegion;
    .param p2, "star_a_region"    # Lcom/fruitsmobile/basket/resources/TextureRegion;
    .param p3, "star_b_region"    # Lcom/fruitsmobile/basket/resources/TextureRegion;
    .param p4, "lock_region"    # Lcom/fruitsmobile/basket/resources/TextureRegion;
    .param p5, "offset_x"    # [F
    .param p6, "offset_y"    # [F
    .param p7, "font"    # Lcom/forthblue/pool/sprite/TileTextureFont;

    .prologue
    const/4 v3, 0x3

    .line 20
    invoke-direct {p0, p1}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    .line 21
    iput-object p2, p0, Lcom/forthblue/pool/sprite/LevelButton;->star_a_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    .line 22
    iput-object p3, p0, Lcom/forthblue/pool/sprite/LevelButton;->star_b_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    .line 24
    new-array v1, v3, [Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    iput-object v1, p0, Lcom/forthblue/pool/sprite/LevelButton;->star_array:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 25
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 26
    iget-object v1, p0, Lcom/forthblue/pool/sprite/LevelButton;->star_array:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    new-instance v2, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-direct {v2, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v2, v1, v0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    new-instance v1, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-direct {v1, p4}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    iput-object v1, p0, Lcom/forthblue/pool/sprite/LevelButton;->lock:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 30
    new-instance v1, Lcom/forthblue/pool/sprite/IntegerSprite;

    const-string v2, ""

    const/4 v3, 0x2

    invoke-direct {v1, v2, p7, v3}, Lcom/forthblue/pool/sprite/IntegerSprite;-><init>(Ljava/lang/CharSequence;Lcom/forthblue/pool/sprite/TileTextureFont;I)V

    iput-object v1, p0, Lcom/forthblue/pool/sprite/LevelButton;->level_text:Lcom/forthblue/pool/sprite/IntegerSprite;

    .line 31
    iput-object p5, p0, Lcom/forthblue/pool/sprite/LevelButton;->offset_x:[F

    .line 32
    iput-object p6, p0, Lcom/forthblue/pool/sprite/LevelButton;->offset_y:[F

    .line 33
    return-void
.end method


# virtual methods
.method public commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 4
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-super {p0, p1, p2}, Lcom/forthblue/pool/sprite/StaticImageButton;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 74
    iget-boolean v0, p0, Lcom/forthblue/pool/sprite/LevelButton;->touchable:Z

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/forthblue/pool/sprite/LevelButton;->level_text:Lcom/forthblue/pool/sprite/IntegerSprite;

    invoke-virtual {v0, p1, p2}, Lcom/forthblue/pool/sprite/IntegerSprite;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/forthblue/pool/sprite/LevelButton;->star_array:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 81
    iget-object v0, p0, Lcom/forthblue/pool/sprite/LevelButton;->star_array:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 83
    iget-object v0, p0, Lcom/forthblue/pool/sprite/LevelButton;->star_array:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 84
    iget-object v0, p0, Lcom/forthblue/pool/sprite/LevelButton;->star_array:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 86
    iget-object v0, p0, Lcom/forthblue/pool/sprite/LevelButton;->star_array:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 87
    iget-object v0, p0, Lcom/forthblue/pool/sprite/LevelButton;->star_array:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 89
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/sprite/LevelButton;->lock:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 78
    iget-object v0, p0, Lcom/forthblue/pool/sprite/LevelButton;->lock:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    goto :goto_0
.end method

.method public setLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 49
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/forthblue/pool/sprite/LevelButton;->level_text:Lcom/forthblue/pool/sprite/IntegerSprite;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/IntegerSprite;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/forthblue/pool/sprite/LevelButton;->level_text:Lcom/forthblue/pool/sprite/IntegerSprite;

    const v1, 0x3fa66666

    iput v1, v0, Lcom/forthblue/pool/sprite/IntegerSprite;->alpha:F

    .line 55
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/sprite/LevelButton;->level_text:Lcom/forthblue/pool/sprite/IntegerSprite;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/IntegerSprite;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPosition(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-super {p0, p1, p2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 38
    iget-object v1, p0, Lcom/forthblue/pool/sprite/LevelButton;->level_text:Lcom/forthblue/pool/sprite/IntegerSprite;

    iget-object v2, p0, Lcom/forthblue/pool/sprite/LevelButton;->offset_x:[F

    aget v2, v2, v3

    add-float/2addr v2, p1

    iput v2, v1, Lcom/forthblue/pool/sprite/IntegerSprite;->x:F

    .line 39
    iget-object v1, p0, Lcom/forthblue/pool/sprite/LevelButton;->level_text:Lcom/forthblue/pool/sprite/IntegerSprite;

    iget-object v2, p0, Lcom/forthblue/pool/sprite/LevelButton;->offset_y:[F

    aget v2, v2, v3

    add-float/2addr v2, p2

    iput v2, v1, Lcom/forthblue/pool/sprite/IntegerSprite;->y:F

    .line 41
    iget-object v1, p0, Lcom/forthblue/pool/sprite/LevelButton;->lock:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const/high16 v2, 0x41400000

    sub-float v2, p2, v2

    invoke-virtual {v1, p1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/forthblue/pool/sprite/LevelButton;->star_array:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/forthblue/pool/sprite/LevelButton;->offset_x:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    add-float/2addr v2, p1

    iget-object v3, p0, Lcom/forthblue/pool/sprite/LevelButton;->offset_y:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-float/2addr v3, p2

    invoke-virtual {v1, v2, v3}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public setStarCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/forthblue/pool/sprite/LevelButton;->star_array:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/forthblue/pool/sprite/LevelButton;->star_b_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setTextureRegion(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    move v0, p1

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/forthblue/pool/sprite/LevelButton;->star_array:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/forthblue/pool/sprite/LevelButton;->star_a_region:Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setTextureRegion(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_1
    return-void
.end method

.method public setUnlock(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/forthblue/pool/sprite/LevelButton;->touchable:Z

    .line 59
    iget-object v0, p0, Lcom/forthblue/pool/sprite/LevelButton;->lock:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
