.class Lcn/domob/android/ads/c/d;
.super Lcn/domob/android/ads/c/b;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/util/Map;Lcn/domob/android/ads/c/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/domob/android/ads/c/s;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/c/b;-><init>(Ljava/util/Map;Lcn/domob/android/ads/c/s;)V

    .line 69
    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    .line 72
    const-string v0, "w"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/c/d;->a(Ljava/lang/String;)I

    move-result v2

    .line 73
    const-string v0, "h"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/c/d;->a(Ljava/lang/String;)I

    move-result v3

    .line 74
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/c/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    const-string v0, "shouldUseCustomClose"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/c/d;->d(Ljava/lang/String;)Z

    move-result v4

    .line 76
    const-string v0, "lockOrientation"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/c/d;->d(Ljava/lang/String;)Z

    move-result v5

    .line 78
    if-gtz v2, :cond_0

    .line 79
    iget-object v0, p0, Lcn/domob/android/ads/c/d;->b:Lcn/domob/android/ads/c/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/s;->b()Lcn/domob/android/ads/c/l;

    move-result-object v0

    iget v2, v0, Lcn/domob/android/ads/c/l;->c:I

    .line 80
    :cond_0
    if-gtz v3, :cond_1

    .line 81
    iget-object v0, p0, Lcn/domob/android/ads/c/d;->b:Lcn/domob/android/ads/c/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/s;->b()Lcn/domob/android/ads/c/l;

    move-result-object v0

    iget v3, v0, Lcn/domob/android/ads/c/l;->d:I

    .line 83
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/c/d;->b:Lcn/domob/android/ads/c/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/s;->b()Lcn/domob/android/ads/c/l;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/c/l;->a(Ljava/lang/String;IIZZ)V

    .line 84
    return-void
.end method
