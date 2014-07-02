.class public Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;


# instance fields
.field private A:Landroid/webkit/WebView;

.field private B:Ljava/lang/String;

.field private C:Landroid/view/animation/TranslateAnimation;

.field private D:Landroid/view/animation/TranslateAnimation;

.field private E:F

.field private F:F

.field private G:Z

.field private H:Ljava/lang/String;

.field a:D

.field b:D

.field c:D

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/app/Activity;

.field private g:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

.field private h:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

.field private i:Landroid/webkit/WebView;

.field private j:Ljava/lang/String;

.field private k:Lcom/adsmogo/model/obj/S2sEntity;

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Lcom/adsmogo/adapters/api/I;

.field private w:Ljava/util/ArrayList;

.field private x:Z

.field private y:Landroid/widget/RelativeLayout;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)V
    .locals 3

    const/high16 v2, -0x40800000

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/AdsMogoAdapter;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->d:Ljava/lang/String;

    iput v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->j:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->l:I

    iput v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->m:I

    iput-boolean v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->q:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->r:Z

    const-string v0, "http://api2.%s%s/ad/%s/%s/%s"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->s:Ljava/lang/String;

    const-string v0, "http://api2.%s%s/clk/%s/%s/%s/%s"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->t:Ljava/lang/String;

    const-string v0, "http://api2.%s%s/req/%s/%s/%s/%s%s"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->u:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->x:Z

    const-string v0, "/pclk/%s/%s/%s/%s?cp=%s"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->B:Ljava/lang/String;

    iput v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->E:F

    iput v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->F:F

    iput-boolean v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->G:Z

    iget-object v0, p2, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->d:Ljava/lang/String;

    iget v0, p2, Lcom/adsmogo/model/obj/Ration;->type:I

    iput v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->e:I

    const-string v0, "AdsMOGO SDK"

    const-string v1, "start AdsMogoS2sAdapter"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->h:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->p:Ljava/lang/String;

    const-string v1, "312"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/S2sEntity;->getSid()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->u:Ljava/lang/String;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getSecondDomain()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->p:Ljava/lang/String;

    aput-object v5, v4, v1

    const/4 v1, 0x4

    aput-object v2, v4, v1

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x6

    aput-object p2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getReImUrl err:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a()V
    .locals 6

    const/16 v2, 0x140

    const/16 v0, 0x32

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v1, "AdsMOGO SDK"

    const-string v3, "s2sShowApiAd"

    invoke-static {v1, v3}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/S2sEntity;->getAdid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/S2sEntity;->getType()I

    move-result v1

    const/16 v3, 0x403

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/S2sEntity;->getType()I

    move-result v1

    const/16 v3, 0x7eb

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iget-object v3, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v3}, Lcom/adsmogo/model/obj/S2sEntity;->getAdid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->r:Z

    :cond_1
    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/S2sEntity;->getWh()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/S2sEntity;->getWh()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v1, v3

    if-le v1, v4, :cond_4

    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-static {v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a:D

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    int-to-double v1, v1

    iput-wide v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b:D

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a:D

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->c:D

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->g:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->g:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v1

    move v1, v2

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/adsmogo/adapters/api/F;

    invoke-direct {v1, p0, v5}, Lcom/adsmogo/adapters/api/F;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;F)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->E:F

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->m:I

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;II)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->y:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->A:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->z:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->z:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->z:Landroid/widget/RelativeLayout;

    const-string v2, "#80000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->z:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->A:Landroid/webkit/WebView;

    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->A:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->A:Landroid/webkit/WebView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->h:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getPngSize()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "/com/adsmogo/assets/tow_click_open_webview_btn_640.gif"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    const-string v2, "tow_click_open_webview_btn_640.gif"

    invoke-static {v0, v2}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    :goto_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ne v3, v8, :cond_5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    invoke-static {v0, v7}, Lcom/adsmogo/encryption/EtmobBase64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v3, "text/html"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "<meta http-equiv=\'Content-Type\' content=\'text/html; charset=UTF-8\' /><style type=\'text/css\'>*{padding:0px;margin:0px;} </style><img width=\'100\' height=\'38\' src=\"data:image/jpeg;base64,"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" />"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->A:Landroid/webkit/WebView;

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->A:Landroid/webkit/WebView;

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->A:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsmogo/adapters/api/A;

    invoke-direct {v1, p0}, Lcom/adsmogo/adapters/api/A;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b:D

    double-to-int v1, v1

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->c:D

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->y:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x64

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a:D

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    const/16 v1, 0x26

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xf

    invoke-virtual {v2, v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xb

    invoke-virtual {v2, v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xa

    invoke-virtual {v2, v7, v7, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->z:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->A:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->D:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/16 v1, 0x1e

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->A:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v6, v1, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->D:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->D:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->D:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->D:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/adsmogo/adapters/api/B;

    invoke-direct {v1, p0}, Lcom/adsmogo/adapters/api/B;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->A:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->D:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_3
    iget-boolean v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->x:Z

    if-nez v0, :cond_3

    :try_start_2
    new-instance v0, Lcom/adsmogo/adapters/api/C;

    invoke-direct {v0, p0, p1, p2}, Lcom/adsmogo/adapters/api/C;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;II)V

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/C;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    iput-boolean v9, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->x:Z

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "/com/adsmogo/assets/tow_click_open_webview_btn_320.gif"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    const-string v2, "tow_click_open_webview_btn_320.gif"

    invoke-static {v0, v2}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_0

    :cond_5
    :try_start_3
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->g:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->setCloseButtonVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->C:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_7

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/16 v1, 0x1e

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->A:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v1, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->C:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->C:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->C:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_7
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->A:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->C:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v2

    goto :goto_5

    :cond_8
    move-object v2, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Lcom/adsmogo/model/obj/S2sEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->r:Z

    return-void
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/model/obj/S2sEntity;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    return-object v0
.end method

.method private b()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->h:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iget v1, v1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "312"

    :try_start_0
    iget-object v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->s:Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getSecondDomain()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->p:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x4

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getRequestUtl err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 33

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget v3, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->TIMEOUT_TIME:I

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v3, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->TIMEOUT_TIME:I

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v2, "AuthKey"

    const-string v3, "mogo_sdk"

    invoke-virtual {v10, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "312"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v3

    iget v3, v3, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsmogo/encryption/MD5;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Signature"

    invoke-virtual {v10, v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    iget-object v2, v2, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->n:Ljava/lang/String;

    const-string v11, "320"

    const-string v12, "50"

    const-string v13, "2"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getIDByMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->o:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "2"

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Android_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v4, ""

    const-string v3, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-static {v5}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getWidthAndHeight(Landroid/content/Context;)[I

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v4, v5, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->h:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v5}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getLatitudeAndlongitude()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v6

    iget-boolean v6, v6, Lcom/adsmogo/model/obj/Ration;->testmodel:Z

    if-eqz v6, :cond_6

    const-string v6, "0"

    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->h:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v7}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-static {v7}, Lcom/adsmogo/util/GetUserInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v7}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Lcom/adsmogo/util/GetUserInfo;->IsCanUseSdCard()Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "1"

    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-static {v8}, Lcom/adsmogo/util/GetUserInfo;->getLac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-static {v8}, Lcom/adsmogo/util/GetUserInfo;->getCell(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a:D

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-static {v8}, Lcom/adsmogo/util/GetUserInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-static {v8}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getScreenIsHorizontal(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "2"

    :goto_4
    const-string v28, "2"

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "P01"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->n:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v30, Lorg/apache/http/message/BasicNameValuePair;

    const-string v31, "P02"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v30, "P03"

    move-object/from16 v0, v30

    invoke-direct {v11, v0, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "P04"

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "P05"

    invoke-direct {v11, v12, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "P11"

    invoke-direct {v11, v12, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "P12"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->o:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "P13"

    move-object/from16 v0, v16

    invoke-direct {v11, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "P14"

    move-object/from16 v0, v17

    invoke-direct {v11, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "P16"

    invoke-direct {v11, v12, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "P17"

    move-object/from16 v0, v18

    invoke-direct {v2, v11, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "P18"

    move-object/from16 v0, v19

    invoke-direct {v2, v11, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "P19"

    move-object/from16 v0, v20

    invoke-direct {v2, v11, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "P20"

    invoke-direct {v2, v11, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "P21"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "P22"

    invoke-direct {v2, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "P23"

    invoke-direct {v2, v3, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "P24"

    move-object/from16 v0, v21

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "P25"

    move-object/from16 v0, v22

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "P26"

    move-object/from16 v0, v23

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "P27"

    invoke-direct {v2, v3, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "P28"

    move-object/from16 v0, v24

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "P29"

    move-object/from16 v0, v25

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "P30"

    move-object/from16 v0, v26

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "P31"

    move-object/from16 v0, v27

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "P32"

    invoke-direct {v2, v3, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "P33"

    move-object/from16 v0, v28

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    move-object/from16 v0, v29

    invoke-direct {v2, v0, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v9, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_9

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_5
    return-object v2

    :cond_5
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "1"

    goto/16 :goto_0

    :cond_6
    const-string v6, "1"

    goto/16 :goto_2

    :cond_7
    const-string v7, "0"

    goto/16 :goto_3

    :cond_8
    const-string v8, "1"

    goto/16 :goto_4

    :cond_9
    :try_start_1
    const-string v3, "AdsMOGO SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "S2S StatusCode :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0

    goto :goto_5

    :catch_0
    move-exception v2

    const-string v3, "AdsMOGO SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "httpRequesGetHtml err:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_5

    :cond_a
    move-object v5, v6

    goto/16 :goto_1
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;F)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->F:F

    return-void
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->H:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->G:Z

    return-void
.end method

.method static synthetic c(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->g:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "com"

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
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

.method static synthetic c(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getLa_type()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s La_type : 0"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/adsmogo/controller/j;->a()Lcom/adsmogo/controller/j;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/adsmogo/controller/j;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    const-class v3, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "link"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sendClickSingleton"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getClk_url()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adsmogo/adapters/api/G;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/S2sEntity;->getClk_url()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adsmogo/adapters/api/G;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/G;->start()V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, Lcom/adsmogo/controller/j;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "s2s startActivity err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getLa_type()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s La_type : 1"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "tel:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    invoke-direct {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->e()V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "s2s Can\'t call:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const-string v1, "mailto:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "s2s Can\'t mailto:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const-string v1, "sms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "s2s Can\'t sms:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const-string v1, "http:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "audio/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_2

    :catch_5
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "s2s startActivity err(mp3):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "video/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "s2s startActivity err(mp4):"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    :try_start_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_2

    :catch_7
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "s2s startActivity err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_8
    :try_start_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_2

    :catch_8
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "s2s startActivity err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_9
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "s2s nonsupport La_type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/S2sEntity;->getLa_type()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private d()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->h:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->p:Ljava/lang/String;

    const-string v1, "312"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/S2sEntity;->getSid()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->t:Ljava/lang/String;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getSecondDomain()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->p:Ljava/lang/String;

    aput-object v5, v4, v1

    const/4 v1, 0x4

    aput-object v2, v4, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    iget v2, v2, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getClickUrl err:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a()V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->adsMogoCoreReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/AdsMogoCore;->countClick(Lcom/adsmogo/model/obj/Ration;)V

    invoke-direct {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V
    .locals 13

    const/4 v12, -0x1

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    if-nez v0, :cond_1

    invoke-virtual {p0, v11, v5, v11}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getRm()I

    move-result v0

    if-ne v0, v10, :cond_5

    new-instance v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    new-instance v2, Lcom/adsmogo/adapters/api/x;

    invoke-direct {v2, p0}, Lcom/adsmogo/adapters/api/x;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V

    invoke-direct {v0, v1, v2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;-><init>(Landroid/content/Context;Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsmogo/adapters/api/y;

    invoke-direct {v1, p0}, Lcom/adsmogo/adapters/api/y;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getAd_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getRmHtml()Ljava/lang/String;

    move-result-object v2

    const-string v0, "mraid.js"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_c

    const-string v0, "mraid.js"

    const-string v1, "http://my.adsmogo.com/SDK/IOS/rm/mogoRM/android_mogo_bridge.js\"></script><script type=\"application/javascript\" src=\"http://my.adsmogo.com/SDK/IOS/rm/mogoRM/android_mraid.js"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move v6, v10

    :goto_1
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ">>rmHtml>>"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/S2sEntity;->getAd_url()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    if-eqz v6, :cond_5

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->startTimer(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getAd_html()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getAd_html()Ljava/lang/String;

    move-result-object v6

    const-string v0, "mraid.js"

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const-string v0, "mraid.js"

    const-string v1, "http://my.himogo.com/rm/mogoRM/android/js/mogo_bridge.js\"></script><script type=\"application/javascript\" src=\"http://my.himogo.com/rm/mogoRM/android/js/mraid.js"

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move v0, v10

    :goto_3
    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>rmHtml>>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    const-string v7, "text/html"

    const-string v8, "UTF-8"

    move-object v9, v5

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v6, v0

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->isCc()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iput-boolean v10, v0, Lcom/adsmogo/model/obj/Ration;->isCc:Z

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsmogo/adapters/api/z;

    invoke-direct {v1, p0}, Lcom/adsmogo/adapters/api/z;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_6
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsmogo/adapters/api/M;

    invoke-direct {v1, p0, v11}, Lcom/adsmogo/adapters/api/M;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getAd_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iput v11, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->l:I

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/S2sEntity;->getAd_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getAd_html()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getAd_html()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adsmogo://www.adsmogo.com?action=load"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v12, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v12, :cond_8

    :goto_4
    iput v10, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->l:I

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "s2s adsmogoJs : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getAd_html()Ljava/lang/String;

    move-result-object v6

    const-string v7, "text/html"

    const-string v8, "UTF-8"

    move-object v9, v5

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move v10, v11

    goto :goto_4

    :cond_9
    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s Ad_url and Ad_url is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v11, v5}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_a
    move v0, v11

    goto/16 :goto_3

    :cond_b
    move v6, v11

    goto/16 :goto_2

    :cond_c
    move v6, v11

    goto/16 :goto_1
.end method

.method static synthetic f(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)I
    .locals 1

    iget v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->l:I

    return v0
.end method

.method private f()V
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->q:Z

    new-instance v0, Lcom/adsmogo/adapters/api/D;

    invoke-direct {v0, p0}, Lcom/adsmogo/adapters/api/D;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/D;->start()V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)I
    .locals 1

    iget v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->m:I

    return v0
.end method

.method static synthetic h(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->G:Z

    return v0
.end method

.method static synthetic i(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)F
    .locals 1

    iget v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->E:F

    return v0
.end method

.method static synthetic j(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)F
    .locals 1

    iget v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->F:F

    return v0
.end method

.method static synthetic k(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->z:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic l(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2sShowSdkAd"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getNetworks()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->w:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->w:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->v:Lcom/adsmogo/adapters/api/I;

    if-nez v0, :cond_3

    new-instance v1, Lcom/adsmogo/adapters/api/I;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->g:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {v1, p0, v0}, Lcom/adsmogo/adapters/api/I;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Lcom/adsmogo/adview/AdsMogoLayout;)V

    iput-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->v:Lcom/adsmogo/adapters/api/I;

    :cond_3
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    invoke-direct {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->v:Lcom/adsmogo/adapters/api/I;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/model/obj/Ration;

    invoke-virtual {v1, v0}, Lcom/adsmogo/adapters/api/I;->a(Lcom/adsmogo/model/obj/Ration;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;Z)V

    goto :goto_0
.end method

.method static synthetic m(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic n(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->adsMogoCoreReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic o(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->e()V

    return-void
.end method

.method static synthetic p(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://imp."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getSecondDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->h:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    return-object v0
.end method

.method static synthetic s(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic t(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->o:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/adsmogo/model/obj/S2sEntity;
    .locals 12

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "s2s parseS2sXml:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, -0x1

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v1, "UTF-8"

    invoke-interface {v8, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v0, "AdsMOGO SDK"

    const-string v1, "PullParseXML start"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_0
    if-ne v0, v7, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "PullParseXML end"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v4}, Lcom/adsmogo/model/obj/S2sEntity;->getRm()I

    move-result v0

    if-ne v0, v7, :cond_0

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/S2sEntity;->getAd_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;

    invoke-direct {v0}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;-><init>()V

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/S2sEntity;->getAd_url()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getContentByGetType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/adsmogo/model/obj/S2sEntity;->setRmHtml(Ljava/lang/String;)V

    const-string v0, "AdsMOGO SDK"

    const-string v1, "adurl to rehtml"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-object v4

    :cond_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    packed-switch v0, :pswitch_data_0

    :cond_2
    :pswitch_0
    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    :goto_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move-object v11, v0

    move v0, v5

    move v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v11

    goto :goto_0

    :pswitch_1
    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto :goto_2

    :pswitch_2
    const-string v0, "MogoADJson"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/adsmogo/model/obj/S2sEntity;

    invoke-direct {v0}, Lcom/adsmogo/model/obj/S2sEntity;-><init>()V

    move v4, v5

    move-object v11, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_2

    :cond_3
    const-string v0, "status"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/adsmogo/model/obj/S2sEntity;->setStatus(I)V

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto :goto_2

    :cond_4
    const-string v0, "cc"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {v4, v7}, Lcom/adsmogo/model/obj/S2sEntity;->setCc(Z)V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/adsmogo/model/obj/S2sEntity;->setCc(Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto :goto_2

    :cond_5
    const-string v0, "ad_url"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/adsmogo/model/obj/S2sEntity;->setAd_url(Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto :goto_2

    :cond_6
    const-string v0, "ad_html"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/adsmogo/model/obj/S2sEntity;->setAd_html(Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto/16 :goto_2

    :cond_7
    const-string v0, "la_type"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/adsmogo/model/obj/S2sEntity;->setLa_type(I)V

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto/16 :goto_2

    :cond_8
    const-string v0, "type"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v4, :cond_9

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/adsmogo/model/obj/S2sEntity;->setType(I)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/S2sEntity;->getType()I

    move-result v9

    iput v9, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto/16 :goto_2

    :cond_9
    const-string v0, "wh"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v4, :cond_a

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/adsmogo/model/obj/S2sEntity;->setWh(Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto/16 :goto_2

    :cond_a
    const-string v0, "rm"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v4, :cond_b

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/adsmogo/model/obj/S2sEntity;->setRm(I)V

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto/16 :goto_2

    :cond_b
    const-string v0, "sid"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v4, :cond_c

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/adsmogo/model/obj/S2sEntity;->setSid(Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto/16 :goto_2

    :cond_c
    const-string v0, "adid"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v4, :cond_d

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/adsmogo/model/obj/S2sEntity;->setAdid(Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto/16 :goto_2

    :cond_d
    const-string v0, "imp_url"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz v4, :cond_e

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v6

    goto/16 :goto_2

    :cond_e
    const-string v0, "clk_url"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v4, :cond_f

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v7

    goto/16 :goto_2

    :cond_f
    const-string v0, "url"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz v4, :cond_12

    packed-switch v5, :pswitch_data_1

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {v4}, Lcom/adsmogo/model/obj/S2sEntity;->getImp_url()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v0}, Lcom/adsmogo/model/obj/S2sEntity;->setImp_url(Ljava/util/ArrayList;)V

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v4}, Lcom/adsmogo/model/obj/S2sEntity;->getImp_url()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {v4}, Lcom/adsmogo/model/obj/S2sEntity;->getClk_url()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v0}, Lcom/adsmogo/model/obj/S2sEntity;->setClk_url(Ljava/util/ArrayList;)V

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto/16 :goto_2

    :cond_11
    invoke-virtual {v4}, Lcom/adsmogo/model/obj/S2sEntity;->getClk_url()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto/16 :goto_2

    :cond_12
    const-string v0, "ssid"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v4, :cond_13

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/adsmogo/model/obj/S2sEntity;->setSsid(Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto/16 :goto_2

    :cond_13
    const-string v0, "networks"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz v4, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v0}, Lcom/adsmogo/model/obj/S2sEntity;->setNetworks(Ljava/util/ArrayList;)V

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto/16 :goto_2

    :cond_14
    const-string v0, "nw"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz v4, :cond_15

    new-instance v1, Lcom/adsmogo/model/obj/Ration;

    invoke-direct {v1}, Lcom/adsmogo/model/obj/Ration;-><init>()V

    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit16 v0, v0, -0x7d0

    iput v0, v1, Lcom/adsmogo/model/obj/Ration;->type:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v4

    move v4, v5

    goto/16 :goto_2

    :cond_15
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto/16 :goto_2

    :pswitch_5
    if-eqz v1, :cond_2

    const-string v0, ""

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v9

    if-le v9, v7, :cond_18

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_17

    if-eqz v3, :cond_17

    iput-object v0, v3, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/S2sEntity;->getNetworks()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    move-object v0, v2

    move-object v1, v3

    move-object v3, v4

    move v4, v5

    goto/16 :goto_2

    :cond_18
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "adurl to rehtml err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(ZLandroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;Z)V

    return-void
.end method

.method public final a(ZLandroid/view/ViewGroup;II)V
    .locals 4

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->shoutdownTimer()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->RIBAdcount:Lcom/adsmogo/controller/count/AdsCount;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->RIBAdcount:Lcom/adsmogo/controller/count/AdsCount;

    invoke-virtual {v0}, Lcom/adsmogo/controller/count/AdsCount;->getNidAndType()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    iget-object v2, v2, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    iget v2, v2, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v3

    iget-object v3, v3, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v3

    iget v3, v3, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    :goto_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getNetworks()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getNetworks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->v:Lcom/adsmogo/adapters/api/I;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->v:Lcom/adsmogo/adapters/api/I;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/I;->a()Lcom/adsmogo/controller/count/AdsCount;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/adsmogo/controller/count/AdsCount;->getNidAndType()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->r:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget v0, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    iget v2, v2, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/adsmogo/adapters/api/E;

    invoke-direct {v1, p0, p1, v0}, Lcom/adsmogo/adapters/api/E;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;ZLjava/lang/String;)V

    invoke-virtual {v1}, Lcom/adsmogo/adapters/api/E;->start()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->RIBAdcount:Lcom/adsmogo/controller/count/AdsCount;

    invoke-virtual {v0}, Lcom/adsmogo/controller/count/AdsCount;->getNidAndType()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->d:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iget v1, v1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-interface {v0, p2, v1, p3, p4}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto/16 :goto_2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3
.end method

.method public final a(ZLandroid/view/ViewGroup;Z)V
    .locals 4

    const/4 v0, -0x3

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k:Lcom/adsmogo/model/obj/S2sEntity;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->isCc()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->y:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b:D

    double-to-int v1, v1

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->c:D

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->y:Landroid/widget/RelativeLayout;

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b:D

    double-to-int v1, v1

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->c:D

    double-to-int v2, v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;II)V

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b:D

    double-to-int v0, v0

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->c:D

    double-to-int v1, v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;II)V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    instance-of v0, v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    check-cast v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->clearView()V

    :cond_0
    iput-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->v:Lcom/adsmogo/adapters/api/I;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->v:Lcom/adsmogo/adapters/api/I;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/I;->c()Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->finish()V

    :cond_2
    iput-object v1, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->v:Lcom/adsmogo/adapters/api/I;

    :cond_3
    return-void
.end method

.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f()V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->v:Lcom/adsmogo/adapters/api/I;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->v:Lcom/adsmogo/adapters/api/I;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/I;->b()Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->finish()V

    :cond_0
    return-void
.end method

.method public handle()V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->adsMogoConfigInterfaceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->g:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->g:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->g:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getActivityReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->g:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->h:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->h:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->h:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v2, "nonsupport type"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v6, v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->g:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getScheduler()Lcom/adsmogo/util/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f:Landroid/app/Activity;

    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->j:Ljava/lang/String;

    :try_start_0
    new-instance v2, Lcom/adsmogo/adapters/api/H;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/adsmogo/adapters/api/H;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;B)V

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v6, v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_1
.end method

.method public onPageComplete()V
    .locals 0

    invoke-direct {p0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->e()V

    return-void
.end method

.method public requestTimeOut()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s time out"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i:Landroid/webkit/WebView;

    invoke-virtual {p0, v2, v0, v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;Z)V

    return-void
.end method
