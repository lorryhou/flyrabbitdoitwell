.class final Lcom/adsmogo/adapters/api/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-virtual {v1}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "publisherId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "requestURL"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v0, v12, v13}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;ZLandroid/view/ViewGroup;)V

    const-string v0, "AdsMOGO SDK"

    const-string v1, "mobFox api key is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mobFox api get key err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v0, v12, v13}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/adsmogo/util/GetUserInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/adsmogo/model/obj/Ration;->testmodel:Z

    if-eqz v0, :cond_2

    const-string v0, "test"

    :goto_1
    const-string v5, "0"

    iget-object v1, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->b(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/util/GetUserInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "2.0"

    const-string v1, ""

    iget-object v8, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v8}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->c(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v8}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->c(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getLatitudeAndlongitude()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v8}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->c(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getLatitudeAndlongitude()Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    if-le v9, v14, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "&longitude="

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v8, v14

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, "latitude="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v8, v8, v12

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v8, "320"

    const-string v9, "50"

    iget-object v10, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v10}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->d(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xa

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v12

    aput-object v3, v11, v14

    const/4 v2, 0x2

    aput-object v4, v11, v2

    const/4 v2, 0x3

    aput-object v0, v11, v2

    const/4 v0, 0x4

    aput-object v5, v11, v0

    const/4 v0, 0x5

    aput-object v6, v11, v0

    const/4 v0, 0x6

    aput-object v7, v11, v0

    const/4 v0, 0x7

    aput-object v1, v11, v0

    const/16 v0, 0x8

    aput-object v8, v11, v0

    const/16 v0, 0x9

    aput-object v9, v11, v0

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mobfox api reurl:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;

    invoke-static {}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getContentByGetType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mobfox api xmlStr:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a(Ljava/lang/String;)Lcom/adsmogo/model/obj/MobFox;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;Lcom/adsmogo/model/obj/MobFox;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->e(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Lcom/adsmogo/model/obj/MobFox;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "mobfox is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v0, v12, v13}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "live"

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->e(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Lcom/adsmogo/model/obj/MobFox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/MobFox;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "noAd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "AdsMOGO SDK"

    const-string v1, "mobfox noAd"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v0, v12, v13}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->e(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Lcom/adsmogo/model/obj/MobFox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/MobFox;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textAd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->e(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Lcom/adsmogo/model/obj/MobFox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/MobFox;->getHtmlString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "AdsMOGO SDK"

    const-string v1, "mobfox HtmlString is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v0, v12, v13}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->f(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v0, v12, v13}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;ZLandroid/view/ViewGroup;)V

    const-string v0, "AdsMOGO SDK"

    const-string v1, "mobfox api handler is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    new-instance v1, Lcom/adsmogo/adapters/api/af;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->e(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Lcom/adsmogo/model/obj/MobFox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adsmogo/model/obj/MobFox;->getHtmlString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/adsmogo/adapters/api/af;-><init>(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_7
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mobfox nonsupport adtype:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->e(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;)Lcom/adsmogo/model/obj/MobFox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/MobFox;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ah;->a:Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;

    invoke-static {v0, v12, v13}, Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;->a(Lcom/adsmogo/adapters/api/MobFoxBannerApiAdapter;ZLandroid/view/ViewGroup;)V

    goto/16 :goto_0
.end method
