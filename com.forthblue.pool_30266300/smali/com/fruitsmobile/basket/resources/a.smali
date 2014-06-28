.class public Lcom/fruitsmobile/basket/resources/a;
.super Ljava/lang/Object;
.source "Freeball got level "


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
    if-lt p9, p4, :cond_0

    #disallowed odex opcode
    #iget-wide-quick p8, p1, field@0x0
    nop
    :cond_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 7
    #unknown opcode: 0xec
    nop

    #Type index out of bounds: 4208
    #instance-of p1, p9, type@4208
    nop
.end method
