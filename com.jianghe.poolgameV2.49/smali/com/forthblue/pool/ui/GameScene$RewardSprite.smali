.class final Lcom/forthblue/pool/ui/GameScene$RewardSprite;
.super Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
.source "GameScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/forthblue/pool/ui/GameScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RewardSprite"
.end annotation


# instance fields
.field private count:Lcom/forthblue/pool/sprite/TextSprite;

.field private dur_time:J

.field private pre_count:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field final synthetic this$0:Lcom/forthblue/pool/ui/GameScene;

.field private type:I

.field private x_offset:F

.field private xx:F

.field private y_offset:F

.field private yy:F


# direct methods
.method public constructor <init>(Lcom/forthblue/pool/ui/GameScene;Lcom/fruitsmobile/basket/resources/Texture;Lcom/forthblue/pool/sprite/TextSprite;FFLcom/fruitsmobile/basket/sprites/StaticImageSprite;FF)V
    .locals 2
    .param p2, "texture"    # Lcom/fruitsmobile/basket/resources/Texture;
    .param p3, "count"    # Lcom/forthblue/pool/sprite/TextSprite;
    .param p4, "x_offset"    # F
    .param p5, "y_offset"    # F
    .param p6, "pre_count"    # Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    .param p7, "xx"    # F
    .param p8, "yy"    # F

    .prologue
    .line 2199
    iput-object p1, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->this$0:Lcom/forthblue/pool/ui/GameScene;

    .line 2200
    invoke-direct {p0, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 2191
    const-wide/16 v0, 0x320

    iput-wide v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->dur_time:J

    .line 2196
    const/4 v0, 0x0

    iput v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->type:I

    .line 2201
    iput-object p3, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->count:Lcom/forthblue/pool/sprite/TextSprite;

    .line 2202
    iput-object p6, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->pre_count:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 2203
    iput p4, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->x_offset:F

    .line 2204
    iput p5, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->y_offset:F

    .line 2205
    iput p7, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->xx:F

    .line 2206
    iput p8, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->yy:F

    .line 2207
    return-void
.end method


# virtual methods
.method public commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V
    .locals 4
    .param p1, "engine"    # Lcom/fruitsmobile/basket/interfaces/Engine;
    .param p2, "rqm"    # Lcom/fruitsmobile/basket/RenderQueueManager;

    .prologue
    .line 2239
    invoke-super {p0, p1, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 2240
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->count:Lcom/forthblue/pool/sprite/TextSprite;

    if-eqz v0, :cond_0

    .line 2241
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->count:Lcom/forthblue/pool/sprite/TextSprite;

    iget v1, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->x:F

    iget v2, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->x_offset:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/forthblue/pool/sprite/TextSprite;->x:F

    .line 2242
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->count:Lcom/forthblue/pool/sprite/TextSprite;

    iget v1, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->y:F

    iget v2, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->y_offset:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/forthblue/pool/sprite/TextSprite;->y:F

    .line 2243
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->count:Lcom/forthblue/pool/sprite/TextSprite;

    iget v1, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->alpha:F

    iput v1, v0, Lcom/forthblue/pool/sprite/TextSprite;->alpha:F

    .line 2244
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->count:Lcom/forthblue/pool/sprite/TextSprite;

    invoke-virtual {v0, p1, p2}, Lcom/forthblue/pool/sprite/TextSprite;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 2246
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->pre_count:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    if-eqz v0, :cond_1

    .line 2247
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->pre_count:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    iget v1, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->x:F

    iget v2, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->xx:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->y:F

    iget v3, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->yy:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 2248
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->pre_count:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    iget v1, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->alpha:F

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setAlpha(F)V

    .line 2249
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->pre_count:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->commit(Lcom/fruitsmobile/basket/interfaces/Engine;Lcom/fruitsmobile/basket/RenderQueueManager;)V

    .line 2251
    :cond_1
    return-void
.end method

.method public setType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 2210
    iput p1, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->type:I

    .line 2211
    if-nez p1, :cond_0

    .line 2212
    const-wide/16 v0, 0x320

    iput-wide v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->dur_time:J

    .line 2216
    :goto_0
    return-void

    .line 2214
    :cond_0
    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->dur_time:J

    goto :goto_0
.end method

.method public tick(J)V
    .locals 4
    .param p1, "timeSpan"    # J

    .prologue
    .line 2220
    iget-wide v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->dur_time:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->dur_time:J

    .line 2221
    iget-wide v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->dur_time:J

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 2222
    iget v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->alpha:F

    const v1, 0x3ca3d70a

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->alpha:F

    .line 2223
    iget v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->alpha:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 2224
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->this$0:Lcom/forthblue/pool/ui/GameScene;

    # getter for: Lcom/forthblue/pool/ui/GameScene;->reward_container:Lcom/fruitsmobile/basket/SimpleContainer;
    invoke-static {v0}, Lcom/forthblue/pool/ui/GameScene;->access$000(Lcom/forthblue/pool/ui/GameScene;)Lcom/fruitsmobile/basket/SimpleContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fruitsmobile/basket/SimpleContainer;->removeChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 2235
    :cond_0
    :goto_0
    return-void

    .line 2228
    :cond_1
    iget-wide v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->dur_time:J

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2229
    iget v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->type:I

    if-nez v0, :cond_2

    .line 2230
    iget v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->y:F

    const/high16 v1, 0x3f800000

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->setY(F)V

    goto :goto_0

    .line 2232
    :cond_2
    iget v0, p0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->y:F

    const/high16 v1, 0x3fc00000

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->setY(F)V

    goto :goto_0
.end method
