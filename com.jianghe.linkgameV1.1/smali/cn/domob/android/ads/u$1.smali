.class final Lcn/domob/android/ads/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/u;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/u;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/u;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcn/domob/android/ads/u$1;->a:Lcn/domob/android/ads/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 56
    iget-object v0, p0, Lcn/domob/android/ads/u$1;->a:Lcn/domob/android/ads/u;

    iget-object v0, v0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/e;

    check-cast v0, Lcn/domob/android/ads/x;

    invoke-virtual {v0}, Lcn/domob/android/ads/x;->J()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/u$1;->a:Lcn/domob/android/ads/u;

    invoke-static {v0}, Lcn/domob/android/ads/u;->a(Lcn/domob/android/ads/u;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcn/domob/android/ads/u$1;->a:Lcn/domob/android/ads/u;

    invoke-static {v0, v6}, Lcn/domob/android/ads/u;->a(Lcn/domob/android/ads/u;Z)Z

    .line 60
    iget-object v0, p0, Lcn/domob/android/ads/u$1;->a:Lcn/domob/android/ads/u;

    iget-object v0, v0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/e;

    check-cast v0, Lcn/domob/android/ads/x;

    iget-object v1, p0, Lcn/domob/android/ads/u$1;->a:Lcn/domob/android/ads/u;

    iget-object v1, v1, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/e;

    check-cast v1, Lcn/domob/android/ads/x;

    iget-object v1, v1, Lcn/domob/android/ads/x;->e:Lcn/domob/android/ads/h;

    iget-object v2, p0, Lcn/domob/android/ads/u$1;->a:Lcn/domob/android/ads/u;

    invoke-static {v2}, Lcn/domob/android/ads/u;->b(Lcn/domob/android/ads/u;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/x;->a(Lcn/domob/android/ads/h;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcn/domob/android/ads/u$1;->a:Lcn/domob/android/ads/u;

    iget-object v1, v0, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/e;

    iget-object v0, p0, Lcn/domob/android/ads/u$1;->a:Lcn/domob/android/ads/u;

    invoke-static {v0}, Lcn/domob/android/ads/u;->b(Lcn/domob/android/ads/u;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "rt_sp_ad_timeout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->RT_SPLASH_TIMEOUT_REQUEST_AD:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    :goto_0
    invoke-virtual {v1, v0}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V

    .line 65
    iget-object v0, p0, Lcn/domob/android/ads/u$1;->a:Lcn/domob/android/ads/u;

    invoke-static {v0}, Lcn/domob/android/ads/u;->b(Lcn/domob/android/ads/u;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rt_sp_ad_timeout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "requestAdFailed"

    .line 66
    :goto_1
    const-string v1, ""

    .line 67
    iget-object v2, p0, Lcn/domob/android/ads/u$1;->a:Lcn/domob/android/ads/u;

    iget-object v2, v2, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/e;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/domob/android/ads/u$1;->a:Lcn/domob/android/ads/u;

    iget-object v2, v2, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/e;

    iget-object v2, v2, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    if-eqz v2, :cond_0

    .line 68
    iget-object v1, p0, Lcn/domob/android/ads/u$1;->a:Lcn/domob/android/ads/u;

    iget-object v1, v1, Lcn/domob/android/ads/u;->a:Lcn/domob/android/ads/e;

    iget-object v1, v1, Lcn/domob/android/ads/e;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->b()Ljava/lang/String;

    move-result-object v1

    .line 70
    :cond_0
    const-string v2, "DomobSDK"

    const-string v3, "Error code is [%s-%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    return-void

    .line 62
    :cond_2
    sget-object v0, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->RT_SPLASH_TIMEOUT_LOAD_RESOURCE:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    goto :goto_0

    .line 65
    :cond_3
    const-string v0, "loadSourceFailed"

    goto :goto_1
.end method
