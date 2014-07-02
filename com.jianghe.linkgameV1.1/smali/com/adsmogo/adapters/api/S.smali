.class final Lcom/adsmogo/adapters/api/S;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/S;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/S;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/adapters/api/S;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->e(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s succeed"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/S;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/S;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getImp_url()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adsmogo/adapters/api/Q;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/S;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/S;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/S2sEntity;->getImp_url()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/adsmogo/adapters/api/Q;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/Q;->start()V

    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "adsmogo://www.adsmogo.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/S;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->e(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "adsmogo://www.adsmogo.com?action=load"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/S;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->f(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/S;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->f(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/S;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->e(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s succeed"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/S;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/S;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getImp_url()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adsmogo/adapters/api/Q;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/S;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/S;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/S2sEntity;->getImp_url()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/adsmogo/adapters/api/Q;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/Q;->start()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "adsmogo://www.adsmogo.com?action=error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s img err"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/S;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nonsupport url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s shouldOverrideUrlLoading err:adsmogoJs<=0"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/adsmogo/adapters/api/S;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v0, p2}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;Ljava/lang/String;)V

    goto :goto_0
.end method
