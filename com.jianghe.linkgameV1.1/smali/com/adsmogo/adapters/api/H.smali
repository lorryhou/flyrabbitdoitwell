.class final Lcom/adsmogo/adapters/api/H;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/H;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/H;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/H;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/H;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-virtual {v0, v5, v4}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/adsmogo/adapters/api/H;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v1, v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "S2s httpRequesGetHtml is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/H;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-virtual {v0, v5, v4}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/adsmogo/adapters/api/H;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/H;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-virtual {v2, v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(Ljava/lang/String;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Lcom/adsmogo/model/obj/S2sEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/H;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "AdsMOGO SDK"

    const-string v1, " S2sEntity is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/H;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-virtual {v0, v5, v4}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/H;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v1, v4}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Lcom/adsmogo/model/obj/S2sEntity;)V

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

    :cond_3
    iget-object v0, p0, Lcom/adsmogo/adapters/api/H;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getNetworks()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/H;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getNetworks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/H;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->c(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/H;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->c(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/adsmogo/adapters/api/L;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/H;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-direct {v1, v2}, Lcom/adsmogo/adapters/api/L;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/adsmogo/adapters/api/H;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->d(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/adsmogo/adapters/api/H;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->d(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V

    goto/16 :goto_0
.end method
