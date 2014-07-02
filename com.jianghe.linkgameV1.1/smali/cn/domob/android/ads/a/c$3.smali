.class final Lcn/domob/android/ads/a/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/e;Lcn/domob/android/ads/h$b$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/e;

.field final synthetic b:Lcn/domob/android/ads/a/c;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/a/e;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcn/domob/android/ads/a/c$3;->b:Lcn/domob/android/ads/a/c;

    iput-object p2, p0, Lcn/domob/android/ads/a/c$3;->a:Lcn/domob/android/ads/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/a;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 276
    const-string v0, "domob"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 280
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcn/domob/android/ads/a/c$3;->b:Lcn/domob/android/ads/a/c;

    invoke-static {v0}, Lcn/domob/android/ads/a/c;->l(Lcn/domob/android/ads/a/c;)V

    .line 287
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/a/c$3;->b:Lcn/domob/android/ads/a/c;

    iget-object v1, p0, Lcn/domob/android/ads/a/c$3;->a:Lcn/domob/android/ads/a/e;

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/c;Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    goto :goto_0
.end method
