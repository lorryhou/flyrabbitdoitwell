.class public Lcom/adsmogo/interstitial/AdsMogoInterstitial;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsmogo/interstitial/AdsMogoConfigInterface;


# static fields
.field private static c:Z


# instance fields
.field private a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

.field public activityReference:Ljava/lang/ref/WeakReference;

.field private b:Z

.field public configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

.field private d:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

.field private e:Lcom/adsmogo/interstitial/AdsMogoVideoListener;

.field private f:Z

.field public final handler:Landroid/os/Handler;

.field public final scheduler:Lcom/adsmogo/util/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->b:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/adsmogo/util/e;

    invoke-direct {v0}, Lcom/adsmogo/util/e;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->scheduler:Lcom/adsmogo/util/e;

    invoke-direct {p0, p1, p2, v1, v1}, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a(Landroid/app/Activity;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->b:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/adsmogo/util/e;

    invoke-direct {v0}, Lcom/adsmogo/util/e;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->scheduler:Lcom/adsmogo/util/e;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a(Landroid/app/Activity;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ZLandroid/view/ViewGroup;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->b:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/adsmogo/util/e;

    invoke-direct {v0}, Lcom/adsmogo/util/e;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->scheduler:Lcom/adsmogo/util/e;

    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a(Landroid/app/Activity;Ljava/lang/String;ZILandroid/view/ViewGroup;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;ZI)V
    .locals 6

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdsMogoInterstitial isRotate\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a(Landroid/app/Activity;Ljava/lang/String;ZILandroid/view/ViewGroup;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;ZILandroid/view/ViewGroup;)V
    .locals 9

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdsMogoInterstitial isRotate\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, p1

    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Activity;->isChild()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Welcome to use MogoInterstitial SDK 1.3.8\nYour appId is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->activityReference:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_2

    :cond_0
    :goto_2
    iput-boolean p3, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->f:Z

    iget-object v8, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->scheduler:Lcom/adsmogo/util/e;

    new-instance v0, Lcom/adsmogo/interstitial/b;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/adsmogo/interstitial/b;-><init>(Lcom/adsmogo/interstitial/AdsMogoInterstitial;Lcom/adsmogo/interstitial/AdsMogoInterstitial;Landroid/app/Activity;Ljava/lang/String;ZILandroid/view/ViewGroup;)V

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    return-void

    :cond_1
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

    :cond_2
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "You havn\'t register AdsMogoInterstitialActivity at AndroidManifest"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AdsMOGO SDK"

    const-string v1, "You havn\'t register AdsMogoInterstitialActivity at AndroidManifest"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AdsMOGO SDK"

    const-string v1, "You havn\'t register AdsMogoInterstitialActivity at AndroidManifest"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AdsMOGO SDK"

    const-string v1, "You havn\'t register AdsMogoInterstitialActivity at AndroidManifest"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AdsMOGO SDK"

    const-string v1, "You havn\'t register AdsMogoInterstitialActivity at AndroidManifest"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AdsMOGO SDK"

    const-string v1, "You havn\'t register AdsMogoInterstitialActivity at AndroidManifest"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "You havn\'t register AdsMogoInterstitialActivity at AndroidManifest"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static clear()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "cache Is Cleaning"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->b:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    invoke-static {}, Lcom/adsmogo/util/a;->a()V

    sget-object v0, Lcom/adsmogo/adapters/AdsMogoAdapter;->mogoAdapterList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->d:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->d:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;->onInterstitialCloseAd()Z

    move-result v0

    :cond_0
    return v0
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

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->scheduler:Lcom/adsmogo/util/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->scheduler:Lcom/adsmogo/util/e;

    invoke-virtual {v0}, Lcom/adsmogo/util/e;->a()V

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->scheduler:Lcom/adsmogo/util/e;

    invoke-virtual {v0}, Lcom/adsmogo/util/e;->b()V

    :cond_0
    return-void
.end method

.method public getActivityReference()Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->activityReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    return-object v0
.end method

.method public getDownloadIsShowDialog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInterstitialAdStart()Z
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    invoke-virtual {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->e()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScheduler()Lcom/adsmogo/util/e;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->scheduler:Lcom/adsmogo/util/e;

    return-object v0
.end method

.method public isGetinfoRefresh()Z
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->activityReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public isReadyLoadAd()V
    .locals 5

    const-string v0, "AdsMOGO SDK"

    const-string v1, "getInfo finish"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-boolean v0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->c:Z

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/interstitial/c;

    invoke-direct {v1, p0}, Lcom/adsmogo/interstitial/c;-><init>(Lcom/adsmogo/interstitial/AdsMogoInterstitial;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->b:Z

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->d:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    invoke-direct {v0, p0, v1}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;-><init>(Lcom/adsmogo/interstitial/AdsMogoInterstitial;Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;)V

    iput-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    invoke-virtual {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->startRotate()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    iget-object v1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->e:Lcom/adsmogo/interstitial/AdsMogoVideoListener;

    invoke-direct {v0, p0, v1}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;-><init>(Lcom/adsmogo/interstitial/AdsMogoInterstitial;Lcom/adsmogo/interstitial/AdsMogoVideoListener;)V

    iput-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    goto :goto_0
.end method

.method public pauseVideoAD()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    invoke-virtual {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->b()V

    :cond_0
    return-void
.end method

.method public requestAdsMogoInterstitial()V
    .locals 3

    iget-boolean v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->b:Z

    if-nez v0, :cond_1

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdsMogoInterstitial getInfoFinishFlag\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->f:Z

    if-eqz v0, :cond_2

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdsMogoInterstitial isRotate\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    iget-boolean v0, v0, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    invoke-virtual {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->startRotate()V

    goto :goto_0

    :cond_3
    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoInterstitial Is requesting"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public resumeVideoAD()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    invoke-virtual {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->c()V

    :cond_0
    return-void
.end method

.method public setAdsMogoInterstitialListener(Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->d:Lcom/adsmogo/interstitial/AdsMogoInterstitialListener;

    return-void
.end method

.method public setAdsMogoVideoListener(Lcom/adsmogo/interstitial/AdsMogoVideoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->e:Lcom/adsmogo/interstitial/AdsMogoVideoListener;

    return-void
.end method

.method public setCloseButtonVisibility(I)V
    .locals 0

    return-void
.end method

.method public showInterstitialAD()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    invoke-virtual {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->d()V

    :cond_0
    return-void
.end method

.method public showVideoAD()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->a:Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;

    invoke-virtual {v0}, Lcom/adsmogo/interstitial/AdsMogoInterstitialCore;->a()V

    :cond_0
    return-void
.end method
