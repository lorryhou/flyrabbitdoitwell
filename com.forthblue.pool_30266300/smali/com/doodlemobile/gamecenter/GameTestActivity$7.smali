.class Lcom/doodlemobile/gamecenter/GameTestActivity$7;
.super Landroid/os/Handler;
.source "GameTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/GameTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/GameTestActivity;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/GameTestActivity;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/GameTestActivity$7;->this$0:Lcom/doodlemobile/gamecenter/GameTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 164
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->setActiveFromDelay()V

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->setInactiveThisTime()V

    goto :goto_0
.end method
