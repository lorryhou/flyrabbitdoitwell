.class final Lcom/adsmogo/splash/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/app/Activity;

.field b:Landroid/view/ViewGroup;

.field c:Landroid/widget/ImageView;

.field public d:Landroid/os/Handler;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private synthetic h:Lcom/adsmogo/splash/AdsMogoSplash;


# direct methods
.method public constructor <init>(Lcom/adsmogo/splash/AdsMogoSplash;Lcom/adsmogo/splash/AdsMogoSplash;Landroid/app/Activity;Ljava/lang/String;Landroid/view/ViewGroup;II)V
    .locals 1

    iput-object p1, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/adsmogo/splash/d;

    invoke-direct {v0, p0}, Lcom/adsmogo/splash/d;-><init>(Lcom/adsmogo/splash/c;)V

    iput-object v0, p0, Lcom/adsmogo/splash/c;->d:Landroid/os/Handler;

    iput-object p3, p0, Lcom/adsmogo/splash/c;->a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/adsmogo/splash/c;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/adsmogo/splash/c;->b:Landroid/view/ViewGroup;

    iput p6, p0, Lcom/adsmogo/splash/c;->f:I

    iput p7, p0, Lcom/adsmogo/splash/c;->g:I

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/splash/c;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/adsmogo/util/GetUserInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/splash/c;)Lcom/adsmogo/splash/AdsMogoSplash;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    return-object v0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    new-instance v1, Lcom/adsmogo/splash/f;

    invoke-direct {v1, p0}, Lcom/adsmogo/splash/f;-><init>(Lcom/adsmogo/splash/c;)V

    invoke-static {v0, v1}, Lcom/adsmogo/splash/AdsMogoSplash;->a(Lcom/adsmogo/splash/AdsMogoSplash;Ljava/util/TimerTask;)V

    iget-object v0, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    invoke-static {v0}, Lcom/adsmogo/splash/AdsMogoSplash;->a(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    invoke-static {v1}, Lcom/adsmogo/splash/AdsMogoSplash;->b(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/util/TimerTask;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    invoke-static {v2}, Lcom/adsmogo/splash/AdsMogoSplash;->i(Lcom/adsmogo/splash/AdsMogoSplash;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    invoke-static {v0}, Lcom/adsmogo/splash/AdsMogoSplash;->c(Lcom/adsmogo/splash/AdsMogoSplash;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adsmogo/splash/c;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/splash/c;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    invoke-static {v0}, Lcom/adsmogo/splash/AdsMogoSplash;->d(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/splash/c;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/adsmogo/splash/e;

    invoke-direct {v1, p0}, Lcom/adsmogo/splash/e;-><init>(Lcom/adsmogo/splash/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/splash/c;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adsmogo/splash/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v4, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/adsmogo/splash/c;->d:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/adsmogo/splash/c;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    invoke-static {v2}, Lcom/adsmogo/splash/AdsMogoSplash;->j(Lcom/adsmogo/splash/AdsMogoSplash;)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const v3, 0x3dcccccd

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/adsmogo/splash/c;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0}, Lcom/adsmogo/splash/c;->a()V

    :goto_0
    iget-object v0, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    new-instance v1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-direct {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;-><init>()V

    iput-object v1, v0, Lcom/adsmogo/splash/AdsMogoSplash;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v0, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    iget-object v0, v0, Lcom/adsmogo/splash/AdsMogoSplash;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget v1, p0, Lcom/adsmogo/splash/c;->f:I

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setWidth(I)V

    iget-object v0, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    iget-object v0, v0, Lcom/adsmogo/splash/AdsMogoSplash;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget v1, p0, Lcom/adsmogo/splash/c;->g:I

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setHeight(I)V

    iget-object v0, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    iget-object v0, v0, Lcom/adsmogo/splash/AdsMogoSplash;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, p0, Lcom/adsmogo/splash/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setAppid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    iget-object v0, v0, Lcom/adsmogo/splash/AdsMogoSplash;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setAdType(I)V

    iget-object v0, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    iget-object v0, v0, Lcom/adsmogo/splash/AdsMogoSplash;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0, v4}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setExpressMode(Z)V

    iget-object v0, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    iget-object v0, v0, Lcom/adsmogo/splash/AdsMogoSplash;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, p0, Lcom/adsmogo/splash/c;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/adsmogo/controller/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setCountryCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    iget-object v0, v0, Lcom/adsmogo/splash/AdsMogoSplash;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, p0, Lcom/adsmogo/splash/c;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getPngSize(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setPngSize(I)V

    iget-object v0, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    invoke-static {v0}, Lcom/adsmogo/splash/AdsMogoSplash;->h(Lcom/adsmogo/splash/AdsMogoSplash;)Lcom/adsmogo/util/e;

    move-result-object v0

    new-instance v1, Lcom/adsmogo/splash/b;

    iget-object v2, p0, Lcom/adsmogo/splash/c;->h:Lcom/adsmogo/splash/AdsMogoSplash;

    invoke-direct {v1, v2}, Lcom/adsmogo/splash/b;-><init>(Lcom/adsmogo/splash/AdsMogoSplash;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/adsmogo/splash/c;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/splash/c;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adsmogo/splash/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "MOGO Splash ad expired."

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    const-string v1, "MOGO Splash ad expired."

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/adsmogo/splash/c;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    invoke-direct {p0}, Lcom/adsmogo/splash/c;->a()V

    goto/16 :goto_0
.end method
