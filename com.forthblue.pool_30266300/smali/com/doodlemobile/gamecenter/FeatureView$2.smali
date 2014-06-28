.class Lcom/doodlemobile/gamecenter/FeatureView$2;
.super Ljava/lang/Object;
.source "FeatureView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/FeatureView;->getView(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/FeatureView;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/FeatureView;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/FeatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 235
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureIntent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/FeatureView;->access$000(Lcom/doodlemobile/gamecenter/FeatureView;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    const/16 v0, 0x10

    :try_start_0
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/FeatureView;->access$100(Lcom/doodlemobile/gamecenter/FeatureView;)Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mGameName:Ljava/lang/String;

    const-string v2, "Clicks"

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/FeatureView;

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/FeatureView;->mLocation:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/FeatureView;->access$100(Lcom/doodlemobile/gamecenter/FeatureView;)Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mGameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clicks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/FeatureView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/FeatureView;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/FeatureView;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/FeatureView;->access$200(Lcom/doodlemobile/gamecenter/FeatureView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/FeatureView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/FeatureView;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/FeatureView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/FeatureView;->access$300(Lcom/doodlemobile/gamecenter/FeatureView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/FeatureView;->access$000(Lcom/doodlemobile/gamecenter/FeatureView;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    :cond_0
    :goto_1
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView$2;->this$0:Lcom/doodlemobile/gamecenter/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/FeatureView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/FeatureView;->access$300(Lcom/doodlemobile/gamecenter/FeatureView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Market Not Work"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 253
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 254
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 245
    :catch_1
    move-exception v0

    goto :goto_0
.end method
