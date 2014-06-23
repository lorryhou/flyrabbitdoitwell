.class public Loms/GameEngine/SpriteResSeg;
.super Ljava/lang/Object;
.source "SpriteResSeg.java"


# instance fields
.field public SegIdx:S

.field public SegSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput-short v0, p0, Loms/GameEngine/SpriteResSeg;->SegIdx:S

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Loms/GameEngine/SpriteResSeg;->SegSize:I

    .line 23
    return-void
.end method
