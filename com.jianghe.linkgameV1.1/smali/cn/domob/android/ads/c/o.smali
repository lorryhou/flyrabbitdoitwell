.class Lcn/domob/android/ads/c/o;
.super Lcn/domob/android/ads/c/p;
.source "SourceFile"


# instance fields
.field private final a:Lcn/domob/android/ads/c/s$k;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/c/s$k;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcn/domob/android/ads/c/p;-><init>()V

    .line 28
    iput-object p1, p0, Lcn/domob/android/ads/c/o;->a:Lcn/domob/android/ads/c/s$k;

    .line 29
    return-void
.end method

.method public static a(Lcn/domob/android/ads/c/s$k;)Lcn/domob/android/ads/c/o;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcn/domob/android/ads/c/o;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/c/o;-><init>(Lcn/domob/android/ads/c/s$k;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placementType: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/c/o;->a:Lcn/domob/android/ads/c/s$k;

    invoke-virtual {v1}, Lcn/domob/android/ads/c/s$k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
