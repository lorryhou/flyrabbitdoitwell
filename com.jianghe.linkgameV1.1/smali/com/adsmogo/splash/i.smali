.class public final Lcom/adsmogo/splash/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsmogo/controller/listener/AdsMogoCoreListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/adsmogo/splash/AdsMogoSplash;

.field private e:Lcom/adsmogo/controller/l;

.field private f:Lcom/adsmogo/controller/count/AdsCount;

.field private g:Ljava/util/LinkedHashMap;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adsmogo/splash/AdsMogoSplash;Lcom/adsmogo/splash/AdsMogoSplashListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://imp.himogo.com/exrequest.ashx?appid=%s&nid=%s&appver=%s&country=%s&type=%s&adtype=%s&download=%s&favorite=%s"

    iput-object v0, p0, Lcom/adsmogo/splash/i;->a:Ljava/lang/String;

    const-string v0, "http://imp.adsmogo.com/exrequest.ashx?appid=%s&nid=%s&appver=%s&country=%s&type=%s&adtype=%s&download=%s&favorite=%s"

    iput-object v0, p0, Lcom/adsmogo/splash/i;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/adsmogo/splash/i;->c:I

    iput-object p1, p0, Lcom/adsmogo/splash/i;->d:Lcom/adsmogo/splash/AdsMogoSplash;

    new-instance v0, Lcom/adsmogo/controller/l;

    invoke-virtual {p1}, Lcom/adsmogo/splash/AdsMogoSplash;->getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adsmogo/controller/l;-><init>(Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;)V

    iput-object v0, p0, Lcom/adsmogo/splash/i;->e:Lcom/adsmogo/controller/l;

    new-instance v1, Lcom/adsmogo/controller/count/AdsCount;

    invoke-virtual {p1}, Lcom/adsmogo/splash/AdsMogoSplash;->getActivityReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/adsmogo/controller/count/AdsCount;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsmogo/splash/i;->f:Lcom/adsmogo/controller/count/AdsCount;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/splash/i;->g:Ljava/util/LinkedHashMap;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/splash/i;Lcom/adsmogo/model/obj/Ration;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/adsmogo/splash/i;->d:Lcom/adsmogo/splash/AdsMogoSplash;

    invoke-virtual {p1}, Lcom/adsmogo/model/obj/Ration;->clone()Lcom/adsmogo/model/obj/Ration;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;Z)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/adsmogo/splash/i;->f:Lcom/adsmogo/controller/count/AdsCount;

    if-nez v0, :cond_0

    new-instance v2, Lcom/adsmogo/controller/count/AdsCount;

    iget-object v0, p0, Lcom/adsmogo/splash/i;->d:Lcom/adsmogo/splash/AdsMogoSplash;

    invoke-virtual {v0}, Lcom/adsmogo/splash/AdsMogoSplash;->getActivityReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/adsmogo/controller/count/AdsCount;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adsmogo/splash/i;->f:Lcom/adsmogo/controller/count/AdsCount;

    :cond_0
    const/16 v0, 0x9

    iget v2, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    if-eq v0, v2, :cond_1

    const/16 v0, 0x1b

    iget v2, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    if-eq v0, v2, :cond_1

    const/16 v0, 0x2d

    iget v2, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    if-eq v0, v2, :cond_1

    const/16 v0, 0x30

    iget v2, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    if-eq v0, v2, :cond_1

    const/16 v0, 0x36

    iget v2, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    if-ne v0, v2, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/splash/i;->f:Lcom/adsmogo/controller/count/AdsCount;

    invoke-virtual {v1, v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setAdCount(Lcom/adsmogo/controller/count/AdsCount;)V

    :goto_0
    const-string v0, "request ad info: \nkey: %s\nnid: %s\ntype: %s\nname:%s"

    new-array v2, v9, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p1, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    aput-object v3, v2, v6

    iget v3, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AdsMOGO SDK"

    invoke-static {v2, v0}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/splash/i;->g:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/splash/i;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/splash/i;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/adsmogo/splash/i;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->finish()V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/splash/i;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/adsmogo/splash/i;->g:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/adsmogo/splash/i;->h:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setAdsMogoCoreListener(Lcom/adsmogo/controller/listener/AdsMogoCoreListener;)V

    invoke-virtual {v1, p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setAdsMogoSplashCore(Lcom/adsmogo/splash/i;)V

    invoke-virtual {v1}, Lcom/adsmogo/adapters/AdsMogoAdapter;->handle()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/splash/i;->d:Lcom/adsmogo/splash/AdsMogoSplash;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/adsmogo/splash/i;->d:Lcom/adsmogo/splash/AdsMogoSplash;

    invoke-virtual {v0}, Lcom/adsmogo/splash/AdsMogoSplash;->getActivityReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :cond_3
    sget-boolean v1, Lcom/adsmogo/util/AdsMogoRequestDomain;->isTestModel:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/adsmogo/splash/i;->a:Ljava/lang/String;

    :goto_2
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adsmogo/splash/i;->d:Lcom/adsmogo/splash/AdsMogoSplash;

    iget-object v3, v3, Lcom/adsmogo/splash/AdsMogoSplash;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p1, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    aput-object v3, v2, v6

    const/16 v3, 0x138

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0}, Lcom/adsmogo/controller/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    iget v3, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adsmogo/splash/i;->d:Lcom/adsmogo/splash/AdsMogoSplash;

    iget-object v3, v3, Lcom/adsmogo/splash/AdsMogoSplash;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p1, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    aput-object v3, v2, v6

    const/16 v3, 0x138

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0}, Lcom/adsmogo/controller/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    iget v3, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/adsmogo/splash/k;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/adsmogo/splash/k;-><init>(Lcom/adsmogo/splash/i;Ljava/lang/String;[Ljava/lang/Object;Landroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/adsmogo/splash/i;->f:Lcom/adsmogo/controller/count/AdsCount;

    invoke-virtual {v0}, Lcom/adsmogo/controller/count/AdsCount;->getNidAndType()Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/adsmogo/splash/i;->b:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Request Adapter is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsmogo/splash/i;->requestAdFail(Landroid/view/ViewGroup;)V

    goto :goto_3
.end method

.method static synthetic a([Ljava/lang/Object;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/adsmogo/splash/i;->b([Ljava/lang/Object;Landroid/content/Context;)V

    return-void
.end method

.method private static declared-synchronized b([Ljava/lang/Object;Landroid/content/Context;)V
    .locals 2

    const-class v1, Lcom/adsmogo/splash/i;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/adsmogo/controller/count/b;

    invoke-direct {v0}, Lcom/adsmogo/controller/count/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/adsmogo/controller/count/b;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/adsmogo/controller/count/b;->a([Ljava/lang/Object;)J

    invoke-virtual {v0}, Lcom/adsmogo/controller/count/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v2, "AdsMOGO SDK"

    const-string v3, "core startRotate"

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    iget v2, p0, Lcom/adsmogo/splash/i;->c:I

    iget-object v3, p0, Lcom/adsmogo/splash/i;->e:Lcom/adsmogo/controller/l;

    if-nez v3, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "splash core rationManager is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/adsmogo/splash/i;->e:Lcom/adsmogo/controller/l;

    invoke-virtual {v3}, Lcom/adsmogo/controller/l;->b()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v2, "splash Sum of ration weights is 0 - no ads to be shown"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/splash/i;->d:Lcom/adsmogo/splash/AdsMogoSplash;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/splash/i;->d:Lcom/adsmogo/splash/AdsMogoSplash;

    invoke-virtual {v0}, Lcom/adsmogo/splash/AdsMogoSplash;->getActivityReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/adsmogo/util/GetUserInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/splash/i;->d:Lcom/adsmogo/splash/AdsMogoSplash;

    iget-object v2, v2, Lcom/adsmogo/splash/AdsMogoSplash;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    const-string v2, "AdsMOGO SDK"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/adsmogo/splash/i;->d:Lcom/adsmogo/splash/AdsMogoSplash;

    iget-object v1, v1, Lcom/adsmogo/splash/AdsMogoSplash;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "splash Core core err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget v3, p0, Lcom/adsmogo/splash/i;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/adsmogo/splash/i;->e:Lcom/adsmogo/controller/l;

    invoke-virtual {v2, v0}, Lcom/adsmogo/controller/l;->a(Z)Lcom/adsmogo/model/obj/Ration;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :goto_2
    :try_start_3
    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "private void core ration -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adsmogo/splash/i;->d:Lcom/adsmogo/splash/AdsMogoSplash;

    iget-object v1, v1, Lcom/adsmogo/splash/AdsMogoSplash;->b:Landroid/os/Handler;

    new-instance v2, Lcom/adsmogo/splash/j;

    invoke-direct {v2, p0, v0}, Lcom/adsmogo/splash/j;-><init>(Lcom/adsmogo/splash/i;Lcom/adsmogo/model/obj/Ration;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "full core getNextRation err:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v0, v1

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public final playEnd()V
    .locals 0

    return-void
.end method

.method public final requestAdFail(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public final requestAdSuccess(Landroid/view/ViewGroup;I)V
    .locals 0

    return-void
.end method

.method public final requestAdSuccess(Landroid/view/ViewGroup;III)V
    .locals 0

    return-void
.end method
