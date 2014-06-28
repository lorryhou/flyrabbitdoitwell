.class public Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;
.super Lcom/forthblue/pool/rules/PoolRule$RoundState;
.source "Vsai8Ball.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/forthblue/pool/rules/Vsai8Ball;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameRoundState"
.end annotation


# instance fields
.field public blockcount:I

.field public campstate:I

.field public firsthit:I

.field public firstpot:I

.field public foulCount:[I

.field public fouled:Z

.field public pooledball8:Z

.field public potcount:I

.field final synthetic this$0:Lcom/forthblue/pool/rules/Vsai8Ball;


# direct methods
.method public constructor <init>(Lcom/forthblue/pool/rules/Vsai8Ball;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->this$0:Lcom/forthblue/pool/rules/Vsai8Ball;

    invoke-direct {p0}, Lcom/forthblue/pool/rules/PoolRule$RoundState;-><init>()V

    return-void
.end method
