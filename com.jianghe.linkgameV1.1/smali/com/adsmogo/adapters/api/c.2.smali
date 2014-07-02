.class final Lcom/adsmogo/adapters/api/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/APIAdapter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/APIAdapter;Lcom/adsmogo/adapters/api/APIAdapter;Lcom/adsmogo/model/obj/Ration;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "AdsMOGO SDK"

    const-string v3, "Request API activity=null"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getIDByMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getOperators(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v0, v2, Lcom/adsmogo/adapters/api/APIAdapter;->c:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getCell(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getLac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getScreenSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "[*]"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v4, "320"

    const-string v2, "480"

    invoke-static {}, Lcom/adsmogo/util/GetUserInfo;->IsCanUseSdCard()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "1"

    move-object v8, v5

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v5}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v5}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/adsmogo/util/AdsMogoPone;->PONE_NUM:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v5}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/adsmogo/util/GetUserInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    array-length v5, v6

    const/4 v7, 0x2

    if-ne v5, v7, :cond_6

    const/4 v2, 0x0

    aget-object v4, v6, v2

    const/4 v2, 0x1

    aget-object v2, v6, v2

    move-object v6, v2

    move-object v7, v4

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/APIAdapter;->b(Lcom/adsmogo/adapters/api/APIAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    move-object/from16 v0, v24

    iput-object v0, v2, Lcom/adsmogo/adapters/api/APIAdapter;->b:Ljava/lang/String;

    const-string v4, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-string v5, "location"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v5, "gps"

    invoke-virtual {v2, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v5, "network"

    invoke-virtual {v2, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    :goto_3
    if-eqz v2, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, " "

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v25

    move-wide/from16 v0, v25

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_4
    :try_start_2
    invoke-static {}, Lcom/adsmogo/adapters/api/APIAdapter;->b()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x17

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v25, 0x0

    aput-object v24, v5, v25

    const/16 v24, 0x1

    const-string v25, "320"

    aput-object v25, v5, v24

    const/16 v24, 0x2

    const-string v25, "50"

    aput-object v25, v5, v24

    const/16 v24, 0x3

    aput-object v13, v5, v24

    const/4 v13, 0x4

    aput-object v12, v5, v13

    const/4 v12, 0x5

    aput-object v16, v5, v12

    const/4 v12, 0x6

    aput-object v14, v5, v12

    const/4 v12, 0x7

    aput-object v17, v5, v12

    const/16 v12, 0x8

    aput-object v15, v5, v12

    const/16 v12, 0x9

    aput-object v11, v5, v12

    const/16 v11, 0xa

    aput-object v10, v5, v11

    const/16 v10, 0xb

    aput-object v9, v5, v10

    const/16 v9, 0xc

    aput-object v7, v5, v9

    const/16 v7, 0xd

    aput-object v6, v5, v7

    const/16 v6, 0xe

    aput-object v2, v5, v6

    const/16 v2, 0xf

    invoke-static {}, Lcom/adsmogo/adapters/api/APIAdapter;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x10

    aput-object v18, v5, v2

    const/16 v2, 0x11

    aput-object v19, v5, v2

    const/16 v2, 0x12

    aput-object v8, v5, v2

    const/16 v2, 0x13

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    const/16 v2, 0x14

    aput-object v21, v5, v2

    const/16 v2, 0x15

    aput-object v22, v5, v2

    const/16 v2, 0x16

    aput-object v23, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :goto_5
    :try_start_3
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-static {}, Lcom/adsmogo/adapters/api/APIAdapter;->d()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {}, Lcom/adsmogo/adapters/api/APIAdapter;->d()I

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;)V

    const-string v3, "[?]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v5, " "

    const-string v6, "%20"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "A8tFVImbBuvsmBw3wdqs8E6jsRQsSPkQDf34"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/adsmogo/util/AdsMogoUtilTool;->convertToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v2, "MOGO_API_AUTHKEY"

    const-string v6, "mogo_sdk"

    invoke-virtual {v5, v2, v6}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MOGO_API_SIGNATURE"

    invoke-virtual {v5, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_4

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "json"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v3, v2}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v2, v2, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    if-eqz v2, :cond_0

    const-string v2, "<meta http-equiv=\'Content-Type\' content=\'text/html; charset=UTF-8\' /><style type=\'text/css\'>*{padding:0px;margin:0px;} a:link{text-decoration:none;}</style>"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v3, v3, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    invoke-virtual {v3}, Lcom/adsmogo/model/obj/APIAD;->getAdType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_6
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/APIAdapter;->c(Lcom/adsmogo/adapters/api/APIAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/APIAdapter;->c(Lcom/adsmogo/adapters/api/APIAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/adsmogo/adapters/api/b;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    invoke-direct {v4, v5, v2}, Lcom/adsmogo/adapters/api/b;-><init>(Lcom/adsmogo/adapters/api/APIAdapter;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;ZLandroid/view/ViewGroup;)V

    const-string v3, "AdsMOGO SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "API request err:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    :try_start_4
    const-string v5, "0"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v8, v5

    goto/16 :goto_1

    :catch_1
    move-exception v2

    :cond_3
    move-object v2, v4

    goto/16 :goto_4

    :catch_2
    move-exception v2

    const-string v4, "AdsMOGO SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "API parse JSON or Stringformat err :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;ZLandroid/view/ViewGroup;)V

    move-object v2, v3

    goto/16 :goto_5

    :pswitch_1
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<a href=\'%s\'><img width=\'320\' height=\'50\' src=\'%s\'></img></a>"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v6, v6, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v6, v6, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v6, v6, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v6, v6, Lcom/adsmogo/model/obj/APIAD;->adImg:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<a href=\'%s\'><div style=\'width:320px;height:50px;\'><img style=\'width:45px;height:45px;float:left;padding:2px\' src=\'%s\'></img> <p style=\'line-height:50px;color:#000;\'>%s</p></div></a>"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v6, v6, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v6, v6, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v6, v6, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v6, v6, Lcom/adsmogo/model/obj/APIAD;->adImg:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v6, v6, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v6, v6, Lcom/adsmogo/model/obj/APIAD;->adText:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<div style=\'width:320px;height:50px;\'>%s</div>"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v6, v6, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v6, v6, Lcom/adsmogo/model/obj/APIAD;->adText:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<a href=\'%s\'><div style=\'width:320px;height:50px;\'><p style=\'line-height:50px;text-align:center\'>%s</p></div></a>"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v6, v6, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v6, v6, Lcom/adsmogo/model/obj/APIAD;->linkUrl:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    iget-object v6, v6, Lcom/adsmogo/adapters/api/APIAdapter;->a:Lcom/adsmogo/model/obj/APIAD;

    iget-object v6, v6, Lcom/adsmogo/model/obj/APIAD;->adText:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_6

    :cond_4
    const-string v3, "AdsMOGO SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "API request StatusCode:"

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

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/c;->a:Lcom/adsmogo/adapters/api/APIAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/adsmogo/adapters/api/APIAdapter;->a(Lcom/adsmogo/adapters/api/APIAdapter;ZLandroid/view/ViewGroup;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_5
    move-object v2, v5

    goto/16 :goto_3

    :cond_6
    move-object v6, v2

    move-object v7, v4

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
