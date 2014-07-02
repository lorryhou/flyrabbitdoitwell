.class final Lcn/domob/android/ads/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

.field final synthetic b:Lcn/domob/android/ads/e;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/e;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Lcn/domob/android/ads/e$2;->b:Lcn/domob/android/ads/e;

    iput-object p2, p0, Lcn/domob/android/ads/e$2;->a:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 769
    iget-object v0, p0, Lcn/domob/android/ads/e$2;->b:Lcn/domob/android/ads/e;

    iget-object v0, v0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->e()Lcn/domob/android/ads/DomobAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcn/domob/android/ads/e$2;->b:Lcn/domob/android/ads/e;

    iget-object v0, v0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->e()Lcn/domob/android/ads/DomobAdListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/e$2;->b:Lcn/domob/android/ads/e;

    iget-object v1, v1, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/DomobAdListener;->onFailedToReceiveFreshAd(Lcn/domob/android/ads/DomobAdView;)V

    .line 773
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/e$2;->b:Lcn/domob/android/ads/e;

    iget-object v0, v0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcn/domob/android/ads/e$2;->b:Lcn/domob/android/ads/e;

    iget-object v0, v0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/DomobAdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/e$2;->b:Lcn/domob/android/ads/e;

    iget-object v1, v1, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    iget-object v2, p0, Lcn/domob/android/ads/e$2;->a:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcn/domob/android/ads/DomobAdEventListener;->onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 776
    :cond_1
    return-void
.end method
