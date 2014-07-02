.class final enum Lcn/domob/android/ads/c/s$k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/c/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/android/ads/c/s$k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/domob/android/ads/c/s$k;

.field public static final enum b:Lcn/domob/android/ads/c/s$k;

.field private static final synthetic c:[Lcn/domob/android/ads/c/s$k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcn/domob/android/ads/c/s$k;

    const-string v1, "INLINE"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/c/s$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/c/s$k;->a:Lcn/domob/android/ads/c/s$k;

    new-instance v0, Lcn/domob/android/ads/c/s$k;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v3}, Lcn/domob/android/ads/c/s$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/c/s$k;->b:Lcn/domob/android/ads/c/s$k;

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/domob/android/ads/c/s$k;

    sget-object v1, Lcn/domob/android/ads/c/s$k;->a:Lcn/domob/android/ads/c/s$k;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/android/ads/c/s$k;->b:Lcn/domob/android/ads/c/s$k;

    aput-object v1, v0, v3

    sput-object v0, Lcn/domob/android/ads/c/s$k;->c:[Lcn/domob/android/ads/c/s$k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/android/ads/c/s$k;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    const-class v0, Lcn/domob/android/ads/c/s$k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/c/s$k;

    return-object v0
.end method

.method public static values()[Lcn/domob/android/ads/c/s$k;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcn/domob/android/ads/c/s$k;->c:[Lcn/domob/android/ads/c/s$k;

    invoke-virtual {v0}, [Lcn/domob/android/ads/c/s$k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/android/ads/c/s$k;

    return-object v0
.end method
