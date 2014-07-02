.class Lcom/adsmogo/adapters/sdk/DomobAdapter$1;
.super Ljava/lang/Object;
.source "DomobAdapter.java"

# interfaces
.implements Lcn/domob/android/ads/DomobInterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsmogo/adapters/sdk/DomobAdapter;->handle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/sdk/DomobAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialAdClicked(Lcn/domob/android/ads/DomobInterstitialAd;)V
    .locals 4
    .param p1, "interstitialAd"    # Lcn/domob/android/ads/DomobInterstitialAd;

    .prologue
    .line 150
    const-string v2, "AdsMOGO SDK"

    .line 151
    const-string v3, "DomobSDK onInterstitialAdClicked"

    .line 150
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    invoke-virtual {v2}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->getAdsMogoInterstitialCore()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 153
    .local v0, "adsMogoInterstitialCore":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;>;"
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    .line 155
    .local v1, "core":Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;
    if-eqz v1, :cond_0

    .line 156
    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    invoke-virtual {v2}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->countClick(Lcom/adsmogo/model/obj/Ration;)V

    .line 160
    .end local v1    # "core":Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;
    :cond_0
    return-void
.end method

.method public onInterstitialAdDismiss()V
    .locals 2

    .prologue
    .line 127
    const-string v0, "AdsMOGO SDK"

    .line 128
    const-string v1, "DomobSDK onInterstitialAdDismiss"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    # invokes: Lcom/adsmogo/adapters/sdk/DomobAdapter;->sendCloseed()V
    invoke-static {v0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$3(Lcom/adsmogo/adapters/sdk/DomobAdapter;)V

    .line 130
    return-void
.end method

.method public onInterstitialAdFailed(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .locals 3
    .param p1, "arg0"    # Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    .prologue
    .line 134
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Domob InterstitialAd Failed :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    # getter for: Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$1(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    # getter for: Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;
    invoke-static {v2}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$4(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Lcn/domob/android/ads/DomobAdView;

    move-result-object v2

    # invokes: Lcom/adsmogo/adapters/sdk/DomobAdapter;->sendResult(ZLandroid/view/ViewGroup;)V
    invoke-static {v0, v1, v2}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$5(Lcom/adsmogo/adapters/sdk/DomobAdapter;ZLandroid/view/ViewGroup;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onInterstitialAdLeaveApplication()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "AdsMOGO SDK"

    .line 144
    const-string v1, "DomobSDK onInterstitialAdLeaveApplication"

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public onInterstitialAdPresent()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "AdsMOGO SDK"

    .line 122
    const-string v1, "DomobSDK onInterstitialAdPresent"

    .line 121
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method public onInterstitialAdReady()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    # getter for: Lcom/adsmogo/adapters/sdk/DomobAdapter;->intAD:Lcn/domob/android/ads/DomobInterstitialAd;
    invoke-static {v0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$0(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Lcn/domob/android/ads/DomobInterstitialAd;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    # getter for: Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$1(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 102
    const-string v0, "AdsMOGO SDK"

    const-string v1, "intAD or activity is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    # invokes: Lcom/adsmogo/adapters/sdk/DomobAdapter;->sendReadyed()V
    invoke-static {v0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$2(Lcom/adsmogo/adapters/sdk/DomobAdapter;)V

    goto :goto_0
.end method

.method public onLandingPageClose()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "AdsMOGO SDK"

    const-string v1, "DomobSDK onLandingPageClose"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public onLandingPageOpen()V
    .locals 2

    .prologue
    .line 111
    const-string v0, "AdsMOGO SDK"

    const-string v1, "DomobSDK onLandingPageOpen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method
