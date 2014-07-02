.class Lcn/domob/android/ads/s;
.super Lcn/domob/android/ads/DomobAdView;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/DomobAdEventListener;


# static fields
.field private static p:Lcn/domob/android/ads/d/e;


# instance fields
.field private q:Z

.field private r:Z

.field private s:Lcn/domob/android/ads/DomobInterstitialAd;

.field private t:Lcn/domob/android/ads/DomobInterstitialAdListener;

.field private u:Lcn/domob/android/ads/t$a;

.field private v:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/s;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/s;->p:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-boolean v1, p0, Lcn/domob/android/ads/s;->q:Z

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/s;->r:Z

    .line 21
    sget-object v0, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->Black:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    iput-object v0, p0, Lcn/domob/android/ads/s;->v:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    .line 22
    iput-object v2, p0, Lcn/domob/android/ads/s;->w:Landroid/graphics/drawable/Drawable;

    .line 25
    iput-object v2, p0, Lcn/domob/android/ads/s;->z:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcn/domob/android/ads/s;->z:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/e;->a(Z)V

    .line 32
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/e;->b(Z)V

    .line 35
    :cond_0
    sget-object v0, Lcn/domob/android/ads/DomobAdView$a;->c:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/s;->b:I

    .line 36
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-boolean v1, p0, Lcn/domob/android/ads/s;->q:Z

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/s;->r:Z

    .line 21
    sget-object v0, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->Black:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    iput-object v0, p0, Lcn/domob/android/ads/s;->v:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    .line 22
    iput-object v2, p0, Lcn/domob/android/ads/s;->w:Landroid/graphics/drawable/Drawable;

    .line 25
    iput-object v2, p0, Lcn/domob/android/ads/s;->z:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcn/domob/android/ads/s;->z:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/e;->a(Z)V

    .line 55
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/e;->b(Z)V

    .line 58
    :cond_0
    sget-object v0, Lcn/domob/android/ads/DomobAdView$a;->c:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/s;->b:I

    .line 59
    iput-object p5, p0, Lcn/domob/android/ads/s;->w:Landroid/graphics/drawable/Drawable;

    .line 60
    iput p6, p0, Lcn/domob/android/ads/s;->x:I

    .line 61
    iput p7, p0, Lcn/domob/android/ads/s;->y:I

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/DomobInterstitialAd$BorderType;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/DomobAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-boolean v1, p0, Lcn/domob/android/ads/s;->q:Z

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/s;->r:Z

    .line 21
    sget-object v0, Lcn/domob/android/ads/DomobInterstitialAd$BorderType;->Black:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    iput-object v0, p0, Lcn/domob/android/ads/s;->v:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    .line 22
    iput-object v2, p0, Lcn/domob/android/ads/s;->w:Landroid/graphics/drawable/Drawable;

    .line 25
    iput-object v2, p0, Lcn/domob/android/ads/s;->z:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcn/domob/android/ads/s;->z:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/e;->a(Z)V

    .line 43
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/e;->b(Z)V

    .line 46
    :cond_0
    sget-object v0, Lcn/domob/android/ads/DomobAdView$a;->c:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/s;->b:I

    .line 47
    iput-object p5, p0, Lcn/domob/android/ads/s;->v:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    .line 48
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/s;)Lcn/domob/android/ads/DomobInterstitialAdListener;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->w()Lcn/domob/android/ads/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h$b;->p()Z

    move-result v0

    .line 76
    iget-object v3, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v3}, Lcn/domob/android/ads/e;->w()Lcn/domob/android/ads/h;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/h$b;->q()F

    move-result v3

    .line 77
    iget-object v4, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v4}, Lcn/domob/android/ads/e;->w()Lcn/domob/android/ads/h;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/h$b;->r()F

    move-result v4

    .line 78
    iget-object v5, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    iput-object p1, v5, Lcn/domob/android/ads/e;->b:Landroid/content/Context;

    .line 80
    iget-object v5, p0, Lcn/domob/android/ads/s;->z:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 81
    iput v6, p0, Lcn/domob/android/ads/s;->i:I

    .line 82
    iput v6, p0, Lcn/domob/android/ads/s;->j:I

    .line 84
    :cond_0
    new-instance v5, Lcn/domob/android/ads/t$a;

    invoke-direct {v5, p1}, Lcn/domob/android/ads/t$a;-><init>(Landroid/content/Context;)V

    iget v6, p0, Lcn/domob/android/ads/s;->i:I

    iget v7, p0, Lcn/domob/android/ads/s;->j:I

    invoke-virtual {v5, v6, v7}, Lcn/domob/android/ads/t$a;->a(II)Lcn/domob/android/ads/t$a;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcn/domob/android/ads/t$a;->c(Z)Lcn/domob/android/ads/t$a;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/android/ads/s;->v:Lcn/domob/android/ads/DomobInterstitialAd$BorderType;

    invoke-virtual {v5, v6}, Lcn/domob/android/ads/t$a;->a(Lcn/domob/android/ads/DomobInterstitialAd$BorderType;)Lcn/domob/android/ads/t$a;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/android/ads/s;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcn/domob/android/ads/t$a;->a(Landroid/graphics/drawable/Drawable;)Lcn/domob/android/ads/t$a;

    move-result-object v5

    iget v6, p0, Lcn/domob/android/ads/s;->x:I

    invoke-virtual {v5, v6}, Lcn/domob/android/ads/t$a;->a(I)Lcn/domob/android/ads/t$a;

    move-result-object v5

    iget v6, p0, Lcn/domob/android/ads/s;->y:I

    invoke-virtual {v5, v6}, Lcn/domob/android/ads/t$a;->b(I)Lcn/domob/android/ads/t$a;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcn/domob/android/ads/t$a;->a(Z)Lcn/domob/android/ads/t$a;

    move-result-object v5

    cmpl-float v0, v3, v8

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0, v3}, Lcn/domob/android/ads/t$a;->a(ZF)Lcn/domob/android/ads/t$a;

    move-result-object v3

    cmpl-float v0, v4, v8

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0, v4}, Lcn/domob/android/ads/t$a;->b(ZF)Lcn/domob/android/ads/t$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/t$a;->b(Z)Lcn/domob/android/ads/t$a;

    move-result-object v0

    new-instance v3, Lcn/domob/android/ads/s$1;

    invoke-direct {v3, p0}, Lcn/domob/android/ads/s$1;-><init>(Lcn/domob/android/ads/s;)V

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/t$a;->a(Lcn/domob/android/ads/t$b;)Lcn/domob/android/ads/t$a;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/s;->u:Lcn/domob/android/ads/t$a;

    .line 115
    iget-object v0, p0, Lcn/domob/android/ads/s;->u:Lcn/domob/android/ads/t$a;

    invoke-virtual {v0, p0}, Lcn/domob/android/ads/t$a;->a(Landroid/view/View;)V

    .line 117
    iput-boolean v2, p0, Lcn/domob/android/ads/s;->q:Z

    .line 119
    iput-boolean v1, p0, Lcn/domob/android/ads/s;->r:Z

    .line 120
    sget-object v0, Lcn/domob/android/ads/s;->p:Lcn/domob/android/ads/d/e;

    const-string v1, "the ad is showing and change mIsAdShow to true"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    return-void

    :cond_1
    move v0, v2

    .line 84
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method a(Lcn/domob/android/ads/DomobInterstitialAdListener;Lcn/domob/android/ads/DomobInterstitialAd;)V
    .locals 0

    .prologue
    .line 148
    iput-object p2, p0, Lcn/domob/android/ads/s;->s:Lcn/domob/android/ads/DomobInterstitialAd;

    .line 149
    iput-object p1, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    .line 150
    return-void
.end method

.method protected a(Lcn/domob/android/ads/j;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method protected j()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcn/domob/android/ads/s;->u:Lcn/domob/android/ads/t$a;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcn/domob/android/ads/s;->u:Lcn/domob/android/ads/t$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/t$a;->a()V

    .line 133
    :cond_0
    return-void
.end method

.method l()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p0}, Lcn/domob/android/ads/DomobAdView;->setAdEventListener(Lcn/domob/android/ads/DomobAdEventListener;)V

    .line 67
    invoke-super {p0}, Lcn/domob/android/ads/DomobAdView;->requestRefreshAd()V

    .line 68
    return-void
.end method

.method m()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcn/domob/android/ads/s;->q:Z

    return v0
.end method

.method n()Z
    .locals 1

    .prologue
    .line 136
    iget-boolean v0, p0, Lcn/domob/android/ads/s;->q:Z

    return v0
.end method

.method o()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcn/domob/android/ads/s;->r:Z

    return v0
.end method

.method public onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 198
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/s;->s:Lcn/domob/android/ads/DomobInterstitialAd;

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lcn/domob/android/ads/s;->p:Lcn/domob/android/ads/d/e;

    const-string v1, "Notify user clicks on the interstitial ad."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    iget-object v1, p0, Lcn/domob/android/ads/s;->s:Lcn/domob/android/ads/DomobInterstitialAd;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onInterstitialAdClicked(Lcn/domob/android/ads/DomobInterstitialAd;)V

    .line 202
    :cond_0
    return-void
.end method

.method public onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;
    .param p2, "code"    # Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    .prologue
    .line 166
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lcn/domob/android/ads/s;->p:Lcn/domob/android/ads/d/e;

    const-string v1, "Notify interstitial ad failed."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    invoke-interface {v0, p2}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onInterstitialAdFailed(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 170
    :cond_0
    return-void
.end method

.method public onDomobAdOverlayDismissed(Lcn/domob/android/ads/DomobAdView;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 182
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcn/domob/android/ads/s;->p:Lcn/domob/android/ads/d/e;

    const-string v1, "Notify interstitial ad landing page close."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onLandingPageClose()V

    .line 186
    :cond_0
    return-void
.end method

.method public onDomobAdOverlayPresented(Lcn/domob/android/ads/DomobAdView;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 174
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcn/domob/android/ads/s;->p:Lcn/domob/android/ads/d/e;

    const-string v1, "Notify interstitial ad landing page open."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onLandingPageOpen()V

    .line 178
    :cond_0
    return-void
.end method

.method public onDomobAdRequiresCurrentContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    iget-object v0, v0, Lcn/domob/android/ads/e;->b:Landroid/content/Context;

    return-object v0
.end method

.method public onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/s;->q:Z

    .line 155
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcn/domob/android/ads/s;->p:Lcn/domob/android/ads/d/e;

    const-string v1, "Notify interstitial ad ready."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onInterstitialAdReady()V

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/s;->r:Z

    .line 160
    sget-object v0, Lcn/domob/android/ads/s;->p:Lcn/domob/android/ads/d/e;

    const-string v1, "ad already received and change show status to false"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V
    .locals 2
    .param p1, "adView"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 190
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcn/domob/android/ads/s;->p:Lcn/domob/android/ads/d/e;

    const-string v1, "Notify interstitial ad leaving application."

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onInterstitialAdLeaveApplication()V

    .line 194
    :cond_0
    return-void
.end method

.method p()Lcn/domob/android/ads/DomobInterstitialAdListener;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcn/domob/android/ads/s;->t:Lcn/domob/android/ads/DomobInterstitialAdListener;

    return-object v0
.end method
