.class Lcom/doodlemobile/gamecenter/PromoteDialog$1;
.super Ljava/lang/Object;
.source "PromoteDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/PromoteDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/PromoteDialog;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/PromoteDialog;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/PromoteDialog$1;->this$0:Lcom/doodlemobile/gamecenter/PromoteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 50
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/PromoteDialog$1;->this$0:Lcom/doodlemobile/gamecenter/PromoteDialog;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/PromoteDialog;->mFeatureView:Lcom/doodlemobile/gamecenter/FeatureView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/FeatureView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/PromoteDialog$1;->this$0:Lcom/doodlemobile/gamecenter/PromoteDialog;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/PromoteDialog;->mFeatureView:Lcom/doodlemobile/gamecenter/FeatureView;

    invoke-virtual {v2}, Lcom/doodlemobile/gamecenter/FeatureView;->getFeatureGame()Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mGameName:Ljava/lang/String;

    const-string v3, "Clicks"

    iget-object v4, p0, Lcom/doodlemobile/gamecenter/PromoteDialog$1;->this$0:Lcom/doodlemobile/gamecenter/PromoteDialog;

    iget-object v4, v4, Lcom/doodlemobile/gamecenter/PromoteDialog;->mFeatureView:Lcom/doodlemobile/gamecenter/FeatureView;

    iget-object v4, v4, Lcom/doodlemobile/gamecenter/FeatureView;->mLocation:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/PromoteDialog$1;->this$0:Lcom/doodlemobile/gamecenter/PromoteDialog;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/PromoteDialog;->mFeatureView:Lcom/doodlemobile/gamecenter/FeatureView;

    invoke-virtual {v2}, Lcom/doodlemobile/gamecenter/FeatureView;->getFeatureGame()Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mGameName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " clicks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/PromoteDialog$1;->this$0:Lcom/doodlemobile/gamecenter/PromoteDialog;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/PromoteDialog;->mFeatureView:Lcom/doodlemobile/gamecenter/FeatureView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/FeatureView;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/PromoteDialog$1;->this$0:Lcom/doodlemobile/gamecenter/PromoteDialog;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/PromoteDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/PromoteDialog$1;->this$0:Lcom/doodlemobile/gamecenter/PromoteDialog;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->dismiss()V

    .line 72
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 65
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/PromoteDialog$1;->this$0:Lcom/doodlemobile/gamecenter/PromoteDialog;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/PromoteDialog;->mContext:Landroid/content/Context;

    const-string v1, "Market Not Work"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 67
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 68
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
