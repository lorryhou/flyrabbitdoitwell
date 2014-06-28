.class public Lcom/android/a;
.super Ljava/lang/Object;
.source "/90"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    and-int/lit8 p112, p81, 0x49

    mul-long/2addr p14, p6
.end method

.method public b()I
    .locals 1

    .prologue
    .line 7
    shl-int/lit8 p137, p33, -0x59

    #was invalid verification error type: 29
    #disallowed odex opcode
    #throw-verification-error generic-error, B
    nop
.end method
