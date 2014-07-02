.class public Lcn/domob/android/ads/v;
.super Lcn/domob/android/ads/z;
.source "SourceFile"


# static fields
.field private static j:Lcn/domob/android/ads/d/e;


# instance fields
.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/v;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/v;->j:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/android/ads/i;Lcn/domob/android/ads/h;Lcn/domob/android/ads/e;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/z;-><init>(Landroid/content/Context;Lcn/domob/android/ads/i;Lcn/domob/android/ads/h;Lcn/domob/android/ads/e;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcn/domob/android/ads/v;->k:I

    .line 26
    sget-object v0, Lcn/domob/android/ads/v;->j:Lcn/domob/android/ads/d/e;

    const-string v1, "New DomobRTSplashAdapter instance."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/v;)I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcn/domob/android/ads/v;->k:I

    return v0
.end method

.method static synthetic a(Lcn/domob/android/ads/v;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcn/domob/android/ads/v;->k:I

    return p1
.end method

.method static synthetic o()Lcn/domob/android/ads/d/e;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcn/domob/android/ads/v;->j:Lcn/domob/android/ads/d/e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 31
    iget-object v0, p0, Lcn/domob/android/ads/v;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcn/domob/android/ads/B;

    iget-object v1, p0, Lcn/domob/android/ads/v;->a:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2, v6, p0}, Lcn/domob/android/ads/B;-><init>(Landroid/content/Context;Ljava/lang/String;ILcn/domob/android/ads/B$a;)V

    .line 34
    iput-object v0, p0, Lcn/domob/android/ads/v;->f:Landroid/view/View;

    .line 36
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcn/domob/android/ads/v;->b:Lcn/domob/android/ads/i;

    invoke-virtual {v2}, Lcn/domob/android/ads/i;->a()I

    move-result v2

    iget-object v3, p0, Lcn/domob/android/ads/v;->b:Lcn/domob/android/ads/i;

    invoke-virtual {v3}, Lcn/domob/android/ads/i;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/B;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    new-instance v1, Lcn/domob/android/ads/v$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/v$1;-><init>(Lcn/domob/android/ads/v;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/a$a;)V

    .line 83
    iget-object v1, p0, Lcn/domob/android/ads/v;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->f()Ljava/lang/String;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    const-string v3, "url"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    sget-object v2, Lcn/domob/android/ads/v;->j:Lcn/domob/android/ads/d/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get an DomobSplashWebView instance and load with URL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/B;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    sget-object v2, Lcn/domob/android/ads/v;->j:Lcn/domob/android/ads/d/e;

    const-string v3, "Get an DomobSplashWebView instance and load data = [%s] with base URL=[%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->h()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->g()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcn/domob/android/ads/B;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    sget-object v0, Lcn/domob/android/ads/v;->j:Lcn/domob/android/ads/d/e;

    const-string v1, "Content type is not available."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v1, "Content type is illegal."

    invoke-virtual {p0, v0, v1}, Lcn/domob/android/ads/v;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcn/domob/android/ads/a/e;)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcn/domob/android/ads/v;->k:I

    if-lez v0, :cond_0

    .line 113
    iget v0, p0, Lcn/domob/android/ads/v;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/domob/android/ads/v;->k:I

    .line 114
    iget v0, p0, Lcn/domob/android/ads/v;->k:I

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lcn/domob/android/ads/v;->j:Lcn/domob/android/ads/d/e;

    const-string v1, "All resources are replaced."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcn/domob/android/ads/v;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/v$2;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/v$2;-><init>(Lcn/domob/android/ads/v;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 126
    :cond_0
    return-void
.end method
