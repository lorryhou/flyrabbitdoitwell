.class final Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$1;
.super Landroid/os/Handler;
.source "FeatureScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->showFeatureScreenForDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$300()Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    move-result-object v0

    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->isReady:Z
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$900(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;)Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$300()Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->inactive:Z
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$400()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->waittime:F
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$700()F

    move-result v0

    # invokes: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->showFeatureScreen(F)V
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$800(F)V

    .line 230
    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$300()Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    move-result-object v0

    # setter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->isReady:Z
    invoke-static {v0, v2}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$902(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;Z)Z

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$300()Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    move-result-object v0

    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->isReady:Z
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$900(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    const-wide/16 v0, 0x14a

    invoke-virtual {p0, v2, v0, v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 236
    :cond_2
    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$300()Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->inactive:Z
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    # getter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$300()Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    move-result-object v0

    # setter for: Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->isReady:Z
    invoke-static {v0, v2}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->access$902(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;Z)Z

    goto :goto_0
.end method
