.class public Lcom/forthblue/pool/rules/Vsai8Ball;
.super Lcom/forthblue/pool/rules/VsaiRuleBase;
.source "Vsai8Ball.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;
    }
.end annotation


# static fields
.field private static final CAMP_STATE_BREAKOFF:I = 0x0

.field private static final CAMP_STATE_OPEN:I = 0x1

.field private static final CAMP_STATE_PLAYER1_COLOR:I = 0x2

.field private static final CAMP_STATE_PLAYER2_COLOR:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/forthblue/pool/rules/VsaiRuleBase;-><init>()V

    .line 33
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

    .line 253
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;

    move-object v1, v0

    .line 254
    .local v1, "rs":Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;
    iget v2, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->campstate:I

    if-nez v2, :cond_4

    .line 255
    iget v2, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    .line 256
    iput v4, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 258
    :cond_0
    iget v2, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    .line 259
    iput v6, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 261
    :cond_1
    iget v2, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 262
    iput v3, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 264
    :cond_2
    iget v2, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 265
    iput v5, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 281
    :cond_3
    :goto_0
    return-void

    .line 268
    :cond_4
    iget v2, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_5

    .line 269
    iput v4, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 271
    :cond_5
    iget v2, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_6

    .line 272
    iput v7, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 274
    :cond_6
    iget v2, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    .line 275
    iput v3, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 277
    :cond_7
    iget v2, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 278
    iput v5, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    goto :goto_0
.end method

.method public createRoundState()Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;

    invoke-direct {v0, p0}, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;-><init>(Lcom/forthblue/pool/rules/Vsai8Ball;)V

    .line 89
    .local v0, "state":Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;
    invoke-virtual {p0}, Lcom/forthblue/pool/rules/Vsai8Ball;->getPlayerCount()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->playerScore:[I

    .line 90
    invoke-virtual {p0}, Lcom/forthblue/pool/rules/Vsai8Ball;->getPlayerCount()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->foulCount:[I

    .line 91
    return-object v0
.end method

.method public getBallCount()I
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x10

    return v0
.end method

.method public isAvailableTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)Z
    .locals 11
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "id"    # I

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x7

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 47
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;

    move-object v4, v0

    .line 48
    .local v4, "rs":Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;
    const/4 v1, 0x0

    .line 50
    .local v1, "bcolor":Z
    iget v5, v4, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->campstate:I

    packed-switch v5, :pswitch_data_0

    .line 69
    :goto_0
    if-ne p3, v8, :cond_9

    .line 70
    if-eqz v1, :cond_7

    move v3, v6

    .line 71
    .local v3, "j":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v9, :cond_d

    .line 72
    add-int v5, v3, v2

    aget-object v5, p2, v5

    iget-boolean v5, v5, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-eqz v5, :cond_8

    move v5, v7

    .line 83
    .end local v2    # "i":I
    .end local v3    # "j":I
    :goto_3
    return v5

    .line 52
    :pswitch_0
    if-eqz p3, :cond_0

    move v5, v6

    goto :goto_3

    :cond_0
    move v5, v7

    goto :goto_3

    .line 54
    :pswitch_1
    if-ne p3, v8, :cond_3

    .line 55
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_4
    const/16 v5, 0xf

    if-ge v2, v5, :cond_2

    .line 56
    if-eq v2, v8, :cond_1

    aget-object v5, p2, v2

    iget-boolean v5, v5, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-eqz v5, :cond_1

    move v5, v7

    .line 57
    goto :goto_3

    .line 55
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_2
    move v5, v6

    .line 59
    goto :goto_3

    .line 61
    .end local v2    # "i":I
    :cond_3
    if-eqz p3, :cond_4

    move v5, v6

    goto :goto_3

    :cond_4
    move v5, v7

    goto :goto_3

    .line 63
    :pswitch_2
    iget v5, v4, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->currentPlayer:I

    if-nez v5, :cond_5

    move v1, v6

    .line 64
    :goto_5
    goto :goto_0

    :cond_5
    move v1, v7

    .line 63
    goto :goto_5

    .line 66
    :pswitch_3
    iget v5, v4, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->currentPlayer:I

    if-ne v5, v6, :cond_6

    move v1, v6

    :goto_6
    goto :goto_0

    :cond_6
    move v1, v7

    goto :goto_6

    :cond_7
    move v3, v10

    .line 70
    goto :goto_1

    .line 71
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 77
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_9
    if-eqz v1, :cond_b

    .line 78
    if-gt v6, p3, :cond_a

    if-gt p3, v9, :cond_a

    move v5, v6

    goto :goto_3

    :cond_a
    move v5, v7

    goto :goto_3

    .line 80
    :cond_b
    if-gt v10, p3, :cond_c

    const/16 v5, 0xf

    if-gt p3, v5, :cond_c

    move v5, v6

    goto :goto_3

    :cond_c
    move v5, v7

    goto :goto_3

    .line 83
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :cond_d
    if-eqz p3, :cond_e

    move v5, v6

    goto :goto_3

    :cond_e
    move v5, v7

    goto :goto_3

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected isUnderlineFreeball(Lcom/forthblue/pool/rules/PoolRule$RoundState;)Z
    .locals 3
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    .line 351
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;

    move-object v1, v0

    .line 352
    .local v1, "rs":Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;
    iget v2, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->campstate:I

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
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 310
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;

    move-object v1, v0

    .line 312
    .local v1, "rs":Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;
    iput v3, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->campstate:I

    .line 313
    iput-boolean v3, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->fouled:Z

    .line 314
    iput v2, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->firsthit:I

    .line 315
    iput v2, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->firstpot:I

    .line 316
    iput v3, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->potcount:I

    .line 317
    iput v3, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->blockcount:I

    .line 318
    iput-boolean v3, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->pooledball8:Z

    .line 320
    iget-object v2, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->foulCount:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 321
    return-void
.end method

.method public onHitBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;II[Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 4
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "ballid1"    # I
    .param p3, "ballid2"    # I
    .param p4, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    .line 325
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;

    move-object v2, v0

    .line 331
    .local v2, "rs":Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;
    move v1, p2

    .line 332
    .local v1, "ballid":I
    if-nez v1, :cond_2

    .line 333
    move v1, p3

    .line 335
    :cond_2
    iget v3, v2, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->firsthit:I

    if-gtz v3, :cond_0

    .line 336
    iput v1, v2, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->firsthit:I

    .line 337
    invoke-virtual {p0, p1, p4, v1}, Lcom/forthblue/pool/rules/Vsai8Ball;->isAvailableTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 338
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->fouled:Z

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
    .line 345
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;

    move-object v1, v0

    .line 346
    .local v1, "rs":Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;
    iget v2, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->blockcount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->blockcount:I

    .line 347
    return-void
.end method

.method public onPotBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;I[Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolHole;)Z
    .locals 6
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "ballid"    # I
    .param p3, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p4, "hole"    # Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 285
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;

    move-object v2, v0

    .line 286
    .local v2, "rs":Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;
    const/4 v1, 0x0

    .line 287
    .local v1, "ret":Z
    if-eqz p2, :cond_4

    .line 288
    iget v3, v2, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->firstpot:I

    if-gez v3, :cond_0

    .line 289
    iput p2, v2, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->firstpot:I

    .line 291
    :cond_0
    invoke-virtual {p0, p1, p3, p2}, Lcom/forthblue/pool/rules/Vsai8Ball;->isAvailableTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    iget v3, v2, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->potcount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->potcount:I

    .line 293
    const/4 v1, 0x1

    .line 295
    :cond_1
    if-ne p2, v5, :cond_3

    .line 296
    invoke-virtual {p0, p1, p3, v5}, Lcom/forthblue/pool/rules/Vsai8Ball;->isAvailableTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 297
    iput-boolean v4, v2, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->fouled:Z

    .line 299
    :cond_2
    iput-boolean v4, v2, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->pooledball8:Z

    .line 305
    :cond_3
    :goto_0
    return v1

    .line 303
    :cond_4
    iput-boolean v4, v2, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->fouled:Z

    goto :goto_0
.end method

.method public onPutFreeball(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)V
    .locals 3
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "ballid"    # I

    .prologue
    .line 243
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;

    move-object v1, v0

    .line 246
    .local v1, "rs":Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;
    iget v2, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->campstate:I

    if-nez v2, :cond_0

    .line 247
    const/4 v2, 0x1

    iput v2, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->campstate:I

    .line 249
    :cond_0
    return-void
.end method

.method public onRoundOver(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 12
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 129
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v1, p2

    if-ge v9, v1, :cond_2

    .line 130
    aget-object v1, p2, v9

    iget v1, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    const v2, -0x3b66e000

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    aget-object v1, p2, v9

    iget v1, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    const v2, 0x44982000

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    aget-object v1, p2, v9

    iget v1, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    const v2, -0x3be8c000

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    aget-object v1, p2, v9

    iget v1, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    const v2, 0x441c4000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 131
    :cond_0
    aget-object v1, p2, v9

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    .line 132
    aget-object v1, p2, v9

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/forthblue/pool/engine/PoolBall;->setVisible(Z)V

    .line 129
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 136
    :cond_2
    const/4 v1, 0x1

    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 137
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;

    move-object v11, v0

    .line 139
    .local v11, "rs":Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;
    const/4 v8, 0x0

    .line 140
    .local v8, "bIsBreakoff":Z
    iget v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->campstate:I

    if-nez v1, :cond_5

    .line 141
    const/4 v8, 0x1

    .line 143
    iget v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->potcount:I

    if-nez v1, :cond_3

    iget v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->blockcount:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->fouled:Z

    .line 148
    :cond_3
    const/16 v1, 0x8

    aget-object v1, p2, v1

    iget-boolean v1, v1, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v1, :cond_4

    .line 149
    const-string v1, "Pool"

    const-string v2, "Ball8 not available, reset balls."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/forthblue/pool/rules/Vsai8Ball;->resetBalls([Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V

    .line 151
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->fouled:Z

    .line 152
    const/4 v1, -0x1

    iput v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->firsthit:I

    .line 153
    const/4 v1, -0x1

    iput v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->firstpot:I

    .line 154
    const/4 v1, 0x0

    iput v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->potcount:I

    .line 155
    const/4 v1, 0x0

    iput v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->blockcount:I

    .line 156
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->pooledball8:Z

    .line 239
    :goto_1
    return-void

    .line 160
    :cond_4
    iget-boolean v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->fouled:Z

    if-nez v1, :cond_5

    .line 161
    const/4 v1, 0x1

    iput v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->campstate:I

    .line 167
    :cond_5
    iget-boolean v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->pooledball8:Z

    if-eqz v1, :cond_8

    .line 168
    iget v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->potcount:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_6

    iget-boolean v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->fouled:Z

    if-eqz v1, :cond_7

    .line 170
    :cond_6
    iget v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->lastFouledPlayer:I

    .line 171
    invoke-virtual {p0, v11}, Lcom/forthblue/pool/rules/Vsai8Ball;->setLose(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V

    goto :goto_1

    .line 174
    :cond_7
    invoke-virtual {p0, v11}, Lcom/forthblue/pool/rules/Vsai8Ball;->setWin(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V

    goto :goto_1

    .line 177
    :cond_8
    const/16 v1, 0x8

    aget-object v1, p2, v1

    iget-boolean v1, v1, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v1, :cond_9

    .line 178
    iget v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->lastFouledPlayer:I

    .line 179
    invoke-virtual {p0, v11}, Lcom/forthblue/pool/rules/Vsai8Ball;->setLose(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V

    goto :goto_1

    .line 184
    :cond_9
    if-nez v8, :cond_b

    iget v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->campstate:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 185
    iget v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->potcount:I

    if-lez v1, :cond_b

    iget-boolean v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->fouled:Z

    if-nez v1, :cond_b

    .line 186
    iget v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->currentPlayer:I

    if-nez v1, :cond_11

    const/4 v1, 0x2

    move v10, v1

    .line 187
    .local v10, "nextstate":I
    :goto_2
    const-string v1, "Pool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rs.currentPlayer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->currentPlayer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rs.firstpot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->firstpot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->firstpot:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_a

    .line 189
    const/4 v1, 0x5

    sub-int v10, v1, v10

    .line 191
    :cond_a
    const-string v1, "Pool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camp decided, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    if-ne v10, v3, :cond_12

    const-string v3, "player"

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pot color balls"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iput v10, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->campstate:I

    .line 196
    .end local v10    # "nextstate":I
    :cond_b
    iget v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->potcount:I

    if-nez v1, :cond_c

    iget v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->blockcount:I

    if-nez v1, :cond_c

    .line 198
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->fouled:Z

    .line 202
    :cond_c
    iget v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->firsthit:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->fouled:Z

    .line 207
    :cond_d
    iget-boolean v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->fouled:Z

    if-eqz v1, :cond_13

    .line 208
    iget v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    iput v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->lastFouledPlayer:I

    .line 209
    iget-object v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->foulCount:[I

    iget v2, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->currentPlayer:I

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    const/4 v1, 0x3

    if-lt v3, v1, :cond_e

    .line 217
    :cond_e
    :goto_4
    const/4 v1, 0x0

    aget-object v1, p2, v1

    iget-boolean v1, v1, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v1, :cond_f

    .line 218
    const/4 v4, 0x0

    const v5, -0x3bcfc000

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/forthblue/pool/rules/Vsai8Ball;->putBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;IFFZ)V

    .line 219
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->fouled:Z

    .line 222
    :cond_f
    iget-boolean v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->fouled:Z

    if-eqz v1, :cond_14

    .line 223
    const-string v1, "Pool"

    const-string v2, "Player fouled!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v1, 0x3

    iput v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->state:I

    .line 226
    invoke-virtual {p0, v11}, Lcom/forthblue/pool/rules/Vsai8Ball;->switchPlayer(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V

    .line 233
    :cond_10
    :goto_5
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->fouled:Z

    .line 234
    const/4 v1, -0x1

    iput v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->firsthit:I

    .line 235
    const/4 v1, -0x1

    iput v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->firstpot:I

    .line 236
    const/4 v1, 0x0

    iput v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->potcount:I

    .line 237
    const/4 v1, 0x0

    iput v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->blockcount:I

    .line 238
    const/4 v1, 0x0

    iput-boolean v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->pooledball8:Z

    goto/16 :goto_1

    .line 186
    :cond_11
    const/4 v1, 0x3

    move v10, v1

    goto/16 :goto_2

    .line 191
    .restart local v10    # "nextstate":I
    :cond_12
    const-string v3, "ai"

    goto :goto_3

    .line 214
    .end local v10    # "nextstate":I
    :cond_13
    iget-object v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->foulCount:[I

    iget v2, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->currentPlayer:I

    const/4 v3, 0x0

    aput v3, v1, v2

    goto :goto_4

    .line 228
    :cond_14
    iget v1, v11, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->potcount:I

    if-nez v1, :cond_10

    .line 229
    invoke-virtual {p0, v11}, Lcom/forthblue/pool/rules/Vsai8Ball;->switchPlayer(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V

    goto :goto_5
.end method

.method public resetBalls([Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 0
    .param p1, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 25
    invoke-static {p1}, Lcom/forthblue/pool/rules/Time8Ball1P;->reset8BallBalls([Lcom/forthblue/pool/engine/PoolBall;)V

    .line 26
    return-void
.end method

.method public resetRoundState(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V
    .locals 6
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 96
    iput v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 98
    iput v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->roundCount:I

    .line 99
    sget v2, Lcom/forthblue/pool/rules/Vsai8Ball;->not_ai_player_count:I

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/forthblue/pool/rules/Vsai8Ball;->rand:Ljava/util/Random;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    :goto_0
    iput v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    .line 100
    iput v5, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->winner:I

    .line 101
    iput v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    .line 103
    iget-object v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 104
    iput-boolean v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->counttime:Z

    .line 106
    iput v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->totalGameTime:I

    .line 107
    iput v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->roundTime:I

    .line 109
    iput v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    .line 110
    iput v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->potInOneBreak:I

    .line 111
    iput v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->matchCount:I

    .line 112
    iput v5, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->lastFouledPlayer:I

    .line 114
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;

    move-object v1, v0

    .line 115
    .local v1, "rs":Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;
    iput v4, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->campstate:I

    .line 116
    iput-boolean v4, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->fouled:Z

    .line 117
    iput v5, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->firsthit:I

    .line 118
    iput v5, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->firstpot:I

    .line 119
    iput v4, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->potcount:I

    .line 120
    iput v4, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->blockcount:I

    .line 121
    iput-boolean v4, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->pooledball8:Z

    .line 123
    iget-object v2, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->foulCount:[I

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    .line 124
    return-void

    .end local v1    # "rs":Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;
    :cond_0
    move v2, v4

    .line 99
    goto :goto_0
.end method

.method public showTargetSign(Lcom/forthblue/pool/rules/PoolRule$RoundState;)Z
    .locals 4
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    const/4 v3, 0x1

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;

    move-object v1, v0

    .line 15
    .local v1, "rs":Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;
    iget v2, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->campstate:I

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/forthblue/pool/rules/Vsai8Ball$GameRoundState;->campstate:I

    if-eq v2, v3, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
