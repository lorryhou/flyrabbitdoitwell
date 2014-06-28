.class public Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;
.super Lcom/forthblue/pool/rules/PoolRule$RoundState;
.source "Vsai9Ball.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/forthblue/pool/rules/Vsai9Ball;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameRoundState"
.end annotation


# instance fields
.field public blockcount:I

.field public campstate:I

.field public firsthit:I

.field public foulCount:[I

.field public fouled:Z

.field public pooledball9:Z

.field public potcount:I

.field final synthetic this$0:Lcom/forthblue/pool/rules/Vsai9Ball;


# direct methods
.method public constructor <init>(Lcom/forthblue/pool/rules/Vsai9Ball;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->this$0:Lcom/forthblue/pool/rules/Vsai9Ball;

    invoke-direct {p0}, Lcom/forthblue/pool/rules/PoolRule$RoundState;-><init>()V

    return-void
.end method
