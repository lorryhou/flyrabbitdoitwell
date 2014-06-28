.class public Lcom/doodlemobile/gamecenter/api/APICode;
.super Ljava/lang/Object;
.source "APICode.java"


# static fields
.field public static ERROR:I

.field public static NETWORK_UNREACHABLE:I

.field public static SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput v0, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    .line 5
    const/4 v0, 0x1

    sput v0, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    .line 6
    const/4 v0, 0x2

    sput v0, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
