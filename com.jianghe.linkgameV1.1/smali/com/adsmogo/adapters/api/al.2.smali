.class final Lcom/adsmogo/adapters/api/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/MojivaAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/MojivaAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-virtual {v1}, Lcom/adsmogo/adapters/api/MojivaAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    invoke-static {}, Lcom/adsmogo/util/GetUserInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/MojivaAdapter;->a(Lcom/adsmogo/adapters/api/MojivaAdapter;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-static {v4}, Lcom/adsmogo/adapters/api/MojivaAdapter;->b(Lcom/adsmogo/adapters/api/MojivaAdapter;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/adsmogo/util/GetUserInfo;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adsmogo/encryption/MD5;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-static {v5}, Lcom/adsmogo/adapters/api/MojivaAdapter;->b(Lcom/adsmogo/adapters/api/MojivaAdapter;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/adsmogo/util/GetUserInfo;->getIDByMAC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-static {v6}, Lcom/adsmogo/adapters/api/MojivaAdapter;->b(Lcom/adsmogo/adapters/api/MojivaAdapter;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/adsmogo/util/GetUserInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/adsmogo/encryption/SHA1;->SHA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-static {v7}, Lcom/adsmogo/adapters/api/MojivaAdapter;->b(Lcom/adsmogo/adapters/api/MojivaAdapter;)Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/adsmogo/util/GetUserInfo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    const-string v9, "3"

    const-string v10, "3"

    const-string v11, "320"

    const-string v12, "50"

    const-string v13, "1"

    const-string v14, "15000"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-static {v15}, Lcom/adsmogo/adapters/api/MojivaAdapter;->c(Lcom/adsmogo/adapters/api/MojivaAdapter;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xe

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v1, v16, v17

    const/4 v1, 0x1

    aput-object v2, v16, v1

    const/4 v1, 0x2

    aput-object v3, v16, v1

    const/4 v1, 0x3

    aput-object v4, v16, v1

    const/4 v1, 0x4

    aput-object v5, v16, v1

    const/4 v1, 0x5

    aput-object v6, v16, v1

    const/4 v1, 0x6

    aput-object v7, v16, v1

    const/4 v1, 0x7

    aput-object v8, v16, v1

    const/16 v1, 0x8

    aput-object v9, v16, v1

    const/16 v1, 0x9

    aput-object v10, v16, v1

    const/16 v1, 0xa

    aput-object v11, v16, v1

    const/16 v1, 0xb

    aput-object v12, v16, v1

    const/16 v1, 0xc

    aput-object v13, v16, v1

    const/16 v1, 0xd

    aput-object v14, v16, v1

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-virtual {v3}, Lcom/adsmogo/adapters/api/MojivaAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v3

    iget-boolean v3, v3, Lcom/adsmogo/model/obj/Ration;->testmodel:Z

    if-eqz v3, :cond_0

    const-string v3, "&test=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/MojivaAdapter;->d(Lcom/adsmogo/adapters/api/MojivaAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/MojivaAdapter;->d(Lcom/adsmogo/adapters/api/MojivaAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getLatitudeAndlongitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&lat="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&long="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/MojivaAdapter;->d(Lcom/adsmogo/adapters/api/MojivaAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "&country=us"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/MojivaAdapter;->d(Lcom/adsmogo/adapters/api/MojivaAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&city="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mojiva api reurl:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;

    invoke-static {}, Lcom/adsmogo/adapters/api/MojivaAdapter;->a()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getContentByGetType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mojiva api htmlStr:"

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

    iget-object v1, v0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/adsmogo/adapters/api/MojivaAdapter;->a(Lcom/adsmogo/adapters/api/MojivaAdapter;ZLandroid/view/ViewGroup;)V

    const-string v1, "AdsMOGO SDK"

    const-string v2, "mojiva api htmlStr is null"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_4
    const-string v2, "<!-- invalid params -->"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/adsmogo/adapters/api/MojivaAdapter;->a(Lcom/adsmogo/adapters/api/MojivaAdapter;ZLandroid/view/ViewGroup;)V

    const-string v1, "AdsMOGO SDK"

    const-string v2, "mojiva api invalid params"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/MojivaAdapter;->e(Lcom/adsmogo/adapters/api/MojivaAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/adsmogo/adapters/api/MojivaAdapter;->a(Lcom/adsmogo/adapters/api/MojivaAdapter;ZLandroid/view/ViewGroup;)V

    const-string v1, "AdsMOGO SDK"

    const-string v2, "mojiva api handler is null"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    new-instance v3, Lcom/adsmogo/adapters/api/ai;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adsmogo/adapters/api/al;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-direct {v3, v4, v1}, Lcom/adsmogo/adapters/api/ai;-><init>(Lcom/adsmogo/adapters/api/MojivaAdapter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
