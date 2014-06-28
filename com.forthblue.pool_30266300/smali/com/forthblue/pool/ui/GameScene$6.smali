.class Lcom/forthblue/pool/ui/GameScene$6;
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
    .line 1662
    iput-object p1, p0, Lcom/forthblue/pool/ui/GameScene$6;->this$0:Lcom/forthblue/pool/ui/GameScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1665
    const/4 v0, 0x0

    return v0
.end method

.method public onMotionBegin(IFF)V
    .locals 0
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1669
    return-void
.end method

.method public onMotionCancel(I)V
    .locals 0
    .param p1, "motionid"    # I

    .prologue
    .line 1683
    return-void
.end method

.method public onMotionMove(IFF)V
    .locals 5
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$6;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget v1, v0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene$6;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget v2, v2, Lcom/forthblue/pool/ui/GameScene;->dAngle:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    .line 1676
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$6;->this$0:Lcom/forthblue/pool/ui/GameScene;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/GameScene;->calcAimTarget()V

    .line 1677
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$6;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->dAngle:F

    float-to-double v0, v0

    const-wide v2, -0x4046666666666666L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$6;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->dAngle:F

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 1678
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$6;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget v1, v0, Lcom/forthblue/pool/ui/GameScene;->dAngle:F

    float-to-double v1, v1

    const-wide v3, 0x3ff199999999999aL

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcom/forthblue/pool/ui/GameScene;->dAngle:F

    .line 1680
    :cond_0
    return-void
.end method

.method public onMotionOver(IFF)V
    .locals 0
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1672
    return-void
.end method
