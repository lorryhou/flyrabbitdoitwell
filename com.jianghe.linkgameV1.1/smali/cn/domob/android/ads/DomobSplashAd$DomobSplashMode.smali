.class public final enum Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/DomobSplashAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DomobSplashMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DomobSplashModeBigEmbed:Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

.field public static final enum DomobSplashModeFullScreen:Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

.field public static final enum DomobSplashModeSmallEmbed:Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

.field private static final synthetic a:[Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    const-string v1, "DomobSplashModeFullScreen"

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;->DomobSplashModeFullScreen:Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    .line 24
    new-instance v0, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    const-string v1, "DomobSplashModeSmallEmbed"

    invoke-direct {v0, v1, v3}, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;->DomobSplashModeSmallEmbed:Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    .line 25
    new-instance v0, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    const-string v1, "DomobSplashModeBigEmbed"

    invoke-direct {v0, v1, v4}, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;->DomobSplashModeBigEmbed:Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    sget-object v1, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;->DomobSplashModeFullScreen:Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    aput-object v1, v0, v2

    sget-object v1, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;->DomobSplashModeSmallEmbed:Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    aput-object v1, v0, v3

    sget-object v1, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;->DomobSplashModeBigEmbed:Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    aput-object v1, v0, v4

    sput-object v0, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;->a:[Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    return-object v0
.end method

.method public static values()[Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;->a:[Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    invoke-virtual {v0}, [Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/domob/android/ads/DomobSplashAd$DomobSplashMode;

    return-object v0
.end method
