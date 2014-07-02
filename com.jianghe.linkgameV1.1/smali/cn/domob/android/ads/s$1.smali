.class final Lcn/domob/android/ads/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/s;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/s;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/s;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 91
    iget-object v0, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    invoke-static {v0}, Lcn/domob/android/ads/s;->a(Lcn/domob/android/ads/s;)Lcn/domob/android/ads/DomobInterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    invoke-static {v0}, Lcn/domob/android/ads/s;->a(Lcn/domob/android/ads/s;)Lcn/domob/android/ads/DomobInterstitialAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onInterstitialAdPresent()V

    .line 95
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    iget-object v0, v0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    iget-object v1, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    iget-object v1, v1, Lcn/domob/android/ads/s;->g:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->c()Lcn/domob/android/ads/h;

    move-result-object v1

    const-string v2, "s"

    const-string v3, "s"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;Ljava/lang/String;Ljava/lang/String;J)V

    .line 97
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 101
    iget-object v0, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    iget-object v0, v0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    iget-object v1, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    iget-object v1, v1, Lcn/domob/android/ads/s;->g:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->c()Lcn/domob/android/ads/h;

    move-result-object v1

    const-string v2, "m"

    const-string v3, "s"

    iget-object v4, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    iget-object v4, v4, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v4}, Lcn/domob/android/ads/e;->e()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;Ljava/lang/String;Ljava/lang/String;J)V

    .line 103
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    .line 107
    iget-object v0, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    iget-object v0, v0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    iget-object v1, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    iget-object v1, v1, Lcn/domob/android/ads/s;->g:Lcn/domob/android/ads/j;

    invoke-virtual {v1}, Lcn/domob/android/ads/j;->c()Lcn/domob/android/ads/h;

    move-result-object v1

    const-string v2, "f"

    const-string v3, "s"

    iget-object v4, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    iget-object v4, v4, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v4}, Lcn/domob/android/ads/e;->e()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;Ljava/lang/String;Ljava/lang/String;J)V

    .line 109
    iget-object v0, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    invoke-static {v0}, Lcn/domob/android/ads/s;->a(Lcn/domob/android/ads/s;)Lcn/domob/android/ads/DomobInterstitialAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    invoke-static {v0}, Lcn/domob/android/ads/s;->a(Lcn/domob/android/ads/s;)Lcn/domob/android/ads/DomobInterstitialAdListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/DomobInterstitialAdListener;->onInterstitialAdDismiss()V

    .line 112
    :cond_0
    return-void
.end method
