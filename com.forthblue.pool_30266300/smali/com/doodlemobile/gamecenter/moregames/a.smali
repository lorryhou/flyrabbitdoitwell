.class public Lcom/doodlemobile/gamecenter/moregames/a;
.super Ljava/lang/Object;
.source "CUE_ONE"


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
    goto :goto_0

    #unknown opcode: 0x7a
    nop

    :cond_0
    if-ge p5, p7, :cond_0
    :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 7
    if-gt p8, p13, :cond_0

    move-result p164
    :cond_0
.end method
