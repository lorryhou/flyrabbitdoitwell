.class final Lcom/adsmogo/adapters/api/N;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/N;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/N;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getAdid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/N;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getType()I

    move-result v0

    const/16 v1, 0x403

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/N;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getType()I

    move-result v0

    const/16 v1, 0x7eb

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/N;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/N;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/S2sEntity;->getAdid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/N;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sInterstitialAdapter;->a()V

    return-void
.end method
