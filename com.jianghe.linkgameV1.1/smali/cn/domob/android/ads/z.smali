.class public Lcn/domob/android/ads/z;
.super Lcn/domob/android/ads/j;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/B$a;


# static fields
.field protected static final g:Ljava/lang/String; = "domob"

.field protected static final h:Ljava/lang/String; = "addAsset"

.field protected static final i:Ljava/lang/String; = "addAssets"

.field private static j:Lcn/domob/android/ads/d/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/z;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/z;->j:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/domob/android/ads/i;Lcn/domob/android/ads/h;Lcn/domob/android/ads/e;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/j;-><init>(Landroid/content/Context;Lcn/domob/android/ads/i;Lcn/domob/android/ads/h;Lcn/domob/android/ads/e;)V

    .line 25
    sget-object v0, Lcn/domob/android/ads/z;->j:Lcn/domob/android/ads/d/e;

    const-string v1, "New DomobSplashAdapter instance."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method static synthetic o()Lcn/domob/android/ads/d/e;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcn/domob/android/ads/z;->j:Lcn/domob/android/ads/d/e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcn/domob/android/ads/z;->f:Landroid/view/View;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcn/domob/android/ads/B;

    iget-object v1, p0, Lcn/domob/android/ads/z;->a:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lcn/domob/android/ads/B;-><init>(Landroid/content/Context;Ljava/lang/String;ILcn/domob/android/ads/B$a;)V

    .line 32
    iput-object v0, p0, Lcn/domob/android/ads/z;->f:Landroid/view/View;

    .line 34
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcn/domob/android/ads/z;->b:Lcn/domob/android/ads/i;

    invoke-virtual {v2}, Lcn/domob/android/ads/i;->a()I

    move-result v2

    iget-object v3, p0, Lcn/domob/android/ads/z;->b:Lcn/domob/android/ads/i;

    invoke-virtual {v3}, Lcn/domob/android/ads/i;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/B;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    new-instance v1, Lcn/domob/android/ads/z$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/z$1;-><init>(Lcn/domob/android/ads/z;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/a$a;)V

    .line 75
    iget-object v1, p0, Lcn/domob/android/ads/z;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/z;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v2}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h$b;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/z;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v3}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/h$b;->v()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/android/ads/B;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    :cond_0
    return-void
.end method

.method public a(Lcn/domob/android/ads/a/e;)V
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcn/domob/android/ads/z;->j:Lcn/domob/android/ads/d/e;

    const-string v1, "All resources are replaced."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcn/domob/android/ads/z;->g()V

    .line 103
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcn/domob/android/ads/z;->d:Lcn/domob/android/ads/e;

    check-cast v0, Lcn/domob/android/ads/x;

    iget-object v1, p0, Lcn/domob/android/ads/z;->d:Lcn/domob/android/ads/e;

    check-cast v1, Lcn/domob/android/ads/x;

    iget-object v1, v1, Lcn/domob/android/ads/x;->e:Lcn/domob/android/ads/h;

    const-string v2, "sp_load_img_fail"

    invoke-virtual {v0, v1, v2, p1}, Lcn/domob/android/ads/x;->a(Lcn/domob/android/ads/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcn/domob/android/ads/z;->f:Landroid/view/View;

    instance-of v0, v0, Lcn/domob/android/ads/B;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcn/domob/android/ads/z;->f:Landroid/view/View;

    check-cast v0, Lcn/domob/android/ads/B;

    invoke-virtual {v0}, Lcn/domob/android/ads/B;->destroy()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/z;->f:Landroid/view/View;

    .line 97
    :cond_0
    return-void
.end method

.method public n()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method
