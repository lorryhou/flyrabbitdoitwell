.class public Lcom/adsmogo/adapters/api/AXdXuXuAdapter;
.super Lcom/adsmogo/adapters/AdsMogoAdapter;


# instance fields
.field public a:[Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Activity;

.field private e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

.field private f:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

.field private g:I

.field private h:I

.field private i:D

.field private j:Lcom/adsmogo/model/obj/Aduu;

.field private k:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/AdsMogoAdapter;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)V

    const-string v0, "http://api.adcome.cn/v1/adlist"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b:Ljava/lang/String;

    const-string v0, "http://api.adcome.cn/v1/evt"

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->k:Landroid/webkit/WebView;

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Create AduuAdapter"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->TIMEOUT_TIME:I

    return v0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mogo_ban_androidk64ib0ly8sjh7ke0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sourceid"

    const-string v6, "mogo_ban_android"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "token"

    invoke-direct {v4, v5, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "uuid"

    invoke-direct {v2, v4, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "evttime"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "reqid"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v3}, Lcom/adsmogo/model/obj/Aduu;->getReqid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "evttype"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "nettype"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getAduuNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "appid"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "adid"

    iget-object v3, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v3}, Lcom/adsmogo/model/obj/Aduu;->getAdid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)V
    .locals 15

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v1, 0x0

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget v2, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->TIMEOUT_TIME:I

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget v2, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->TIMEOUT_TIME:I

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aduu request Fail at URl err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v12, v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b:Ljava/lang/String;

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge v0, v14, :cond_2

    move-object v0, v1

    :goto_1
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v2, v0, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v3, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_13

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "strResult:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "AdsMOGO SDK"

    const-string v2, "aduu return is null"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "aduu request Fail :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v12, v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "mogo_ban_androidk64ib0ly8sjh7ke0"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    invoke-static {v5}, Lcom/adsmogo/util/GetUserInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsmogo/util/AdsMogoUtilTool;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    invoke-static {v6}, Lcom/adsmogo/util/GetUserInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "00"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    invoke-static {v2}, Lcom/adsmogo/util/GetUserInfo;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "sourceid"

    const-string v11, "mogo_ban_android"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "token"

    invoke-direct {v9, v10, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "uuid"

    invoke-direct {v5, v9, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "timestamp"

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "count"

    const-string v6, "1"

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "adpos"

    const-string v6, "adsmogo"

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    invoke-direct {v0, v5, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imsi"

    invoke-direct {v0, v5, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "brand"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "platform"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "android-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nettype"

    iget-object v6, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    invoke-static {v6}, Lcom/adsmogo/util/GetUserInfo;->getAduuNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "macaddr"

    iget-object v6, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    invoke-static {v6}, Lcom/adsmogo/util/GetUserInfo;->getIDByMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getWidthAndHeight(Landroid/content/Context;)[I

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v5, v0

    if-lt v5, v14, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    aget v6, v0, v13

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "S"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v0, v0, v12

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "screen"

    invoke-direct {v5, v6, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "appid"

    iget-object v6, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a:[Ljava/lang/String;

    aget-object v6, v6, v12

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "appver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    invoke-static {v7}, Lcom/adsmogo/util/GetUserInfo;->getVersionCode(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sdkver"

    const-string v6, "1.3.8"

    invoke-direct {v0, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto/16 :goto_1

    :cond_4
    const-string v0, "0S0"

    goto :goto_2

    :cond_5
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "result is :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    if-eqz v0, :cond_12

    const-string v0, "<meta http-equiv=\'Content-Type\' content=\'text/html; charset=UTF-8\' /><style type=\'text/css\'>*{padding:0px;margin:0px;} a:link{text-decoration:none;}</style>"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/Aduu;->getShowtype()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<a href=\'www.baidu.com\'><div style=\'width:320px;height:50px;background-image:url(%s);background-repeat :repeat-x\';><img style=\'width:44px;height:44px;float:left;padding:3px\' src=\'%s\'></img> <p style=\'line-height:50px;color:#000;\'>%s</p></div></a>"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v5}, Lcom/adsmogo/model/obj/Aduu;->getBg()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v5}, Lcom/adsmogo/model/obj/Aduu;->getIcon()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v5}, Lcom/adsmogo/model/obj/Aduu;->getText()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    if-eqz v2, :cond_11

    if-eqz v0, :cond_11

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v2}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/adsmogo/adapters/api/l;

    invoke-direct {v3, p0, v0}, Lcom/adsmogo/adapters/api/l;-><init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_6
    :try_start_3
    new-instance v0, Lcom/adsmogo/model/obj/Aduu;

    invoke-direct {v0}, Lcom/adsmogo/model/obj/Aduu;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    const-string v3, "reqid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/adsmogo/model/obj/Aduu;->setReqid(Ljava/lang/String;)V

    const-string v0, "ads"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_d

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "showtype"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v3, v2}, Lcom/adsmogo/model/obj/Aduu;->setShowtype(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    const-string v4, "adid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/adsmogo/model/obj/Aduu;->setAdid(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    const-string v4, "feecode"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/adsmogo/model/obj/Aduu;->setFeecode(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    const-string v4, "feetype"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/adsmogo/model/obj/Aduu;->setFeetype(Ljava/lang/String;)V

    const-string v3, "clicktype"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v0, "AdsMOGO SDK"

    const-string v2, "return Ads is not support"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    :try_start_4
    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "analysisJson err:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    :cond_7
    :try_start_5
    iget-object v3, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    const-string v4, "clicktype"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/adsmogo/model/obj/Aduu;->setClicktype(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    const-string v4, "clickcontent"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/adsmogo/model/obj/Aduu;->setClickcontent(Ljava/lang/String;)V

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    const-string v3, "text"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adsmogo/model/obj/Aduu;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    const-string v3, "subtext"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adsmogo/model/obj/Aduu;->setSubtext(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    const-string v3, "icon"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adsmogo/model/obj/Aduu;->setIcon(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    const-string v3, "bg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adsmogo/model/obj/Aduu;->setBg(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    const-string v3, "pic"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adsmogo/model/obj/Aduu;->setPic(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    const-string v3, "3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    const-string v3, "pic"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adsmogo/model/obj/Aduu;->setPic(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    const-string v3, "4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    const-string v3, "text"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adsmogo/model/obj/Aduu;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    const-string v3, "subtext"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adsmogo/model/obj/Aduu;->setSubtext(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    const-string v0, "5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "AdsMOGO SDK"

    const-string v2, "return ads is not support"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    goto/16 :goto_3

    :cond_c
    const-string v0, "AdsMOGO SDK"

    const-string v2, "return ads  not support"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    goto/16 :goto_3

    :cond_d
    const-string v0, "AdsMOGO SDK"

    const-string v2, "return ads is 0"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    :cond_e
    :try_start_6
    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/Aduu;->getShowtype()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<a href=\'www.baidu.com\'><img style=\'width:320px;height:50px;\' src=\'%s\'></img></a>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v5}, Lcom/adsmogo/model/obj/Aduu;->getPic()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_f
    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/Aduu;->getShowtype()Ljava/lang/String;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<a href=\'www.baidu.com\'><div style=\'width:320px;height:50px; background-color:#FFF\'><p style=\'line-height:50px;color:#000;\'>%s</p></div></a>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    invoke-virtual {v5}, Lcom/adsmogo/model/obj/Aduu;->getText()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_10
    move-object v0, v1

    goto/16 :goto_4

    :cond_11
    const-string v0, "AdsMOGO SDK"

    const-string v2, "html is null"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_12
    const-string v0, "AdsMOGO SDK"

    const-string v2, "aduu is null"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_13
    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "aduu request Fail at StatusCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;ZLandroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method private a(ZLandroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->shoutdownTimer()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    invoke-interface {v0, p2}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdFail(Landroid/view/ViewGroup;)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->adsMogoCoreListener:Lcom/adsmogo/controller/listener/AdsMogoCoreListener;

    const/16 v1, 0x3c

    iget v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->g:I

    iget v3, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:I

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/adsmogo/controller/listener/AdsMogoCoreListener;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->adsMogoCoreReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/AdsMogoCore;->countClick(Lcom/adsmogo/model/obj/Ration;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/model/obj/Aduu;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    return-object v0
.end method

.method static synthetic d(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b()V

    return-void
.end method

.method static synthetic f(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->f:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    return-object v0
.end method

.method static synthetic g(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
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
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->k:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->k:Landroid/webkit/WebView;

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->k:Landroid/webkit/WebView;

    new-instance v2, Lcom/adsmogo/adapters/api/o;

    invoke-direct {v2, p0, v3}, Lcom/adsmogo/adapters/api/o;-><init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;B)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->k:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->k:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->k:Landroid/webkit/WebView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->j:Lcom/adsmogo/model/obj/Aduu;

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->k:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->k:Landroid/webkit/WebView;

    :cond_1
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

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->adsMogoConfigInterfaceReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getActivityReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getScheduler()Lcom/adsmogo/util/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->e:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v1}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v1

    iput-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->f:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->f:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->f:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "nonsupport type"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v5, v6}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->TIMEOUT_TIME:I

    add-int/lit16 v1, v1, 0x1f40

    invoke-virtual {p0, v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->startTimer(I)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d:Landroid/app/Activity;

    invoke-static {v1}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->i:D

    const/16 v1, 0x32

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->i:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    iput v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->h:I

    const/16 v1, 0x140

    iget-wide v2, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->i:D

    invoke-static {v1, v2, v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    iput v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->g:I

    new-instance v1, Lcom/adsmogo/adapters/api/n;

    invoke-direct {v1, p0, v5}, Lcom/adsmogo/adapters/api/n;-><init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;B)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v5, v6}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method public onPageComplete()V
    .locals 0

    invoke-direct {p0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b()V

    return-void
.end method

.method public requestTimeOut()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "aduu time out"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->k:Landroid/webkit/WebView;

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method
