.class public Lcom/adsmogo/controller/adsmogoconfigsource/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsmogo/util/c;


# instance fields
.field public a:Lcom/adsmogo/controller/adsmogoconfigsource/b;

.field protected b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

.field c:Lcom/adsmogo/controller/adsmogoconfigsource/b;

.field d:Lcom/adsmogo/controller/adsmogoconfigsource/b;

.field e:Lcom/adsmogo/controller/adsmogoconfigsource/b;

.field f:Lcom/adsmogo/controller/adsmogoconfigsource/b;

.field g:Lcom/adsmogo/controller/adsmogoconfigsource/b;

.field h:Lcom/adsmogo/controller/adsmogoconfigsource/b;

.field i:Lcom/adsmogo/controller/adsmogoconfigsource/b;

.field private j:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/controller/adsmogoconfigsource/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsmogo/controller/adsmogoconfigsource/b;->c()V

    return-void
.end method

.method static synthetic b(Lcom/adsmogo/controller/adsmogoconfigsource/b;)V
    .locals 4

    const-string v0, "AdsMOGO SDK"

    const-string v1, "startGetInfoTimer"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->isGetinfoRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/adsmogo/controller/adsmogoconfigsource/b;->c()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->j:Ljava/util/Timer;

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->j:Ljava/util/Timer;

    new-instance v1, Lcom/adsmogo/controller/adsmogoconfigsource/c;

    invoke-direct {v1, p0}, Lcom/adsmogo/controller/adsmogoconfigsource/c;-><init>(Lcom/adsmogo/controller/adsmogoconfigsource/b;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/adsmogo/controller/adsmogoconfigsource/b;->c()V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "destroyGetInfoTimer"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->j:Ljava/util/Timer;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/adsmogo/controller/adsmogoconfigsource/b;)V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "getInfoStart"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->isGetinfoRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adsmogo/controller/adsmogoconfigsource/b;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/adsmogo/controller/adsmogoconfigsource/b;->c()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getActivityReference()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "weakReference is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "activity is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/adsmogo/util/a;

    invoke-direct {v1}, Lcom/adsmogo/util/a;-><init>()V

    invoke-virtual {v1, p0, v0}, Lcom/adsmogo/util/a;->a(Lcom/adsmogo/util/c;Landroid/content/Context;)V

    :cond_2
    const-string v0, "AdsMOGO SDK"

    const-string v1, "adsMogoConfigInterface is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/b;->b:Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getScheduler()Lcom/adsmogo/util/e;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "scheduler is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/adsmogo/controller/adsmogoconfigsource/d;

    invoke-direct {v1, p0}, Lcom/adsmogo/controller/adsmogoconfigsource/d;-><init>(Lcom/adsmogo/controller/adsmogoconfigsource/b;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_0
.end method
