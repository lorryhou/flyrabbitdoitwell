.class Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView$2;
.super Ljava/lang/Object;
.source "CCHomeAdsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView;


# direct methods
.method constructor <init>(Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView$2;->this$1:Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView$2;->this$1:Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView;

    # getter for: Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView;->this$0:Lcom/MoreGames/API/CCHomeAdsActivity;
    invoke-static {v0}, Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView;->access$0(Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView;)Lcom/MoreGames/API/CCHomeAdsActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/MoreGames/API/CCHomeAdsActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 161
    return-void
.end method
