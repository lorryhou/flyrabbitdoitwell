.class final Lcn/domob/android/ads/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/c/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Lcn/domob/android/ads/c/s;)Lcn/domob/android/ads/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/domob/android/ads/c/s;",
            ")",
            "Lcn/domob/android/ads/c/b;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Lcn/domob/android/ads/c/d;

    invoke-direct {v0, p1, p2}, Lcn/domob/android/ads/c/d;-><init>(Ljava/util/Map;Lcn/domob/android/ads/c/s;)V

    return-object v0
.end method
