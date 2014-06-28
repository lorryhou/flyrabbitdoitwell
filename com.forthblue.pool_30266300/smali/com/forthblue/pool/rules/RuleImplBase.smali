.class public Lcom/forthblue/pool/rules/RuleImplBase;
.super Ljava/lang/Object;
.source "RuleImplBase.java"

# interfaces
.implements Lcom/forthblue/pool/rules/PoolRule;


# static fields
.field public static final BALL_RADIUS:F = 47.15f

.field public static final MAX_STRENGTH:F = 4000.0f

.field public static final TABLE_HEIGHT:F = 1530.0f

.field public static final TABLE_WIDTH:F = 2810.0f

.field static final bb:F = 100.0f

.field static final blockersPosition:[F

.field static final holePosition:[F

.field public static isPractice:Z

.field static rand:Ljava/util/Random;


# instance fields
.field ballHighlight:Lcom/fruitsmobile/basket/resources/Texture;

.field ballShadow:Lcom/fruitsmobile/basket/resources/Texture;

.field ballWhite:Lcom/fruitsmobile/basket/resources/Texture;

.field balls:[Lcom/fruitsmobile/basket/resources/Texture;

.field circle:Lcom/fruitsmobile/basket/resources/Texture;

.field public difficulty:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/forthblue/pool/rules/RuleImplBase;->isPractice:Z

    .line 110
    const/16 v0, 0x28

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/forthblue/pool/rules/RuleImplBase;->blockersPosition:[F

    .line 131
    const/16 v0, 0x12

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/forthblue/pool/rules/RuleImplBase;->holePosition:[F

    .line 410
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/forthblue/pool/rules/RuleImplBase;->rand:Ljava/util/Random;

    return-void

    .line 110
    nop

    :array_0
    .array-data 4
        -0x3b5ce000
        -0x3bd9c000
        0x44a32000
        -0x3bd9c000
        -0x3b5ce000
        -0x3bd9c000
        -0x3b5ce000
        0x44264000
        0x44a32000
        -0x3bd9c000
        0x44a32000
        0x44264000
        -0x3b5ce000
        0x44264000
        0x44a32000
        0x44264000
        -0x3b66e000
        0x44020000
        -0x3b66e000
        -0x3c0b0000
        -0x3b740000
        -0x3be8c000
        -0x3d380000
        -0x3be8c000
        0x42c80000
        -0x3be8c000
        0x448c0000
        -0x3be8c000
        0x44982000
        0x44020000
        0x44982000
        -0x3c060000
        -0x3b740000
        0x441c4000
        -0x3d380000
        0x441c4000
        0x42c80000
        0x441c4000
        0x448c0000
        0x441c4000
    .end array-data

    .line 131
    :array_1
    .array-data 4
        0x0
        -0x3be30000
        0x42a00000
        -0x3b678000
        -0x3bea0000
        0x428c0000
        0x44988000
        -0x3bea0000
        0x428c0000
        0x0
        0x44228000
        0x42a00000
        -0x3b664000
        0x441d8000
        0x428c0000
        0x44988000
        0x441d8000
        0x428c0000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v2, 0x0

    iput v2, p0, Lcom/forthblue/pool/rules/RuleImplBase;->difficulty:I

    .line 64
    const v2, 0x7f020014

    invoke-static {v2}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v2

    iput-object v2, p0, Lcom/forthblue/pool/rules/RuleImplBase;->ballWhite:Lcom/fruitsmobile/basket/resources/Texture;

    .line 66
    const/16 v2, 0xf

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 70
    .local v1, "resource":[I
    array-length v2, v1

    new-array v2, v2, [Lcom/fruitsmobile/basket/resources/Texture;

    iput-object v2, p0, Lcom/forthblue/pool/rules/RuleImplBase;->balls:[Lcom/fruitsmobile/basket/resources/Texture;

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/forthblue/pool/rules/RuleImplBase;->balls:[Lcom/fruitsmobile/basket/resources/Texture;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/forthblue/pool/rules/RuleImplBase;->balls:[Lcom/fruitsmobile/basket/resources/Texture;

    aget v3, v1, v0

    invoke-static {v3}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v3

    aput-object v3, v2, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    const v2, 0x7f020084

    invoke-static {v2}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v2

    iput-object v2, p0, Lcom/forthblue/pool/rules/RuleImplBase;->ballShadow:Lcom/fruitsmobile/basket/resources/Texture;

    .line 76
    const v2, 0x7f020069

    invoke-static {v2}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v2

    iput-object v2, p0, Lcom/forthblue/pool/rules/RuleImplBase;->ballHighlight:Lcom/fruitsmobile/basket/resources/Texture;

    .line 77
    const v2, 0x7f020023

    invoke-static {v2}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v2

    iput-object v2, p0, Lcom/forthblue/pool/rules/RuleImplBase;->circle:Lcom/fruitsmobile/basket/resources/Texture;

    .line 78
    return-void

    .line 66
    :array_0
    .array-data 4
        0x7f020005
        0x7f02000c
        0x7f02000d
        0x7f02000e
        0x7f02000f
        0x7f020010
        0x7f020011
        0x7f020012
        0x7f020013
        0x7f020006
        0x7f020007
        0x7f020008
        0x7f020009
        0x7f02000a
        0x7f02000b
    .end array-data
.end method


# virtual methods
.method public canPut([Lcom/forthblue/pool/engine/PoolBall;IFF)Z
    .locals 10
    .param p1, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "ind"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    const/4 v9, 0x0

    .line 198
    const v0, 0x423c999a

    .line 199
    .local v0, "ballr":F
    sub-float v6, p3, v0

    const v7, -0x3b66e000

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    add-float v6, p3, v0

    const v7, 0x44982000

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    sub-float v6, p4, v0

    const v7, -0x3be8c000

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    add-float v6, p4, v0

    const v7, 0x441c4000

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    :cond_0
    move v6, v9

    .line 224
    :goto_0
    return v6

    .line 202
    :cond_1
    mul-float v6, v0, v0

    const/high16 v7, 0x40800000

    mul-float v4, v6, v7

    .line 205
    .local v4, "powerr":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_3

    .line 206
    if-eq v3, p2, :cond_2

    aget-object v6, p1, v3

    iget-boolean v6, v6, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-eqz v6, :cond_2

    .line 207
    aget-object v6, p1, v3

    iget v6, v6, Lcom/forthblue/pool/engine/PoolBall;->x:F

    sub-float v1, v6, p3

    .line 208
    .local v1, "dx":F
    aget-object v6, p1, v3

    iget v6, v6, Lcom/forthblue/pool/engine/PoolBall;->y:F

    sub-float v2, v6, p4

    .line 209
    .local v2, "dy":F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    cmpl-float v6, v4, v6

    if-lez v6, :cond_2

    move v6, v9

    .line 210
    goto :goto_0

    .line 205
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 216
    :cond_3
    const/4 v3, 0x0

    :goto_2
    sget-object v6, Lcom/forthblue/pool/rules/RuleImplBase;->holePosition:[F

    array-length v6, v6

    div-int/lit8 v6, v6, 0x3

    if-ge v3, v6, :cond_5

    .line 217
    sget-object v6, Lcom/forthblue/pool/rules/RuleImplBase;->holePosition:[F

    mul-int/lit8 v7, v3, 0x3

    aget v6, v6, v7

    sub-float v1, p3, v6

    .line 218
    .restart local v1    # "dx":F
    sget-object v6, Lcom/forthblue/pool/rules/RuleImplBase;->holePosition:[F

    mul-int/lit8 v7, v3, 0x3

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    sub-float v2, p4, v6

    .line 219
    .restart local v2    # "dy":F
    aget-object v6, p1, p2

    iget v6, v6, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    sget-object v7, Lcom/forthblue/pool/rules/RuleImplBase;->holePosition:[F

    mul-int/lit8 v8, v3, 0x3

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    add-float v5, v6, v7

    .line 220
    .local v5, "r":F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    cmpg-float v6, v6, v5

    if-gez v6, :cond_4

    move v6, v9

    .line 221
    goto :goto_0

    .line 216
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 224
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v5    # "r":F
    :cond_5
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public checkFreeballArea(Lcom/forthblue/pool/rules/PoolRule$RoundState;Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 0
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "ball0"    # Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    .line 295
    return-void
.end method

.method public createRoundState()Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;

    invoke-direct {v0}, Lcom/forthblue/pool/rules/PoolRule$RoundState;-><init>()V

    return-object v0
.end method

.method public getAI()Lcom/forthblue/pool/engine/PoolAI;
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAimTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;)I
    .locals 1
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    .line 187
    const/4 v0, -0x1

    return v0
.end method

.method public getBallCount()I
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public getBallRadius()F
    .locals 1

    .prologue
    .line 40
    const v0, 0x423c999a

    return v0
.end method

.method public getBallTexture(I)Lcom/fruitsmobile/basket/resources/Texture;
    .locals 2
    .param p1, "ballid"    # I

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/forthblue/pool/rules/RuleImplBase;->ballWhite:Lcom/fruitsmobile/basket/resources/Texture;

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/rules/RuleImplBase;->balls:[Lcom/fruitsmobile/basket/resources/Texture;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getBlockerCount()I
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/forthblue/pool/rules/RuleImplBase;->blockersPosition:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getClickTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;)I
    .locals 1
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultAimAngle()F
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getForce()F
    .locals 1

    .prologue
    .line 45
    const v0, 0x44bb8000

    return v0
.end method

.method public getHighlightTexture()Lcom/fruitsmobile/basket/resources/Texture;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/forthblue/pool/rules/RuleImplBase;->ballHighlight:Lcom/fruitsmobile/basket/resources/Texture;

    return-object v0
.end method

.method public getHoleCount()I
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/forthblue/pool/rules/RuleImplBase;->holePosition:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getHoleGravity()F
    .locals 1

    .prologue
    .line 55
    const/high16 v0, 0x45610000

    return v0
.end method

.method public getMaxStrength()F
    .locals 1

    .prologue
    .line 182
    const/high16 v0, 0x457a0000

    return v0
.end method

.method public getMinStrength()F
    .locals 1

    .prologue
    .line 177
    const/high16 v0, 0x43480000

    return v0
.end method

.method public getPlayerCount()I
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayerType(I)I
    .locals 1
    .param p1, "playerid"    # I

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public getRollForce()F
    .locals 1

    .prologue
    .line 50
    const/high16 v0, 0x42c80000

    return v0
.end method

.method public getShadowTexture()Lcom/fruitsmobile/basket/resources/Texture;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/forthblue/pool/rules/RuleImplBase;->ballShadow:Lcom/fruitsmobile/basket/resources/Texture;

    return-object v0
.end method

.method public getTableHeight()F
    .locals 1

    .prologue
    .line 35
    const v0, 0x44bf4000

    return v0
.end method

.method public getTableWidth()F
    .locals 1

    .prologue
    .line 30
    const v0, 0x452fa000

    return v0
.end method

.method public getTargetTexture()Lcom/fruitsmobile/basket/resources/Texture;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/forthblue/pool/rules/RuleImplBase;->circle:Lcom/fruitsmobile/basket/resources/Texture;

    return-object v0
.end method

.method public isAvailableTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)Z
    .locals 1
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "id"    # I

    .prologue
    .line 192
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newMatch(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 0
    .param p1, "roundstate"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 278
    return-void
.end method

.method public onClick(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 0
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    .line 261
    return-void
.end method

.method public onHitBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;II[Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 0
    .param p1, "roundstate"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "ballid1"    # I
    .param p3, "ballid2"    # I
    .param p4, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    .line 282
    return-void
.end method

.method public onHitBlocker(Lcom/forthblue/pool/rules/PoolRule$RoundState;II[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolBlocker;)V
    .locals 0
    .param p1, "roundstate"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "ballid"    # I
    .param p3, "blockerid"    # I
    .param p4, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p5, "blockers"    # [Lcom/forthblue/pool/engine/PoolBlocker;

    .prologue
    .line 286
    return-void
.end method

.method public onPotBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;I[Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolHole;)Z
    .locals 1
    .param p1, "roundstate"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "ballid"    # I
    .param p3, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p4, "hole"    # Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public onPutFreeball(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)V
    .locals 0
    .param p1, "roundstate"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "ballid"    # I

    .prologue
    .line 229
    return-void
.end method

.method public onRoundOver(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 0
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 265
    return-void
.end method

.method public onTimeOver(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 0
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    .line 269
    return-void
.end method

.method public putBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;IFFZ)V
    .locals 20
    .param p1, "roundstate"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "ind"    # I
    .param p4, "basex"    # F
    .param p5, "basey"    # F
    .param p6, "bIgnoreOtherball"    # Z

    .prologue
    .line 298
    aget-object v3, p2, p3

    .line 299
    .local v3, "ball":Lcom/forthblue/pool/engine/PoolBall;
    invoke-virtual {v3}, Lcom/forthblue/pool/engine/PoolBall;->reset()V

    .line 300
    const/16 v17, 0x1

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/engine/PoolBall;->setVisible(Z)V

    .line 301
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object v1, v3

    iput-boolean v0, v1, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    .line 303
    move/from16 v15, p4

    .line 304
    .local v15, "x":F
    move/from16 v16, p5

    .line 306
    .local v16, "y":F
    if-eqz p6, :cond_0

    .line 307
    iput v15, v3, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 308
    move/from16 v0, v16

    move-object v1, v3

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 408
    :goto_0
    return-void

    .line 313
    :cond_0
    const v4, 0x42be999a

    .line 317
    .local v4, "balld":F
    mul-float v14, v4, v4

    .line 318
    .local v14, "rr":F
    const/high16 v8, 0x3f800000

    .local v8, "dx":F
    const/high16 v9, 0x3f800000

    .local v9, "dy":F
    const/4 v13, 0x0

    .line 319
    .local v13, "p":F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 320
    move v0, v10

    move/from16 v1, p3

    if-eq v0, v1, :cond_1

    aget-object v17, p2, v10

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 319
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 324
    :cond_2
    aget-object v17, p2, v10

    move-object/from16 v0, v17

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v17, v0

    sub-float v8, v17, v15

    .line 325
    aget-object v17, p2, v10

    move-object/from16 v0, v17

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v17, v0

    sub-float v9, v17, v16

    .line 326
    mul-float v17, v8, v8

    mul-float v18, v9, v9

    add-float v13, v17, v18

    .line 327
    cmpg-float v17, v13, v14

    if-gez v17, :cond_1

    .line 331
    :cond_3
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move v0, v10

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    .line 332
    iput v15, v3, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 333
    move/from16 v0, v16

    move-object v1, v3

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    goto :goto_0

    .line 337
    :cond_4
    const/4 v12, 0x0

    .line 338
    .local v12, "mind":F
    const/4 v2, 0x0

    .line 341
    .local v2, "b":Z
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move v0, v11

    move/from16 v1, v17

    if-ge v0, v1, :cond_10

    .line 342
    move v0, v11

    move/from16 v1, p3

    if-eq v0, v1, :cond_5

    aget-object v17, p2, v11

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 341
    :cond_5
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 345
    :cond_6
    aget-object v17, p2, v11

    move-object/from16 v0, v17

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v17, v0

    sub-float v7, v17, p5

    .line 346
    .local v7, "dpy":F
    mul-float v17, v7, v7

    sub-float v6, v14, v17

    .line 347
    .local v6, "dpx":F
    const/16 v17, 0x0

    cmpg-float v17, v6, v17

    if-ltz v17, :cond_5

    .line 350
    invoke-static {v6}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v6

    .line 354
    aget-object v17, p2, v11

    move-object/from16 v0, v17

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v17, v0

    add-float v17, v17, v6

    move/from16 v0, v17

    move-object v1, v3

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 355
    move/from16 v0, p5

    move-object v1, v3

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 356
    move-object v0, v3

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v17, v0

    sub-float v17, v17, p4

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 358
    .local v5, "ddr":F
    move-object v0, v3

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v17, v0

    const v18, 0x44923b33

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_b

    move-object v0, v3

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v17, v0

    const v18, -0x3b6cc4cd

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_b

    if-eqz v2, :cond_7

    cmpg-float v17, v5, v12

    if-gez v17, :cond_b

    .line 359
    :cond_7
    const/4 v10, 0x0

    :goto_4
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 360
    move v0, v10

    move/from16 v1, p3

    if-eq v0, v1, :cond_8

    if-eq v10, v11, :cond_8

    aget-object v17, p2, v10

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    .line 359
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 364
    :cond_9
    aget-object v17, p2, v10

    move-object/from16 v0, v17

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v17, v0

    move-object v0, v3

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v18, v0

    sub-float v8, v17, v18

    .line 365
    aget-object v17, p2, v10

    move-object/from16 v0, v17

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v17, v0

    move-object v0, v3

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v18, v0

    sub-float v9, v17, v18

    .line 366
    mul-float v17, v8, v8

    mul-float v18, v9, v9

    add-float v13, v17, v18

    .line 367
    cmpg-float v17, v13, v14

    if-gez v17, :cond_8

    .line 371
    :cond_a
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move v0, v10

    move/from16 v1, v17

    if-lt v0, v1, :cond_b

    .line 372
    const-string v17, "Pool"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "I\'m here! ddr = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v2, 0x1

    .line 374
    move v12, v5

    .line 375
    iget v15, v3, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 376
    move-object v0, v3

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v16, v0

    .line 380
    :cond_b
    aget-object v17, p2, v11

    move-object/from16 v0, v17

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v17, v0

    sub-float v17, v17, v6

    move/from16 v0, v17

    move-object v1, v3

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 381
    move-object v0, v3

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v17, v0

    sub-float v17, v17, p4

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 383
    move-object v0, v3

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v17, v0

    const v18, 0x44923b33

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_5

    move-object v0, v3

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v17, v0

    const v18, -0x3b6cc4cd

    cmpl-float v17, v17, v18

    if-ltz v17, :cond_5

    if-eqz v2, :cond_c

    cmpg-float v17, v5, v12

    if-gez v17, :cond_5

    .line 384
    :cond_c
    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_f

    .line 385
    move v0, v10

    move/from16 v1, p3

    if-eq v0, v1, :cond_d

    if-eq v10, v11, :cond_d

    aget-object v17, p2, v10

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    .line 384
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 389
    :cond_e
    aget-object v17, p2, v10

    move-object/from16 v0, v17

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v17, v0

    move-object v0, v3

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v18, v0

    sub-float v8, v17, v18

    .line 390
    aget-object v17, p2, v10

    move-object/from16 v0, v17

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v17, v0

    move-object v0, v3

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v18, v0

    sub-float v9, v17, v18

    .line 391
    mul-float v17, v8, v8

    mul-float v18, v9, v9

    add-float v13, v17, v18

    .line 392
    cmpg-float v17, v13, v14

    if-gez v17, :cond_d

    .line 396
    :cond_f
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move v0, v10

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    .line 397
    const-string v17, "Pool"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "I\'m here! ddr = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v2, 0x1

    .line 399
    move v12, v5

    .line 400
    iget v15, v3, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 401
    move-object v0, v3

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v16, v0

    goto/16 :goto_3

    .line 406
    .end local v5    # "ddr":F
    .end local v6    # "dpx":F
    .end local v7    # "dpy":F
    :cond_10
    iput v15, v3, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 407
    move/from16 v0, v16

    move-object v1, v3

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    goto/16 :goto_0
.end method

.method public resetBalls([Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 0
    .param p1, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 238
    return-void
.end method

.method public resetBlockers([Lcom/forthblue/pool/engine/PoolBlocker;)V
    .locals 7
    .param p1, "blockers"    # [Lcom/forthblue/pool/engine/PoolBlocker;

    .prologue
    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 144
    aget-object v1, p1, v0

    sget-object v2, Lcom/forthblue/pool/rules/RuleImplBase;->blockersPosition:[F

    mul-int/lit8 v3, v0, 0x4

    aget v2, v2, v3

    sget-object v3, Lcom/forthblue/pool/rules/RuleImplBase;->blockersPosition:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    sget-object v4, Lcom/forthblue/pool/rules/RuleImplBase;->blockersPosition:[F

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    sget-object v5, Lcom/forthblue/pool/rules/RuleImplBase;->blockersPosition:[F

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x3

    aget v5, v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/forthblue/pool/engine/PoolBlocker;->setLinePosition(FFFF)V

    .line 146
    aget-object v1, p1, v0

    const/high16 v2, 0x44960000

    iput v2, v1, Lcom/forthblue/pool/engine/PoolBlocker;->force:F

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method public resetHoles([Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 6
    .param p1, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 158
    aget-object v2, p1, v0

    sget-object v3, Lcom/forthblue/pool/rules/RuleImplBase;->holePosition:[F

    mul-int/lit8 v4, v0, 0x3

    aget v3, v3, v4

    sget-object v4, Lcom/forthblue/pool/rules/RuleImplBase;->holePosition:[F

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/forthblue/pool/engine/PoolHole;->setPosition(FF)V

    .line 159
    sget-object v2, Lcom/forthblue/pool/rules/RuleImplBase;->holePosition:[F

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x2

    aget v2, v2, v3

    const/high16 v3, 0x40000000

    mul-float v1, v2, v3

    .line 160
    .local v1, "scale":F
    aget-object v2, p1, v0

    invoke-virtual {v2, v1, v1}, Lcom/forthblue/pool/engine/PoolHole;->setSize(FF)V

    .line 161
    aget-object v2, p1, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "scale":F
    :cond_0
    return-void
.end method

.method public resetRoundState(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V
    .locals 0
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    .line 257
    return-void
.end method

.method public resetRoundStateData(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V
    .locals 0
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    .line 421
    return-void
.end method

.method public showTargetSign(Lcom/forthblue/pool/rules/PoolRule$RoundState;)Z
    .locals 1
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method
