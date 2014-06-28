.class public Lcom/forthblue/pool/rules/Vsai9Ball;
.super Lcom/forthblue/pool/rules/VsaiRuleBase;
.source "Vsai9Ball.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;
    }
.end annotation


# static fields
.field private static final CAMP_STATE_BREAKOFF:I = 0x0

.field private static final CAMP_STATE_NORMAL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/forthblue/pool/rules/VsaiRuleBase;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public checkFreeballArea(Lcom/forthblue/pool/rules/PoolRule$RoundState;Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 8
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "ball0"    # Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    const v7, 0x44982000

    const v6, -0x3be6e000

    const v5, 0x441c4000

    const v4, -0x3b66e000

    const v3, -0x3be8c000

    .line 223
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;

    move-object v1, v0

    .line 224
    .local v1, "rs":Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;
    iget v2, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->campstate:I

    if-nez v2, :cond_4

    .line 225
    iget v2, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 226
    iput v4, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 228
    :cond_0
    iget v2, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    .line 229
    iput v6, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 231
    :cond_1
    iget v2, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 232
    iput v3, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 234
    :cond_2
    iget v2, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 235
    iput v5, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 251
    :cond_3
    :goto_0
    return-void

    .line 238
    :cond_4
    iget v2, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    .line 239
    iput v4, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 241
    :cond_5
    iget v2, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_6

    .line 242
    iput v7, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 244
    :cond_6
    iget v2, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 245
    iput v3, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 247
    :cond_7
    iget v2, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 248
    iput v5, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    goto :goto_0
.end method

.method public createRoundState()Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;

    invoke-direct {v0, p0}, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;-><init>(Lcom/forthblue/pool/rules/Vsai9Ball;)V

    .line 54
    .local v0, "state":Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;
    invoke-virtual {p0}, Lcom/forthblue/pool/rules/Vsai9Ball;->getPlayerCount()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->playerScore:[I

    .line 55
    invoke-virtual {p0}, Lcom/forthblue/pool/rules/Vsai9Ball;->getPlayerCount()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->foulCount:[I

    .line 56
    return-object v0
.end method

.method public getBallCount()I
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0xa

    return v0
.end method

.method public isAvailableTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)Z
    .locals 3
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 41
    if-nez p3, :cond_0

    move v1, v2

    .line 48
    :goto_0
    return v1

    .line 43
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 44
    aget-object v1, p2, v0

    iget-boolean v1, v1, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-eqz v1, :cond_1

    move v1, v2

    .line 45
    goto :goto_0

    .line 43
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 48
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isUnderlineFreeball(Lcom/forthblue/pool/rules/PoolRule$RoundState;)Z
    .locals 3
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    .line 255
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;

    move-object v1, v0

    .line 256
    .local v1, "rs":Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;
    iget v2, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->campstate:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public newMatch(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 4
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    const/4 v3, 0x0

    .line 188
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;

    move-object v1, v0

    .line 189
    .local v1, "rs":Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;
    iput-boolean v3, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->fouled:Z

    .line 190
    const/4 v2, -0x1

    iput v2, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->firsthit:I

    .line 191
    iput-boolean v3, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->pooledball9:Z

    .line 192
    iget-object v2, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->foulCount:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 193
    return-void
.end method

.method public onHitBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;II[Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 4
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "ballid1"    # I
    .param p3, "ballid2"    # I
    .param p4, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    .line 197
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;

    move-object v2, v0

    .line 203
    .local v2, "rs":Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;
    move v1, p2

    .line 204
    .local v1, "ballid":I
    if-nez v1, :cond_2

    .line 205
    move v1, p3

    .line 207
    :cond_2
    iget v3, v2, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->firsthit:I

    if-gtz v3, :cond_0

    .line 208
    iput v1, v2, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->firsthit:I

    .line 209
    invoke-virtual {p0, p1, p4, v1}, Lcom/forthblue/pool/rules/Vsai9Ball;->isAvailableTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->fouled:Z

    goto :goto_0
.end method

.method public onHitBlocker(Lcom/forthblue/pool/rules/PoolRule$RoundState;II[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolBlocker;)V
    .locals 3
    .param p1, "roundstate"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "ballid"    # I
    .param p3, "blockerid"    # I
    .param p4, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p5, "blockers"    # [Lcom/forthblue/pool/engine/PoolBlocker;

    .prologue
    .line 217
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;

    move-object v1, v0

    .line 218
    .local v1, "rs":Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;
    iget v2, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->blockcount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->blockcount:I

    .line 219
    return-void
.end method

.method public onPotBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;I[Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolHole;)Z
    .locals 4
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "ballid"    # I
    .param p3, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p4, "hole"    # Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    const/4 v3, 0x1

    .line 172
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;

    move-object v1, v0

    .line 173
    .local v1, "rs":Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;
    if-eqz p2, :cond_1

    .line 174
    const/16 v2, 0x9

    if-ne p2, v2, :cond_0

    .line 175
    iput-boolean v3, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->pooledball9:Z

    .line 177
    :cond_0
    iget v2, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->potcount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->potcount:I

    move v2, v3

    .line 182
    :goto_0
    return v2

    .line 181
    :cond_1
    iput-boolean v3, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->fouled:Z

    .line 182
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onRoundOver(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 10
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 92
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v1, p2

    if-ge v8, v1, :cond_2

    .line 93
    aget-object v1, p2, v8

    iget v1, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    const v2, -0x3b66e000

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    aget-object v1, p2, v8

    iget v1, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    const v2, 0x44982000

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    aget-object v1, p2, v8

    iget v1, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    const v2, -0x3be8c000

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    aget-object v1, p2, v8

    iget v1, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    const v2, 0x441c4000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 94
    :cond_0
    aget-object v1, p2, v8

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    .line 95
    aget-object v1, p2, v8

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/forthblue/pool/engine/PoolBall;->setVisible(Z)V

    .line 92
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 99
    :cond_2
    const/4 v1, 0x1

    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 100
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;

    move-object v9, v0

    .line 102
    .local v9, "rs":Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;
    iget v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->campstate:I

    if-nez v1, :cond_4

    .line 104
    iget v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->potcount:I

    if-nez v1, :cond_3

    iget v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->blockcount:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->fouled:Z

    .line 108
    :cond_3
    const/4 v1, 0x1

    iput v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->campstate:I

    .line 111
    :cond_4
    iget-boolean v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->pooledball9:Z

    if-eqz v1, :cond_6

    .line 112
    iget-boolean v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->fouled:Z

    if-eqz v1, :cond_5

    .line 113
    iget v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->lastFouledPlayer:I

    .line 114
    invoke-virtual {p0, v9}, Lcom/forthblue/pool/rules/Vsai9Ball;->setLose(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V

    .line 168
    :goto_1
    return-void

    .line 117
    :cond_5
    invoke-virtual {p0, v9}, Lcom/forthblue/pool/rules/Vsai9Ball;->setWin(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V

    goto :goto_1

    .line 120
    :cond_6
    const/16 v1, 0x9

    aget-object v1, p2, v1

    iget-boolean v1, v1, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v1, :cond_7

    .line 121
    const/16 v4, 0x9

    const v5, 0x44138857

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/forthblue/pool/rules/Vsai9Ball;->putBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;IFFZ)V

    goto :goto_1

    .line 125
    :cond_7
    iget v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->potcount:I

    if-nez v1, :cond_8

    iget v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->blockcount:I

    if-nez v1, :cond_8

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->fouled:Z

    .line 131
    :cond_8
    iget v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->firsthit:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    .line 132
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->fouled:Z

    .line 136
    :cond_9
    iget-boolean v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->fouled:Z

    if-eqz v1, :cond_d

    .line 137
    iget v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->lastFouledPlayer:I

    .line 138
    iget-object v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->foulCount:[I

    iget v2, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->currentPlayer:I

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    const/4 v1, 0x3

    if-lt v3, v1, :cond_a

    .line 147
    :cond_a
    :goto_2
    const/4 v1, 0x0

    aget-object v1, p2, v1

    iget-boolean v1, v1, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v1, :cond_b

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->fouled:Z

    .line 149
    const/4 v4, 0x0

    const v5, -0x3bcfc000

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/forthblue/pool/rules/Vsai9Ball;->putBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;IFFZ)V

    .line 152
    :cond_b
    iget-boolean v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->fouled:Z

    if-eqz v1, :cond_e

    .line 153
    const-string v1, "Pool"

    const-string v2, "Player fouled!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v1, 0x3

    iput v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->state:I

    .line 156
    invoke-virtual {p0, v9}, Lcom/forthblue/pool/rules/Vsai9Ball;->switchPlayer(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V

    .line 163
    :cond_c
    :goto_3
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->fouled:Z

    .line 164
    const/4 v1, -0x1

    iput v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->firsthit:I

    .line 165
    const/4 v1, 0x0

    iput v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->potcount:I

    .line 166
    const/4 v1, 0x0

    iput v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->blockcount:I

    .line 167
    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->pooledball9:Z

    goto :goto_1

    .line 143
    :cond_d
    iget-object v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->foulCount:[I

    iget v2, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->currentPlayer:I

    const/4 v3, 0x0

    aput v3, v1, v2

    goto :goto_2

    .line 158
    :cond_e
    iget v1, v9, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->potcount:I

    if-nez v1, :cond_c

    .line 159
    invoke-virtual {p0, v9}, Lcom/forthblue/pool/rules/Vsai9Ball;->switchPlayer(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V

    goto :goto_3
.end method

.method public resetBalls([Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 0
    .param p1, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 26
    invoke-static {p1}, Lcom/forthblue/pool/rules/Time9Ball1P;->reset9BallBalls([Lcom/forthblue/pool/engine/PoolBall;)V

    .line 27
    return-void
.end method

.method public resetRoundState(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V
    .locals 6
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 61
    const/4 v2, 0x3

    iput v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 63
    iput v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->roundCount:I

    .line 64
    sget v2, Lcom/forthblue/pool/rules/Vsai9Ball;->not_ai_player_count:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/forthblue/pool/rules/Vsai9Ball;->rand:Ljava/util/Random;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    :goto_0
    iput v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    .line 65
    iput v5, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->winner:I

    .line 66
    iput v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    .line 68
    iget-object v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 69
    iput-boolean v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->counttime:Z

    .line 71
    iput v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->totalGameTime:I

    .line 72
    iput v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->roundTime:I

    .line 74
    iput v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    .line 75
    iput v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->potInOneBreak:I

    .line 76
    iput v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->matchCount:I

    .line 77
    iput v5, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->lastFouledPlayer:I

    .line 79
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;

    move-object v1, v0

    .line 80
    .local v1, "rs":Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;
    iput-boolean v4, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->fouled:Z

    .line 81
    iput v5, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->firsthit:I

    .line 82
    iput v4, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->potcount:I

    .line 83
    iput v4, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->blockcount:I

    .line 84
    iput-boolean v4, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->pooledball9:Z

    .line 85
    iput v4, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->campstate:I

    .line 86
    iget-object v2, v1, Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;->foulCount:[I

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 87
    return-void

    .end local v1    # "rs":Lcom/forthblue/pool/rules/Vsai9Ball$GameRoundState;
    :cond_0
    move v2, v4

    .line 64
    goto :goto_0
.end method

.method public showTargetSign(Lcom/forthblue/pool/rules/PoolRule$RoundState;)Z
    .locals 1
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    .line 16
    const/4 v0, 0x1

    return v0
.end method
