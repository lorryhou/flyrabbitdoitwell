.class Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView$1;
.super Ljava/util/TimerTask;
.source "CCHomeAdsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView;->createTimer()V
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
    iput-object p1, p0, Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView$1;->this$1:Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView;

    .line 84
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView$1;->this$1:Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView;

    invoke-virtual {v0}, Lcom/MoreGames/API/CCHomeAdsActivity$HomeAdsView;->exit()V

    .line 89
    return-void
.end method
