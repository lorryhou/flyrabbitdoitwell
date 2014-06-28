.class public Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;
.super Ljava/lang/Object;
.source "FeatureScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onStartShowListener;,
        Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;,
        Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;
    }
.end annotation


# static fields
.field private static HAVEREQUEST:Z = false

.field private static final MSG:I = 0x3021

.field private static aa:Landroid/view/animation/AlphaAnimation; = null

.field private static b:Landroid/graphics/Bitmap; = null

.field private static c:Landroid/graphics/Canvas; = null

.field private static final defaultAutoDismissTime:F = 10.0f

.field static ds:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;

.field private static featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

.field private static inactive:Z

.field private static waittime:F


# instance fields
.field private ScreenImage:Landroid/graphics/Bitmap;

.field private autoDismissTime:F

.field private context:Landroid/content/Context;

.field delayShowHandler:Landroid/os/Handler;

.field dismissHandler:Landroid/os/Handler;

.field public downloadImage:Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;

.field fsg:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;

.field private fsl:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;

.field private isDelayForReady:Z

.field private isLandscape:Z

.field private isReady:Z

.field metrics:Landroid/util/DisplayMetrics;

.field public oncancellistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;

.field public onstartshowlistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onStartShowListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 30
    sput-object v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    .line 33
    sput-boolean v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->HAVEREQUEST:Z

    .line 35
    sput-boolean v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->inactive:Z

    .line 41
    sput-object v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->ds:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;

    .line 42
    const/high16 v0, 0x40a00000

    sput v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->waittime:F

    .line 252
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->c:Landroid/graphics/Canvas;

    .line 254
    sput-object v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->b:Landroid/graphics/Bitmap;

    .line 256
    sput-object v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->aa:Landroid/view/animation/AlphaAnimation;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->metrics:Landroid/util/DisplayMetrics;

    .line 36
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->context:Landroid/content/Context;

    .line 37
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->ScreenImage:Landroid/graphics/Bitmap;

    .line 38
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->downloadImage:Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;

    .line 39
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsg:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;

    .line 40
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsl:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;

    .line 43
    iput-boolean v2, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->isLandscape:Z

    .line 44
    iput-boolean v2, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->isReady:Z

    .line 46
    iput-boolean v2, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->isDelayForReady:Z

    .line 219
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->delayShowHandler:Landroid/os/Handler;

    .line 338
    new-instance v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$2;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$2;-><init>(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->dismissHandler:Landroid/os/Handler;

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->autoDismissTime:F

    .line 397
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->oncancellistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;

    .line 413
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->onstartshowlistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onStartShowListener;

    .line 85
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->context:Landroid/content/Context;

    .line 86
    new-instance v0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;

    invoke-direct {v0, p1}, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->downloadImage:Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;

    .line 88
    return-void
.end method

.method public static SetOnFeatureScreen(Landroid/content/Context;F)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->SetOnFeatureScreen(Landroid/content/Context;FZ)V

    .line 57
    return-void
.end method

.method public static SetOnFeatureScreen(Landroid/content/Context;FZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    sput-boolean v2, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->inactive:Z

    .line 62
    sput p1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->waittime:F

    .line 63
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    .line 66
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iput-boolean p2, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->isDelayForReady:Z

    .line 74
    :goto_0
    new-instance v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;

    sget-object v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    invoke-direct {v0, v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;-><init>(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$DownloadingScreen;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->setContext(Landroid/content/Context;)V

    .line 71
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->downloadImage:Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;

    invoke-virtual {v0, p0}, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->HAVEREQUEST:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 28
    sput-boolean p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->HAVEREQUEST:Z

    return p0
.end method

.method static synthetic access$100(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->isLandscape:Z

    return v0
.end method

.method static synthetic access$200(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->inactive:Z

    return v0
.end method

.method static synthetic access$500(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->isDelayForReady:Z

    return v0
.end method

.method static synthetic access$600()V
    .locals 0

    .prologue
    .line 28
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->showFeatureScreenForDelay()V

    return-void
.end method

.method static synthetic access$700()F
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->waittime:F

    return v0
.end method

.method static synthetic access$800(F)V
    .locals 0

    .prologue
    .line 28
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->showFeatureScreen(F)V

    return-void
.end method

.method static synthetic access$900(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->isReady:Z

    return v0
.end method

.method static synthetic access$902(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->isReady:Z

    return p1
.end method

.method public static onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 364
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsl:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsl:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 368
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->dismissHandler:Landroid/os/Handler;

    const/16 v1, 0x3021

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 369
    const/4 v0, 0x1

    .line 372
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeFeatureScrenn()V
    .locals 2

    .prologue
    .line 378
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsl:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsl:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 382
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsl:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->setVisibility(I)V

    .line 384
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->oncancellistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;

    if-eqz v0, :cond_0

    .line 386
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->oncancellistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;

    invoke-interface {v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;->onCancel()V

    .line 390
    :cond_0
    return-void
.end method

.method public static setActiveFromDelay()V
    .locals 2

    .prologue
    .line 249
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->setReady(Z)V

    .line 250
    return-void
.end method

.method private setAutoDismissTime(F)V
    .locals 0

    .prologue
    .line 352
    iput p1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->autoDismissTime:F

    .line 353
    return-void
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->context:Landroid/content/Context;

    .line 81
    return-void
.end method

.method public static setInactiveThisTime()V
    .locals 1

    .prologue
    .line 357
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    if-eqz v0, :cond_0

    .line 358
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->inactive:Z

    .line 359
    :cond_0
    return-void
.end method

.method public static setOnCancelListener(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;)V
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->oncancellistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;

    if-nez v0, :cond_0

    .line 403
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iput-object p0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->oncancellistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;

    .line 406
    :cond_0
    return-void
.end method

.method public static setOnStartShowListener(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onStartShowListener;)V
    .locals 1

    .prologue
    .line 417
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->onstartshowlistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onStartShowListener;

    if-nez v0, :cond_0

    .line 419
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iput-object p0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->onstartshowlistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onStartShowListener;

    .line 422
    :cond_0
    return-void
.end method

.method private setReady(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->isReady:Z

    .line 51
    return-void
.end method

.method private static showFeatureScreen(F)V
    .locals 6

    .prologue
    .line 263
    :try_start_0
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->context:Landroid/content/Context;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsg:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->downloadImage:Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;

    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->pic:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 268
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->setAutoDismissTime(F)V

    .line 270
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    new-instance v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;

    sget-object v2, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->context:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v4, v4, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->dismissHandler:Landroid/os/Handler;

    sget-object v5, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v5, v5, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->metrics:Landroid/util/DisplayMetrics;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Handler;Landroid/util/DisplayMetrics;)V

    iput-object v1, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsl:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;

    .line 274
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsl:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;

    sget-object v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->oncancellistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->setOnCancelListemer(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;)V

    .line 276
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsl:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;

    sget-object v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsg:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->setFeatureGame(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;)V

    .line 278
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object p0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->context:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsl:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsl:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;

    sget-object v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "featurescreen_image"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 290
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 292
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->downloadImage:Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;

    sget-object v1, Lcom/doodlemobile/gamecenter/featurescreen/DownloadFeatureScreenImage;->pic:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->aa:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 299
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->context:Landroid/content/Context;

    sget-object v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "anim"

    const-string v3, "dm_promo_fade_in"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AlphaAnimation;

    sput-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->aa:Landroid/view/animation/AlphaAnimation;

    .line 304
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsl:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->setVisibility(I)V

    .line 306
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->onstartshowlistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onStartShowListener;

    if-eqz v0, :cond_1

    .line 307
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->onstartshowlistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onStartShowListener;

    invoke-interface {v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onStartShowListener;->onStartShow()V

    .line 309
    :cond_1
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->aa:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_2

    .line 310
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->aa:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 312
    :cond_2
    const/16 v0, 0x10

    sget-object v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsg:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->mMarketUri:Ljava/lang/String;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "Appear"

    const-string v3, "FeatureScreen"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 317
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->autoDismissTime:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 318
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->dismissHandler:Landroid/os/Handler;

    const/16 v1, 0x3021

    sget-object v2, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget v2, v2, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->autoDismissTime:F

    const/high16 v3, 0x447a0000

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 335
    :cond_3
    :goto_0
    return-void

    .line 321
    :cond_4
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->dismissHandler:Landroid/os/Handler;

    const/16 v1, 0x3021

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 329
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->fsl:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->setVisibility(I)V

    goto :goto_0

    .line 331
    :catch_1
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static showFeatureScreenForDelay()V
    .locals 4

    .prologue
    .line 223
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->delayShowHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 224
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    new-instance v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$1;

    invoke-direct {v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$1;-><init>()V

    iput-object v1, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->delayShowHandler:Landroid/os/Handler;

    .line 244
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->featurescreen:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->delayShowHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x14a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 245
    return-void
.end method


# virtual methods
.method public CheckOrientation()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 94
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v1, :cond_0

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->isLandscape:Z

    .line 96
    :cond_0
    return-void
.end method
