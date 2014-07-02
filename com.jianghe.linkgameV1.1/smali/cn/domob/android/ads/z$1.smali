.class final Lcn/domob/android/ads/z$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/z;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/z;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/z;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcn/domob/android/ads/z$1;->a:Lcn/domob/android/ads/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/a;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 38
    invoke-static {}, Lcn/domob/android/ads/z;->o()Lcn/domob/android/ads/d/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Splash DomobWebView \u62e6\u622a\u5230:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 39
    check-cast p1, Lcn/domob/android/ads/B;

    .line 40
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v2, "domob"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 45
    const-string v2, "addAsset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    invoke-static {}, Lcn/domob/android/ads/z;->o()Lcn/domob/android/ads/d/e;

    move-result-object v1

    const-string v2, "JS function \'addAsset\' is called."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lcn/domob/android/ads/d/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    invoke-static {}, Lcn/domob/android/ads/z;->o()Lcn/domob/android/ads/d/e;

    move-result-object v3

    const-string v4, "param: %s=%s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 55
    const-string v0, "url"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    const-string v2, "alias"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    invoke-static {}, Lcn/domob/android/ads/z;->o()Lcn/domob/android/ads/d/e;

    move-result-object v2

    const-string v3, "url=%s, alias=%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v8

    aput-object v1, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcn/domob/android/ads/z$1;->a:Lcn/domob/android/ads/z;

    iget-object v2, v2, Lcn/domob/android/ads/z;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v2}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcn/domob/android/ads/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    return-void

    .line 60
    :cond_2
    const-string v2, "addAssets"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-static {}, Lcn/domob/android/ads/z;->o()Lcn/domob/android/ads/d/e;

    move-result-object v1

    const-string v2, "JS function \'addAssets\' is called."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcn/domob/android/ads/d/d;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 65
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    invoke-static {}, Lcn/domob/android/ads/z;->o()Lcn/domob/android/ads/d/e;

    move-result-object v1

    const-string v4, "param: %s=%s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcn/domob/android/ads/z$1;->a:Lcn/domob/android/ads/z;

    iget-object v4, v4, Lcn/domob/android/ads/z;->c:Lcn/domob/android/ads/h;

    invoke-virtual {v4}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/h$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v0, v4}, Lcn/domob/android/ads/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
