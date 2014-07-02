.class final Lcn/domob/android/ads/B$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/m;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcn/domob/android/ads/B;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/B;Lcn/domob/android/ads/m;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcn/domob/android/ads/B$1;->c:Lcn/domob/android/ads/B;

    iput-object p2, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/m;

    iput-object p3, p0, Lcn/domob/android/ads/B$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 124
    iget-object v0, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/m;

    invoke-virtual {v0}, Lcn/domob/android/ads/m;->d()[B

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_2

    .line 126
    :cond_0
    invoke-static {}, Lcn/domob/android/ads/B;->a()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "the HTTP Status-Code is 200, but has received byte array is empty"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcn/domob/android/ads/B$1;->c:Lcn/domob/android/ads/B;

    invoke-static {v0}, Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/B;)Lcn/domob/android/ads/B$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/m;

    iget-object v0, v0, Lcn/domob/android/ads/m;->a:Ljava/net/URL;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcn/domob/android/ads/B$1;->c:Lcn/domob/android/ads/B;

    invoke-static {v0}, Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/B;)Lcn/domob/android/ads/B$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/m;

    iget-object v1, v1, Lcn/domob/android/ads/m;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/android/ads/B$a;->a(Ljava/lang/String;)V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    iget-object v1, p0, Lcn/domob/android/ads/B$1;->c:Lcn/domob/android/ads/B;

    iget-object v2, p0, Lcn/domob/android/ads/B$1;->a:Lcn/domob/android/ads/m;

    invoke-virtual {v2}, Lcn/domob/android/ads/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/B;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_3

    .line 134
    invoke-static {}, Lcn/domob/android/ads/B;->a()Lcn/domob/android/ads/d/e;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image saved:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 137
    :try_start_0
    new-instance v0, Lcn/domob/android/ads/c;

    invoke-direct {v0}, Lcn/domob/android/ads/c;-><init>()V

    .line 138
    iget-object v2, p0, Lcn/domob/android/ads/B$1;->c:Lcn/domob/android/ads/B;

    invoke-virtual {v2}, Lcn/domob/android/ads/B;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/B$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcn/domob/android/ads/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_1
    iget-object v0, p0, Lcn/domob/android/ads/B$1;->c:Lcn/domob/android/ads/B;

    const-string v2, "%s.assetReady(\'%s\', \'%s\')"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "domobBridge"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcn/domob/android/ads/B$1;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/B;->a(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcn/domob/android/ads/B$1;->c:Lcn/domob/android/ads/B;

    invoke-static {v0}, Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/B;)Lcn/domob/android/ads/B$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcn/domob/android/ads/B$1;->c:Lcn/domob/android/ads/B;

    invoke-static {v0}, Lcn/domob/android/ads/B;->a(Lcn/domob/android/ads/B;)Lcn/domob/android/ads/B$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/B$a;->n()V

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-static {}, Lcn/domob/android/ads/B;->a()Lcn/domob/android/ads/d/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 148
    :cond_3
    invoke-static {}, Lcn/domob/android/ads/B;->a()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Error in saving image."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
