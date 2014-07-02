.class public Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;


# static fields
.field private static k:Landroid/webkit/WebView;


# instance fields
.field a:Lcom/adsmogo/model/obj/Ftad;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Activity;

.field private e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

.field private f:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

.field private g:Landroid/webkit/WebView;

.field private h:I

.field private i:I

.field private j:D

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/AdsMogoAdapter;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)V

    const-string v0, "1,2,3"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->b:Ljava/lang/String;

    const-string v0, "1,2,3,4"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->l:Ljava/lang/String;

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Create FractalApiAdapter"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->d:Landroid/app/Activity;

    return-object v0
.end method

.method private static a(Lorg/json/JSONArray;)Lcom/adsmogo/model/obj/Ftad;
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_1

    :goto_1
    or-int/2addr v0, v1

    if-eqz v0, :cond_2

    move-object v0, v3

    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v0, Lcom/adsmogo/model/obj/Ftad;

    invoke-direct {v0}, Lcom/adsmogo/model/obj/Ftad;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "adviewparam1"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adsmogo/model/obj/Ftad;->setAdviewparam1(Ljava/lang/String;)V

    const-string v2, "adviewparam2"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adsmogo/model/obj/Ftad;->setAdviewparam2(Ljava/lang/String;)V

    const-string v2, "adviewurl1"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adsmogo/model/obj/Ftad;->setAdviewurl1(Ljava/lang/String;)V

    const-string v2, "adviewurl2"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adsmogo/model/obj/Ftad;->setAdviewurl2(Ljava/lang/String;)V

    const-string v2, "adclicktype"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adsmogo/model/obj/Ftad;->setAdclicktype(Ljava/lang/String;)V

    const-string v2, "adclickslogan"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adsmogo/model/obj/Ftad;->setAdclickslogan(Ljava/lang/String;)V

    const-string v2, "adclickurl1"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adsmogo/model/obj/Ftad;->setAdclickurl1(Ljava/lang/String;)V

    const-string v2, "adclickurl2"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adsmogo/model/obj/Ftad;->setAdclickurl2(Ljava/lang/String;)V

    const-string v2, "adclickurl3"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adsmogo/model/obj/Ftad;->setAdclickurl3(Ljava/lang/String;)V

    const-string v2, "adviewtype"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/adsmogo/model/obj/Ftad;->setAdviewtype(I)V

    const-string v2, "adtitle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adsmogo/model/obj/Ftad;->setAdtitle(Ljava/lang/String;)V

    const-string v2, "beacon"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adsmogo/model/obj/Ftad;->setBeacon(Ljava/lang/String;)V

    const-string v2, "addesc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/model/obj/Ftad;->setAddesc(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    :goto_3
    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fractal analysis ftad Fail :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_3
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget v1, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->TIMEOUT_TIME:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v1, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->TIMEOUT_TIME:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    const-string v0, "http://www.admarket.mobi/ftad/apiadreq"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "fractal request Fail at URl err:http://www.admarket.mobi/ftad/apiadreq"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v7, v8}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(ZLandroid/view/ViewGroup;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    const-string v2, "http://www.admarket.mobi/ftad/apiadreq"

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "version"

    const-string v5, "2.0"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "pid"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "adtype"

    iget-object v5, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "adclicktype"

    iget-object v5, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->c:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "devicename"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "deviceos"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "android"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->l:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "deviceua"

    iget-object v5, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->l:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->d:Landroid/app/Activity;

    if-eqz v3, :cond_3

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "udid"

    iget-object v5, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->f:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v5}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "mac"

    iget-object v5, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->d:Landroid/app/Activity;

    invoke-static {v5}, Lcom/adsmogo/util/GetUserInfo;->getIDByMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :try_start_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_9

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "AdsMOGO SDK"

    const-string v1, "fractal request Fail at json is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(ZLandroid/view/ViewGroup;)V

    :goto_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    if-eqz v0, :cond_8

    const-string v0, "<meta http-equiv=\'Content-Type\' content=\'text/html; charset=UTF-8\' /><style type=\'text/css\'>*{padding:0px;margin:0px;} a:link{text-decoration:none;}</style>"

    iget-object v1, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Ftad;->getAdviewtype()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Ftad;->getAdviewtype()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v1}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/adsmogo/adapters/api/U;

    invoke-direct {v2, p0, v0}, Lcom/adsmogo/adapters/api/U;-><init>(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fractal request Fail :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v7, v8}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ftad"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "adcontents"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "adcontent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(Lorg/json/JSONArray;)Lcom/adsmogo/model/obj/Ftad;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fractal analysis json Fail :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_1

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<a href=\'www.baidu.com\'><div style=\'width:%dpx;height:%dpx;\'><p style=\'line-height:%dpx;text-align:center\'>%s</p></div></a>"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x140

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/Ftad;->getAdtitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<a href=\'www.baidu.com\'><div style=\'width:%dpx;height:%dpx;\'><img style=\'width:%dpx;height:%dpx;float:left;padding:2px\' src=\'%s\'></img> <p style=\'line-height:%dpx;color:#000;\'>%s</p></div></a>"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x140

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x2d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x2d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/Ftad;->getAdviewurl2()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/Ftad;->getAdviewparam1()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<a href=\'www.baidu.com\'><img width=\'%d\' height=\'%d\' src=\'%s\'></img></a>"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x140

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/Ftad;->getAdviewurl1()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->shoutdownTimer()V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->d:Landroid/app/Activity;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->setReadyed(Z)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->adsMogoReadyCoreListener:Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->adsMogoReadyCoreListener:Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v1, "\u8865\u4f59"

    :cond_6
    invoke-interface {v2, v1}, Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;->onReadyed(Ljava/lang/String;)V

    :cond_7
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->adsMogoReadyCoreListener:Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;

    goto/16 :goto_2

    :cond_8
    const-string v0, "AdsMOGO SDK"

    const-string v1, "fractal request Fail at ftadAD is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fractal request Fail at StatusCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(ZLandroid/view/ViewGroup;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;ZLandroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method private a(ZLandroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->shoutdownTimer()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->d:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    const/16 v1, 0x32

    iget v2, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->h:I

    iget v3, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->i:I

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->f:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget v1, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->TIMEOUT_TIME:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v1, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->TIMEOUT_TIME:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fractal load URL err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Ftad;->getBeacon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Ftad;->getBeacon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->b(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->d:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->g:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->g:Landroid/webkit/WebView;

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->g:Landroid/webkit/WebView;

    new-instance v2, Lcom/adsmogo/adapters/api/W;

    invoke-direct {v2, p0, v3}, Lcom/adsmogo/adapters/api/W;-><init>(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->g:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->g:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->f:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->f:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->adsMogoCoreReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/AdsMogoCore;->countClick(Lcom/adsmogo/model/obj/Ration;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->adsMogoInterstitialCoreReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->countClick(Lcom/adsmogo/model/obj/Ration;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->shoutdownTimer()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->d:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->adsMogoInterstitialCloseedListener:Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->adsMogoInterstitialCloseedListener:Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;->onInterstitialCloseed()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->adsMogoInterstitialCloseedListener:Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;

    goto :goto_0
.end method

.method public clearCache()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->g:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->g:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->g:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method

.method public click()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    return-void
.end method

.method public handle()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->adsMogoConfigInterfaceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getActivityReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->d:Landroid/app/Activity;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getScheduler()Lcom/adsmogo/util/e;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->f:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->f:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->j:D

    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->d:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->k:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->d:Landroid/app/Activity;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->l:Ljava/lang/String;

    sput-object v5, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->k:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->f:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_3

    sget v0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->TIMEOUT_TIME:I

    add-int/lit16 v0, v0, 0x3a98

    invoke-virtual {p0, v0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->startTimer(I)V

    const-string v0, "4"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->b:Ljava/lang/String;

    const-string v0, "0,1,2,3,4"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->c:Ljava/lang/String;

    :goto_2
    new-instance v0, Lcom/adsmogo/adapters/api/V;

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/adsmogo/adapters/api/V;-><init>(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;Lcom/adsmogo/model/obj/Ration;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v6, v5}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v5, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->k:Landroid/webkit/WebView;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->f:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    sget v0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->TIMEOUT_TIME:I

    add-int/lit16 v0, v0, 0x1f40

    invoke-virtual {p0, v0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->startTimer(I)V

    const-string v0, "1,2,3"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->b:Ljava/lang/String;

    const-string v0, "1,2,3,4"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->c:Ljava/lang/String;

    const/16 v0, 0x32

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->j:D

    invoke-static {v0, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    iput v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->i:I

    const/16 v0, 0x140

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->j:D

    invoke-static {v0, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    iput v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->h:I

    goto :goto_2

    :cond_4
    const-string v0, "AdsMOGO SDK"

    const-string v1, "nonsupport type"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v6, v5}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0
.end method

.method public onPageComplete()V
    .locals 0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->b()V

    return-void
.end method

.method public requestTimeOut()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "fractal API time out"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->g:Landroid/webkit/WebView;

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method public showInterstitialAd()V
    .locals 2

    invoke-super {p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->showInterstitialAd()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Ftad;->getAdviewtype()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/adsmogo/adapters/api/T;

    invoke-direct {v1, p0}, Lcom/adsmogo/adapters/api/T;-><init>(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
