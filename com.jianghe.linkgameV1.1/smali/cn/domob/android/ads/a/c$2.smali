.class final Lcn/domob/android/ads/a/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/e;Lcn/domob/android/ads/h$b$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/c;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/c;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcn/domob/android/ads/a/c$2;->a:Lcn/domob/android/ads/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/a;)V
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Lcn/domob/android/ads/a/c;->r()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Both banner and expandable part are ok in current creative. Show Ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcn/domob/android/ads/a/c$2;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v0}, Lcn/domob/android/ads/a/c;->i(Lcn/domob/android/ads/a/c;)V

    .line 257
    iget-object v0, p0, Lcn/domob/android/ads/a/c$2;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v0}, Lcn/domob/android/ads/a/c;->j(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h$b;->i()Lcn/domob/android/ads/h$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h$b$a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcn/domob/android/ads/a/c$2;->a:Lcn/domob/android/ads/a/c;

    iget-object v1, p0, Lcn/domob/android/ads/a/c$2;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v1}, Lcn/domob/android/ads/a/c;->k(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/h;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->i()Lcn/domob/android/ads/h$b$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/h$b$a;)V

    .line 260
    :cond_0
    return-void
.end method

.method public b(Lcn/domob/android/ads/a;)V
    .locals 3

    .prologue
    .line 264
    invoke-static {}, Lcn/domob/android/ads/a/c;->r()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "FAILED to load domob expandable view."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcn/domob/android/ads/a/c$2;->a:Lcn/domob/android/ads/a/c;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v2, "Expandable part load failed."

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/a/c;->d(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method public c(Lcn/domob/android/ads/a;)V
    .locals 2

    .prologue
    .line 246
    invoke-static {}, Lcn/domob/android/ads/a/c;->r()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Timeout while loading expandable part. Show AD."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcn/domob/android/ads/a/c$2;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v0}, Lcn/domob/android/ads/a/c;->h(Lcn/domob/android/ads/a/c;)V

    .line 248
    return-void
.end method
