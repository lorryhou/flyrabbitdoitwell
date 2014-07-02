.class final Lcn/domob/android/ads/v$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/v;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/v;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/v;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcn/domob/android/ads/v$1;->a:Lcn/domob/android/ads/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/a;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 41
    invoke-static {}, Lcn/domob/android/ads/v;->o()Lcn/domob/android/ads/d/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTSplash DomobWebView \u62e6\u622a\u5230:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 42
    check-cast p1, Lcn/domob/android/ads/B;

    .line 43
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string v2, "domob"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string v2, "addAssets"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    invoke-static {}, Lcn/domob/android/ads/v;->o()Lcn/domob/android/ads/d/e;

    move-result-object v1

    const-string v2, "JS function \'addAssets\' is called."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcn/domob/android/ads/v$1;->a:Lcn/domob/android/ads/v;

    invoke-static {v1}, Lcn/domob/android/ads/v;->a(Lcn/domob/android/ads/v;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcn/domob/android/ads/d/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 56
    invoke-static {}, Lcn/domob/android/ads/v;->o()Lcn/domob/android/ads/d/e;

    move-result-object v1

    const-string v3, "the number of source belong to this RTSplash is %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 57
    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcn/domob/android/ads/v$1;->a:Lcn/domob/android/ads/v;

    invoke-virtual {v0}, Lcn/domob/android/ads/v;->g()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v1, p0, Lcn/domob/android/ads/v$1;->a:Lcn/domob/android/ads/v;

    invoke-static {v1, v0}, Lcn/domob/android/ads/v;->a(Lcn/domob/android/ads/v;I)I

    .line 64
    iget-object v0, p0, Lcn/domob/android/ads/v$1;->a:Lcn/domob/android/ads/v;

    iget-object v0, v0, Lcn/domob/android/ads/v;->d:Lcn/domob/android/ads/e;

    iget-object v0, v0, Lcn/domob/android/ads/e;->d:Lcn/domob/android/ads/DomobAdView;

    check-cast v0, Lcn/domob/android/ads/u;

    const-string v1, "rt_sp_res_timeout"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/u;->a(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    invoke-static {}, Lcn/domob/android/ads/v;->o()Lcn/domob/android/ads/d/e;

    move-result-object v1

    const-string v4, "param: %s=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v0, v4}, Lcn/domob/android/ads/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :cond_2
    invoke-static {}, Lcn/domob/android/ads/v;->o()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v2, "the host is %s not addAssets"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->d(Ljava/lang/String;)V

    goto :goto_0
.end method
