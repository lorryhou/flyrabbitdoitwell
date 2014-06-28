.class Lcom/forthblue/pool/ui/GameScene$5;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Lcom/fruitsmobile/basket/interfaces/Motionable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/forthblue/pool/ui/GameScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field baseX:F

.field baseY:F

.field final synthetic this$0:Lcom/forthblue/pool/ui/GameScene;


# direct methods
.method constructor <init>(Lcom/forthblue/pool/ui/GameScene;)V
    .locals 0

    .prologue
    .line 1618
    iput-object p1, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1622
    const/4 v0, 0x0

    return v0
.end method

.method public onMotionBegin(IFF)V
    .locals 3
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/high16 v2, 0x42c80000

    .line 1626
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iput p1, v0, Lcom/forthblue/pool/ui/GameScene;->currentBallMotionId:I

    .line 1627
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimPx:F

    div-float v1, p2, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/ui/GameScene$5;->baseX:F

    .line 1628
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    div-float v1, p3, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/ui/GameScene$5;->baseY:F

    .line 1629
    return-void
.end method

.method public onMotionCancel(I)V
    .locals 1
    .param p1, "motionid"    # I

    .prologue
    const/4 v0, 0x0

    .line 1656
    invoke-virtual {p0, p1, v0, v0}, Lcom/forthblue/pool/ui/GameScene$5;->onMotionOver(IFF)V

    .line 1657
    return-void
.end method

.method public onMotionMove(IFF)V
    .locals 7
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/high16 v6, 0x3f800000

    const/high16 v5, 0x42c80000

    .line 1638
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget v2, p0, Lcom/forthblue/pool/ui/GameScene$5;->baseX:F

    div-float v3, p2, v5

    add-float/2addr v2, v3

    iput v2, v1, Lcom/forthblue/pool/ui/GameScene;->aimPx:F

    .line 1639
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget v2, p0, Lcom/forthblue/pool/ui/GameScene$5;->baseY:F

    div-float v3, p3, v5

    add-float/2addr v2, v3

    iput v2, v1, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    .line 1641
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget v1, v1, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 1642
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iput v6, v1, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    .line 1643
    :cond_0
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget v1, v1, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    float-to-double v1, v1

    const-wide/high16 v3, -0x4010000000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 1644
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    const/high16 v2, -0x40800000

    iput v2, v1, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    .line 1646
    :cond_1
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget v1, v1, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget v2, v2, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    mul-float/2addr v1, v2

    sub-float v1, v6, v1

    invoke-static {v1}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v0

    .line 1647
    .local v0, "maxPx":F
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget v1, v1, Lcom/forthblue/pool/ui/GameScene;->aimPx:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_2

    .line 1648
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimPx:F

    .line 1649
    :cond_2
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget v1, v1, Lcom/forthblue/pool/ui/GameScene;->aimPx:F

    neg-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 1650
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    neg-float v2, v0

    iput v2, v1, Lcom/forthblue/pool/ui/GameScene;->aimPx:F

    .line 1652
    :cond_3
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget-object v1, v1, Lcom/forthblue/pool/ui/GameScene;->bigPPosition:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget v2, v2, Lcom/forthblue/pool/ui/GameScene;->aimPx:F

    mul-float/2addr v2, v5

    iget-object v3, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget v3, v3, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    mul-float/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 1653
    return-void
.end method

.method public onMotionOver(IFF)V
    .locals 3
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 1632
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    const/4 v1, -0x1

    iput v1, v0, Lcom/forthblue/pool/ui/GameScene;->currentBallMotionId:I

    .line 1633
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->bigPBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1634
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$5;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->bigPPosition:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1635
    return-void
.end method
