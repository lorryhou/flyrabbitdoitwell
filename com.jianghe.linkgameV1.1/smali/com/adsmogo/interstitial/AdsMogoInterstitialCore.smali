.class public Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsmogo/controller/listener/AdsMogoCoreListener;
.implements Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;
.implements Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;


# instance fields
.field protected a:Z

.field private b:I

.field private c:I

.field private d:Z

.field private e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

.field private f:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

.field private g:Lcom/adsmogo/interstitial/AdsMogoVideoListener;

.field private h:Lcom/adsmogo/controller/l;

.field private i:Ljava/util/LinkedHashMap;

.field private j:Ljava/util/Timer;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I


# direct methods
.method public constructor <init>(Lcom/adsmogo/interstitial/AdsMogoInterstitial;Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->b:I

    iput v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->c:I

    iput-boolean v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->d:Z

    iput-boolean v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a:Z

    iput v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->m:I

    iput-object p1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    iput-object p2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    new-instance v0, Lcom/adsmogo/controller/l;

    invoke-virtual {p1}, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adsmogo/controller/l;-><init>(Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;)V

    iput-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->h:Lcom/adsmogo/controller/l;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/adsmogo/interstitial/AdsMogoInterstitial;Lcom/adsmogo/interstitial/AdsMogoVideoListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->b:I

    iput v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->c:I

    iput-boolean v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->d:Z

    iput-boolean v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a:Z

    iput v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->m:I

    iput-object p1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    iput-object p2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->g:Lcom/adsmogo/interstitial/AdsMogoVideoListener;

    new-instance v0, Lcom/adsmogo/controller/l;

    invoke-virtual {p1}, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adsmogo/controller/l;-><init>(Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;)V

    iput-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->h:Lcom/adsmogo/controller/l;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private a(I)V
    .locals 8

    const/4 v3, 0x0

    const/16 v7, 0x7d0

    const/16 v4, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->h:Lcom/adsmogo/controller/l;

    if-nez v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "full core rationManager is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->h:Lcom/adsmogo/controller/l;

    invoke-virtual {v0}, Lcom/adsmogo/controller/l;->b()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Sum of ration weights is 0 - no ads to be shown"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->b:I

    if-ne p1, v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a:Z

    :try_start_0
    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->h:Lcom/adsmogo/controller/l;

    invoke-virtual {v1, v0}, Lcom/adsmogo/controller/l;->a(Z)Lcom/adsmogo/model/obj/Ration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    const-string v1, "AdsMOGO SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "private void core ration -->"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->f()V

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    iget-object v1, v1, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adsmogo/interstitial/e;

    invoke-direct {v2, p0, v0}, Lcom/adsmogo/interstitial/e;-><init>(Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;Lcom/adsmogo/model/obj/Ration;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "full core getNextRation err:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->l:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Ration;->clone()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    const/16 v1, 0x9

    iget v5, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    if-eq v1, v5, :cond_5

    const/16 v1, 0x1b

    iget v5, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    if-eq v1, v5, :cond_5

    const/16 v1, 0x2d

    iget v5, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    if-eq v1, v5, :cond_5

    const/16 v1, 0x30

    iget v5, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    if-eq v1, v5, :cond_5

    const/16 v1, 0x36

    iget v5, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    if-ne v1, v5, :cond_6

    :cond_5
    const-string v1, "000000000000000000000000000000"

    iput-object v1, v0, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    :cond_6
    iget v1, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    if-le v1, v7, :cond_7

    iput v7, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    :cond_7
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a(Lcom/adsmogo/model/obj/Ration;I)V

    :cond_8
    invoke-direct {p0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->f()V

    iput-object v3, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->l:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a:Z

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;->onInterstitialFailed()I

    move-result v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onInterstitialFailed return rotateTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    if-ltz v0, :cond_9

    const/16 v1, 0x258

    if-le v0, v1, :cond_a

    :cond_9
    move v0, v4

    :cond_a
    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rotateTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    iget-object v1, v1, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    invoke-virtual {v1}, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->isRotate()Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->b:I

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a(II)V

    goto/16 :goto_0

    :cond_b
    move v0, v4

    goto :goto_3
.end method

.method private a(II)V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->j:Ljava/util/Timer;

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->j:Ljava/util/Timer;

    new-instance v1, Lcom/adsmogo/interstitial/h;

    invoke-direct {v1, p0, p2}, Lcom/adsmogo/interstitial/h;-><init>(Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;I)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;Lcom/adsmogo/model/obj/Ration;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    invoke-virtual {p1}, Lcom/adsmogo/model/obj/Ration;->clone()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;Z)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/adsmogo/adapters/AdsMogoAdapter;->isSupportLoad()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/adsmogo/model/obj/Ration;->clone()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    invoke-virtual {v1}, Lcom/adsmogo/adapters/AdsMogoAdapter;->isS2s()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, v2, Lcom/adsmogo/model/obj/Ration;->isS2s:Z

    if-eqz v0, :cond_1

    iget v0, v2, Lcom/adsmogo/model/obj/Ration;->type:I

    const/16 v3, 0x3e8

    if-lt v0, v3, :cond_0

    const/16 v3, 0x5dc

    if-ge v0, v3, :cond_0

    add-int/lit16 v0, v0, -0x3e8

    :cond_0
    iput v0, v2, Lcom/adsmogo/model/obj/Ration;->type:I

    :cond_1
    invoke-virtual {p1}, Lcom/adsmogo/model/obj/Ration;->clone()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a(Lcom/adsmogo/model/obj/Ration;I)V

    :cond_2
    const-string v0, "request ad info: \nkey: %s\nnid: %s\ntype: %s\nname:%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget v4, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AdsMOGO SDK"

    invoke-static {v2, v0}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->finish()V

    :cond_3
    const-string v0, ""

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u8865\u4f59"

    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->onStartReady(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setAdsMogoCoreListener(Lcom/adsmogo/controller/listener/AdsMogoCoreListener;)V

    invoke-virtual {v1, p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setAdsMogoCorePlayEndListener(Lcom/adsmogo/controller/listener/AdsMogoCoreListener;)V

    invoke-virtual {v1, p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setAdsMogoReadyCoreListener(Lcom/adsmogo/interstitial/AdsMogoReadyCoreListener;)V

    invoke-virtual {v1, p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setAdsMogoInterstitialCloseedListener(Lcom/adsmogo/interstitial/AdsMogoInterstitialCloseedListener;)V

    invoke-virtual {v1, p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setAdsMogoInterstitialCore(Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;)V

    invoke-virtual {v1}, Lcom/adsmogo/adapters/AdsMogoAdapter;->handle()V

    :goto_2
    return-void

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v0, p1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iput-boolean v4, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a:Z

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Request Adapter is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v4, v4}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a(II)V

    goto :goto_2
.end method

.method private a(Lcom/adsmogo/model/obj/Ration;I)V
    .locals 4

    new-instance v1, Lcom/adsmogo/interstitial/i;

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    invoke-virtual {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->getActivityReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/adsmogo/interstitial/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/adsmogo/interstitial/i;->a(Lcom/adsmogo/model/obj/Ration;)V

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    invoke-virtual {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsmogo/interstitial/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    invoke-virtual {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v0

    iget-object v0, v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v0}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adsmogo/interstitial/i;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    iget-object v2, v2, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_2

    const/4 v0, 0x6

    :cond_0
    :goto_0
    invoke-virtual {v1, v0}, Lcom/adsmogo/interstitial/i;->a(I)V

    invoke-virtual {v1, p2}, Lcom/adsmogo/interstitial/i;->b(I)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    invoke-virtual {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->getActivityReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/adsmogo/interstitial/g;

    invoke-direct {v3, p0, v1, v0}, Lcom/adsmogo/interstitial/g;-><init>(Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;Lcom/adsmogo/interstitial/i;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    iget-object v2, v2, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/16 v0, 0xb

    goto :goto_0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    invoke-virtual {v1}, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/adsmogo/interstitial/d;

    invoke-direct {v2, p0, v0}, Lcom/adsmogo/interstitial/d;-><init>(Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->isReadyed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->isSupportLoad()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Ration;->clone()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a(Lcom/adsmogo/model/obj/Ration;I)V

    :cond_0
    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->startVideo()V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->PauseVideo()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->ResumeVideo()V

    :cond_0
    return-void
.end method

.method public countClick(Lcom/adsmogo/model/obj/Ration;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    if-eqz v0, :cond_1

    const-string v0, ""

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u8865\u4f59"

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    invoke-interface {v1, v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;->onInterstitialRealClickAd(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->d:Z

    if-nez v1, :cond_1

    iput-boolean v3, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->d:Z

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    invoke-interface {v1, v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;->onInterstitialClickAd(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsmogo/interstitial/f;

    iget-object v2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    invoke-direct {v1, p0, v2, p1}, Lcom/adsmogo/interstitial/f;-><init>(Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;Lcom/adsmogo/interstitial/AdsMogoInterstitial;Lcom/adsmogo/model/obj/Ration;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->g:Lcom/adsmogo/interstitial/AdsMogoVideoListener;

    if-eqz v0, :cond_3

    const-string v0, ""

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u8865\u4f59"

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->g:Lcom/adsmogo/interstitial/AdsMogoVideoListener;

    invoke-interface {v1, v0}, Lcom/adsmogo/interstitial/AdsMogoVideoListener;->onVideoRealClickAd(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->d:Z

    if-nez v1, :cond_3

    iput-boolean v3, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->d:Z

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->g:Lcom/adsmogo/interstitial/AdsMogoVideoListener;

    invoke-interface {v1, v0}, Lcom/adsmogo/interstitial/AdsMogoVideoListener;->onVideoClickAd(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsmogo/interstitial/f;

    iget-object v2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    invoke-direct {v1, p0, v2, p1}, Lcom/adsmogo/interstitial/f;-><init>(Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;Lcom/adsmogo/interstitial/AdsMogoInterstitial;Lcom/adsmogo/model/obj/Ration;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->isReadyed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->isSupportLoad()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Ration;->clone()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a(Lcom/adsmogo/model/obj/Ration;I)V

    :cond_0
    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->showInterstitialAd()V

    :cond_1
    return-void
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->isReadyed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterstitialCloseed()V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "onInterstitialCloseed"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->g:Lcom/adsmogo/interstitial/AdsMogoVideoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->g:Lcom/adsmogo/interstitial/AdsMogoVideoListener;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoVideoListener;->OnVideoEnd()V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    invoke-virtual {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->isRotate()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->m:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->m:I

    const/16 v1, 0x258

    if-le v0, v1, :cond_2

    :cond_1
    const/16 v0, 0xa

    iput v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->m:I

    :cond_2
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "succeedRotateTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->m:I

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->b:I

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a(II)V

    :cond_3
    return-void
.end method

.method public onInterstitialGetView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;->onInterstitialGetView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReadyed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    invoke-interface {v0, p1}, Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;->onInterstitialReadyed(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->g:Lcom/adsmogo/interstitial/AdsMogoVideoListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->g:Lcom/adsmogo/interstitial/AdsMogoVideoListener;

    invoke-interface {v0, p1}, Lcom/adsmogo/interstitial/AdsMogoVideoListener;->onVideoLoadingFinished(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onStartReady(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    invoke-interface {v0, p1}, Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;->onInterstitialStartReady(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->g:Lcom/adsmogo/interstitial/AdsMogoVideoListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->g:Lcom/adsmogo/interstitial/AdsMogoVideoListener;

    invoke-interface {v0, p1}, Lcom/adsmogo/interstitial/AdsMogoVideoListener;->onVideoStartLoading(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public playEnd()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Ration;->clone()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a(Lcom/adsmogo/model/obj/Ration;I)V

    :cond_0
    return-void
.end method

.method public requestAdFail(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a:Z

    invoke-direct {p0, v0, v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a(II)V

    return-void
.end method

.method public requestAdSuccess(Landroid/view/ViewGroup;I)V
    .locals 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a:Z

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/adsmogo/adapters/AdsMogoAdapter;->clearCache()V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->k:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->d:Z

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/adsmogo/adapters/AdsMogoAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Ration;->clone()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a(Lcom/adsmogo/model/obj/Ration;I)V

    :cond_2
    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    if-eqz v1, :cond_3

    const-string v2, ""

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/adsmogo/adapters/AdsMogoAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v2, v1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "\u8865\u4f59"

    :goto_0
    iget-object v2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    invoke-interface {v2, v1}, Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;->onInterstitialSucceed(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->m:I

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onInterstitialSucceed return succeedRotateTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->g:Lcom/adsmogo/interstitial/AdsMogoVideoListener;

    if-eqz v1, :cond_4

    const-string v1, ""

    iget-object v2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->i:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "\u8865\u4f59"

    :goto_1
    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->g:Lcom/adsmogo/interstitial/AdsMogoVideoListener;

    invoke-interface {v1, v0}, Lcom/adsmogo/interstitial/AdsMogoVideoListener;->OnVideoPlay(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->m:I

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInterstitialSucceed return succeedRotateTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    iget-object v1, v1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object v0, v0, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    goto :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_1

    :cond_8
    move-object v1, v2

    goto :goto_0
.end method

.method public requestAdSuccess(Landroid/view/ViewGroup;III)V
    .locals 0

    return-void
.end method

.method public startRotate()V
    .locals 4

    const-string v0, "AdsMOGO SDK"

    const-string v1, "core startRotate"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    iget v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->b:I

    invoke-direct {p0, v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "full Core core err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
