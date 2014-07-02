.class public Lcom/adsmogo/adapters/api/PublicCustomAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;


# instance fields
.field a:D

.field public b:Landroid/os/Handler;

.field private c:Landroid/app/Activity;

.field private d:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

.field private e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

.field private f:Landroid/webkit/WebView;

.field private g:Lcom/adsmogo/model/obj/PublicCustom;

.field private h:D

.field private i:D

.field private j:Lcom/adsmogo/adview/ShowFullScreenDialog;

.field private k:Lcom/adsmogo/adview/A;

.field private l:Landroid/widget/TextView;

.field private m:Z

.field private n:I

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Landroid/webkit/WebView;

.field private w:Ljava/lang/String;

.field private x:Landroid/view/animation/TranslateAnimation;

.field private y:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/AdsMogoAdapter;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->l:Landroid/widget/TextView;

    iput-boolean v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->m:Z

    iput-boolean v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->o:Z

    const-string v0, "[\\u4e00-\\u9fa5]"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->p:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->q:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->r:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->s:Z

    const-string v0, "/pclk/%s/%s/%s/%s?cp=%s"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->w:Ljava/lang/String;

    new-instance v0, Lcom/adsmogo/adapters/api/am;

    invoke-direct {v0, p0}, Lcom/adsmogo/adapters/api/am;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b:Landroid/os/Handler;

    const-string v0, "AdsMOGO SDK"

    const-string v1, "start public custom Api Adapter"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "JSONException in parsing image JSON. This may or may not be fatal."

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->al:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "start CountService"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    const-class v2, Lcom/adsmogo/controller/service/CountService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->pn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "appid"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "cid"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "uuid"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "country"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "adtype"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v3

    iget v3, v3, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "actype"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "secondDomain"

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getSecondDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;II)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->t:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->u:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->t:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_2

    :cond_0
    iput-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->u:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->u:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->u:Landroid/widget/RelativeLayout;

    const-string v2, "#80000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->u:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->v:Landroid/webkit/WebView;

    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->v:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->v:Landroid/webkit/WebView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->launchType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getPngSize()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "/com/adsmogo/assets/tow_click_download_btn_640.gif"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    const-string v2, "tow_click_download_btn_640.gif"

    invoke-static {v0, v2}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_1
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ne v3, v8, :cond_8

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

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

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->v:Landroid/webkit/WebView;

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->v:Landroid/webkit/WebView;

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->v:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsmogo/adapters/api/az;

    invoke-direct {v1, p0}, Lcom/adsmogo/adapters/api/az;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->h:D

    double-to-int v1, v1

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->i:D

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->t:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x64

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:D

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    const/16 v1, 0x26

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:D

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

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->u:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->v:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->y:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/16 v1, 0x1e

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v6, v1, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->y:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->y:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->y:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->y:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/adsmogo/adapters/api/an;

    invoke-direct {v1, p0}, Lcom/adsmogo/adapters/api/an;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_3
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->v:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->y:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_3
    iget-boolean v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->s:Z

    if-nez v0, :cond_4

    :try_start_1
    new-instance v0, Lcom/adsmogo/adapters/api/ao;

    invoke-direct {v0, p0, p1, p2}, Lcom/adsmogo/adapters/api/ao;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;II)V

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/ao;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    iput-boolean v9, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->s:Z

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "/com/adsmogo/assets/tow_click_download_btn_320.gif"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    const-string v2, "tow_click_download_btn_320.gif"

    invoke-static {v0, v2}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getPngSize()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "/com/adsmogo/assets/tow_click_open_webview_btn_640.gif"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    const-string v2, "tow_click_open_webview_btn_640.gif"

    invoke-static {v0, v2}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "/com/adsmogo/assets/tow_click_open_webview_btn_320.gif"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    const-string v2, "tow_click_open_webview_btn_320.gif"

    invoke-static {v0, v2}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    :try_start_2
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->setCloseButtonVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->u:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->x:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_a

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/16 v1, 0x1e

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v1, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->x:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->x:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->x:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_a
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->v:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->x:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_4
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Lcom/adsmogo/adview/A;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Lcom/adsmogo/model/obj/PublicCustom;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Z)V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_0

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v2

    goto :goto_1
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/adview/A;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    return-object v0
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->m:Z

    return-void
.end method

.method static synthetic c(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/model/obj/PublicCustom;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
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

    const-string v2, "http://cus."

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

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->q:Z

    return-void
.end method

.method static synthetic d(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Lcom/adsmogo/model/obj/PublicCustom;
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v0, 0x0

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jsonString:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/adsmogo/model/obj/PublicCustom;

    invoke-direct {v2}, Lcom/adsmogo/model/obj/PublicCustom;-><init>()V

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "id"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    const-string v3, "img"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    const-string v3, "img1"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink1:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v3, "lnk"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    const-string v3, "type"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->type:I

    const-string v3, "size"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->ad_size:Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->adText:Ljava/lang/String;

    const-string v3, "lnt"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->linkType:I

    const-string v3, "lat"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->launchType:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v3, "adt"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->adt:Ljava/lang/String;

    const-string v3, "ade"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->ade:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    :try_start_4
    const-string v3, "apk"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "cpa"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->al:I

    const-string v3, "pn"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->pn:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->appName:Ljava/lang/String;

    const-string v3, "icon"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;

    const-string v3, "des"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->appDes:Ljava/lang/String;

    const-string v3, "img"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageUrlList:Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_0
    :goto_2
    :try_start_5
    const-string v3, "iurl"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v3, v0

    :goto_3
    if-lt v3, v6, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iput-object v7, v2, Lcom/adsmogo/model/obj/PublicCustom;->impUrls:Ljava/util/ArrayList;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_1
    :goto_4
    :try_start_6
    const-string v3, "curl"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v3, v0

    :goto_5
    if-lt v3, v6, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iput-object v7, v2, Lcom/adsmogo/model/obj/PublicCustom;->clickUrls:Ljava/util/ArrayList;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    :goto_6
    :try_start_7
    const-string v3, "cc"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->cc:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->isCc:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    iget-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->pn:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->linkType:I

    if-ne v3, v9, :cond_5

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    iget-object v4, v2, Lcom/adsmogo/model/obj/PublicCustom;->pn:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/adsmogo/util/RepeatCheck;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v0, "AdsMOGO SDK"

    const-string v2, "this app is installed"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_8
    return-object v0

    :catch_0
    move-exception v3

    const-string v3, ""

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parsePublicCustomJson Exception or not have ads "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v1

    goto :goto_8

    :catch_2
    move-exception v3

    :try_start_9
    const-string v3, ""

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->adt:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->ade:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    :cond_3
    :try_start_a
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_4
    :try_start_b
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :catch_3
    move-exception v3

    const/4 v3, 0x0

    :try_start_c
    iput-boolean v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->isCc:Z

    const-string v3, ""

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->cc:Ljava/lang/String;

    goto :goto_7

    :cond_5
    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v3

    const/16 v4, 0x80

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getPngSize()I
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_6
    :goto_9
    iget-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget-object v1, v2, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    iput-object v1, v0, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    const-string v0, "0"

    iget v1, v2, Lcom/adsmogo/model/obj/PublicCustom;->linkType:I

    if-ne v1, v9, :cond_7

    const-string v0, "3"

    :cond_7
    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iput-object v0, v1, Lcom/adsmogo/model/obj/Ration;->tag:Ljava/lang/String;

    :cond_8
    move-object v0, v2

    goto :goto_8

    :pswitch_0
    :try_start_d
    iget-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;

    const-string v3, "76x76"

    const-string v4, "38x38"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;

    goto :goto_9

    :pswitch_1
    iget-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;

    const-string v3, "76x76"

    const-string v4, "38x38"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;

    goto :goto_9

    :pswitch_2
    iget-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink1:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink1:Ljava/lang/String;

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    :cond_9
    iget-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;

    const-string v4, "76x76"

    const-string v5, "60x60"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;

    :cond_a
    iget-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageUrlList:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageUrlList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v3, v0

    :goto_a
    if-ge v3, v4, :cond_6

    iget-object v5, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageUrlList:Ljava/util/List;

    iget-object v0, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageUrlList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "104x156"

    const-string v7, "208x312"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a

    :catch_4
    move-exception v3

    goto/16 :goto_6

    :catch_5
    move-exception v3

    goto/16 :goto_4

    :catch_6
    move-exception v3

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->o:Z

    return-void
.end method

.method static synthetic e(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v0, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->type:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->j:Lcom/adsmogo/adview/ShowFullScreenDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->j:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-virtual {v1}, Lcom/adsmogo/adview/ShowFullScreenDialog;->closeDialog()V

    iput-object v9, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->j:Lcom/adsmogo/adview/ShowFullScreenDialog;

    :cond_1
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->ad_size:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    :goto_1
    new-instance v0, Lcom/adsmogo/adview/ShowFullScreenDialog;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v3, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v4, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink1:Ljava/lang/String;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/adsmogo/adview/ShowFullScreenDialog;-><init>(Landroid/app/Activity;Lcom/adsmogo/adapters/api/PublicCustomAdapter;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->j:Lcom/adsmogo/adview/ShowFullScreenDialog;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->j:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-virtual {v0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->showMogoFullAdDialog()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_c

    const-string v1, "<meta http-equiv=\'Content-Type\' content=\'text/html; charset=UTF-8\' /><style type=\'text/css\'>*{padding:0px;margin:0px;} a:link{text-decoration:none;}</style>"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->type:I

    packed-switch v2, :pswitch_data_1

    :pswitch_1
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Unknown custom type!"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :pswitch_2
    const-string v2, "AdsMOGO SDK"

    const-string v3, "Serving custom type: image"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "image  imageLink is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<a href=\'http://www.adsmogo.com\'><img onerror=\"window.javaScriptInterface.adsmogoImageOnError();\" onload=\"window.javaScriptInterface.adsmogoImageOnload();\" width=\'%s\' height=\'%s\' src=\'%s\'></img></a>"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v4}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v4}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    aput-object v0, v3, v10

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v1, "mogoHtml"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "AdsMOGO SDK"

    const-string v1, "mogoHtml is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v2, "AdsMOGO SDK"

    const-string v3, "Serving custom type: icon"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "AdsMOGO SDK"

    const-string v1, "icon imageLink is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->adText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "AdsMOGO SDK"

    const-string v1, "icon adText is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v2, v2, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v2}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_6

    const-string v0, "AdsMOGO SDK"

    const-string v1, "icon extra is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "icon extra is null:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_6
    iget-object v3, v2, Lcom/adsmogo/model/obj/Extra;->bgColor:Ljava/lang/String;

    iget-object v2, v2, Lcom/adsmogo/model/obj/Extra;->textColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const-string v0, "AdsMOGO SDK"

    const-string v1, "icon fgColor or bgColor is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<a href=\'http://www.adsmogo.com\'><div style=\'width:%spx;height:%spx;background-color:%s\'><img onerror=\"window.javaScriptInterface.adsmogoImageOnError();\" onload=\"window.javaScriptInterface.adsmogoImageOnload();\" style=\'width:44px;height:44px;float:left;padding-bottom:3; padding-left:3; padding-right:6; padding-top:3;\' src=\'%s\'></img> <table width=\"267\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" ><tr height=\"50\"><td height=\"50\"align=\"left\" style=\"color:%s\">%s</td></tr></table></div></a>"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v7}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v7, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v7}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    aput-object v0, v6, v11

    const/4 v0, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->adText:Ljava/lang/String;

    aput-object v2, v6, v0

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_4
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Serving custom type: html"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->adText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "AdsMOGO SDK"

    const-string v1, "html adText is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->adText:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_5
    const-string v2, "AdsMOGO SDK"

    const-string v3, "Serving custom type: gif"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v0, "AdsMOGO SDK"

    const-string v1, "gif imageLink is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<a href=\'http://www.adsmogo.com\'><img onerror=\"window.javaScriptInterface.adsmogoImageOnError();\" onload=\"window.javaScriptInterface.adsmogoImageOnload();\" width=\'%s\' height=\'%s\' src=\'%s\'></img></a>"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v4}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v4}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    aput-object v0, v3, v10

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_b
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v1}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/adsmogo/adapters/api/aA;

    invoke-direct {v2, p0, v0}, Lcom/adsmogo/adapters/api/aA;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_d

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/adsmogo/adapters/api/aB;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/adsmogo/adapters/api/aB;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "adt"

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v4, v4, Lcom/adsmogo/model/obj/PublicCustom;->adt:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "ade"

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v4, v4, Lcom/adsmogo/model/obj/PublicCustom;->ade:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "link"

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v4, v4, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "cid"

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v4, v4, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "nid"

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v4

    iget-object v4, v4, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v4

    iget v4, v4, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "country"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/adsmogo/adapters/api/ar;

    invoke-direct {v2, p0}, Lcom/adsmogo/adapters/api/ar;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0, v0, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v1

    if-ne v1, v10, :cond_18

    const-string v1, "<meta http-equiv=\'Content-Type\' content=\'text/html; charset=UTF-8\' /><style type=\'text/css\'>*{padding:0px;margin:0px;} a:link{text-decoration:none;}</style>"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->type:I

    packed-switch v2, :pswitch_data_2

    :pswitch_6
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Unknown custom type!"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :pswitch_7
    const-string v2, "AdsMOGO SDK"

    const-string v3, "Serving custom type: image"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v0, "AdsMOGO SDK"

    const-string v1, "image  imageLink is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<img onerror=\"window.javaScriptInterface.adsmogoImageOnError();\" onload=\"window.javaScriptInterface.adsmogoImageOnload();\" width=\'320\' height=\'50\' src=\'%s\'></img>"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v3, v3, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    aput-object v3, v0, v5

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string v1, "mogoHtml"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v0, "AdsMOGO SDK"

    const-string v1, "mogoHtml is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :pswitch_8
    const-string v2, "AdsMOGO SDK"

    const-string v3, "Serving custom type: icon"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v0, "AdsMOGO SDK"

    const-string v1, "icon imageLink is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_10
    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->adText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v0, "AdsMOGO SDK"

    const-string v1, "icon adText is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_11
    :try_start_1
    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v2, v2, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v2}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-nez v2, :cond_12

    const-string v0, "AdsMOGO SDK"

    const-string v1, "icon extra is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "icon extra is null:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_12
    iget-object v3, v2, Lcom/adsmogo/model/obj/Extra;->bgColor:Ljava/lang/String;

    iget-object v2, v2, Lcom/adsmogo/model/obj/Extra;->textColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    const-string v0, "AdsMOGO SDK"

    const-string v1, "icon fgColor or bgColor is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<div style=\'width:320px;height:50px;background-color:%s\'><img onerror=\"window.javaScriptInterface.adsmogoImageOnError();\" onload=\"window.javaScriptInterface.adsmogoImageOnload();\" style=\'width:44px;height:44px;float:left;padding-bottom:3; padding-left:3; padding-right:6; padding-top:3;\' src=\'%s\'></img> <table width=\"267\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" ><tr height=\"50\"><td height=\"50\"align=\"left\" style=\"color:%s\">%s</td></tr></table></div>"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "#"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v5

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v3, v3, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    aput-object v3, v6, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->adText:Ljava/lang/String;

    aput-object v0, v6, v11

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_9
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Serving custom type: html"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->adText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "AdsMOGO SDK"

    const-string v1, "html adText is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->adText:Ljava/lang/String;

    goto/16 :goto_3

    :pswitch_a
    const-string v2, "AdsMOGO SDK"

    const-string v3, "Serving custom type: gif"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v0, "AdsMOGO SDK"

    const-string v1, "gif imageLink is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<img onerror=\"window.javaScriptInterface.adsmogoImageOnError();\" onload=\"window.javaScriptInterface.adsmogoImageOnload();\" width=\'320\' height=\'50\' src=\'%s\'></img>"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v3, v3, Lcom/adsmogo/model/obj/PublicCustom;->imageLink:Ljava/lang/String;

    aput-object v3, v0, v5

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_17
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v1}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/adsmogo/adapters/api/aA;

    invoke-direct {v2, p0, v0}, Lcom/adsmogo/adapters/api/aA;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_18
    const-string v0, "AdsMOGO SDK"

    const-string v1, "nonsupport type"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_19
    move v5, v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method static synthetic g(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->m:Z

    return v0
.end method

.method static synthetic h(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->o:Z

    return v0
.end method

.method static synthetic i(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    return-object v0
.end method

.method static synthetic j(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic k(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->q:Z

    return v0
.end method

.method static synthetic m(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->u:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Ljava/lang/String;
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

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public PauseVideo()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    invoke-virtual {v0}, Lcom/adsmogo/adview/A;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->n:I

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    invoke-virtual {v0}, Lcom/adsmogo/adview/A;->pause()V

    :cond_0
    invoke-super {p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->PauseVideo()V

    return-void
.end method

.method public ResumeVideo()V
    .locals 2

    invoke-super {p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->ResumeVideo()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->n:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    iget v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->n:I

    invoke-virtual {v0, v1}, Lcom/adsmogo/adview/A;->seekTo(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->n:I

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    invoke-virtual {v0}, Lcom/adsmogo/adview/A;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->o:Z

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;I)Lcom/adsmogo/model/obj/PublicCustom;
    .locals 11

    const/4 v8, 0x2

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v2

    if-ne v2, v8, :cond_3

    const-string v1, "1"

    move-object v4, v1

    :goto_1
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCityName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v2, "n"

    move-object v3, v2

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v8, :cond_14

    :cond_1
    const-string v1, "cn"

    move-object v2, v1

    :goto_3
    const/16 v1, 0x2d

    if-ne p2, v1, :cond_7

    sget-object v1, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlExchange:Ljava/lang/String;

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v2, v8, v5

    const/4 v2, 0x2

    aput-object v4, v8, v2

    const/4 v2, 0x3

    const-string v4, "2"

    aput-object v4, v8, v2

    const/4 v2, 0x4

    aput-object v7, v8, v2

    const/4 v2, 0x5

    aput-object v3, v8, v2

    const/4 v2, 0x6

    aput-object v6, v8, v2

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_4
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v3, "AdsMOGO SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getAD Url:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x1b

    if-ne p2, v1, :cond_2

    const-string v1, "c"

    invoke-virtual {v2, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_1
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget v1, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->TIMEOUT_TIME:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v1, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->TIMEOUT_TIME:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    const-string v1, "AdsMOGO SDK"

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v0, "AdsMOGO SDK"

    const-string v1, "PublicCustom jsonString is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_4

    const-string v1, "6"

    move-object v4, v1

    goto/16 :goto_1

    :cond_4
    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    const-string v1, "10"

    move-object v4, v1

    goto/16 :goto_1

    :cond_5
    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_6

    const-string v1, "11"

    move-object v4, v1

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_16

    const-string v1, "12"

    move-object v4, v1

    goto/16 :goto_1

    :cond_7
    const/16 v1, 0x1b

    if-ne p2, v1, :cond_8

    sget-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlMogo:Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v1, v8

    const/4 v8, 0x1

    aput-object v2, v1, v8

    const/4 v8, 0x2

    aput-object p1, v1, v8

    const/4 v8, 0x3

    aput-object v4, v1, v8

    const/4 v8, 0x4

    const-string v9, "2"

    aput-object v9, v1, v8

    const/4 v8, 0x5

    aput-object v7, v1, v8

    const/4 v8, 0x6

    aput-object v3, v1, v8

    const/4 v3, 0x7

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Q8tFVImbNuvsmBwWwdqsPE6jsRQsSPkQ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->convertToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_8
    const/16 v1, 0x30

    if-ne p2, v1, :cond_e

    const-string v1, "10"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlPremium_defind:Ljava/lang/String;

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v2, v8, v5

    const/4 v2, 0x2

    aput-object p1, v8, v2

    const/4 v2, 0x3

    aput-object v4, v8, v2

    const/4 v2, 0x4

    const-string v4, "2"

    aput-object v4, v8, v2

    const/4 v2, 0x5

    aput-object v7, v8, v2

    const/4 v2, 0x6

    aput-object v3, v8, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v2

    const/16 v2, 0x9

    aput-object v6, v8, v2

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_9
    const-string v1, "12"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlPremium_defind:Ljava/lang/String;

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v2, v8, v5

    const/4 v2, 0x2

    aput-object p1, v8, v2

    const/4 v2, 0x3

    aput-object v4, v8, v2

    const/4 v2, 0x4

    const-string v4, "2"

    aput-object v4, v8, v2

    const/4 v2, 0x5

    aput-object v7, v8, v2

    const/4 v2, 0x6

    aput-object v3, v8, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v2

    const/16 v2, 0x9

    aput-object v6, v8, v2

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_a
    const-string v1, "11"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlPremium:Ljava/lang/String;

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v2, v8, v5

    const/4 v2, 0x2

    aput-object p1, v8, v2

    const/4 v2, 0x3

    aput-object v4, v8, v2

    const/4 v2, 0x4

    const-string v4, "2"

    aput-object v4, v8, v2

    const/4 v2, 0x5

    aput-object v7, v8, v2

    const/4 v2, 0x6

    aput-object v3, v8, v2

    const/4 v2, 0x7

    aput-object v6, v8, v2

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_b
    const-string v1, "1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlPremium:Ljava/lang/String;

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v2, v8, v5

    const/4 v2, 0x2

    aput-object p1, v8, v2

    const/4 v2, 0x3

    aput-object v4, v8, v2

    const/4 v2, 0x4

    const-string v4, "2"

    aput-object v4, v8, v2

    const/4 v2, 0x5

    aput-object v7, v8, v2

    const/4 v2, 0x6

    aput-object v3, v8, v2

    const/4 v2, 0x7

    aput-object v6, v8, v2

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_c
    const-string v1, "6"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlPremium:Ljava/lang/String;

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v2, v8, v5

    const/4 v2, 0x2

    aput-object p1, v8, v2

    const/4 v2, 0x3

    aput-object v4, v8, v2

    const/4 v2, 0x4

    const-string v4, "2"

    aput-object v4, v8, v2

    const/4 v2, 0x5

    aput-object v7, v8, v2

    const/4 v2, 0x6

    aput-object v3, v8, v2

    const/4 v2, 0x7

    aput-object v6, v8, v2

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_d
    const-string v0, "AdsMOGO SDK"

    const-string v1, "nonsupport type"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x36

    if-ne p2, v1, :cond_f

    sget-object v1, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlRecommend:Ljava/lang/String;

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v2, v8, v5

    const/4 v2, 0x2

    aput-object p1, v8, v2

    const/4 v2, 0x3

    aput-object v4, v8, v2

    const/4 v2, 0x4

    const-string v4, "2"

    aput-object v4, v8, v2

    const/4 v2, 0x5

    aput-object v7, v8, v2

    const/4 v2, 0x6

    aput-object v3, v8, v2

    const/4 v2, 0x7

    aput-object v6, v8, v2

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_f
    const-string v1, "10"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlCustom_defind:Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v3, v7

    const/4 v5, 0x1

    aput-object v2, v3, v5

    const/4 v2, 0x2

    aput-object p1, v3, v2

    const/4 v2, 0x3

    aput-object v4, v3, v2

    const/4 v2, 0x4

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v4}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x5

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v4}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x6

    aput-object v6, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_10
    const-string v1, "11"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlCustom:Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v3, v7

    const/4 v5, 0x1

    aput-object v2, v3, v5

    const/4 v2, 0x2

    aput-object p1, v3, v2

    const/4 v2, 0x3

    aput-object v4, v3, v2

    const/4 v2, 0x4

    aput-object v6, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_11
    sget-object v1, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlCustom:Ljava/lang/String;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v3, v7

    const/4 v5, 0x1

    aput-object v2, v3, v5

    const/4 v2, 0x2

    aput-object p1, v3, v2

    const/4 v2, 0x3

    aput-object v4, v3, v2

    const/4 v2, 0x4

    aput-object v6, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto/16 :goto_4

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getPublicCustom err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v10, v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_12
    :try_start_3
    invoke-direct {p0, v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d(Ljava/lang/String;)Lcom/adsmogo/model/obj/PublicCustom;

    move-result-object v0

    goto/16 :goto_0

    :cond_13
    const-string v0, "AdsMOGO SDK"

    const-string v1, "PublicCustom entity is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "Caught ClientProtocolException in getAd()"

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_5
    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "Caught IOException in getAd()"

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_14
    move-object v2, v1

    goto/16 :goto_3

    :cond_15
    move-object v3, v2

    goto/16 :goto_2

    :cond_16
    move-object v4, v1

    goto/16 :goto_1
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->pn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->pn:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adsmogo/util/RepeatCheck;->isAppRepeated(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, -0x2

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v7, -0x1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->p:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :cond_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->l:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->l:Landroid/widget/TextView;

    const/16 v3, 0x64

    const/16 v4, 0x80

    const/16 v5, 0x9b

    const/16 v6, 0xad

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v2, Lcom/adsmogo/adview/A;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/adsmogo/adview/A;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/MediaController;

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/widget/MediaController;->hide()V

    const-string v3, ".mp4"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_3

    const-string v3, ".MP4"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v7, :cond_8

    :cond_3
    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard/MOGO_VIDEO"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/sdcard/MOGO_VIDEO/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/adsmogo/encryption/MD5;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->r:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->r:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    invoke-virtual {v3, v0}, Lcom/adsmogo/adview/A;->setVideoURI(Landroid/net/Uri;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/adsmogo/adapters/api/aF;

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->r:Ljava/lang/String;

    invoke-direct {v3, p0, p1, v4}, Lcom/adsmogo/adapters/api/aF;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    new-instance v3, Lcom/adsmogo/adapters/api/as;

    invoke-direct {v3, p0}, Lcom/adsmogo/adapters/api/as;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-virtual {v0, v3}, Lcom/adsmogo/adview/A;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    new-instance v3, Lcom/adsmogo/adapters/api/au;

    invoke-direct {v3, p0}, Lcom/adsmogo/adapters/api/au;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-virtual {v0, v3}, Lcom/adsmogo/adview/A;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    new-instance v3, Lcom/adsmogo/adapters/api/av;

    invoke-direct {v3, p0}, Lcom/adsmogo/adapters/api/av;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-virtual {v0, v3}, Lcom/adsmogo/adview/A;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    new-instance v3, Lcom/adsmogo/adapters/api/aw;

    invoke-direct {v3, p0}, Lcom/adsmogo/adapters/api/aw;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-virtual {v0, v3}, Lcom/adsmogo/adview/A;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v1, v10, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-gt v0, v2, :cond_2

    :try_start_0
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_6
    const-string v0, "AdsMOGO SDK"

    const-string v2, "The network is not WiFi"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v8}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    iput-object v8, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->r:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/adsmogo/adview/A;->setVideoPath(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    invoke-virtual {v3, v0}, Lcom/adsmogo/adview/A;->setVideoURI(Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_9
    const-string v0, "AdsMOGO SDK"

    const-string v2, "The network is not WiFi"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v8}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    iput-object v8, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_0

    :cond_a
    const-string v0, "AdsMOGO SDK"

    const-string v2, "Video ViewGroup is null"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v8}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0
.end method

.method public final a(ZLandroid/view/ViewGroup;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x80

    const/16 v4, 0x8

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->j:Lcom/adsmogo/adview/ShowFullScreenDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->j:Lcom/adsmogo/adview/ShowFullScreenDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adsmogo/adview/ShowFullScreenDialog;->setFullAdIsLoadFinish(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->shoutdownTimer()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    if-eq v0, v5, :cond_5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    if-eq v0, v4, :cond_5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->RIBAdcount:Lcom/adsmogo/controller/count/AdsCount;

    if-nez v0, :cond_3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "RIBAdcount is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, ""

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->RIBAdcount:Lcom/adsmogo/controller/count/AdsCount;

    invoke-virtual {v1}, Lcom/adsmogo/controller/count/AdsCount;->getNidAndType()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v3

    iget v3, v3, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v3

    iget v3, v3, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_d

    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    :cond_6
    :goto_1
    iput-object v6, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->impUrls:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->impUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    :cond_8
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    if-eq v0, v5, :cond_9

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    if-ne v0, v4, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iget v1, v1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-interface {v0, v6, v1}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;I)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getWidth()I

    move-result v0

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:D

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->h:D

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getHeight()I

    move-result v0

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:D

    invoke-static {v0, v1, v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->i:D

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iget v1, v1, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->h:D

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->i:D

    double-to-int v3, v3

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-boolean v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->isCc:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iget v1, v1, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->h:D

    double-to-int v2, v2

    iget-wide v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->i:D

    double-to-int v3, v3

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto/16 :goto_1

    :cond_c
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->t:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-wide v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->h:D

    double-to-int v1, v1

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->i:D

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    iget v2, v2, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-wide v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->h:D

    double-to-int v3, v3

    iget-wide v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->i:D

    double-to-int v4, v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto/16 :goto_1

    :cond_d
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f()V

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-static {v4}, Lcom/adsmogo/util/GetUserInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v1, v3, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "splashAD network resource failed"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoInterstitialCoreReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->countClick(Lcom/adsmogo/model/obj/Ration;)V

    :cond_1
    :goto_0
    const-string v0, "AdsMOGO SDK"

    const-string v1, "sendCountClick finish"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoCoreReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/AdsMogoCore;->countClick(Lcom/adsmogo/model/obj/Ration;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:Landroid/webkit/WebView;

    new-instance v2, Lcom/adsmogo/adapters/api/aG;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/adsmogo/adapters/api/aG;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:Landroid/webkit/WebView;

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:Landroid/webkit/WebView;

    new-instance v2, Lcom/adsmogo/adapters/api/PublicCustomAdapter$JavaScriptInterface;

    invoke-direct {v2, p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter$JavaScriptInterface;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    const-string v3, "javaScriptInterface"

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-boolean v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->isCc:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsmogo/adapters/api/ax;

    invoke-direct {v1, p0}, Lcom/adsmogo/adapters/api/ax;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iput-boolean v6, v0, Lcom/adsmogo/model/obj/Ration;->isCc:Z

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsmogo/adapters/api/ay;

    invoke-direct {v1, p0}, Lcom/adsmogo/adapters/api/ay;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    check-cast v0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    invoke-virtual {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public clearCache()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    iput-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:Landroid/webkit/WebView;

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->u:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->u:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iput-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->u:Landroid/widget/RelativeLayout;

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    :cond_2
    return-void
.end method

.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()V
    .locals 12

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v10, 0x1

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->linkType:I

    if-eq v1, v2, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget v0, v0, Lcom/adsmogo/model/obj/PublicCustom;->linkType:I

    if-ne v0, v10, :cond_1

    invoke-static {}, Lcom/adsmogo/controller/j;->a()Lcom/adsmogo/controller/j;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/adsmogo/controller/j;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    const-class v3, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "link"

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v4, v4, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sendClickSingleton"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/adsmogo/controller/j;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->linkType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->linkType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onclick open activity err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->launchType:I

    if-ne v1, v2, :cond_7

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getDownloadIsShowDialog()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v3, "\u63d0\u793a"

    const-string v2, "\u786e\u5b9a\u8981\u4e0b\u8f7d\u5417?"

    const-string v1, "\u786e\u8ba4"

    const-string v0, "\u53d6\u6d88"

    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/adsmogo/adapters/api/ap;

    invoke-direct {v3, p0}, Lcom/adsmogo/adapters/api/ap;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/adsmogo/adapters/api/aq;

    invoke-direct {v2, p0}, Lcom/adsmogo/adapters/api/aq;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_5
    const-string v3, "Message"

    const-string v2, "Are you sure you want to download?"

    const-string v1, "OK"

    const-string v0, "Cancel"

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget v0, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v3, v3, Lcom/adsmogo/model/obj/PublicCustom;->appName:Ljava/lang/String;

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/AdsMogoUtilTool;->downloadAPK(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b()V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget v0, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-direct {p0, v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(I)V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a()V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_8

    :goto_2
    new-instance v0, Lcom/adsmogo/adview/ShowInfoDialog;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iget v1, v1, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v2, v2, Lcom/adsmogo/model/obj/PublicCustom;->cid:Ljava/lang/String;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    check-cast v3, Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v4, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    iget-object v5, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v5, v5, Lcom/adsmogo/model/obj/PublicCustom;->iconLink:Ljava/lang/String;

    iget-object v6, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v6, v6, Lcom/adsmogo/model/obj/PublicCustom;->appName:Ljava/lang/String;

    iget-object v7, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v7, v7, Lcom/adsmogo/model/obj/PublicCustom;->appDes:Ljava/lang/String;

    iget-object v8, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v8, v8, Lcom/adsmogo/model/obj/PublicCustom;->imageUrlList:Ljava/util/List;

    iget-object v9, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->g:Lcom/adsmogo/model/obj/PublicCustom;

    iget-object v9, v9, Lcom/adsmogo/model/obj/PublicCustom;->link:Ljava/lang/String;

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/adsmogo/adview/ShowInfoDialog;-><init>(ILjava/lang/String;Lcom/adsmogo/adview/AdsMogoLayout;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-virtual {v0}, Lcom/adsmogo/adview/ShowInfoDialog;->show()V

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget v0, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-direct {p0, v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(I)V

    goto/16 :goto_0

    :cond_8
    if-ne v1, v10, :cond_a

    move v10, v0

    goto :goto_2

    :cond_9
    const-string v0, "AdsMOGO SDK"

    const-string v1, "In onInterceptTouchEvent(), but custom.link is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    move v10, v0

    goto :goto_2
.end method

.method public final e()V
    .locals 3

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->shoutdownTimer()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->setReadyed(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoReadyCoreListener:Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget-object v0, v0, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoReadyCoreListener:Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "\u8865\u4f59"

    :cond_2
    invoke-interface {v1, v0}, Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;->onReadyed(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoReadyCoreListener:Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->shoutdownTimer()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoInterstitialCloseedListener:Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoInterstitialCloseedListener:Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;->onInterstitialCloseed()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoInterstitialCloseedListener:Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;

    goto :goto_0
.end method

.method public finish()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoInterstitialCloseedListener:Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Ad Finished"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public handle()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->adsMogoConfigInterfaceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getActivityReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->q:Z

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getScheduler()Lcom/adsmogo/util/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v2}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v2

    iput-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->e:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v2, :cond_0

    sget v2, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->TIMEOUT_TIME:I

    add-int/lit16 v2, v2, 0x1f40

    invoke-virtual {p0, v2}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->startTimer(I)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:D

    const/16 v2, 0x140

    iget-wide v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:D

    invoke-static {v2, v3, v4}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->h:D

    const/16 v2, 0x32

    iget-wide v3, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:D

    invoke-static {v2, v3, v4}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v2

    int-to-double v2, v2

    iput-wide v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->i:D

    :try_start_0
    new-instance v2, Lcom/adsmogo/adapters/api/aC;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/adsmogo/adapters/api/aC;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;B)V

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_1
.end method

.method public onPageComplete()V
    .locals 0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->b()V

    return-void
.end method

.method public requestTimeOut()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "html img load time out"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->f:Landroid/webkit/WebView;

    invoke-virtual {p0, v0, v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method public showInterstitialAd()V
    .locals 2

    invoke-super {p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->showInterstitialAd()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->j:Lcom/adsmogo/adview/ShowFullScreenDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->j:Lcom/adsmogo/adview/ShowFullScreenDialog;

    invoke-virtual {v0}, Lcom/adsmogo/adview/ShowFullScreenDialog;->showInterstitalAd()V

    :cond_0
    const-string v0, "AdsMOGO SDK"

    const-string v1, "publicCustom InterstitialAd Success"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method public startVideo()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->startVideo()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->m:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->m:Z

    new-instance v0, Lcom/adsmogo/adapters/api/aD;

    invoke-direct {v0, p0}, Lcom/adsmogo/adapters/api/aD;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/aD;->start()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->k:Lcom/adsmogo/adview/A;

    invoke-virtual {v0}, Lcom/adsmogo/adview/A;->start()V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
