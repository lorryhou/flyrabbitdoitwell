.class final Lcn/domob/android/ads/a/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/c$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/c$1;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/c$1;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcn/domob/android/ads/a/c$1$1;->a:Lcn/domob/android/ads/a/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/a;)V
    .locals 6

    .prologue
    .line 156
    invoke-static {}, Lcn/domob/android/ads/a/c;->r()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Finished to load domob banner view."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcn/domob/android/ads/a/c$1$1;->a:Lcn/domob/android/ads/a/c$1;

    iget-object v0, v0, Lcn/domob/android/ads/a/c$1;->b:Lcn/domob/android/ads/a/c;

    invoke-static {v0}, Lcn/domob/android/ads/a/c;->d(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/h;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h$b;->i()Lcn/domob/android/ads/h$b$a;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_1

    .line 166
    iget-object v1, p0, Lcn/domob/android/ads/a/c$1$1;->a:Lcn/domob/android/ads/a/c$1;

    iget-object v1, v1, Lcn/domob/android/ads/a/c$1;->b:Lcn/domob/android/ads/a/c;

    new-instance v2, Lcn/domob/android/ads/a/e;

    iget-object v3, p0, Lcn/domob/android/ads/a/c$1$1;->a:Lcn/domob/android/ads/a/c$1;

    iget-object v3, v3, Lcn/domob/android/ads/a/c$1;->b:Lcn/domob/android/ads/a/c;

    invoke-static {v3}, Lcn/domob/android/ads/a/c;->e(Lcn/domob/android/ads/a/c;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "expandable"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcn/domob/android/ads/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v1, v2}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/a/e;)Lcn/domob/android/ads/a/e;

    .line 167
    invoke-static {}, Lcn/domob/android/ads/a/c;->r()Lcn/domob/android/ads/d/e;

    move-result-object v1

    const-string v2, "There is expandable part in current creative."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcn/domob/android/ads/a/c$1$1;->a:Lcn/domob/android/ads/a/c$1;

    iget-object v1, v1, Lcn/domob/android/ads/a/c$1;->b:Lcn/domob/android/ads/a/c;

    iget-object v2, p0, Lcn/domob/android/ads/a/c$1$1;->a:Lcn/domob/android/ads/a/c$1;

    iget-object v2, v2, Lcn/domob/android/ads/a/c$1;->b:Lcn/domob/android/ads/a/c;

    invoke-static {v2}, Lcn/domob/android/ads/a/c;->f(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/a/e;

    move-result-object v2

    invoke-virtual {v0}, Lcn/domob/android/ads/h$b$a;->g()Z

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/a/e;Lcn/domob/android/ads/h$b$a;Z)V

    .line 169
    invoke-virtual {v0}, Lcn/domob/android/ads/h$b$a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-static {}, Lcn/domob/android/ads/a/c;->r()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Expandable preload is disabled in current creative. Show Ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 178
    :goto_1
    iget-object v0, p0, Lcn/domob/android/ads/a/c$1$1;->a:Lcn/domob/android/ads/a/c$1;

    iget-object v0, v0, Lcn/domob/android/ads/a/c$1;->b:Lcn/domob/android/ads/a/c;

    invoke-static {v0}, Lcn/domob/android/ads/a/c;->g(Lcn/domob/android/ads/a/c;)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {}, Lcn/domob/android/ads/a/c;->r()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Banner is ready and there is no expandable part in current creative. Show Ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b(Lcn/domob/android/ads/a;)V
    .locals 3

    .prologue
    .line 183
    invoke-static {}, Lcn/domob/android/ads/a/c;->r()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "FAILED to load domob banner view."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcn/domob/android/ads/a/c$1$1;->a:Lcn/domob/android/ads/a/c$1;

    iget-object v0, v0, Lcn/domob/android/ads/a/c$1;->b:Lcn/domob/android/ads/a/c;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v2, "Creative load failed."

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/a/c;->b(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public c(Lcn/domob/android/ads/a;)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcn/domob/android/ads/a/c$1$1;->a:Lcn/domob/android/ads/a/c$1;

    iget-object v0, v0, Lcn/domob/android/ads/a/c$1;->b:Lcn/domob/android/ads/a/c;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v2, "Creative load timeout."

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/a/c;->a(Lcn/domob/android/ads/a/c;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    .line 152
    return-void
.end method
