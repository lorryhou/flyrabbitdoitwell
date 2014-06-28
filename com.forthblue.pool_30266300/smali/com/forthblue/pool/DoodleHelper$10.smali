.class Lcom/forthblue/pool/DoodleHelper$10;
.super Ljava/lang/Object;
.source "DoodleHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/forthblue/pool/DoodleHelper;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/forthblue/pool/DoodleHelper;


# direct methods
.method constructor <init>(Lcom/forthblue/pool/DoodleHelper;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/forthblue/pool/DoodleHelper$10;->this$0:Lcom/forthblue/pool/DoodleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 259
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 260
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->shouldPopPromoteDialog(JZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setLastPromoteDialog(J)V

    .line 262
    iget-object v1, p0, Lcom/forthblue/pool/DoodleHelper$10;->this$0:Lcom/forthblue/pool/DoodleHelper;

    iget-object v1, v1, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    const v2, 0xef422

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/forthblue/pool/DoodleHelper$10;->this$0:Lcom/forthblue/pool/DoodleHelper;

    iget-object v1, v1, Lcom/forthblue/pool/DoodleHelper;->featureGames:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
