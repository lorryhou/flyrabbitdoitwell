.class Lcom/forthblue/pool/ui/GameScene$7;
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
.field final synthetic this$0:Lcom/forthblue/pool/ui/GameScene;


# direct methods
.method constructor <init>(Lcom/forthblue/pool/ui/GameScene;)V
    .locals 0

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1693
    const/4 v0, 0x0

    return v0
.end method

.method public onMotionBegin(IFF)V
    .locals 0
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1698
    return-void
.end method

.method public onMotionCancel(I)V
    .locals 0
    .param p1, "motionid"    # I

    .prologue
    .line 1762
    return-void
.end method

.method public onMotionMove(IFF)V
    .locals 17
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v12, v0

    iget-object v1, v12, Lcom/forthblue/pool/ui/GameScene;->freeballtarget:Lcom/forthblue/pool/engine/PoolBall;

    .line 1714
    .local v1, "ball0":Lcom/forthblue/pool/engine/PoolBall;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v12, v0

    iget-object v12, v12, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v12, v12, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    iget v13, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v14, v0

    iget-object v14, v14, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v14, v14, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    mul-float/2addr v13, v14

    add-float v3, v12, v13

    .line 1715
    .local v3, "ballx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v12, v0

    iget-object v12, v12, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v12, v12, Lcom/forthblue/pool/engine/PoolTable;->centery:F

    iget v13, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v14, v0

    iget-object v14, v14, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v14, v14, Lcom/forthblue/pool/engine/PoolTable;->scaley:F

    mul-float/2addr v13, v14

    add-float v4, v12, v13

    .line 1716
    .local v4, "bally":F
    iget v12, v1, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v13, v0

    iget-object v13, v13, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v13, v13, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    mul-float v2, v12, v13

    .line 1718
    .local v2, "ballr":F
    sub-float v6, p2, v3

    .line 1719
    .local v6, "dx0":F
    sub-float v8, p3, v4

    .line 1722
    .local v8, "dy0":F
    mul-float v12, v6, v6

    mul-float v13, v8, v8

    add-float/2addr v12, v13

    mul-float v13, v2, v2

    const/high16 v14, 0x40c80000

    mul-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_0

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v12, v0

    const/high16 v13, 0x40a00000

    iput v13, v12, Lcom/forthblue/pool/ui/GameScene;->dv:F

    .line 1758
    :goto_0
    return-void

    .line 1725
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/forthblue/pool/ui/GameScene;->freeballconfirming:Z

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v12, v0

    iget-object v12, v12, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v12, v12, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    sub-float v12, p2, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v13, v0

    iget-object v13, v13, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v13, v13, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    div-float v10, v12, v13

    .line 1728
    .local v10, "px":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v12, v0

    iget-object v12, v12, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v12, v12, Lcom/forthblue/pool/engine/PoolTable;->centery:F

    sub-float v12, p3, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v13, v0

    iget-object v13, v13, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v13, v13, Lcom/forthblue/pool/engine/PoolTable;->scaley:F

    div-float v11, v12, v13

    .line 1730
    .local v11, "py":F
    iget v12, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    sub-float v5, v10, v12

    .line 1731
    .local v5, "dx":F
    iget v12, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    sub-float v7, v11, v12

    .line 1733
    .local v7, "dy":F
    mul-float v12, v5, v5

    mul-float v13, v7, v7

    add-float/2addr v12, v13

    invoke-static {v12}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v9

    .line 1734
    .local v9, "l":F
    div-float/2addr v5, v9

    .line 1735
    div-float/2addr v7, v9

    .line 1737
    iget v12, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v13, v0

    iget v13, v13, Lcom/forthblue/pool/ui/GameScene;->dv:F

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    iput v12, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 1738
    iget v12, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v13, v0

    iget v13, v13, Lcom/forthblue/pool/ui/GameScene;->dv:F

    mul-float/2addr v13, v7

    add-float/2addr v12, v13

    iput v12, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v12, v0

    iget-object v12, v12, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v13, v0

    iget-object v13, v13, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget-object v13, v13, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    invoke-interface {v12, v13, v1}, Lcom/forthblue/pool/rules/PoolRule;->checkFreeballArea(Lcom/forthblue/pool/rules/PoolRule$RoundState;Lcom/forthblue/pool/engine/PoolBall;)V

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v12, v0

    iget v12, v12, Lcom/forthblue/pool/ui/GameScene;->dv:F

    const/high16 v13, 0x41a00000

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v12, v0

    iget v13, v12, Lcom/forthblue/pool/ui/GameScene;->dv:F

    float-to-double v13, v13

    const-wide v15, 0x3ff199999999999aL

    mul-double/2addr v13, v15

    double-to-float v13, v13

    iput v13, v12, Lcom/forthblue/pool/ui/GameScene;->dv:F

    .line 1744
    :cond_1
    iget-object v12, v1, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    if-nez v12, :cond_2

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v12, v0

    iget-object v12, v12, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget-object v12, v12, Lcom/forthblue/pool/engine/PoolTable;->shadows:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    invoke-virtual {v12}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->alloc()Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-result-object v12

    iput-object v12, v1, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    .line 1746
    iget-object v12, v1, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget-object v13, v1, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v14, v1, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    const/high16 v15, 0x3fa00000

    mul-float/2addr v14, v15

    iput v14, v13, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusy:F

    iput v14, v12, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    .line 1748
    :cond_2
    iget-object v12, v1, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    if-nez v12, :cond_3

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    move-object v12, v0

    iget-object v12, v12, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget-object v12, v12, Lcom/forthblue/pool/engine/PoolTable;->highlights:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    invoke-virtual {v12}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->alloc()Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-result-object v12

    iput-object v12, v1, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    .line 1750
    iget-object v12, v1, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget-object v13, v1, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v14, v1, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    iput v14, v13, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusy:F

    iput v14, v12, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    .line 1751
    iget-object v12, v1, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    const v13, 0x3f4ccccd

    iput v13, v12, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    .line 1753
    :cond_3
    iget-object v12, v1, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v13, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    iget v14, v1, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    const v15, 0x3e4ccccd

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v12, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->x:F

    .line 1754
    iget-object v12, v1, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v13, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    iget v14, v1, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    const/high16 v15, 0x3e800000

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    iput v13, v12, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->y:F

    .line 1755
    iget-object v12, v1, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v13, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    iput v13, v12, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->x:F

    .line 1756
    iget-object v12, v1, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v13, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    iput v13, v12, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->y:F

    goto/16 :goto_0
.end method

.method public onMotionOver(IFF)V
    .locals 5
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget-boolean v0, v0, Lcom/forthblue/pool/ui/GameScene;->freeballconfirming:Z

    if-eqz v0, :cond_0

    .line 1703
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget-object v1, v1, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget-object v1, v1, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget-object v2, v2, Lcom/forthblue/pool/ui/GameScene;->freeballtarget:Lcom/forthblue/pool/engine/PoolBall;

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->id:I

    iget-object v3, p0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget-object v3, v3, Lcom/forthblue/pool/ui/GameScene;->freeballtarget:Lcom/forthblue/pool/engine/PoolBall;

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->x:F

    iget-object v4, p0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget-object v4, v4, Lcom/forthblue/pool/ui/GameScene;->freeballtarget:Lcom/forthblue/pool/engine/PoolBall;

    iget v4, v4, Lcom/forthblue/pool/engine/PoolBall;->y:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/forthblue/pool/rules/PoolRule;->canPut([Lcom/forthblue/pool/engine/PoolBall;IFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    invoke-virtual {v0}, Lcom/forthblue/pool/engine/PoolTable;->putFreeball()V

    .line 1707
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$7;->this$0:Lcom/forthblue/pool/ui/GameScene;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/forthblue/pool/ui/GameScene;->freeballconfirming:Z

    .line 1708
    return-void
.end method
