.class public Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;
.source "GoogleAdMobAdsAdapter.java"

# interfaces
.implements Lcom/google/ads/AdListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private adView:Lcom/google/ads/AdView;

.field private adsMogoConfigInterface:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

.field private configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

.field private interstitial:Lcom/google/ads/doubleclick/DfpInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)V
    .locals 0
    .param p1, "adsMogoConfigInterface"    # Lcom/adsmogo/interstitial/AdsMogoConfigInterface;
    .param p2, "ration"    # Lcom/adsmogo/model/obj/Ration;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/AdsMogoAdapter;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)V

    .line 43
    return-void
.end method

.method private sendCloseed()V
    .locals 1

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->shoutdownTimer()V

    .line 285
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->activity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adsMogoInterstitialCloseedListener:Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;

    if-eqz v0, :cond_2

    .line 293
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adsMogoInterstitialCloseedListener:Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;->onInterstitialCloseed()V

    .line 295
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adsMogoInterstitialCloseedListener:Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;

    goto :goto_0
.end method

.method private sendReadyed()V
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->shoutdownTimer()V

    .line 265
    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->activity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 271
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->setReadyed(Z)V

    .line 272
    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adsMogoReadyCoreListener:Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;

    if-eqz v1, :cond_3

    .line 273
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adsMogoReadyCoreListener:Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "\u8865\u4f59"

    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    invoke-interface {v1, v0}, Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;->onReadyed(Ljava/lang/String;)V

    .line 277
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adsMogoReadyCoreListener:Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;

    goto :goto_0
.end method

.method private sendResult(ZLandroid/view/ViewGroup;)V
    .locals 4
    .param p1, "isSucceed"    # Z
    .param p2, "adView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x2

    .line 218
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->shoutdownTimer()V

    .line 220
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->activity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    .line 225
    if-nez p1, :cond_2

    .line 226
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    .line 237
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_3

    .line 229
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;I)V

    goto :goto_1

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2, v3, v2, v2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto :goto_1
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-super {p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->clearCache()V

    .line 192
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->interstitial:Lcom/google/ads/doubleclick/DfpInterstitialAd;

    if-eqz v0, :cond_0

    .line 193
    iput-object v1, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->interstitial:Lcom/google/ads/doubleclick/DfpInterstitialAd;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adView:Lcom/google/ads/AdView;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v0}, Lcom/google/ads/AdView;->destroy()V

    .line 198
    iput-object v1, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adView:Lcom/google/ads/AdView;

    .line 201
    :cond_1
    iput-object v1, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    .line 202
    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdMob Finished"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method protected genderForAdsMogoTargeting()Lcom/google/ads/AdRequest$Gender;
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/adsmogo/util/AdsMogoTargeting;->getGender()Lcom/adsmogo/util/Gender;

    move-result-object v0

    sget-object v1, Lcom/adsmogo/util/Gender;->MALE:Lcom/adsmogo/util/Gender;

    if-ne v0, v1, :cond_0

    .line 48
    sget-object v0, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    .line 53
    :goto_0
    return-object v0

    .line 49
    :cond_0
    invoke-static {}, Lcom/adsmogo/util/AdsMogoTargeting;->getGender()Lcom/adsmogo/util/Gender;

    move-result-object v0

    sget-object v1, Lcom/adsmogo/util/Gender;->FEMALE:Lcom/adsmogo/util/Gender;

    if-ne v0, v1, :cond_1

    .line 50
    sget-object v0, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handle()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 59
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adsMogoConfigInterfaceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    iput-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adsMogoConfigInterface:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    .line 60
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adsMogoConfigInterface:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    if-nez v3, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adsMogoConfigInterface:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    .line 65
    invoke-interface {v3}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getActivityReference()Ljava/lang/ref/WeakReference;

    move-result-object v2

    .line 67
    .local v2, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    iput-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->activity:Landroid/app/Activity;

    .line 71
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adsMogoConfigInterface:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v3}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v3

    iput-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    .line 76
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v3

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->startFullTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :goto_1
    :try_start_1
    new-instance v3, Lcom/google/ads/doubleclick/DfpInterstitialAd;

    iget-object v4, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v5

    iget-object v5, v5, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/google/ads/doubleclick/DfpInterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->interstitial:Lcom/google/ads/doubleclick/DfpInterstitialAd;

    .line 90
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 93
    .local v0, "adRequest":Lcom/google/ads/AdRequest;
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->interstitial:Lcom/google/ads/doubleclick/DfpInterstitialAd;

    invoke-virtual {v3, p0}, Lcom/google/ads/doubleclick/DfpInterstitialAd;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 96
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->interstitial:Lcom/google/ads/doubleclick/DfpInterstitialAd;

    invoke-virtual {v3, v0}, Lcom/google/ads/doubleclick/DfpInterstitialAd;->loadAd(Lcom/google/ads/AdRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 98
    .end local v0    # "adRequest":Lcom/google/ads/AdRequest;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AdsMOGO SDK"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adView:Lcom/google/ads/AdView;

    invoke-direct {p0, v7, v3}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 84
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->startTimer()V

    goto :goto_1

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->startTimer()V

    .line 107
    :try_start_2
    new-instance v3, Lcom/google/ads/AdView;

    iget-object v4, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->activity:Landroid/app/Activity;

    sget-object v5, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v6

    iget-object v6, v6, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adView:Lcom/google/ads/AdView;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 112
    :goto_2
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adView:Lcom/google/ads/AdView;

    invoke-virtual {v3, p0}, Lcom/google/ads/AdView;->setAdListener(Lcom/google/ads/AdListener;)V

    .line 113
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adView:Lcom/google/ads/AdView;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->requestForAdsMogoLayout()Lcom/google/ads/AdRequest;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    goto/16 :goto_0

    .line 108
    :catch_2
    move-exception v1

    .line 109
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "AdsMOGO SDK"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    iget-object v3, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adView:Lcom/google/ads/AdView;

    invoke-direct {p0, v7, v3}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    goto :goto_2

    .line 115
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v3, "AdsMOGO SDK"

    const-string v4, "nonsupport type"

    invoke-static {v3, v4}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    const/4 v3, 0x0

    invoke-direct {p0, v7, v3}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GoogleAdapter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public onDismissScreen(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "paramAd"    # Lcom/google/ads/Ad;

    .prologue
    .line 138
    const-string v0, "AdsMOGO SDK"

    const-string v1, "admob onDismissScreen"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    invoke-direct {p0}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->sendCloseed()V

    .line 141
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/google/ads/Ad;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 3
    .param p1, "paramAd"    # Lcom/google/ads/Ad;
    .param p2, "arg1"    # Lcom/google/ads/AdRequest$ErrorCode;

    .prologue
    .line 145
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GoogleAdMob failure , code is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adView:Lcom/google/ads/AdView;

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    .line 147
    return-void
.end method

.method public onLeaveApplication(Lcom/google/ads/Ad;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 152
    return-void
.end method

.method public onPresentScreen(Lcom/google/ads/Ad;)V
    .locals 0
    .param p1, "arg0"    # Lcom/google/ads/Ad;

    .prologue
    .line 157
    return-void
.end method

.method public onReceiveAd(Lcom/google/ads/Ad;)V
    .locals 2
    .param p1, "paramAd"    # Lcom/google/ads/Ad;

    .prologue
    .line 161
    const-string v0, "AdsMOGO SDK"

    const-string v1, "GoogleAdMob success"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->interstitial:Lcom/google/ads/doubleclick/DfpInterstitialAd;

    if-ne p1, v0, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->sendReadyed()V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adView:Lcom/google/ads/AdView;

    if-ne v0, p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    instance-of v0, p1, Lcom/google/ads/AdView;

    if-nez v0, :cond_2

    .line 171
    const-string v0, "invalid AdView"

    invoke-virtual {p0, v0}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->log(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adView:Lcom/google/ads/AdView;

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    .line 175
    :cond_2
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adView:Lcom/google/ads/AdView;

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method protected requestForAdsMogoLayout()Lcom/google/ads/AdRequest;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/google/ads/AdRequest;

    invoke-direct {v0}, Lcom/google/ads/AdRequest;-><init>()V

    .line 128
    .local v0, "result":Lcom/google/ads/AdRequest;
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->genderForAdsMogoTargeting()Lcom/google/ads/AdRequest$Gender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->setGender(Lcom/google/ads/AdRequest$Gender;)Lcom/google/ads/AdRequest;

    .line 129
    invoke-static {}, Lcom/adsmogo/util/AdsMogoTargeting;->getKeywordSet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdRequest;->setKeywords(Ljava/util/Set;)Lcom/google/ads/AdRequest;

    .line 130
    return-object v0
.end method

.method public requestTimeOut()V
    .locals 2

    .prologue
    .line 245
    invoke-super {p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->requestTimeOut()V

    .line 247
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Admob Time out"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 248
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->adView:Lcom/google/ads/AdView;

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    .line 249
    return-void
.end method

.method public showInterstitialAd()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->showInterstitialAd()V

    .line 255
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Admob FullScreenAd success"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->interstitial:Lcom/google/ads/doubleclick/DfpInterstitialAd;

    invoke-virtual {v0}, Lcom/google/ads/doubleclick/DfpInterstitialAd;->show()V

    .line 258
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/sdk/GoogleAdMobAdsAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    .line 261
    :cond_0
    return-void
.end method
