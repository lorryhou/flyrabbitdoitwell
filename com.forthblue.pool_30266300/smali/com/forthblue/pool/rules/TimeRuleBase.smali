.class public Lcom/forthblue/pool/rules/TimeRuleBase;
.super Lcom/forthblue/pool/rules/RuleImplBase;
.source "TimeRuleBase.java"


# static fields
.field public static addTime:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 154
    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lcom/forthblue/pool/rules/TimeRuleBase;->addTime:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1e0
        0xb4
        0x78
        0x5a
        0x3c
        0x1e
    .end array-data

    :array_1
    .array-data 4
        0xf0
        0xb4
        0x78
        0x5a
        0x3c
        0x1e
    .end array-data

    :array_2
    .array-data 4
        0xb4
        0x5a
        0x3c
        0x2d
        0x1e
        0xf
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/forthblue/pool/rules/RuleImplBase;-><init>()V

    return-void
.end method


# virtual methods
.method public addHonorScore(Lcom/forthblue/pool/rules/PoolRule$RoundState;I)V
    .locals 6
    .param p1, "roundstate"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "honortype"    # I

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "basic":I
    packed-switch p2, :pswitch_data_0

    .line 43
    :goto_0
    iget-object v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    iget v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->matchCount:I

    shl-int v4, v0, v4

    iget v5, p0, Lcom/forthblue/pool/rules/TimeRuleBase;->difficulty:I

    shl-int/2addr v4, v5

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 44
    return-void

    .line 34
    :pswitch_0
    const/16 v0, 0x7d0

    .line 35
    goto :goto_0

    .line 37
    :pswitch_1
    const/16 v0, 0x3e8

    .line 38
    goto :goto_0

    .line 40
    :pswitch_2
    const/16 v0, 0x1f4

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public checkFreeballArea(Lcom/forthblue/pool/rules/PoolRule$RoundState;Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 5
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "ball0"    # Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    const v4, 0x44982000

    const v3, 0x441c4000

    const v2, -0x3b66e000

    const v1, -0x3be8c000

    .line 140
    iget v0, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 141
    iput v2, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 143
    :cond_0
    iget v0, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 144
    iput v4, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 146
    :cond_1
    iget v0, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 147
    iput v1, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 149
    :cond_2
    iget v0, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 150
    iput v3, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 152
    :cond_3
    return-void
.end method

.method public createRoundState()Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;

    invoke-direct {v0}, Lcom/forthblue/pool/rules/PoolRule$RoundState;-><init>()V

    .line 49
    .local v0, "state":Lcom/forthblue/pool/rules/PoolRule$RoundState;
    invoke-virtual {p0}, Lcom/forthblue/pool/rules/TimeRuleBase;->getPlayerCount()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    .line 50
    return-object v0
.end method

.method public getHonorType(Lcom/forthblue/pool/rules/PoolRule$RoundState;)I
    .locals 3
    .param p1, "roundstate"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    const/4 v2, 0x0

    .line 19
    iget v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->roundTime:I

    .line 20
    .local v0, "roundtime":I
    iput v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->roundTime:I

    .line 22
    const v1, 0x493e0

    if-le v0, v1, :cond_0

    .line 23
    const/4 v1, 0x2

    .line 27
    :goto_0
    return v1

    .line 24
    :cond_0
    const v1, 0x2bf20

    if-le v0, v1, :cond_1

    .line 25
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 27
    goto :goto_0
.end method

.method public getPlayerCount()I
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x1

    return v0
.end method

.method public getPlayerType(I)I
    .locals 1
    .param p1, "playerid"    # I

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public newMatch(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 1
    .param p1, "roundstate"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 135
    iget v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->matchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->matchCount:I

    .line 136
    return-void
.end method

.method public onClick(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 1
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    .line 77
    const/4 v0, 0x2

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 78
    sget-boolean v0, Lcom/forthblue/pool/rules/TimeRuleBase;->isPractice:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->counttime:Z

    .line 79
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPotBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;I[Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolHole;)Z
    .locals 5
    .param p1, "roundstate"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "ballid"    # I
    .param p3, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p4, "hole"    # Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    const/4 v4, 0x0

    .line 120
    if-eqz p2, :cond_0

    .line 122
    iget-object v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    aget v1, v0, v4

    iget v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    mul-int/lit8 v2, v2, 0x1e

    add-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/forthblue/pool/rules/TimeRuleBase;->difficulty:I

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, v0, v4

    .line 123
    iget v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    .line 124
    iget v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->potInOneBreak:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->potInOneBreak:I

    .line 126
    iget v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->matchCount:I

    sget-object v1, Lcom/forthblue/pool/rules/TimeRuleBase;->addTime:[[I

    iget v2, p0, Lcom/forthblue/pool/rules/TimeRuleBase;->difficulty:I

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 127
    iget v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->restTime:I

    sget-object v1, Lcom/forthblue/pool/rules/TimeRuleBase;->addTime:[[I

    iget v2, p0, Lcom/forthblue/pool/rules/TimeRuleBase;->difficulty:I

    aget-object v1, v1, v2

    iget v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->matchCount:I

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    array-length v2, p3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->restTime:I

    .line 130
    :cond_0
    return v4
.end method

.method public onRoundOver(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 9
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 84
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, p2

    if-ge v7, v0, :cond_2

    .line 85
    aget-object v0, p2, v7

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    const v1, -0x3b66e000

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    aget-object v0, p2, v7

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    const v1, 0x44982000

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    aget-object v0, p2, v7

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    const v1, -0x3be8c000

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    aget-object v0, p2, v7

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    const v1, 0x441c4000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 86
    :cond_0
    aget-object v0, p2, v7

    iput-boolean v3, v0, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    .line 87
    aget-object v0, p2, v7

    invoke-virtual {v0, v3}, Lcom/forthblue/pool/engine/PoolBall;->setVisible(Z)V

    .line 84
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 91
    :cond_2
    iput v8, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 92
    aget-object v0, p2, v3

    iget-boolean v0, v0, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v0, :cond_4

    .line 93
    sget-boolean v0, Lcom/forthblue/pool/rules/TimeRuleBase;->isPractice:Z

    if-eqz v0, :cond_3

    .line 94
    const/4 v0, 0x3

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 96
    :cond_3
    const v4, -0x3bcfc000

    const/4 v5, 0x0

    sget-boolean v6, Lcom/forthblue/pool/rules/TimeRuleBase;->isPractice:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/forthblue/pool/rules/TimeRuleBase;->putBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;IFFZ)V

    .line 99
    :cond_4
    iget v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->restTime:I

    if-gtz v0, :cond_5

    .line 100
    const/4 v0, 0x4

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 102
    :cond_5
    sget-boolean v0, Lcom/forthblue/pool/rules/TimeRuleBase;->isPractice:Z

    if-nez v0, :cond_7

    move v0, v8

    :goto_1
    iput-boolean v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->counttime:Z

    .line 104
    iget v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->potInOneBreak:I

    if-nez v0, :cond_6

    .line 105
    iput v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    .line 107
    :cond_6
    iput v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->potInOneBreak:I

    .line 108
    return-void

    :cond_7
    move v0, v3

    .line 102
    goto :goto_1
.end method

.method public onTimeOver(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 2
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    .line 112
    iget v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 113
    const/4 v0, 0x4

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->counttime:Z

    .line 116
    return-void
.end method

.method public resetRoundState(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V
    .locals 3
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    iput v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 57
    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->roundCount:I

    .line 58
    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    .line 59
    const/4 v0, -0x1

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->winner:I

    .line 60
    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    .line 62
    new-array v0, v2, [I

    aput v1, v0, v1

    iput-object v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    .line 63
    sget-boolean v0, Lcom/forthblue/pool/rules/TimeRuleBase;->isPractice:Z

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    iput-boolean v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->counttime:Z

    .line 65
    const v0, 0x1d4c0

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->restTime:I

    .line 67
    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->totalGameTime:I

    .line 68
    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->roundTime:I

    .line 70
    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    .line 71
    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->potInOneBreak:I

    .line 72
    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->matchCount:I

    .line 73
    return-void

    :cond_0
    move v0, v1

    .line 63
    goto :goto_0
.end method
