.class public Lcn/domob/android/ads/DomobUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUpdate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "publisherID"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Lcn/domob/android/ads/C;

    new-instance v1, Lcn/domob/android/ads/e;

    invoke-direct {v1, p1}, Lcn/domob/android/ads/e;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcn/domob/android/ads/C;-><init>(Landroid/content/Context;Lcn/domob/android/ads/e;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/C;->a()V

    .line 19
    return-void
.end method
