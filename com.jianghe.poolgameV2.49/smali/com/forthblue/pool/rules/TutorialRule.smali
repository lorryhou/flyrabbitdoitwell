.class public Lcom/forthblue/pool/rules/TutorialRule;
.super Lcom/forthblue/pool/rules/RuleImplBase;
.source "TutorialRule.java"


# static fields
.field public static final INIT_STAR_COUNT:I = 0x6


# instance fields
.field private ballsPos:[F

.field private event_listener:Lcom/forthblue/pool/rules/LevelRule$EventListener;

.field private texture_id:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/forthblue/pool/rules/RuleImplBase;-><init>()V

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/forthblue/pool/rules/TutorialRule;->texture_id:[I

    .line 175
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/forthblue/pool/rules/TutorialRule;->ballsPos:[F

    return-void

    .line 174
    :array_0
    .array-data 4
        0x0
        0x8
    .end array-data

    .line 175
    :array_1
    .array-data 4
        -0x3bcfc000
        0x0
        0x448fa000
        -0x3bfb0000
    .end array-data
.end method


# virtual methods
.method public checkFreeballArea(Lcom/forthblue/pool/rules/PoolRule$RoundState;Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 5
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "ball0"    # Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    const v4, 0x44982000

    const v3, 0x441c4000

    const v2, -0x3b66e000

    const v1, -0x3be8c000

    .line 160
    iget v0, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 161
    iput v2, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 163
    :cond_0
    iget v0, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 164
    iput v4, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 166
    :cond_1
    iget v0, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 167
    iput v1, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 169
    :cond_2
    iget v0, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 170
    iput v3, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 172
    :cond_3
    return-void
.end method

.method public createRoundState()Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;

    invoke-direct {v0}, Lcom/forthblue/pool/rules/PoolRule$RoundState;-><init>()V

    .line 74
    .local v0, "state":Lcom/forthblue/pool/rules/PoolRule$RoundState;
    invoke-virtual {p0}, Lcom/forthblue/pool/rules/TutorialRule;->getPlayerCount()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    .line 75
    return-object v0
.end method

.method public getBallCount()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x2

    return v0
.end method

.method public getBallTexture(I)Lcom/fruitsmobile/basket/resources/Texture;
    .locals 1
    .param p1, "ballid"    # I

    .prologue
    .line 27
    iget-object v0, p0, Lcom/forthblue/pool/rules/TutorialRule;->texture_id:[I

    aget v0, v0, p1

    invoke-super {p0, v0}, Lcom/forthblue/pool/rules/RuleImplBase;->getBallTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAimAngle()F
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayerCount()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x4

    return v0
.end method

.method public getPlayerType(I)I
    .locals 1
    .param p1, "playerid"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailableTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)Z
    .locals 1
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "id"    # I

    .prologue
    .line 52
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newMatch(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 2
    .param p1, "roundstate"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 153
    move-object v0, p1

    .line 154
    .local v0, "rs":Lcom/forthblue/pool/rules/PoolRule$RoundState;
    const/4 v1, 0x6

    iput v1, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->restTime:I

    .line 155
    iget v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->matchCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->matchCount:I

    .line 156
    return-void
.end method

.method public onClick(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 1
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    .line 101
    const/4 v0, 0x2

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 102
    return-void
.end method

.method public onHitBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;II[Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 0
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "ballid1"    # I
    .param p3, "ballid2"    # I
    .param p4, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    .line 149
    return-void
.end method

.method public onPotBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;I[Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolHole;)Z
    .locals 4
    .param p1, "rs"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "ballid"    # I
    .param p3, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p4, "hole"    # Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    const/4 v3, 0x0

    .line 136
    if-eqz p2, :cond_0

    .line 137
    iget v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    .line 138
    iget v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->potInOneBreak:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->potInOneBreak:I

    .line 139
    iget-object v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    aget v1, v0, v3

    iget v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    aput v1, v0, v3

    .line 143
    :goto_0
    return v3

    .line 141
    :cond_0
    iput v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    goto :goto_0
.end method

.method public onRoundOver(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 10
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    const/4 v3, 0x0

    .line 106
    const/4 v7, 0x0

    .line 107
    .local v7, "available_ball_count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, p2

    if-ge v8, v0, :cond_3

    .line 108
    aget-object v0, p2, v8

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    const v1, -0x3b66e000

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    aget-object v0, p2, v8

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    const v1, 0x44982000

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    aget-object v0, p2, v8

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    const v1, -0x3be8c000

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    aget-object v0, p2, v8

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    const v1, 0x441c4000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 109
    :cond_0
    aget-object v0, p2, v8

    iput-boolean v3, v0, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    .line 110
    aget-object v0, p2, v8

    invoke-virtual {v0, v3}, Lcom/forthblue/pool/engine/PoolBall;->setVisible(Z)V

    .line 112
    :cond_1
    if-lez v8, :cond_2

    aget-object v0, p2, v8

    iget-boolean v0, v0, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-eqz v0, :cond_2

    .line 113
    add-int/lit8 v7, v7, 0x1

    .line 107
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 117
    :cond_3
    const/4 v0, 0x1

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 118
    move-object v9, p1

    .line 120
    .local v9, "rs":Lcom/forthblue/pool/rules/PoolRule$RoundState;
    if-nez v7, :cond_4

    .line 121
    const/4 v0, 0x4

    iput v0, v9, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 124
    :cond_4
    aget-object v0, p2, v3

    iget-boolean v0, v0, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v0, :cond_5

    .line 125
    const v4, -0x3bcfc000

    const/4 v5, 0x0

    sget-boolean v6, Lcom/forthblue/pool/rules/TutorialRule;->isPractice:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/forthblue/pool/rules/TutorialRule;->putBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;IFFZ)V

    .line 127
    iget-object v0, p0, Lcom/forthblue/pool/rules/TutorialRule;->event_listener:Lcom/forthblue/pool/rules/LevelRule$EventListener;

    if-eqz v0, :cond_5

    .line 128
    iget-object v0, p0, Lcom/forthblue/pool/rules/TutorialRule;->event_listener:Lcom/forthblue/pool/rules/LevelRule$EventListener;

    const/4 v1, -0x2

    invoke-interface {v0, v1, v3}, Lcom/forthblue/pool/rules/LevelRule$EventListener;->onRoundOver(II)V

    .line 131
    :cond_5
    return-void
.end method

.method public resetBalls([Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 5
    .param p1, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 58
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/forthblue/pool/engine/PoolBall;->reset()V

    .line 59
    aget-object v1, p1, v0

    iput-boolean v2, v1, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    .line 60
    aget-object v1, p1, v0

    invoke-virtual {v1, v2}, Lcom/forthblue/pool/engine/PoolBall;->setVisible(Z)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/forthblue/pool/rules/TutorialRule;->ballsPos:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 63
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/forthblue/pool/rules/TutorialRule;->ballsPos:[F

    mul-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    iput v2, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 64
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/forthblue/pool/rules/TutorialRule;->ballsPos:[F

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    iput v2, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 66
    aget-object v1, p1, v0

    iput-boolean v4, v1, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    .line 67
    aget-object v1, p1, v0

    invoke-virtual {v1, v4}, Lcom/forthblue/pool/engine/PoolBall;->setVisible(Z)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_1
    return-void
.end method

.method public resetRoundState(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V
    .locals 2
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    const/4 v1, 0x0

    .line 80
    const/4 v0, 0x1

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 82
    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->roundCount:I

    .line 83
    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    .line 84
    const/4 v0, -0x1

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->winner:I

    .line 86
    iget-object v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 87
    iput-boolean v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->counttime:Z

    .line 89
    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->totalGameTime:I

    .line 90
    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->roundTime:I

    .line 92
    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    .line 93
    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->potInOneBreak:I

    .line 94
    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->matchCount:I

    .line 96
    const/4 v0, 0x6

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->restTime:I

    .line 97
    return-void
.end method

.method public setEventListener(Lcom/forthblue/pool/rules/LevelRule$EventListener;)V
    .locals 0
    .param p1, "event_listener"    # Lcom/forthblue/pool/rules/LevelRule$EventListener;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/forthblue/pool/rules/TutorialRule;->event_listener:Lcom/forthblue/pool/rules/LevelRule$EventListener;

    .line 18
    return-void
.end method

.method public showTargetSign(Lcom/forthblue/pool/rules/PoolRule$RoundState;)Z
    .locals 1
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method
