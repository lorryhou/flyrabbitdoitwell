.class public Lcom/adsmogo/adapters/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;Z)Lcom/adsmogo/adapters/AdsMogoAdapter;
    .locals 7

    const/4 v1, 0x0

    const/16 v6, 0x80

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_0

    iget v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    const/16 v2, 0x5dc

    if-ge v0, v2, :cond_0

    iget v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    add-int/lit16 v0, v0, -0x3e8

    iput v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    :cond_0
    iget v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(I)Lcom/adsmogo/model/a;

    move-result-object v2

    if-nez v2, :cond_4

    iget-boolean v0, p1, Lcom/adsmogo/model/obj/Ration;->isS2s:Z

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    if-eqz p2, :cond_2

    const-string v0, "com.adsmogo.adapters.api.AdsMogoS2sAdapter"

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setS2s(Z)V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    invoke-interface {p0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    if-ne v0, v6, :cond_28

    const-string v0, "com.adsmogo.adapters.api.AdsMogoS2sInterstitialAdapter"

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_10

    iget v0, v2, Lcom/adsmogo/model/a;->a:I

    if-nez v0, :cond_7

    :try_start_0
    iget-object v0, v2, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "AdsMOGO SDK"

    const-string v1, "getNetworkAdapter classes != null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v0, "AdsMOGO SDK"

    const-string v1, "getNetworkAdapter classes == null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-boolean v0, p1, Lcom/adsmogo/model/obj/Ration;->isS2s:Z

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-object v0, v2, Lcom/adsmogo/model/a;->j:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setS2s(Z)V

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget v0, v2, Lcom/adsmogo/model/a;->a:I

    if-ne v0, v5, :cond_b

    :try_start_1
    iget-object v0, v2, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto :goto_1

    :cond_8
    iget-object v0, v2, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    iget-boolean v0, p1, Lcom/adsmogo/model/obj/Ration;->isS2s:Z

    if-eqz v0, :cond_9

    iget v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-object v0, v2, Lcom/adsmogo/model/a;->j:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setS2s(Z)V

    goto/16 :goto_1

    :cond_9
    invoke-static {p0, p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v2, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    iget v0, v2, Lcom/adsmogo/model/a;->a:I

    if-ne v0, v4, :cond_d

    iget-boolean v0, p1, Lcom/adsmogo/model/obj/Ration;->isS2s:Z

    if-eqz v0, :cond_c

    iget v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-object v0, v2, Lcom/adsmogo/model/a;->j:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setS2s(Z)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, v2, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_d
    iget v0, v2, Lcom/adsmogo/model/a;->a:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_f

    move-object v0, p0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-virtual {v0}, Lcom/adsmogo/adview/AdsMogoLayout;->d()Lcom/adsmogo/controller/listener/AdsMogoListener;

    move-result-object v2

    if-nez v2, :cond_e

    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_e
    iget v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    :goto_2
    invoke-interface {v2, v0}, Lcom/adsmogo/controller/listener/AdsMogoListener;->getCustomEvemtPlatformAdapterClass(Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformEnum;)Ljava/lang/Class;

    move-result-object v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto/16 :goto_1

    :pswitch_0
    sget-object v0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformEnum;->AdsMogoCustomEventPlatform_1:Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformEnum;

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformEnum;->AdsMogoCustomEventPlatform_2:Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformEnum;

    goto :goto_2

    :pswitch_2
    sget-object v0, Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformEnum;->AdsMogoCustomEventPlatform_3:Lcom/adsmogo/adapters/AdsMogoCustomEventPlatformEnum;

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CustomEvemtPlatformClass newInstance,error= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_f
    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    invoke-interface {p0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_17

    iget v0, v2, Lcom/adsmogo/model/a;->c:I

    if-nez v0, :cond_12

    :try_start_3
    iget-object v0, v2, Lcom/adsmogo/model/a;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v0, "AdsMOGO SDK"

    const-string v1, "getNetworkAdapter classes != null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/adsmogo/model/a;->h:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v2, Lcom/adsmogo/model/a;->m:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setSupportLoad(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_11
    :try_start_4
    const-string v0, "AdsMOGO SDK"

    const-string v1, "getNetworkAdapter classes == null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v0

    goto/16 :goto_1

    :cond_12
    iget v0, v2, Lcom/adsmogo/model/a;->c:I

    if-ne v0, v5, :cond_15

    :try_start_5
    iget-object v0, v2, Lcom/adsmogo/model/a;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, v2, Lcom/adsmogo/model/a;->h:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v2, Lcom/adsmogo/model/a;->m:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setSupportLoad(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    invoke-static {p0, p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v2, Lcom/adsmogo/model/a;->i:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v2, Lcom/adsmogo/model/a;->m:I

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setSupportLoad(Z)V

    goto/16 :goto_1

    :cond_13
    :try_start_6
    iget-object v0, v2, Lcom/adsmogo/model/a;->i:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v2, Lcom/adsmogo/model/a;->m:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setSupportLoad(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    :cond_14
    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_15
    iget v0, v2, Lcom/adsmogo/model/a;->c:I

    if-ne v0, v4, :cond_16

    iget-object v0, v2, Lcom/adsmogo/model/a;->i:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v2, Lcom/adsmogo/model/a;->m:I

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setSupportLoad(Z)V

    goto/16 :goto_1

    :cond_16
    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_17
    invoke-interface {p0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    if-ne v0, v6, :cond_21

    iget v0, v2, Lcom/adsmogo/model/a;->b:I

    if-nez v0, :cond_1a

    :try_start_7
    iget-object v0, v2, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v0, "AdsMOGO SDK"

    const-string v1, "getNetworkAdapter classes != null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v2, Lcom/adsmogo/model/a;->l:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setSupportLoad(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v0

    iget-boolean v0, p1, Lcom/adsmogo/model/obj/Ration;->isS2s:Z

    if-eqz v0, :cond_19

    iget v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-object v0, v2, Lcom/adsmogo/model/a;->k:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setS2s(Z)V

    iget v1, v2, Lcom/adsmogo/model/a;->l:I

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setSupportLoad(Z)V

    goto/16 :goto_1

    :cond_18
    :try_start_8
    const-string v0, "AdsMOGO SDK"

    const-string v1, "getNetworkAdapter classes == null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-result-object v0

    goto/16 :goto_1

    :cond_19
    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_1a
    iget v0, v2, Lcom/adsmogo/model/a;->b:I

    if-ne v0, v5, :cond_1e

    :try_start_9
    iget-object v0, v2, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, v2, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v2, Lcom/adsmogo/model/a;->l:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setSupportLoad(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v0

    iget-boolean v0, p1, Lcom/adsmogo/model/obj/Ration;->isS2s:Z

    if-eqz v0, :cond_1c

    iget v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-object v0, v2, Lcom/adsmogo/model/a;->k:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setS2s(Z)V

    iget v1, v2, Lcom/adsmogo/model/a;->l:I

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setSupportLoad(Z)V

    goto/16 :goto_1

    :cond_1b
    :try_start_a
    iget-object v0, v2, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v2, Lcom/adsmogo/model/a;->l:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setSupportLoad(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_1

    :cond_1c
    invoke-static {p0, p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v2, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v2, Lcom/adsmogo/model/a;->l:I

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setSupportLoad(Z)V

    goto/16 :goto_1

    :cond_1d
    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_1e
    iget v0, v2, Lcom/adsmogo/model/a;->b:I

    if-ne v0, v4, :cond_20

    iget-boolean v0, p1, Lcom/adsmogo/model/obj/Ration;->isS2s:Z

    if-eqz v0, :cond_1f

    iget v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-object v0, v2, Lcom/adsmogo/model/a;->k:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setS2s(Z)V

    iget v1, v2, Lcom/adsmogo/model/a;->l:I

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setSupportLoad(Z)V

    goto/16 :goto_1

    :cond_1f
    iget-object v0, v2, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v2, Lcom/adsmogo/model/a;->l:I

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setSupportLoad(Z)V

    goto/16 :goto_1

    :cond_20
    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_21
    iget v0, v2, Lcom/adsmogo/model/a;->b:I

    if-nez v0, :cond_23

    :try_start_b
    iget-object v0, v2, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v0, "AdsMOGO SDK"

    const-string v1, "getNetworkAdapter classes != null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_22
    const-string v0, "AdsMOGO SDK"

    const-string v1, "getNetworkAdapter classes == null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    move-result-object v0

    goto/16 :goto_1

    :catch_7
    move-exception v0

    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_23
    iget v0, v2, Lcom/adsmogo/model/a;->b:I

    if-ne v0, v5, :cond_26

    :try_start_c
    iget-object v0, v2, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, v2, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_24
    iget-object v0, v2, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    move-result-object v0

    goto/16 :goto_1

    :catch_8
    move-exception v0

    invoke-static {p0, p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v2, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_25
    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_26
    iget v0, v2, Lcom/adsmogo/model/a;->b:I

    if-ne v0, v4, :cond_27

    iget-object v0, v2, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_27
    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v0

    goto/16 :goto_1

    :cond_28
    move-object v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;
    .locals 3

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported ration type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Lcom/adsmogo/adapters/AdsMogoAdapter;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/adsmogo/model/obj/Ration;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0, p3}, Lcom/adsmogo/adapters/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    invoke-direct {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, "AdsMOGO SDK"

    const-string v2, "parseConfigurationString json or countryCode is null"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parseJson is :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " /n countryCode is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v3, "app"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/adsmogo/adapters/b;->a(Lorg/json/JSONObject;)Lcom/adsmogo/model/obj/Extra;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    :goto_1
    :try_start_2
    const-string v4, "rts"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/adsmogo/adapters/b;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v2

    :goto_2
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    const-string v3, "extra"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/adsmogo/adapters/b;->a(Lorg/json/JSONObject;)Lcom/adsmogo/model/obj/Extra;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v3

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_4
    const-string v4, "rations"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/adsmogo/adapters/b;->a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v3, v1

    :goto_3
    const-string v4, "AdsMOGO SDK"

    const-string v5, "Unable to parse response from JSON. This may or may not be fatal."

    invoke-static {v4, v5, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v2, v1

    goto :goto_2

    :catch_3
    move-exception v2

    move-object v3, v1

    :goto_4
    const-string v4, "AdsMOGO SDK"

    const-string v5, "Unable to parse response from JSON. This may or may not be fatal."

    invoke-static {v4, v5, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object v2, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->a(Lcom/adsmogo/model/obj/Extra;)V

    invoke-virtual {v0, v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v0, p1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_4
    move-exception v2

    goto :goto_4

    :catch_5
    move-exception v2

    goto :goto_3
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/adsmogo/model/obj/Extra;
    .locals 5

    new-instance v1, Lcom/adsmogo/model/obj/Extra;

    invoke-direct {v1}, Lcom/adsmogo/model/obj/Extra;-><init>()V

    :try_start_0
    const-string v0, "c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->cycleTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v0, "l"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->locationOn:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    const-string v0, "t"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->transition:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    const-string v0, "clk"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->improveClick:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    const-string v0, "clo"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->closeAdOn:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    :goto_4
    :try_start_5
    const-string v0, "adf"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->adFirst:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    :goto_5
    :try_start_6
    const-string v0, "ts"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adsmogo/model/obj/Extra;->timestamp:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    :goto_6
    :try_start_7
    const-string v0, "ver"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->version:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e

    :goto_7
    :try_start_8
    const-string v0, "sdk"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->SDKversion:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_10

    :goto_8
    :try_start_9
    const-string v0, "pk"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adsmogo/model/obj/Extra;->packageName:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_12

    :goto_9
    :try_start_a
    const-string v0, "bc"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adsmogo/model/obj/Extra;->bgColor:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_14

    :goto_a
    :try_start_b
    const-string v0, "tc"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adsmogo/model/obj/Extra;->textColor:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_16

    :goto_b
    return-object v1

    :catch_0
    move-exception v0

    :try_start_c
    const-string v0, "cycle_time"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->cycleTime:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v0, 0x1e

    :try_start_d
    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->cycleTime:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v2, "AdsMOGO SDK"

    const-string v3, "Exception in parsing config.extra JSON. This may or may not be fatal."

    invoke-static {v2, v3, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_3
    move-exception v0

    :try_start_e
    const-string v0, "location_on"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->locationOn:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    const/4 v0, 0x1

    :try_start_f
    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->locationOn:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_1

    :catch_5
    move-exception v0

    :try_start_10
    const-string v0, "transition"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->transition:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v0

    const/4 v0, 0x6

    :try_start_11
    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->transition:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    goto/16 :goto_2

    :catch_7
    move-exception v0

    :try_start_12
    const-string v0, "improve_click"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->improveClick:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    goto/16 :goto_3

    :catch_8
    move-exception v0

    const/4 v0, 0x1

    :try_start_13
    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->improveClick:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    goto/16 :goto_3

    :catch_9
    move-exception v0

    :try_start_14
    const-string v0, "closead_on"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->closeAdOn:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    goto/16 :goto_4

    :catch_a
    move-exception v0

    const/4 v0, 0x0

    :try_start_15
    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->closeAdOn:I

    goto/16 :goto_4

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->adFirst:I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2

    goto/16 :goto_5

    :catch_c
    move-exception v0

    :try_start_16
    const-string v0, "timestamp"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adsmogo/model/obj/Extra;->timestamp:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d

    goto/16 :goto_6

    :catch_d
    move-exception v0

    :try_start_17
    const-string v0, ""

    iput-object v0, v1, Lcom/adsmogo/model/obj/Extra;->timestamp:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2

    goto/16 :goto_6

    :cond_0
    :try_start_18
    const-string v0, "ver"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->version:I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_e

    goto/16 :goto_7

    :catch_e
    move-exception v0

    :try_start_19
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->version:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_f

    goto/16 :goto_7

    :catch_f
    move-exception v0

    const/4 v0, -0x1

    :try_start_1a
    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->version:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2

    goto/16 :goto_7

    :cond_1
    :try_start_1b
    const-string v0, "version"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->version:I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_f

    goto/16 :goto_7

    :cond_2
    :try_start_1c
    const-string v0, "sdk"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->SDKversion:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10

    goto/16 :goto_8

    :catch_10
    move-exception v0

    :try_start_1d
    const-string v0, "sdkver"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->SDKversion:I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_11

    goto/16 :goto_8

    :catch_11
    move-exception v0

    const/4 v0, 0x0

    :try_start_1e
    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->SDKversion:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_2

    goto/16 :goto_8

    :cond_3
    :try_start_1f
    const-string v0, "sdkver"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/adsmogo/model/obj/Extra;->SDKversion:I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_11

    goto/16 :goto_8

    :catch_12
    move-exception v0

    :try_start_20
    const-string v0, "package"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adsmogo/model/obj/Extra;->packageName:Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_13

    goto/16 :goto_9

    :catch_13
    move-exception v0

    :try_start_21
    const-string v0, ""

    iput-object v0, v1, Lcom/adsmogo/model/obj/Extra;->packageName:Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_2

    goto/16 :goto_9

    :catch_14
    move-exception v0

    :try_start_22
    const-string v0, "background_color_rgb"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "red"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "green"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "blue"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v3, v2}, Lcom/adsmogo/adapters/b;->a(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adsmogo/model/obj/Extra;->bgColor:Ljava/lang/String;

    const-string v0, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "background_color is :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/adsmogo/model/obj/Extra;->bgColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_15

    goto/16 :goto_a

    :catch_15
    move-exception v0

    :try_start_23
    const-string v0, "000000"

    iput-object v0, v1, Lcom/adsmogo/model/obj/Extra;->bgColor:Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_2

    goto/16 :goto_a

    :catch_16
    move-exception v0

    :try_start_24
    const-string v0, "text_color_rgb"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "red"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "green"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "blue"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v3, v2}, Lcom/adsmogo/adapters/b;->a(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adsmogo/model/obj/Extra;->textColor:Ljava/lang/String;

    const-string v0, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "text_color is :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/adsmogo/model/obj/Extra;->textColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_17

    goto/16 :goto_b

    :catch_17
    move-exception v0

    :try_start_25
    const-string v0, "FFFFFF"

    iput-object v0, v1, Lcom/adsmogo/model/obj/Extra;->textColor:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_2

    goto/16 :goto_b
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    and-int/lit16 v1, p0, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "00"

    goto :goto_1
.end method

.method private static a(III)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/adsmogo/adapters/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/adsmogo/adapters/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/adsmogo/adapters/b;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-lt v3, v0, :cond_0

    :goto_1
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v4

    :cond_0
    :try_start_1
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v6, Lcom/adsmogo/model/obj/Ration;

    invoke-direct {v6}, Lcom/adsmogo/model/obj/Ration;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "id"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    const-string v0, "ty"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    :goto_3
    const/16 v7, 0x3e8

    if-lt v0, v7, :cond_1

    const/16 v7, 0x5dc

    if-ge v0, v7, :cond_1

    const/4 v7, 0x1

    :try_start_4
    iput-boolean v7, v6, Lcom/adsmogo/model/obj/Ration;->isS2s:Z

    :cond_1
    iput v0, v6, Lcom/adsmogo/model/obj/Ration;->type:I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    const-string v0, "n"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    :try_start_6
    const-string v0, "w"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v7, v0

    iput-wide v7, v6, Lcom/adsmogo/model/obj/Ration;->weight:D
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_5
    :try_start_7
    const-string v0, "p"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/adsmogo/model/obj/Ration;->priority:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_6
    :try_start_8
    const-string v0, "t"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    move-result v0

    :goto_7
    if-nez v0, :cond_3

    move v0, v1

    :goto_8
    :try_start_9
    iput-boolean v0, v6, Lcom/adsmogo/model/obj/Ration;->testmodel:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    const-string v0, "k"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    const-string v0, "to"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, v6, Lcom/adsmogo/model/obj/Ration;->timeOut:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "nid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "JSONException in parsing config.rations JSON. This may or may not be fatal."

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_d
    const-string v0, "type"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v0, "nname"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    goto :goto_4

    :catch_4
    move-exception v0

    const-string v0, "weight"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v7, v0

    iput-wide v7, v6, Lcom/adsmogo/model/obj/Ration;->weight:D

    goto :goto_5

    :catch_5
    move-exception v0

    const-string v0, "priority"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v6, Lcom/adsmogo/model/obj/Ration;->priority:I
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_6

    :catch_6
    move-exception v0

    :try_start_e
    const-string v0, "testmodel"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_1

    move-result v0

    goto :goto_7

    :cond_3
    move v0, v2

    goto :goto_8

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    :try_start_f
    iput-boolean v0, v6, Lcom/adsmogo/model/obj/Ration;->testmodel:Z

    goto :goto_9

    :catch_8
    move-exception v0

    const-string v0, "key"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_a

    :catch_9
    move-exception v0

    goto :goto_b
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static a(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;)Z
    .locals 4

    const/16 v3, 0x80

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :sswitch_0
    iget-object v2, p1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v2

    if-ne v2, v3, :cond_0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " api not support full screen AD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    invoke-interface {p0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v2

    if-ne v2, v3, :cond_0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " api not support full screen AD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_1
        0x15 -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a(ID)Landroid/view/animation/Animation;
    .locals 7

    const/16 v6, 0x32

    const/high16 v5, 0x3f800000

    const v1, 0x3dcccccd

    const-wide/16 v3, 0x320

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_0
    iget-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/16 v1, 0x140

    invoke-static {v1, p2, p3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/16 v1, 0x140

    invoke-static {v1, p2, p3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-static {v6, p2, p3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-static {v6, p2, p3}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/adsmogo/adapters/b;->a:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
