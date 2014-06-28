.class final Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$3;
.super Landroid/os/Handler;
.source "DoodleMobileAnaylise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 771
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const v3, 0x186a1

    .line 773
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v3, v0, :cond_1

    .line 775
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->syncStatus:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$500()I

    move-result v0

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->SYNC_READY:I
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$600()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 776
    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->controller:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$900()Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 779
    new-instance v1, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$Sync;-><init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)V

    .line 780
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 781
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 784
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->mSyncHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x3a980

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 787
    :cond_1
    return-void
.end method
