.class public final enum Lcn/domob/android/ads/c/s$l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/c/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/android/ads/c/s$l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/domob/android/ads/c/s$l;

.field public static final enum b:Lcn/domob/android/ads/c/s$l;

.field public static final enum c:Lcn/domob/android/ads/c/s$l;

.field public static final enum d:Lcn/domob/android/ads/c/s$l;

.field private static final synthetic e:[Lcn/domob/android/ads/c/s$l;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcn/domob/android/ads/c/s$l;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/c/s$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/c/s$l;->a:Lcn/domob/android/ads/c/s$l;

    new-instance v0, Lcn/domob/android/ads/c/s$l;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcn/domob/android/ads/c/s$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/c/s$l;->b:Lcn/domob/android/ads/c/s$l;

    new-instance v0, Lcn/domob/android/ads/c/s$l;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v4}, Lcn/domob/android/ads/c/s$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/c/s$l;->c:Lcn/domob/android/ads/c/s$l;

    new-instance v0, Lcn/domob/android/ads/c/s$l;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v5}, Lcn/domob/android/ads/c/s$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/c/s$l;->d:Lcn/domob/android/ads/c/s$l;

    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/domob/android/ads/c/s$l;

    sget-object v1, Lcn/domob/android/ads/c/s$l;->a:Lcn/domob/android/ads/c/s$l;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/android/ads/c/s$l;->b:Lcn/domob/android/ads/c/s$l;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/android/ads/c/s$l;->c:Lcn/domob/android/ads/c/s$l;

    aput-object v1, v0, v4

    sget-object v1, Lcn/domob/android/ads/c/s$l;->d:Lcn/domob/android/ads/c/s$l;

    aput-object v1, v0, v5

    sput-object v0, Lcn/domob/android/ads/c/s$l;->e:[Lcn/domob/android/ads/c/s$l;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/android/ads/c/s$l;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    const-class v0, Lcn/domob/android/ads/c/s$l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/c/s$l;

    return-object v0
.end method

.method public static values()[Lcn/domob/android/ads/c/s$l;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcn/domob/android/ads/c/s$l;->e:[Lcn/domob/android/ads/c/s$l;

    invoke-virtual {v0}, [Lcn/domob/android/ads/c/s$l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/android/ads/c/s$l;

    return-object v0
.end method
