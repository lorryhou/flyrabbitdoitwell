.class final Lcom/adsmogo/controller/adsmogoconfigsource/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adsmogo/controller/adsmogoconfigsource/b;


# direct methods
.method constructor <init>(Lcom/adsmogo/controller/adsmogoconfigsource/b;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v0, v0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    if-nez v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoConfigSource refreshConfig adsMogoConfigInterface is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v0, v0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "configCenter is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->isExpressMode()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AdsMOGO SDK"

    const-string v2, "ad is expressModel"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    new-instance v2, Lcom/adsmogo/controller/adsmogoconfigsource/a/a;

    iget-object v3, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v3, v3, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-direct {v2, v3}, Lcom/adsmogo/controller/adsmogoconfigsource/a/a;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;)V

    iput-object v2, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->f:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    new-instance v2, Lcom/adsmogo/controller/adsmogoconfigsource/a/b;

    iget-object v3, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v3, v3, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-direct {v2, v3}, Lcom/adsmogo/controller/adsmogoconfigsource/a/b;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;)V

    iput-object v2, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->g:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    new-instance v2, Lcom/adsmogo/controller/adsmogoconfigsource/a/d;

    iget-object v3, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v3, v3, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-direct {v2, v3}, Lcom/adsmogo/controller/adsmogoconfigsource/a/d;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;)V

    iput-object v2, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->h:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    new-instance v2, Lcom/adsmogo/controller/adsmogoconfigsource/f;

    iget-object v3, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v3, v3, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-direct {v2, v3}, Lcom/adsmogo/controller/adsmogoconfigsource/f;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;)V

    iput-object v2, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->i:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->f:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v2, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v2, v2, Lcom/adsmogo/controller/adsmogoconfigsource/b;->g:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iput-object v2, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->g:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v2, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v2, v2, Lcom/adsmogo/controller/adsmogoconfigsource/b;->h:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iput-object v2, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->h:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v2, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v2, v2, Lcom/adsmogo/controller/adsmogoconfigsource/b;->i:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iput-object v2, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->f:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/b;->a()V

    :goto_1
    const-string v1, "AdsMOGO SDK"

    const-string v2, "get config ok"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "configList size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v3}, Lcom/adsmogo/model/AdsMogoConfigDataList;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v0}, Lcom/adsmogo/model/AdsMogoConfigDataList;->a()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    invoke-static {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/b;->a(Lcom/adsmogo/controller/adsmogoconfigsource/b;)V

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v0, v0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->isReadyLoadAd()V

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v0, v0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/adsmogo/controller/adsmogoconfigsource/e;

    invoke-direct {v1, p0}, Lcom/adsmogo/controller/adsmogoconfigsource/e;-><init>(Lcom/adsmogo/controller/adsmogoconfigsource/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    const-string v1, "AdsMOGO SDK"

    const-string v2, "ad not is expressModel"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    new-instance v2, Lcom/adsmogo/controller/adsmogoconfigsource/b/a;

    iget-object v3, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v3, v3, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-direct {v2, v3}, Lcom/adsmogo/controller/adsmogoconfigsource/b/a;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;)V

    iput-object v2, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->c:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    new-instance v2, Lcom/adsmogo/controller/adsmogoconfigsource/b/b;

    iget-object v3, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v3, v3, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-direct {v2, v3}, Lcom/adsmogo/controller/adsmogoconfigsource/b/b;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;)V

    iput-object v2, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->d:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    new-instance v2, Lcom/adsmogo/controller/adsmogoconfigsource/b/c;

    iget-object v3, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v3, v3, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-direct {v2, v3}, Lcom/adsmogo/controller/adsmogoconfigsource/b/c;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;)V

    iput-object v2, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->e:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    new-instance v2, Lcom/adsmogo/controller/adsmogoconfigsource/f;

    iget-object v3, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v3, v3, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-direct {v2, v3}, Lcom/adsmogo/controller/adsmogoconfigsource/f;-><init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;)V

    iput-object v2, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->i:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->c:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v2, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v2, v2, Lcom/adsmogo/controller/adsmogoconfigsource/b;->d:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iput-object v2, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->d:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v2, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v2, v2, Lcom/adsmogo/controller/adsmogoconfigsource/b;->e:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iput-object v2, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->e:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v2, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v2, v2, Lcom/adsmogo/controller/adsmogoconfigsource/b;->i:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iput-object v2, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/b;->c:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/b;->a()V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/d;->a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

    invoke-static {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b(Lcom/adsmogo/controller/adsmogoconfigsource/b;)V

    goto/16 :goto_0
.end method
