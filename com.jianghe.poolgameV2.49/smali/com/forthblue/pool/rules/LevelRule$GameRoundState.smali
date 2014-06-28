.class public Lcom/forthblue/pool/rules/LevelRule$GameRoundState;
.super Lcom/forthblue/pool/rules/PoolRule$RoundState;
.source "LevelRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/forthblue/pool/rules/LevelRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameRoundState"
.end annotation


# instance fields
.field public firsthit:I

.field public hole_type:[I

.field public hole_type_top:I

.field public max_add_cue:I

.field public max_mis_ball:I

.field public potcount:I

.field final synthetic this$0:Lcom/forthblue/pool/rules/LevelRule;


# direct methods
.method public constructor <init>(Lcom/forthblue/pool/rules/LevelRule;)V
    .locals 1

    .prologue
    .line 104
    iput-object p1, p0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->this$0:Lcom/forthblue/pool/rules/LevelRule;

    invoke-direct {p0}, Lcom/forthblue/pool/rules/PoolRule$RoundState;-><init>()V

    .line 108
    const/4 v0, 0x4

    iput v0, p0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_add_cue:I

    .line 109
    const/4 v0, 0x3

    iput v0, p0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_mis_ball:I

    .line 111
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->hole_type:[I

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->hole_type_top:I

    return-void
.end method
