.class final Lcom/adsmogo/adapters/api/R;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/R;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/R;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/R;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/R;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-virtual {v0, v4}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/adsmogo/adapters/api/R;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v1, v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "S2s httpRequesGetHtml is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/R;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-virtual {v0, v4}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Z)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/adsmogo/adapters/api/R;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/R;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-virtual {v2, v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Ljava/lang/String;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;Lcom/adsmogo/model/obj/S2sEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/R;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, " S2sEntity is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/R;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-virtual {v0, v4}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/R;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;Lcom/adsmogo/model/obj/S2sEntity;)V

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parseS2sXml err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/R;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getVideoType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/adsmogo/adapters/api/R;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iput v5, v0, Lcom/adsmogo/model/obj/Ration;->isVideo:I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v5, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/adsmogo/adapters/api/R;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    iget-object v1, v1, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/adsmogo/adapters/api/R;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iput v4, v0, Lcom/adsmogo/model/obj/Ration;->isVideo:I

    iget-object v0, p0, Lcom/adsmogo/adapters/api/R;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->c(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)V

    goto/16 :goto_0
.end method
