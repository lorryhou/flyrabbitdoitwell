.class Lcn/domob/android/ads/c/k;
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
    .line 89
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/c/b;-><init>(Ljava/util/Map;Lcn/domob/android/ads/c/s;)V

    .line 90
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "shouldUseCustomClose"

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/c/k;->d(Ljava/lang/String;)Z

    move-result v0

    .line 94
    iget-object v1, p0, Lcn/domob/android/ads/c/k;->b:Lcn/domob/android/ads/c/s;

    invoke-virtual {v1}, Lcn/domob/android/ads/c/s;->b()Lcn/domob/android/ads/c/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/l;->b(Z)V

    .line 95
    return-void
.end method
