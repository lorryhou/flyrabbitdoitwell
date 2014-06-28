.class Lcom/forthblue/pool/DoodleHelper$2;
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
    .line 173
    iput-object p1, p0, Lcom/forthblue/pool/DoodleHelper$2;->this$0:Lcom/forthblue/pool/DoodleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v3, "classname"

    .line 175
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/forthblue/pool/DoodleHelper$2;->this$0:Lcom/forthblue/pool/DoodleHelper;

    iget-object v1, v1, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    const-class v2, Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getIsFirstOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const-string v1, "classname"

    const-string v1, "com.doodlemobile.gamecenter.ProfileActivity"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/forthblue/pool/DoodleHelper$2;->this$0:Lcom/forthblue/pool/DoodleHelper;

    iget-object v1, v1, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    const v2, 0x186a1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    const-string v1, "classname"

    const-string v1, "com.doodlemobile.gamecenter.LeaderBoardActivity"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v1, p0, Lcom/forthblue/pool/DoodleHelper$2;->this$0:Lcom/forthblue/pool/DoodleHelper;

    iget-object v1, v1, Lcom/forthblue/pool/DoodleHelper;->activity:Landroid/app/Activity;

    const v2, 0x186a2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
