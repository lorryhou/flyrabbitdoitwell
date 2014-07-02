.class public Lcn/domob/android/ads/DomobSplashAd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/ads/d/e;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcn/domob/android/ads/y;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/DomobSplashAd;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/DomobSplashAd;->a:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->d:Z

    .line 31
    iput-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->e:Z

    .line 41
    iput-object p1, p0, Lcn/domob/android/ads/DomobSplashAd;->b:Landroid/content/Context;

    .line 42
    new-instance v0, Lcn/domob/android/ads/y;

    invoke-static {p1, p4}, Lcn/domob/android/ads/A;->a(Landroid/content/Context;Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcn/domob/android/ads/y;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    .line 43
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    iput-object p4, v0, Lcn/domob/android/ads/y;->r:Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    .line 44
    return-void
.end method


# virtual methods
.method public closeSplash()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0}, Lcn/domob/android/ads/y;->j()V

    .line 103
    :cond_0
    return-void
.end method

.method public isSplashAdReady()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->d:Z

    .line 60
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0}, Lcn/domob/android/ads/y;->p()Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->e:Z

    .line 61
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->e:Z

    return v0
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/y;->setKeyword(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setSplashAdListener(Lcn/domob/android/ads/DomobSplashAdListener;)V
    .locals 1
    .param p1, "listener"    # Lcn/domob/android/ads/DomobSplashAdListener;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/y;->a(Lcn/domob/android/ads/DomobSplashAdListener;)V

    .line 53
    return-void
.end method

.method public setSplashTopMargin(I)V
    .locals 2
    .param p1, "topMargin"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-static {v0, v1, p1}, Lcn/domob/android/ads/A;->a(Landroid/content/Context;Lcn/domob/android/ads/y;I)V

    .line 70
    return-void
.end method

.method public setUserBirthdayStr(Ljava/lang/String;)V
    .locals 1
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/y;->setUserBirthdayStr(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setUserGender(Ljava/lang/String;)V
    .locals 1
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/y;->setUserGender(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public setUserPostcode(Ljava/lang/String;)V
    .locals 1
    .param p1, "pc"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/y;->setUserPostcode(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public splash(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->e:Z

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcn/domob/android/ads/DomobSplashAd;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "Show Splash View."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0, p1, p2}, Lcn/domob/android/ads/y;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 81
    iput-boolean v2, p0, Lcn/domob/android/ads/DomobSplashAd;->d:Z

    .line 94
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobSplashAd;->d:Z

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "DomobSDK"

    const-string v1, "Splash AD is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobSplashAd;->isSplashAdReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcn/domob/android/ads/DomobSplashAd;->c:Lcn/domob/android/ads/y;

    invoke-virtual {v0, p1, p2}, Lcn/domob/android/ads/y;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 88
    iput-boolean v2, p0, Lcn/domob/android/ads/DomobSplashAd;->d:Z

    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "DomobSDK"

    const-string v1, "Splash AD is not ready yet. Please call \"isSplashReady()\" first to check."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
