.class public Lcom/adsmogo/adview/AdsMogoLayout;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/adsmogo/interstitial/AdsMogoConfigInterface;


# static fields
.field private static l:Z

.field private static o:Z


# instance fields
.field a:Lcom/adsmogo/controller/AdsMogoCore;

.field public activityReference:Ljava/lang/ref/WeakReference;

.field public adsMogoLayoutReference:Ljava/lang/ref/WeakReference;

.field b:Lcom/adsmogo/adview/l;

.field c:Landroid/graphics/drawable/BitmapDrawable;

.field public configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

.field d:Landroid/widget/Button;

.field public downloadIsShowDialog:Z

.field e:Landroid/widget/RelativeLayout$LayoutParams;

.field f:Landroid/widget/RelativeLayout;

.field private g:Landroid/view/animation/Animation;

.field private h:Z

.field public final handler:Landroid/os/Handler;

.field private i:Z

.field private j:Z

.field private k:Z

.field private m:Lcom/adsmogo/controller/listener/AdsMogoListener;

.field private n:Landroid/widget/RelativeLayout$LayoutParams;

.field private p:Z

.field private q:Z

.field public final scheduler:Lcom/adsmogo/util/e;

.field public superViewReference:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/adsmogo/adview/AdsMogoLayout;->l:Z

    sput-boolean v0, Lcom/adsmogo/adview/AdsMogoLayout;->o:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->h:Z

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->i:Z

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->j:Z

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->k:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/adsmogo/util/e;

    invoke-direct {v0}, Lcom/adsmogo/util/e;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    iput-object v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    iput-object v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->p:Z

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->downloadIsShowDialog:Z

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->q:Z

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/adsmogo/adview/AdsMogoLayout;->a(Landroid/app/Activity;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;IIZ)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/adsmogo/adview/AdsMogoLayout;->h:Z

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->i:Z

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->j:Z

    iput-boolean v4, p0, Lcom/adsmogo/adview/AdsMogoLayout;->k:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/adsmogo/util/e;

    invoke-direct {v0}, Lcom/adsmogo/util/e;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    iput-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    iput-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->p:Z

    iput-boolean v4, p0, Lcom/adsmogo/adview/AdsMogoLayout;->downloadIsShowDialog:Z

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->q:Z

    const/16 v3, 0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/adsmogo/adview/AdsMogoLayout;->a(Landroid/app/Activity;Ljava/lang/String;IZIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->h:Z

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->i:Z

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->j:Z

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->k:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/adsmogo/util/e;

    invoke-direct {v0}, Lcom/adsmogo/util/e;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    iput-object v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    iput-object v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->p:Z

    iput-boolean v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->downloadIsShowDialog:Z

    iput-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->q:Z

    const-string v0, "http://www.adsmogo.com"

    const-string v1, "appid"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "You forget input appId for xml type!!"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    check-cast p1, Landroid/app/Activity;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/adsmogo/adview/AdsMogoLayout;->a(Landroid/app/Activity;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "Use inflater Must be in Activity"

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    const-string v2, "init error"

    invoke-static {v1, v2, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;IZ)V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/adsmogo/adview/AdsMogoLayout;->a(Landroid/app/Activity;Ljava/lang/String;IZIIZ)V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;IZIIZ)V
    .locals 11

    sget-boolean v0, Lcom/adsmogo/adview/AdsMogoLayout;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsmogo/adview/AdsMogoLayout;->setVisibility(I)V

    :goto_0
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Welcome to use Mogo SDK 1.3.8\nYour appId is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->adsMogoLayoutReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->superViewReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    iget-object v10, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v0, Lcom/adsmogo/adview/o;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/adsmogo/adview/o;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/adview/AdsMogoLayout;Landroid/app/Activity;Ljava/lang/String;IZIIZ)V

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/adsmogo/adview/AdsMogoLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/adview/AdsMogoLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsmogo/adview/AdsMogoLayout;->e()V

    return-void
.end method

.method static synthetic b(Lcom/adsmogo/adview/AdsMogoLayout;)Lcom/adsmogo/controller/listener/AdsMogoListener;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->m:Lcom/adsmogo/controller/listener/AdsMogoListener;

    return-object v0
.end method

.method static synthetic c(Lcom/adsmogo/adview/AdsMogoLayout;)V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/adsmogo/util/RepeatCheck;->getInstalledApps(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static clear()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "cache Is Cleaning"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    invoke-static {}, Lcom/adsmogo/util/a;->a()V

    return-void
.end method

.method private e()V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "AdsMogoLayout changeAdviewState"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "windowFocusChangedFlag>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<windowVisibilityFlag>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<adViewVisibilityFlag>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<getInfoFinishFlag>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<adsMogoCore>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdsMogoLayout isStop "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    iget-boolean v2, v2, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->i:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->h:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->j:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    iget-boolean v0, v0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsmogo/adview/p;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/p;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-virtual {v0}, Lcom/adsmogo/controller/AdsMogoCore;->d()V

    goto :goto_0
.end method

.method public static isAllADEnable()Z
    .locals 1

    sget-boolean v0, Lcom/adsmogo/adview/AdsMogoLayout;->o:Z

    return v0
.end method

.method public static setAllADEnable(Z)V
    .locals 0

    sput-boolean p0, Lcom/adsmogo/adview/AdsMogoLayout;->o:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const-string v0, "AdsMOGO SDK"

    const-string v1, "banner thirtyMinutesRefresh"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adview/r;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/r;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public final a(Landroid/view/ViewGroup;II)V
    .locals 9

    const/16 v8, 0xd

    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->superViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_2
    const/4 v1, -0x3

    if-le p2, v1, :cond_b

    const/4 v1, -0x3

    if-le p3, v1, :cond_b

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->removeAllViews()V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v5, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->g:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    const-string v1, "AdsMOGO SDK"

    const-string v2, "Added subview"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, v1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v1}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    move-result-object v1

    iget v2, v1, Lcom/adsmogo/model/obj/Extra;->closeAdOn:I

    if-ne v2, v0, :cond_5

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    :cond_5
    iget v1, v1, Lcom/adsmogo/model/obj/Extra;->closeAdOn:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    :cond_6
    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->c:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-eqz v5, :cond_0

    const/16 v1, 0x64

    if-le p2, v1, :cond_c

    const/16 v1, 0x14

    if-le p3, v1, :cond_c

    :cond_7
    :goto_1
    const/16 v1, 0x64

    if-le p2, v1, :cond_e

    const/16 v1, 0x14

    if-le p3, v1, :cond_e

    iput-object v7, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_2
    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_8
    if-eqz v0, :cond_11

    iput-object v7, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {v0, v6, v6, v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    if-nez v0, :cond_10

    iput-object v7, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v6}, Lcom/adsmogo/adview/AdsMogoLayout;->setCloseButtonVisibility(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    if-le v2, v0, :cond_3

    move v1, v6

    :goto_6
    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_3

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    const/16 v1, 0x64

    if-le p2, v1, :cond_d

    const/16 v1, 0x14

    if-gt p3, v1, :cond_7

    :cond_d
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p3

    goto/16 :goto_1

    :cond_e
    const/16 v0, 0x2711

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setId(I)V

    iput-object v7, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Landroid/widget/RelativeLayout$LayoutParams;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->n:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x7

    const/16 v3, 0x2711

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move v0, v6

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    :cond_10
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    goto/16 :goto_4

    :cond_11
    iput-object v7, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/adsmogo/adview/j;

    move-object v1, p0

    move-object v3, p1

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/adsmogo/adview/j;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/app/Activity;Landroid/widget/RelativeLayout;)V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Landroid/widget/RelativeLayout;

    goto/16 :goto_5
.end method

.method public addMogoView(Landroid/view/ViewGroup;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/adsmogo/adview/AdsMogoLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()V
    .locals 5

    new-instance v2, Lcom/adsmogo/adapters/b;

    invoke-direct {v2}, Lcom/adsmogo/adapters/b;-><init>()V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v0, v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v0}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    move-result-object v0

    iget v0, v0, Lcom/adsmogo/model/obj/Extra;->transition:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x3

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/adsmogo/adapters/b;->a(ID)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->g:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->b:Lcom/adsmogo/adview/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adsmogo/adview/l;

    invoke-direct {v0, p0}, Lcom/adsmogo/adview/l;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;)V

    :goto_1
    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->b:Lcom/adsmogo/adview/l;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->g:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->b:Lcom/adsmogo/adview/l;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->b:Lcom/adsmogo/adview/l;

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->m:Lcom/adsmogo/controller/listener/AdsMogoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->m:Lcom/adsmogo/controller/listener/AdsMogoListener;

    invoke-interface {v0}, Lcom/adsmogo/controller/listener/AdsMogoListener;->onCloseMogoDialog()V

    :cond_0
    return-void
.end method

.method public clearThread()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Thread Is Cleaning"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    invoke-virtual {v0}, Lcom/adsmogo/util/e;->a()V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    invoke-virtual {v0}, Lcom/adsmogo/util/e;->b()V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-virtual {v0}, Lcom/adsmogo/controller/AdsMogoCore;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    :cond_1
    return-void
.end method

.method public final d()Lcom/adsmogo/controller/listener/AdsMogoListener;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->m:Lcom/adsmogo/controller/listener/AdsMogoListener;

    return-object v0
.end method

.method public getActivityReference()Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public getAdsMogoConfigCenter()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    return-object v0
.end method

.method public getDownloadIsShowDialog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->downloadIsShowDialog:Z

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getScheduler()Lcom/adsmogo/util/e;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    return-object v0
.end method

.method public isADEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->p:Z

    return v0
.end method

.method public isGetinfoRefresh()Z
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->adsMogoLayoutReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->adsMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

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

    sget-boolean v0, Lcom/adsmogo/adview/AdsMogoLayout;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/adsmogo/adview/AdsMogoLayout;->l:Z

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adview/q;

    invoke-direct {v1, p0, p0}, Lcom/adsmogo/adview/q;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/adview/AdsMogoLayout;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->k:Z

    invoke-direct {p0}, Lcom/adsmogo/adview/AdsMogoLayout;->e()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->adsMogoLayoutReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->adsMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v2, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v2, v2, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v2}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_0
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/adsmogo/model/obj/Extra;->closeAdOn:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->q:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Lcom/adsmogo/adview/AdsMogoLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpl-float v3, v6, v3

    if-ltz v3, :cond_3

    cmpg-float v3, v6, v4

    if-gtz v3, :cond_3

    cmpl-float v3, v2, v5

    if-ltz v3, :cond_3

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoLayout;->m:Lcom/adsmogo/controller/listener/AdsMogoListener;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->m:Lcom/adsmogo/controller/listener/AdsMogoListener;

    invoke-interface {v0}, Lcom/adsmogo/controller/listener/AdsMogoListener;->onCloseAd()Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/adsmogo/adview/AdsMogoLayout;->setVisibility(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v0, v1

    :cond_2
    :goto_2
    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    iget-boolean v0, v0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-virtual {v0}, Lcom/adsmogo/controller/AdsMogoCore;->g()V

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->i:Z

    invoke-direct {p0}, Lcom/adsmogo/adview/AdsMogoLayout;->e()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->h:Z

    invoke-direct {p0}, Lcom/adsmogo/adview/AdsMogoLayout;->e()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setADEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->p:Z

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsmogo/adview/AdsMogoLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/adsmogo/adview/AdsMogoLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAdsMogoListener(Lcom/adsmogo/controller/listener/AdsMogoListener;)V
    .locals 1

    iput-object p1, p0, Lcom/adsmogo/adview/AdsMogoLayout;->m:Lcom/adsmogo/controller/listener/AdsMogoListener;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-virtual {v0}, Lcom/adsmogo/controller/AdsMogoCore;->f()Lcom/adsmogo/controller/listener/AdsMogoListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->a:Lcom/adsmogo/controller/AdsMogoCore;

    invoke-virtual {v0, p1}, Lcom/adsmogo/controller/AdsMogoCore;->a(Lcom/adsmogo/controller/listener/AdsMogoListener;)V

    :cond_0
    return-void
.end method

.method public setCloseButtonVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    if-nez p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->q:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->q:Z

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adsmogoLayout setVisibility"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoLayout;->j:Z

    invoke-direct {p0}, Lcom/adsmogo/adview/AdsMogoLayout;->e()V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
