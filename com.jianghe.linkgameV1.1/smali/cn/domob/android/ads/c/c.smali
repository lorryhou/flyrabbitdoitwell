.class Lcn/domob/android/ads/c/c;
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
    .line 58
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/c/b;-><init>(Ljava/util/Map;Lcn/domob/android/ads/c/s;)V

    .line 59
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcn/domob/android/ads/c/c;->b:Lcn/domob/android/ads/c/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/s;->b()Lcn/domob/android/ads/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/c/l;->d()V

    .line 63
    return-void
.end method
