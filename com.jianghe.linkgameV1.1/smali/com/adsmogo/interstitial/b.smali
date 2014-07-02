.class final Lcom/adsmogo/interstitial/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Landroid/view/ViewGroup;

.field private synthetic f:Lcom/adsmogo/interstitial/AdsMogoInterstitial;


# direct methods
.method public constructor <init>(Lcom/adsmogo/interstitial/AdsMogoInterstitial;Lcom/adsmogo/interstitial/AdsMogoInterstitial;Landroid/app/Activity;Ljava/lang/String;ZILandroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/interstitial/b;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/adsmogo/interstitial/b;->a:Landroid/app/Activity;

    iput-object p4, p0, Lcom/adsmogo/interstitial/b;->b:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/adsmogo/interstitial/b;->c:Z

    iput p6, p0, Lcom/adsmogo/interstitial/b;->d:I

    iput-object p7, p0, Lcom/adsmogo/interstitial/b;->e:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/adsmogo/interstitial/b;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    new-instance v1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-direct {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;-><init>()V

    iput-object v1, v0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v0, p0, Lcom/adsmogo/interstitial/b;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    iget-object v0, v0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, p0, Lcom/adsmogo/interstitial/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setAppid(Ljava/lang/String;)V

    iget v0, p0, Lcom/adsmogo/interstitial/b;->d:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/adsmogo/interstitial/b;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    iget-object v0, v0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setAdType(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adsmogo/interstitial/b;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    iget-object v0, v0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-boolean v1, p0, Lcom/adsmogo/interstitial/b;->c:Z

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setRotate(Z)V

    iget-object v0, p0, Lcom/adsmogo/interstitial/b;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    iget-object v0, v0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0, v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setExpressMode(Z)V

    iget-object v0, p0, Lcom/adsmogo/interstitial/b;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    iget-object v0, v0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, p0, Lcom/adsmogo/interstitial/b;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/adsmogo/controller/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setCountryCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/interstitial/b;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    iget-object v0, v0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, p0, Lcom/adsmogo/interstitial/b;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getPngSize(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setPngSize(I)V

    iget-object v0, p0, Lcom/adsmogo/interstitial/b;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    iget-object v0, v0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/interstitial/a;

    iget-object v2, p0, Lcom/adsmogo/interstitial/b;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    invoke-direct {v1, v2}, Lcom/adsmogo/interstitial/a;-><init>(Lcom/adsmogo/interstitial/AdsMogoInterstitial;)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    return-void

    :cond_1
    iget v0, p0, Lcom/adsmogo/interstitial/b;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/b;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    iget-object v0, v0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setAdType(I)V

    iget-object v0, p0, Lcom/adsmogo/interstitial/b;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/interstitial/b;->f:Lcom/adsmogo/interstitial/AdsMogoInterstitial;

    iget-object v0, v0, Lcom/adsmogo/interstitial/AdsMogoInterstitial;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, p0, Lcom/adsmogo/interstitial/b;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setView(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method
