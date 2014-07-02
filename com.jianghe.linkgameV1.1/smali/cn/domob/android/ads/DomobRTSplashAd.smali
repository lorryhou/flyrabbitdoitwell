.class public Lcn/domob/android/ads/DomobRTSplashAd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcn/domob/android/ads/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcn/domob/android/ads/DomobRTSplashAd;->a:Landroid/content/Context;

    .line 35
    new-instance v0, Lcn/domob/android/ads/u;

    invoke-static {p1, p4}, Lcn/domob/android/ads/A;->a(Landroid/content/Context;Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcn/domob/android/ads/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobRTSplashAd;->b:Lcn/domob/android/ads/u;

    .line 36
    iget-object v0, p0, Lcn/domob/android/ads/DomobRTSplashAd;->b:Lcn/domob/android/ads/u;

    iput-object p4, v0, Lcn/domob/android/ads/u;->r:Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    .line 37
    return-void
.end method


# virtual methods
.method public closeRTSplash()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/domob/android/ads/DomobRTSplashAd;->b:Lcn/domob/android/ads/u;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcn/domob/android/ads/DomobRTSplashAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0}, Lcn/domob/android/ads/u;->j()V

    .line 71
    :cond_0
    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcn/domob/android/ads/DomobRTSplashAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/u;->setKeyword(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setRTSplashAdListener(Lcn/domob/android/ads/DomobRTSplashAdListener;)V
    .locals 1
    .param p1, "listener"    # Lcn/domob/android/ads/DomobRTSplashAdListener;

    .prologue
    .line 45
    iget-object v0, p0, Lcn/domob/android/ads/DomobRTSplashAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/u;->a(Lcn/domob/android/ads/DomobRTSplashAdListener;)V

    .line 46
    return-void
.end method

.method public setRTSplashTopMargin(I)V
    .locals 2
    .param p1, "topMargin"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcn/domob/android/ads/DomobRTSplashAd;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/android/ads/DomobRTSplashAd;->b:Lcn/domob/android/ads/u;

    invoke-static {v0, v1, p1}, Lcn/domob/android/ads/A;->a(Landroid/content/Context;Lcn/domob/android/ads/y;I)V

    .line 54
    return-void
.end method

.method public setUserBirthdayStr(Ljava/lang/String;)V
    .locals 1
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Lcn/domob/android/ads/DomobRTSplashAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/u;->setUserBirthdayStr(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 1
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcn/domob/android/ads/DomobRTSplashAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/u;->setUserGender(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public setUserPostcode(Ljava/lang/String;)V
    .locals 1
    .param p1, "pc"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcn/domob/android/ads/DomobRTSplashAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/u;->setUserPostcode(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public splash(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutView"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcn/domob/android/ads/DomobRTSplashAd;->b:Lcn/domob/android/ads/u;

    invoke-virtual {v0, p1, p2}, Lcn/domob/android/ads/u;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 61
    return-void
.end method
