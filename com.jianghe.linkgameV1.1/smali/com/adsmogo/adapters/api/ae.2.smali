.class final Lcom/adsmogo/adapters/api/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/LeadboltAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/LeadboltAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/ae;->a:Lcom/adsmogo/adapters/api/LeadboltAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 21

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/ae;->a:Lcom/adsmogo/adapters/api/LeadboltAdapter;

    invoke-virtual {v2}, Lcom/adsmogo/adapters/api/LeadboltAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    iget-object v2, v2, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "section_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "secret_key"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adsmogo/adapters/api/ae;->a:Lcom/adsmogo/adapters/api/LeadboltAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/adsmogo/adapters/api/LeadboltAdapter;->a(Lcom/adsmogo/adapters/api/LeadboltAdapter;ZLandroid/view/ViewGroup;)V

    const-string v1, "AdsMOGO SDK"

    const-string v2, "Leadbolt api key is null"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Leadbolt api get key err:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adsmogo/adapters/api/ae;->a:Lcom/adsmogo/adapters/api/LeadboltAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/adsmogo/adapters/api/LeadboltAdapter;->a(Lcom/adsmogo/adapters/api/LeadboltAdapter;ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/adsmogo/util/GetUserInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adsmogo/adapters/api/ae;->a:Lcom/adsmogo/adapters/api/LeadboltAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/LeadboltAdapter;->a(Lcom/adsmogo/adapters/api/LeadboltAdapter;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "320"

    const-string v9, "50"

    const-string v10, "xhtml"

    const-string v2, ""

    const-string v1, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/ae;->a:Lcom/adsmogo/adapters/api/LeadboltAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/LeadboltAdapter;->b(Lcom/adsmogo/adapters/api/LeadboltAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getWidthAndHeight(Landroid/content/Context;)[I

    move-result-object v3

    array-length v11, v3

    const/4 v12, 0x1

    if-le v11, v12, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    aget v3, v3, v11

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v11, "Text,Image"

    const-string v12, "2"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/ae;->a:Lcom/adsmogo/adapters/api/LeadboltAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/LeadboltAdapter;->b(Lcom/adsmogo/adapters/api/LeadboltAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getIDByMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/ae;->a:Lcom/adsmogo/adapters/api/LeadboltAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/LeadboltAdapter;->b(Lcom/adsmogo/adapters/api/LeadboltAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/ae;->a:Lcom/adsmogo/adapters/api/LeadboltAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/LeadboltAdapter;->b(Lcom/adsmogo/adapters/api/LeadboltAdapter;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v16, "2"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Wifi"

    :goto_1
    sget-object v16, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Lcom/adsmogo/adapters/api/LeadboltAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget-object v17, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/adsmogo/adapters/api/LeadboltAdapter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adsmogo/adapters/api/ae;->a:Lcom/adsmogo/adapters/api/LeadboltAdapter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/adsmogo/adapters/api/LeadboltAdapter;->c(Lcom/adsmogo/adapters/api/LeadboltAdapter;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x12

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    const/4 v4, 0x1

    aput-object v5, v19, v4

    const/4 v4, 0x2

    aput-object v6, v19, v4

    const/4 v4, 0x3

    aput-object v7, v19, v4

    const/4 v4, 0x4

    aput-object v8, v19, v4

    const/4 v4, 0x5

    aput-object v9, v19, v4

    const/4 v4, 0x6

    aput-object v10, v19, v4

    const/4 v4, 0x7

    aput-object v2, v19, v4

    const/16 v2, 0x8

    aput-object v1, v19, v2

    const/16 v1, 0x9

    aput-object v11, v19, v1

    const/16 v1, 0xa

    aput-object v12, v19, v1

    const/16 v1, 0xb

    aput-object v13, v19, v1

    const/16 v1, 0xc

    aput-object v14, v19, v1

    const/16 v1, 0xd

    aput-object v17, v19, v1

    const/16 v1, 0xe

    aput-object v3, v19, v1

    const/16 v1, 0xf

    aput-object v16, v19, v1

    const/16 v1, 0x10

    aput-object v17, v19, v1

    const/16 v1, 0x11

    aput-object v15, v19, v1

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Leadbolt api reurl:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;

    invoke-static {}, Lcom/adsmogo/adapters/api/LeadboltAdapter;->a()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getContentByGetType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Leadbolt api htmlStr:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adsmogo/adapters/api/ae;->a:Lcom/adsmogo/adapters/api/LeadboltAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/adsmogo/adapters/api/LeadboltAdapter;->a(Lcom/adsmogo/adapters/api/LeadboltAdapter;ZLandroid/view/ViewGroup;)V

    const-string v1, "AdsMOGO SDK"

    const-string v2, "Leadbolt api htmlStr is null"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const-string v3, "Carrier"

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/ae;->a:Lcom/adsmogo/adapters/api/LeadboltAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/LeadboltAdapter;->d(Lcom/adsmogo/adapters/api/LeadboltAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adsmogo/adapters/api/ae;->a:Lcom/adsmogo/adapters/api/LeadboltAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/adsmogo/adapters/api/LeadboltAdapter;->a(Lcom/adsmogo/adapters/api/LeadboltAdapter;ZLandroid/view/ViewGroup;)V

    const-string v1, "AdsMOGO SDK"

    const-string v2, "Leadbolt api handler is null"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    new-instance v3, Lcom/adsmogo/adapters/api/ac;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adapters/api/ae;->a:Lcom/adsmogo/adapters/api/LeadboltAdapter;

    invoke-direct {v3, v4, v1}, Lcom/adsmogo/adapters/api/ac;-><init>(Lcom/adsmogo/adapters/api/LeadboltAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
