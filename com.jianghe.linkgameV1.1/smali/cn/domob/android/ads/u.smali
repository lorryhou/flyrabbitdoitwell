.class public Lcn/domob/android/ads/u;
.super Lcn/domob/android/ads/y;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/DomobSplashAdListener;


# instance fields
.field private s:Lcn/domob/android/ads/DomobRTSplashAdListener;

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/domob/android/ads/y;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iput-boolean v0, p0, Lcn/domob/android/ads/u;->t:Z

    .line 19
    iput-boolean v0, p0, Lcn/domob/android/ads/u;->u:Z

    .line 24
    invoke-virtual {p0, p0}, Lcn/domob/android/ads/u;->a(Lcn/domob/android/ads/DomobSplashAdListener;)V

    .line 25
    sget-object v0, Lcn/domob/android/ads/DomobAdView$a;->e:Lcn/domob/android/ads/DomobAdView$a;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView$a;->ordinal()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/u;->b:I

    .line 26
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/u;)Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcn/domob/android/ads/u;->u:Z

    return v0
.end method

.method static synthetic a(Lcn/domob/android/ads/u;Z)Z
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lcn/domob/android/ads/u;->t:Z

    return p1
.end method

.method static synthetic b(Lcn/domob/android/ads/u;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcn/domob/android/ads/u;->v:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 34
    iput-object p1, p0, Lcn/domob/android/ads/u;->c:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcn/domob/android/ads/u;->p:Landroid/view/View;

    .line 36
    invoke-super {p0, p0}, Lcn/domob/android/ads/y;->setAdEventListener(Lcn/domob/android/ads/DomobAdEventListener;)V

    .line 37
    const-string v0, "rt_sp_ad_timeout"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/u;->a(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcn/domob/android/ads/u;->l()V

    .line 40
    invoke-virtual {p0}, Lcn/domob/android/ads/u;->requestRefreshAd()V

    .line 41
    return-void
.end method

.method a(Lcn/domob/android/ads/DomobRTSplashAdListener;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcn/domob/android/ads/u;->s:Lcn/domob/android/ads/DomobRTSplashAdListener;

    .line 30
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcn/domob/android/ads/u;->v:Ljava/lang/String;

    .line 143
    return-void
.end method

.method protected l()V
    .locals 5

    .prologue
    .line 47
    new-instance v0, Lcn/domob/android/ads/d/a;

    iget-object v1, p0, Lcn/domob/android/ads/u;->c:Landroid/content/Context;

    const-string v2, "domob_config"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    const-string v1, "timeout"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/d/a;->a(Ljava/lang/String;I)I

    move-result v0

    .line 52
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcn/domob/android/ads/u$1;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/u$1;-><init>(Lcn/domob/android/ads/u;)V

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    return-void
.end method

.method protected m()V
    .locals 6

    .prologue
    .line 81
    iget-boolean v0, p0, Lcn/domob/android/ads/u;->q:Z

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/u;->q:Z

    .line 83
    iget-object v0, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/e;

    iget-object v1, p0, Lcn/domob/android/ads/u;->g:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->c()Lcn/domob/android/ads/h;

    move-result-object v1

    const-string v2, "f"

    const-string v3, "s"

    iget-object v4, p0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v4}, Lcn/domob/android/ads/e;->e()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;Ljava/lang/String;Ljava/lang/String;J)V

    .line 86
    invoke-virtual {p0}, Lcn/domob/android/ads/u;->onSplashDismiss()V

    .line 89
    new-instance v0, Lcn/domob/android/ads/c;

    invoke-direct {v0}, Lcn/domob/android/ads/c;-><init>()V

    iget-object v1, p0, Lcn/domob/android/ads/u;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c;->c(Landroid/content/Context;)V

    .line 91
    :cond_0
    return-void
.end method

.method protected n()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcn/domob/android/ads/u;->t:Z

    return v0
.end method

.method public bridge synthetic onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V
    .locals 0
    .param p1, "x0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcn/domob/android/ads/y;->onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V

    return-void
.end method

.method public bridge synthetic onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .locals 0
    .param p1, "x0"    # Lcn/domob/android/ads/DomobAdView;
    .param p2, "x1"    # Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcn/domob/android/ads/y;->onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    return-void
.end method

.method public bridge synthetic onDomobAdOverlayDismissed(Lcn/domob/android/ads/DomobAdView;)V
    .locals 0
    .param p1, "x0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcn/domob/android/ads/y;->onDomobAdOverlayDismissed(Lcn/domob/android/ads/DomobAdView;)V

    return-void
.end method

.method public bridge synthetic onDomobAdOverlayPresented(Lcn/domob/android/ads/DomobAdView;)V
    .locals 0
    .param p1, "x0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcn/domob/android/ads/y;->onDomobAdOverlayPresented(Lcn/domob/android/ads/DomobAdView;)V

    return-void
.end method

.method public bridge synthetic onDomobAdRequiresCurrentContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcn/domob/android/ads/y;->onDomobAdRequiresCurrentContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V
    .locals 0
    .param p1, "x0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcn/domob/android/ads/y;->onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V

    return-void
.end method

.method public bridge synthetic onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V
    .locals 0
    .param p1, "x0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcn/domob/android/ads/y;->onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V

    return-void
.end method

.method public onSplashDismiss()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcn/domob/android/ads/u;->s:Lcn/domob/android/ads/DomobRTSplashAdListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcn/domob/android/ads/u;->s:Lcn/domob/android/ads/DomobRTSplashAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobRTSplashAdListener;->onRTSplashDismiss()V

    .line 111
    :cond_0
    return-void
.end method

.method public onSplashLoadFailed()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcn/domob/android/ads/u;->s:Lcn/domob/android/ads/DomobRTSplashAdListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/ads/u;->u:Z

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/u;->u:Z

    .line 121
    iget-object v0, p0, Lcn/domob/android/ads/u;->s:Lcn/domob/android/ads/DomobRTSplashAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobRTSplashAdListener;->onRTSplashLoadFailed()V

    .line 123
    invoke-virtual {p0}, Lcn/domob/android/ads/u;->onSplashDismiss()V

    .line 125
    :cond_0
    return-void
.end method

.method public onSplashPresent()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcn/domob/android/ads/u;->s:Lcn/domob/android/ads/DomobRTSplashAdListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcn/domob/android/ads/u;->s:Lcn/domob/android/ads/DomobRTSplashAdListener;

    invoke-interface {v0}, Lcn/domob/android/ads/DomobRTSplashAdListener;->onRTSplashPresent()V

    .line 101
    :cond_0
    return-void
.end method
