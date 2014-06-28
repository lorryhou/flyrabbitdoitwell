.class public Lcom/forthblue/pool/sprite/TableSelectButton;
.super Lcom/forthblue/pool/sprite/StaticImageButton;
.source "TableSelectButton.java"


# instance fields
.field private index:I

.field private level_passed:Lcom/forthblue/pool/sprite/TextSprite;

.field private level_pre:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field private final offset_x:[F

.field private final offset_y:[F

.field private stage_index:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field private stage_pre:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field private star_got:Lcom/forthblue/pool/sprite/TextSprite;

.field private star_pre:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;


# direct methods
.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Texture;Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/fruitsmobile/basket/resources/TextureRegion;I[F[FLcom/forthblue/pool/sprite/TileTextureFont;)V
    .locals 2
    .param p1, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;
    .param p2, "stage_title_stage"    # Lcom/fruitsmobile/basket/resources/TextureRegion;
    .param p3, "index_region"    # Lcom/fruitsmobile/basket/resources/TextureRegion;
    .param p4, "level_region"    # Lcom/fruitsmobile/basket/resources/TextureRegion;
    .param p5, "star_region"    # Lcom/fruitsmobile/basket/resources/TextureRegion;
    .param p6, "index"    # I
    .param p7, "offset_x"    # [F
    .param p8, "offset_y"    # [F
    .param p9, "font"    # Lcom/forthblue/pool/sprite/TileTextureFont;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 22
    iput p6, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->index:I

    .line 23
    iput-object p7, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->offset_x:[F

    .line 24
    iput-object p8, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->offset_y:[F

    .line 25
    const/4 v0, 0x7

    if-ge p6, v0, :cond_0

    .line 26
    new-instance v0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-direct {v0, p3}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    iput-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->stage_index:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 28
    new-instance v0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-direct {v0, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    iput-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->stage_pre:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 29
    new-instance v0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-direct {v0, p4}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    iput-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->level_pre:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 30
    new-instance v0, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-direct {v0, p5}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    iput-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->star_pre:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 32
    new-instance v0, Lcom/forthblue/pool/sprite/TextSprite;

    invoke-direct {v0, p9}, Lcom/forthblue/pool/sprite/TextSprite;-><init>(Lcom/forthblue/pool/sprite/TileTextureFont;)V

    iput-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->level_passed:Lcom/forthblue/pool/sprite/TextSprite;

    .line 33
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->level_passed:Lcom/forthblue/pool/sprite/TextSprite;

    const-string v1, "01/30"

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/TextSprite;->setText(Ljava/lang/CharSequence;)V

    .line 35
    new-instance v0, Lcom/forthblue/pool/sprite/TextSprite;

    invoke-direct {v0, p9}, Lcom/forthblue/pool/sprite/TextSprite;-><init>(Lcom/forthblue/pool/sprite/TileTextureFont;)V

    iput-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->star_got:Lcom/forthblue/pool/sprite/TextSprite;

    .line 36
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->star_got:Lcom/forthblue/pool/sprite/TextSprite;

    const-string v1, "01/90"

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/TextSprite;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 2
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Lcom/forthblue/pool/sprite/StaticImageButton;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 70
    iget v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->index:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->stage_pre:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 72
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->stage_pre:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 74
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->level_pre:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 75
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->level_pre:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 77
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->star_pre:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 78
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->star_pre:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 80
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->stage_index:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setNeedRecommit()V

    .line 81
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->stage_index:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 83
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->level_passed:Lcom/forthblue/pool/sprite/TextSprite;

    invoke-virtual {v0}, Lcom/forthblue/pool/sprite/TextSprite;->setNeedRecommit()V

    .line 84
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->level_passed:Lcom/forthblue/pool/sprite/TextSprite;

    invoke-virtual {v0, p1, p2}, Lcom/forthblue/pool/sprite/TextSprite;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 86
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->star_got:Lcom/forthblue/pool/sprite/TextSprite;

    invoke-virtual {v0}, Lcom/forthblue/pool/sprite/TextSprite;->setNeedRecommit()V

    .line 87
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->star_got:Lcom/forthblue/pool/sprite/TextSprite;

    invoke-virtual {v0, p1, p2}, Lcom/forthblue/pool/sprite/TextSprite;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 89
    :cond_0
    return-void
.end method

.method public setLevelUnLocked(II)V
    .locals 4
    .param p1, "level_unlocked"    # I
    .param p2, "star_get"    # I

    .prologue
    const-string v3, ""

    .line 41
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->level_passed:Lcom/forthblue/pool/sprite/TextSprite;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->level_passed:Lcom/forthblue/pool/sprite/TextSprite;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/30"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/TextSprite;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->star_got:Lcom/forthblue/pool/sprite/TextSprite;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/90"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/TextSprite;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_0
    return-void
.end method

.method public setPosition(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 49
    iget v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->index:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->stage_pre:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    iget-object v1, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->offset_x:[F

    aget v1, v1, v3

    add-float/2addr v1, p1

    iget-object v2, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->offset_y:[F

    aget v2, v2, v3

    add-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 52
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->stage_index:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    iget-object v1, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->offset_x:[F

    aget v1, v1, v4

    add-float/2addr v1, p1

    iget-object v2, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->offset_y:[F

    aget v2, v2, v4

    add-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 54
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->level_pre:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    iget-object v1, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->offset_x:[F

    aget v1, v1, v5

    add-float/2addr v1, p1

    iget-object v2, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->offset_y:[F

    aget v2, v2, v5

    add-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 56
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->star_pre:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    iget-object v1, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->offset_x:[F

    aget v1, v1, v6

    add-float/2addr v1, p1

    iget-object v2, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->offset_y:[F

    aget v2, v2, v6

    add-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 58
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->level_passed:Lcom/forthblue/pool/sprite/TextSprite;

    iget-object v1, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->offset_x:[F

    aget v1, v1, v7

    add-float/2addr v1, p1

    iput v1, v0, Lcom/forthblue/pool/sprite/TextSprite;->x:F

    .line 59
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->level_passed:Lcom/forthblue/pool/sprite/TextSprite;

    iget-object v1, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->offset_y:[F

    aget v1, v1, v7

    add-float/2addr v1, p2

    iput v1, v0, Lcom/forthblue/pool/sprite/TextSprite;->y:F

    .line 61
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->star_got:Lcom/forthblue/pool/sprite/TextSprite;

    iget-object v1, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->offset_x:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    add-float/2addr v1, p1

    iput v1, v0, Lcom/forthblue/pool/sprite/TextSprite;->x:F

    .line 62
    iget-object v0, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->star_got:Lcom/forthblue/pool/sprite/TextSprite;

    iget-object v1, p0, Lcom/forthblue/pool/sprite/TableSelectButton;->offset_y:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    add-float/2addr v1, p2

    iput v1, v0, Lcom/forthblue/pool/sprite/TextSprite;->y:F

    .line 64
    :cond_0
    return-void
.end method
