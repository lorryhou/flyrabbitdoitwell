.class Lcom/forthblue/pool/ui/MenuScene$2;
.super Ljava/lang/Object;
.source "MenuScene.java"

# interfaces
.implements Lcom/fruitsmobile/basket/interfaces/Motionable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/forthblue/pool/ui/MenuScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/forthblue/pool/ui/MenuScene;


# direct methods
.method constructor <init>(Lcom/forthblue/pool/ui/MenuScene;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/forthblue/pool/ui/MenuScene$2;->this$0:Lcom/forthblue/pool/ui/MenuScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method public onMotionBegin(IFF)V
    .locals 0
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 513
    return-void
.end method

.method public onMotionCancel(I)V
    .locals 0
    .param p1, "motionid"    # I

    .prologue
    .line 531
    return-void
.end method

.method public onMotionMove(IFF)V
    .locals 0
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 527
    return-void
.end method

.method public onMotionOver(IFF)V
    .locals 2
    .param p1, "motionid"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 517
    const/high16 v0, 0x431f0000

    sub-float/2addr p2, v0

    .line 518
    const/high16 v0, 0x430f0000

    add-float/2addr p3, v0

    .line 519
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41f00000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41b80000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene$2;->this$0:Lcom/forthblue/pool/ui/MenuScene;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/forthblue/pool/ui/MenuScene;->bIsEasterEggs:Z

    .line 521
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene$2;->this$0:Lcom/forthblue/pool/ui/MenuScene;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    .line 523
    :cond_0
    return-void
.end method
