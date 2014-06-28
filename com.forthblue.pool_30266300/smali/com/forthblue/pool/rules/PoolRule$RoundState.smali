.class public Lcom/forthblue/pool/rules/PoolRule$RoundState;
.super Ljava/lang/Object;
.source "PoolRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/forthblue/pool/rules/PoolRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoundState"
.end annotation


# instance fields
.field public combo:I

.field public counttime:Z

.field public currentPlayer:I

.field public lastFouledPlayer:I

.field public matchCount:I

.field public playerScore:[I

.field public potInOneBreak:I

.field public restTime:I

.field public roundCount:I

.field public roundTime:I

.field public state:I

.field public totalGameTime:I

.field public winner:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->lastFouledPlayer:I

    return-void
.end method
