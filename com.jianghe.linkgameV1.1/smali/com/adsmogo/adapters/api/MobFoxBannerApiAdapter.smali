.class public Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:Landroid/webkit/WebView;

.field private e:Landroid/app/Activity;

.field private f:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

.field private g:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

.field private h:Ljava/lang/String;

.field private i:Lcom/adsmogo/model/obj/MobFox;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/AdsMogoAdapter;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)V

    const-string v0, "http://my.mobfox.com/request.php?rt=api&s=%s&u=%s&i=%s&m=%s&c_mraid=%s&o=%s&v=%s%s&adspace.width=%s&adspace.height=%s"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->j:Ljava/lang/String;

    const-string v0, "AdsMOGO SDK"

    const-string v1, "start Mobfox api"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->TIMEOUT_TIME:I

    return v0
.end method

.method public static a(Ljava/lang/String;)Lcom/adsmogo/model/obj/MobFox;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MobFox parsesXml:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v2, "UTF-8"

    invoke-interface {v3, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v1, "AdsMOGO SDK"

    const-string v2, "PullParseXML start"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    move v2, v1

    move-object v1, v0

    :goto_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const-string v2, "AdsMOGO SDK"

    const-string v3, "PullParseXML end"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_2
    :pswitch_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    :pswitch_1
    const-string v2, "error"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mobfox err:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mobfox pullparsexml err:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :try_start_1
    const-string v2, "request"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lcom/adsmogo/model/obj/MobFox;

    invoke-direct {v1}, Lcom/adsmogo/model/obj/MobFox;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/MobFox;->setType(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v2, "htmlString"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/MobFox;->setHtmlString(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v2, "clicktype"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/MobFox;->setClicktype(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v2, "clickurl"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adsmogo/model/obj/MobFox;->setClickurl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;Lcom/adsmogo/model/obj/MobFox;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->i:Lcom/adsmogo/model/obj/MobFox;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v2, "Serving LmMob type: banner"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->e:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->d:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->d:Landroid/webkit/WebView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->d:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->d:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsmogo/adapters/api/ag;

    invoke-direct {v1, p0, v6}, Lcom/adsmogo/adapters/api/ag;-><init>(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;ZLandroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method private a(ZLandroid/view/ViewGroup;)V
    .locals 5

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->shoutdownTimer()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->e:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    const/16 v1, 0x5a

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->c:D

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->b:D

    double-to-int v3, v3

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->e:Landroid/app/Activity;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->adsMogoCoreReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/AdsMogoCore;->countClick(Lcom/adsmogo/model/obj/Ration;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->g:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    return-object v0
.end method

.method static synthetic d(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Lcom/adsmogo/model/obj/MobFox;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->i:Lcom/adsmogo/model/obj/MobFox;

    return-object v0
.end method

.method static synthetic f(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->f:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    return-object v0
.end method

.method static synthetic g(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->b()V

    return-void
.end method

.method static synthetic h(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->d:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->d:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public finish()V
    .locals 0

    return-void
.end method

.method public handle()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->adsMogoConfigInterfaceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->f:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->f:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->f:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getActivityReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->e:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->f:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getScheduler()Lcom/adsmogo/util/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->f:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v1}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v1

    iput-object v1, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->g:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->g:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->g:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "nonsupport type"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v5, v6}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->TIMEOUT_TIME:I

    add-int/lit16 v1, v1, 0x1f40

    invoke-virtual {p0, v1}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->startTimer(I)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->e:Landroid/app/Activity;

    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->e:Landroid/app/Activity;

    invoke-static {v1}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a:D

    const/16 v1, 0x32

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->b:D

    const/16 v1, 0x140

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->c:D

    new-instance v1, Lcom/adsmogo/adapters/api/ah;

    invoke-direct {v1, p0}, Lcom/adsmogo/adapters/api/ah;-><init>(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v5, v6}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0
.end method

.method public onPageComplete()V
    .locals 0

    invoke-direct {p0}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->b()V

    return-void
.end method

.method public requestTimeOut()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "mobfox time out"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->d:Landroid/webkit/WebView;

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method
