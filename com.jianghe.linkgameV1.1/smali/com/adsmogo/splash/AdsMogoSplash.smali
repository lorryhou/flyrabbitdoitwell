.class public Lcom/adsmogo/splash/AdsMogoSplash;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsmogo/interstitial/AdsMogoConfigInterface;


# static fields
.field protected static c:Lcom/adsmogo/splash/AdsMogoSplashListener;

.field private static g:Z


# instance fields
.field protected a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

.field protected final b:Landroid/os/Handler;

.field private d:Ljava/util/Timer;

.field private e:Ljava/util/TimerTask;

.field private f:Ljava/lang/ref/WeakReference;

.field private final h:Lcom/adsmogo/util/e;

.field private i:Lcom/adsmogo/splash/i;

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Landroid/content/Context;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/adsmogo/splash/AdsMogoSplash;->g:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/adsmogo/splash/AdsMogoSplash;->c:Lcom/adsmogo/splash/AdsMogoSplashListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;II)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/adsmogo/splash/AdsMogoSplash;->d:Ljava/util/Timer;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adsmogo/splash/AdsMogoSplash;->e:Ljava/util/TimerTask;

    new-instance v1, Lcom/adsmogo/util/e;

    invoke-direct {v1}, Lcom/adsmogo/util/e;-><init>()V

    iput-object v1, p0, Lcom/adsmogo/splash/AdsMogoSplash;->h:Lcom/adsmogo/util/e;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/adsmogo/splash/AdsMogoSplash;->b:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->r:Z

    const-string v1, "http://imp.himogo.com/exmet.ashx?appid=%s&nid=%s&appver=%s&country=%s&type=%s&adtype=%s&download=%s&favorite=%s&uuid=%s"

    iput-object v1, p0, Lcom/adsmogo/splash/AdsMogoSplash;->s:Ljava/lang/String;

    const-string v1, "http://imp.adsmogo.com/exmet.ashx?appid=%s&nid=%s&appver=%s&country=%s&type=%s&adtype=%s&download=%s&favorite=%s&uuid=%s"

    iput-object v1, p0, Lcom/adsmogo/splash/AdsMogoSplash;->t:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ade"

    const-string v3, "000000"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adsmogo/splash/AdsMogoSplash;->j:Ljava/lang/String;

    const-string v2, "link"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adsmogo/splash/AdsMogoSplash;->l:Ljava/lang/String;

    const-string v2, "nid"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adsmogo/splash/AdsMogoSplash;->o:Ljava/lang/String;

    const-string v2, "type"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adsmogo/splash/AdsMogoSplash;->p:Ljava/lang/String;

    const-string v2, "country"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adsmogo/splash/AdsMogoSplash;->q:Ljava/lang/String;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/adsmogo/splash/AdsMogoSplash;->j:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->r:Z

    iget-boolean v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->r:Z

    if-eqz v0, :cond_1

    const-string v0, "2000"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->k:J

    :goto_1
    iput-object p2, p0, Lcom/adsmogo/splash/AdsMogoSplash;->n:Ljava/lang/String;

    iput-object p1, p0, Lcom/adsmogo/splash/AdsMogoSplash;->m:Landroid/content/Context;

    invoke-direct/range {p0 .. p5}, Lcom/adsmogo/splash/AdsMogoSplash;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;II)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "adt"

    const-string v3, "2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->k:J

    goto :goto_1
.end method

.method static synthetic a(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->d:Ljava/util/Timer;

    return-object v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;II)V
    .locals 9

    move-object v3, p1

    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Activity;->isChild()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Welcome to use MogoSplash SDK 1.3.8\nYour appId is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->f:Ljava/lang/ref/WeakReference;

    iget-object v8, p0, Lcom/adsmogo/splash/AdsMogoSplash;->h:Lcom/adsmogo/util/e;

    new-instance v0, Lcom/adsmogo/splash/c;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/adsmogo/splash/c;-><init>(Lcom/adsmogo/splash/AdsMogoSplash;Lcom/adsmogo/splash/AdsMogoSplash;Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;II)V

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, p1

    goto :goto_1
.end method

.method static synthetic a(Lcom/adsmogo/splash/AdsMogoSplash;Ljava/util/TimerTask;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/splash/AdsMogoSplash;->e:Ljava/util/TimerTask;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/splash/AdsMogoSplash;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/splash/AdsMogoSplash;->a([Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized a([Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/adsmogo/controller/count/b;

    invoke-direct {v0}, Lcom/adsmogo/controller/count/b;-><init>()V

    iget-object v1, p0, Lcom/adsmogo/splash/AdsMogoSplash;->m:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/count/b;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/adsmogo/controller/count/b;->a([Ljava/lang/Object;)J

    invoke-virtual {v0}, Lcom/adsmogo/controller/count/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/util/TimerTask;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->e:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic c(Lcom/adsmogo/splash/AdsMogoSplash;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->r:Z

    return v0
.end method

.method public static clear()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "cache Is Cleaning"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/adsmogo/util/a;->a()V

    sget-object v0, Lcom/adsmogo/adapters/AdsMogoAdapter;->mogoAdapterList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic d(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/adsmogo/splash/AdsMogoSplash;)Lcom/adsmogo/util/e;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->h:Lcom/adsmogo/util/e;

    return-object v0
.end method

.method static synthetic i(Lcom/adsmogo/splash/AdsMogoSplash;)J
    .locals 2

    iget-wide v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->k:J

    return-wide v0
.end method

.method static synthetic j(Lcom/adsmogo/splash/AdsMogoSplash;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-boolean v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->isTestModel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->s:Ljava/lang/String;

    :goto_0
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/adsmogo/splash/AdsMogoSplash;->n:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adsmogo/splash/AdsMogoSplash;->o:Ljava/lang/String;

    aput-object v2, v1, v5

    const/16 v2, 0x138

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/adsmogo/splash/AdsMogoSplash;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/adsmogo/controller/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/adsmogo/splash/AdsMogoSplash;->p:Ljava/lang/String;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/adsmogo/splash/AdsMogoSplash;->m:Landroid/content/Context;

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/adsmogo/splash/AdsMogoSplash;->n:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/adsmogo/splash/AdsMogoSplash;->o:Ljava/lang/String;

    aput-object v2, v1, v5

    const/16 v2, 0x138

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/adsmogo/splash/AdsMogoSplash;->m:Landroid/content/Context;

    invoke-static {v2}, Lcom/adsmogo/controller/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/adsmogo/splash/AdsMogoSplash;->p:Ljava/lang/String;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/adsmogo/splash/AdsMogoSplash;->m:Landroid/content/Context;

    invoke-static {v3}, Lcom/adsmogo/util/GetUserInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/adsmogo/splash/AdsMogoSplash;->h:Lcom/adsmogo/util/e;

    new-instance v3, Lcom/adsmogo/splash/h;

    invoke-direct {v3, p0, v0, v1}, Lcom/adsmogo/splash/h;-><init>(Lcom/adsmogo/splash/AdsMogoSplash;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->t:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lcom/adsmogo/model/obj/Ration;Ljava/lang/String;)V
    .locals 9

    const-string v1, "http://imp."

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getSecondDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlClick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    iget v5, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/adsmogo/util/GetUserInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v0, p1, Lcom/adsmogo/model/obj/Ration;->isCc:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/adsmogo/model/obj/Ration;->cc:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "?"

    :cond_0
    const/16 v1, 0x9

    new-array v7, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v7, v1

    const/4 v1, 0x1

    aput-object p2, v7, v1

    const/4 v1, 0x2

    aput-object v4, v7, v1

    const/4 v1, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v1, 0x4

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v1, 0x5

    const-string v8, "0"

    aput-object v8, v7, v1

    const/4 v8, 0x6

    iget-object v1, p1, Lcom/adsmogo/model/obj/Ration;->tag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "0"

    :goto_1
    aput-object v1, v7, v8

    const/4 v1, 0x7

    aput-object v0, v7, v1

    const/16 v0, 0x8

    aput-object v6, v7, v0

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "clickUrl:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Q8tFVImbNuvsmBwWwdqsPE6jsRQsSPkQ"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/util/AdsMogoUtilTool;->convertToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v6, "c"

    invoke-virtual {v2, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;

    invoke-direct {v1}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/adsmogo/controller/AdsMogoNetWorkHelper;->getStatusCodeByGetType(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "countClick finish code-->"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v4, v0, v1

    const/4 v1, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/adsmogo/splash/AdsMogoSplash;->m:Landroid/content/Context;

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/adsmogo/splash/AdsMogoSplash;->a([Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "?"

    goto/16 :goto_0

    :cond_3
    iget-object v1, p1, Lcom/adsmogo/model/obj/Ration;->tag:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public addMogoView(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    return-void
.end method

.method public clearThread()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Thread Is Cleaning"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->h:Lcom/adsmogo/util/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->h:Lcom/adsmogo/util/e;

    invoke-virtual {v0}, Lcom/adsmogo/util/e;->a()V

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->h:Lcom/adsmogo/util/e;

    invoke-virtual {v0}, Lcom/adsmogo/util/e;->b()V

    :cond_0
    return-void
.end method

.method public getActivityReference()Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->f:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    return-object v0
.end method

.method public getDownloadIsShowDialog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public getScheduler()Lcom/adsmogo/util/e;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->h:Lcom/adsmogo/util/e;

    return-object v0
.end method

.method public isGetinfoRefresh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReadyLoadAd()V
    .locals 5

    const-string v0, "AdsMOGO SDK"

    const-string v1, "getInfo finish"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-boolean v0, Lcom/adsmogo/splash/AdsMogoSplash;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/adsmogo/splash/AdsMogoSplash;->g:Z

    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->h:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/splash/g;

    invoke-direct {v1, p0}, Lcom/adsmogo/splash/g;-><init>(Lcom/adsmogo/splash/AdsMogoSplash;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->i:Lcom/adsmogo/splash/i;

    if-nez v0, :cond_1

    new-instance v0, Lcom/adsmogo/splash/i;

    sget-object v1, Lcom/adsmogo/splash/AdsMogoSplash;->c:Lcom/adsmogo/splash/AdsMogoSplashListener;

    invoke-direct {v0, p0, v1}, Lcom/adsmogo/splash/i;-><init>(Lcom/adsmogo/splash/AdsMogoSplash;Lcom/adsmogo/splash/AdsMogoSplashListener;)V

    iput-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->i:Lcom/adsmogo/splash/i;

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/splash/AdsMogoSplash;->i:Lcom/adsmogo/splash/i;

    invoke-virtual {v0}, Lcom/adsmogo/splash/i;->a()V

    return-void
.end method

.method public setAdsMogoSplashListener(Lcom/adsmogo/splash/AdsMogoSplashListener;)V
    .locals 0

    sput-object p1, Lcom/adsmogo/splash/AdsMogoSplash;->c:Lcom/adsmogo/splash/AdsMogoSplashListener;

    return-void
.end method

.method public setCloseButtonVisibility(I)V
    .locals 0

    return-void
.end method
