.class public Lcom/adsmogo/adapters/sdk/DomobAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;
.source "DomobAdapter.java"


# instance fields
.field private PlacementId:Ljava/lang/String;

.field private PublisherID:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private adView:Lcn/domob/android/ads/DomobAdView;

.field private adsMogoConfigInterface:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

.field private configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

.field private intAD:Lcn/domob/android/ads/DomobInterstitialAd;


# direct methods
.method public constructor <init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)V
    .locals 1
    .param p1, "adsMogoConfigInterface"    # Lcom/adsmogo/interstitial/AdsMogoConfigInterface;
    .param p2, "ration"    # Lcom/adsmogo/model/obj/Ration;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/AdsMogoAdapter;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->intAD:Lcn/domob/android/ads/DomobInterstitialAd;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Lcn/domob/android/ads/DomobInterstitialAd;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->intAD:Lcn/domob/android/ads/DomobInterstitialAd;

    return-object v0
.end method

.method static synthetic access$1(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/adsmogo/adapters/sdk/DomobAdapter;)V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->sendReadyed()V

    return-void
.end method

.method static synthetic access$3(Lcom/adsmogo/adapters/sdk/DomobAdapter;)V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->sendCloseed()V

    return-void
.end method

.method static synthetic access$4(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Lcn/domob/android/ads/DomobAdView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/adsmogo/adapters/sdk/DomobAdapter;ZLandroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$6(Lcom/adsmogo/adapters/sdk/DomobAdapter;Lcn/domob/android/ads/DomobAdView;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    return-void
.end method

.method private sendCloseed()V
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->shoutdownTimer()V

    .line 362
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoInterstitialCloseedListener:Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoInterstitialCloseedListener:Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;->onInterstitialCloseed()V

    .line 372
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoInterstitialCloseedListener:Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;

    goto :goto_0
.end method

.method private sendReadyed()V
    .locals 3

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->shoutdownTimer()V

    .line 341
    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->setReadyed(Z)V

    .line 349
    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoReadyCoreListener:Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;

    if-eqz v1, :cond_3

    .line 350
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iget-object v0, v1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    .line 351
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoReadyCoreListener:Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "\u8865\u4f59"

    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    invoke-interface {v1, v0}, Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;->onReadyed(Ljava/lang/String;)V

    .line 354
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoReadyCoreListener:Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;

    goto :goto_0
.end method

.method private sendResult(ZLandroid/view/ViewGroup;)V
    .locals 2
    .param p1, "isSucceed"    # Z
    .param p2, "adView"    # Landroid/view/ViewGroup;

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->shoutdownTimer()V

    .line 304
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    .line 309
    if-nez p1, :cond_2

    .line 310
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    .line 315
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto :goto_0

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    .line 313
    const/16 v1, 0x1d

    .line 312
    invoke-interface {v0, p2, v1}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;I)V

    goto :goto_1
.end method


# virtual methods
.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    if-eqz v0, :cond_0

    .line 274
    iput-object v1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    .line 277
    :cond_0
    iput-object v1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    .line 278
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Domob Finished"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public handle()V
    .locals 15

    .prologue
    .line 57
    :try_start_0
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoConfigInterfaceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    iput-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoConfigInterface:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    .line 58
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoConfigInterface:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    if-nez v10, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoConfigInterface:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    .line 63
    invoke-interface {v10}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getActivityReference()Ljava/lang/ref/WeakReference;

    move-result-object v9

    .line 65
    .local v9, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    if-eqz v9, :cond_0

    .line 68
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Activity;

    iput-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    .line 69
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    if-eqz v10, :cond_0

    .line 72
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoConfigInterface:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v10}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v10

    iput-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    .line 73
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v10, :cond_0

    .line 76
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v10

    iget-object v10, v10, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    .local v7, "json":Lorg/json/JSONObject;
    const-string v10, "PublisherId"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->PublisherID:Ljava/lang/String;

    .line 78
    const-string v10, "PlacementId"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->PlacementId:Ljava/lang/String;

    .line 79
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v10, v10, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v10}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v10

    .line 80
    invoke-virtual {v10}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    move-result-object v5

    .line 81
    .local v5, "extra":Lcom/adsmogo/model/obj/Extra;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "#"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Lcom/adsmogo/model/obj/Extra;->bgColor:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 83
    .local v2, "bgColor":I
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v10}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    const/16 v11, 0x80

    if-ne v10, v11, :cond_4

    .line 85
    :try_start_1
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->startFullTimer()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :goto_1
    :try_start_2
    const-string v0, "300x250"

    .line 90
    .local v0, "adSize":Ljava/lang/String;
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->intAD:Lcn/domob/android/ads/DomobInterstitialAd;

    if-nez v10, :cond_2

    .line 91
    new-instance v10, Lcn/domob/android/ads/DomobInterstitialAd;

    iget-object v11, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    .line 92
    iget-object v12, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->PublisherID:Ljava/lang/String;

    iget-object v13, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->PlacementId:Ljava/lang/String;

    invoke-direct {v10, v11, v12, v13, v0}, Lcn/domob/android/ads/DomobInterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iput-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->intAD:Lcn/domob/android/ads/DomobInterstitialAd;

    .line 96
    :cond_2
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->intAD:Lcn/domob/android/ads/DomobInterstitialAd;

    new-instance v11, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;

    invoke-direct {v11, p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter$1;-><init>(Lcom/adsmogo/adapters/sdk/DomobAdapter;)V

    invoke-virtual {v10, v11}, Lcn/domob/android/ads/DomobInterstitialAd;->setInterstitialAdListener(Lcn/domob/android/ads/DomobInterstitialAdListener;)V

    .line 164
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->intAD:Lcn/domob/android/ads/DomobInterstitialAd;

    invoke-virtual {v10}, Lcn/domob/android/ads/DomobInterstitialAd;->loadInterstitialAd()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 259
    .end local v0    # "adSize":Ljava/lang/String;
    .end local v2    # "bgColor":I
    .end local v5    # "extra":Lcom/adsmogo/model/obj/Extra;
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v9    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :catch_0
    move-exception v4

    .line 260
    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "AdsMOGO SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "domob err"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v10, :cond_3

    .line 262
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    .line 264
    :cond_3
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto/16 :goto_0

    .line 86
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "bgColor":I
    .restart local v5    # "extra":Lcom/adsmogo/model/obj/Extra;
    .restart local v7    # "json":Lorg/json/JSONObject;
    .restart local v9    # "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :catch_1
    move-exception v4

    .line 87
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->startTimer()V

    goto :goto_1

    .line 165
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v10}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    .line 167
    invoke-virtual {p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->startTimer()V

    .line 169
    new-instance v10, Lcn/domob/android/ads/DomobAdView;

    iget-object v11, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    iget-object v12, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->PublisherID:Ljava/lang/String;

    iget-object v13, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->PlacementId:Ljava/lang/String;

    .line 170
    const-string v14, "320x50"

    invoke-direct {v10, v11, v12, v13, v14}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iput-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    .line 171
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    new-instance v11, Lcom/adsmogo/adapters/sdk/DomobAdapter$2;

    invoke-direct {v11, p0}, Lcom/adsmogo/adapters/sdk/DomobAdapter$2;-><init>(Lcom/adsmogo/adapters/sdk/DomobAdapter;)V

    invoke-virtual {v10, v11}, Lcn/domob/android/ads/DomobAdView;->setAdEventListener(Lcn/domob/android/ads/DomobAdEventListener;)V

    .line 225
    invoke-static {}, Lcom/adsmogo/util/AdsMogoTargeting;->getGender()Lcom/adsmogo/util/Gender;

    move-result-object v6

    .line 227
    .local v6, "gender":Lcom/adsmogo/util/Gender;
    sget-object v10, Lcom/adsmogo/util/Gender;->FEMALE:Lcom/adsmogo/util/Gender;

    if-ne v6, v10, :cond_8

    .line 228
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    const-string v11, "female"

    invoke-virtual {v10, v11}, Lcn/domob/android/ads/DomobAdView;->setUserGender(Ljava/lang/String;)V

    .line 234
    :cond_5
    :goto_2
    invoke-static {}, Lcom/adsmogo/util/AdsMogoTargeting;->getBirthDate()Ljava/util/GregorianCalendar;

    move-result-object v3

    .line 235
    .local v3, "birthDate":Ljava/util/GregorianCalendar;
    if-eqz v3, :cond_6

    .line 236
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v3}, Ljava/util/GregorianCalendar;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/domob/android/ads/DomobAdView;->setUserBirthdayStr(Ljava/lang/String;)V

    .line 239
    :cond_6
    invoke-static {}, Lcom/adsmogo/util/AdsMogoTargeting;->getPostalCode()Ljava/lang/String;

    move-result-object v8

    .line 240
    .local v8, "postalCode":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 241
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v10, v8}, Lcn/domob/android/ads/DomobAdView;->setUserPostcode(Ljava/lang/String;)V

    .line 244
    :cond_7
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v10, v2}, Lcn/domob/android/ads/DomobAdView;->setBackgroundColor(I)V

    .line 245
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 246
    const/4 v10, -0x2

    .line 247
    const/4 v11, -0x2

    .line 245
    invoke-direct {v1, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 248
    .local v1, "adViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v10, 0xd

    .line 249
    const/4 v11, -0x1

    .line 248
    invoke-virtual {v1, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 250
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adsMogoConfigInterface:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    iget-object v11, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v10, v11, v1}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->addMogoView(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 252
    const-string v10, "AdsMOGO SDK"

    const-string v11, "adViewRequest"

    invoke-static {v10, v11}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 253
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v10}, Lcn/domob/android/ads/DomobAdView;->requestAdForAggregationPlatform()V

    goto/16 :goto_0

    .line 229
    .end local v1    # "adViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "birthDate":Ljava/util/GregorianCalendar;
    .end local v8    # "postalCode":Ljava/lang/String;
    :cond_8
    sget-object v10, Lcom/adsmogo/util/Gender;->MALE:Lcom/adsmogo/util/Gender;

    if-ne v6, v10, :cond_5

    .line 230
    iget-object v10, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    const-string v11, "male"

    invoke-virtual {v10, v11}, Lcn/domob/android/ads/DomobAdView;->setUserGender(Ljava/lang/String;)V

    goto :goto_2

    .line 255
    .end local v6    # "gender":Lcom/adsmogo/util/Gender;
    :cond_9
    const-string v10, "AdsMOGO SDK"

    const-string v11, "nonsupport type"

    invoke-static {v10, v11}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->sendResult(ZLandroid/view/ViewGroup;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public requestTimeOut()V
    .locals 2

    .prologue
    .line 288
    const-string v0, "AdsMOGO SDK"

    const-string v1, "domob time out"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    .line 290
    return-void
.end method

.method public showInterstitialAd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    invoke-super {p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->showInterstitialAd()V

    .line 323
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->intAD:Lcn/domob/android/ads/DomobInterstitialAd;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 324
    const-string v0, "AdsMOGO SDK"

    const-string v1, "intAD or activity is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Domob InterstitialAd Success"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->intAD:Lcn/domob/android/ads/DomobInterstitialAd;

    iget-object v1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobInterstitialAd;->showInterstitialAd(Landroid/content/Context;)V

    .line 332
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->sendResult(ZLandroid/view/ViewGroup;)V

    goto :goto_0
.end method
