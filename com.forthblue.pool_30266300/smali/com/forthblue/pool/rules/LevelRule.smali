.class public Lcom/forthblue/pool/rules/LevelRule;
.super Lcom/forthblue/pool/rules/RuleImplBase;
.source "LevelRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/forthblue/pool/rules/LevelRule$EventListener;,
        Lcom/forthblue/pool/rules/LevelRule$GameRoundState;
    }
.end annotation


# static fields
.field public static final CUE_ONE:I = 0x0

.field public static final FOUL_TWO:I = 0x1

.field public static final HOLE_ADD_CUE:I = 0x5

.field public static final HOLE_MINUS_BALL:I = 0x4

.field public static final HOLE_NOT_AVAILABLE:I = 0x1

.field public static final INIT_STAR_COUNT:I = 0x6

.field public static final MAX_ADD:I = 0x4

.field public static final MAX_MIS:I = 0x3

.field public static final TYPE_EXCELLENT:I = 0x4

.field public static final TYPE_GREAT:I = 0x3

.field public static final TYPE_GREAT_CUE:I = 0x5

.field public static final TYPE_NICE:I = 0x2

.field private static start_angle:[[I


# instance fields
.field public arcade_level:I

.field public arcade_stage:I

.field private ballCount:I

.field private ballsPos:[F

.field private black_hole_count:I

.field private black_hole_id:[I

.field private event_listener:Lcom/forthblue/pool/rules/LevelRule$EventListener;

.field flag:Z

.field private texture_id:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x1e

    .line 447
    const/4 v0, 0x7

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

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    sput-object v0, Lcom/forthblue/pool/rules/LevelRule;->start_angle:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x1
        0x0
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x3
        0x0
        0x3
        0x0
        0x0
        0x0
        0x0
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x3
        0x3
        0x3
        0x1
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x2
        0x2
        0x2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x2
        0x2
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x2
        0x2
        0x2
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x2
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x2
        0x2
        0x0
        0x2
        0x2
        0x2
        0x0
        0x0
        0x0
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x24

    .line 9
    invoke-direct {p0}, Lcom/forthblue/pool/rules/RuleImplBase;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/forthblue/pool/rules/LevelRule;->flag:Z

    .line 504
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/forthblue/pool/rules/LevelRule;->black_hole_id:[I

    .line 506
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/forthblue/pool/rules/LevelRule;->texture_id:[I

    .line 507
    const/16 v0, 0x48

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/forthblue/pool/rules/LevelRule;->ballsPos:[F

    .line 509
    return-void
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

    .line 433
    iget v0, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 434
    iput v2, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 436
    :cond_0
    iget v0, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    .line 437
    iput v4, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 439
    :cond_1
    iget v0, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 440
    iput v1, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 442
    :cond_2
    iget v0, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 443
    iput v3, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 445
    :cond_3
    return-void
.end method

.method public createRoundState()Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;

    invoke-direct {v0, p0}, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;-><init>(Lcom/forthblue/pool/rules/LevelRule;)V

    .line 136
    .local v0, "state":Lcom/forthblue/pool/rules/LevelRule$GameRoundState;
    invoke-virtual {p0}, Lcom/forthblue/pool/rules/LevelRule;->getPlayerCount()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->playerScore:[I

    .line 137
    return-object v0
.end method

.method public getBallCount()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/forthblue/pool/rules/LevelRule;->ballCount:I

    return v0
.end method

.method public getBallTexture(I)Lcom/fruitsmobile/basket/resources/Texture;
    .locals 1
    .param p1, "ballid"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/forthblue/pool/rules/LevelRule;->texture_id:[I

    aget v0, v0, p1

    invoke-super {p0, v0}, Lcom/forthblue/pool/rules/RuleImplBase;->getBallTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultAimAngle()F
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lcom/forthblue/pool/rules/LevelRule;->start_angle:[[I

    iget v1, p0, Lcom/forthblue/pool/rules/LevelRule;->arcade_stage:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/forthblue/pool/rules/LevelRule;->arcade_level:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42b40000

    mul-float/2addr v0, v1

    return v0
.end method

.method public getPlayerCount()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x3

    return v0
.end method

.method public getPlayerType(I)I
    .locals 1
    .param p1, "playerid"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public init(IILjava/lang/String;)Z
    .locals 10
    .param p1, "arcade_stage"    # I
    .param p2, "arcade_level"    # I
    .param p3, "datas"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 26
    :try_start_0
    const-string v5, " "

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, "number":[Ljava/lang/String;
    array-length v5, v3

    new-array v0, v5, [I

    .line 28
    .local v0, "data":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 29
    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v2

    .line 28
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_0
    const/4 v5, 0x0

    aget v5, v0, v5

    iput v5, p0, Lcom/forthblue/pool/rules/LevelRule;->ballCount:I

    .line 32
    const/4 v5, 0x1

    aget v5, v0, v5

    iput v5, p0, Lcom/forthblue/pool/rules/LevelRule;->black_hole_count:I

    .line 33
    const/4 v2, 0x0

    :goto_1
    iget v5, p0, Lcom/forthblue/pool/rules/LevelRule;->black_hole_count:I

    if-ge v2, v5, :cond_1

    .line 34
    iget-object v5, p0, Lcom/forthblue/pool/rules/LevelRule;->black_hole_id:[I

    add-int/lit8 v6, v2, 0x2

    aget v6, v0, v6

    aput v6, v5, v2

    .line 33
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 36
    :cond_1
    iget v5, p0, Lcom/forthblue/pool/rules/LevelRule;->black_hole_count:I

    add-int/lit8 v4, v5, 0x2

    .line 37
    .local v4, "totalcount_pre":I
    const/4 v2, 0x0

    :goto_2
    iget v5, p0, Lcom/forthblue/pool/rules/LevelRule;->ballCount:I

    if-ge v2, v5, :cond_2

    .line 38
    iget-object v5, p0, Lcom/forthblue/pool/rules/LevelRule;->texture_id:[I

    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x0

    add-int/2addr v6, v4

    aget v6, v0, v6

    aput v6, v5, v2

    .line 39
    iget-object v5, p0, Lcom/forthblue/pool/rules/LevelRule;->ballsPos:[F

    mul-int/lit8 v6, v2, 0x2

    mul-int/lit8 v7, v2, 0x3

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v4

    aget v7, v0, v7

    int-to-float v7, v7

    aput v7, v5, v6

    .line 40
    iget-object v5, p0, Lcom/forthblue/pool/rules/LevelRule;->ballsPos:[F

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v7, v2, 0x3

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v4

    aget v7, v0, v7

    int-to-float v7, v7

    aput v7, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 42
    .end local v0    # "data":[I
    .end local v2    # "i":I
    .end local v3    # "number":[Ljava/lang/String;
    .end local v4    # "totalcount_pre":I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v8

    .line 48
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return v5

    .line 46
    .restart local v0    # "data":[I
    .restart local v2    # "i":I
    .restart local v3    # "number":[Ljava/lang/String;
    .restart local v4    # "totalcount_pre":I
    :cond_2
    iput p1, p0, Lcom/forthblue/pool/rules/LevelRule;->arcade_stage:I

    .line 47
    iput p2, p0, Lcom/forthblue/pool/rules/LevelRule;->arcade_level:I

    move v5, v9

    .line 48
    goto :goto_3
.end method

.method public newMatch(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 4
    .param p1, "roundstate"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    const/4 v3, 0x0

    .line 420
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;

    move-object v1, v0

    .line 421
    .local v1, "rs":Lcom/forthblue/pool/rules/LevelRule$GameRoundState;
    const/4 v2, -0x1

    iput v2, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->firsthit:I

    .line 422
    iput v3, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->potcount:I

    .line 423
    const/4 v2, 0x6

    iput v2, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->restTime:I

    .line 424
    const/4 v2, 0x4

    iput v2, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_add_cue:I

    .line 425
    const/4 v2, 0x3

    iput v2, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_mis_ball:I

    .line 426
    iput v3, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->hole_type_top:I

    .line 428
    iget v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->matchCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->matchCount:I

    .line 429
    return-void
.end method

.method public onClick(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 1
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    .line 170
    const/4 v0, 0x2

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 171
    return-void
.end method

.method public onHitBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;II[Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 4
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "ballid1"    # I
    .param p3, "ballid2"    # I
    .param p4, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    .line 404
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;

    move-object v2, v0

    .line 409
    .local v2, "rs":Lcom/forthblue/pool/rules/LevelRule$GameRoundState;
    move v1, p2

    .line 410
    .local v1, "ballid":I
    if-nez v1, :cond_2

    .line 411
    move v1, p3

    .line 413
    :cond_2
    iget v3, v2, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->firsthit:I

    if-gtz v3, :cond_0

    .line 414
    iput v1, v2, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->firsthit:I

    goto :goto_0
.end method

.method public onPotBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;I[Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolHole;)Z
    .locals 6
    .param p1, "rs"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "ballid"    # I
    .param p3, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p4, "hole"    # Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    const/4 v5, 0x0

    .line 388
    if-eqz p2, :cond_0

    .line 389
    iget v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    .line 390
    iget v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->potInOneBreak:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->potInOneBreak:I

    .line 391
    iget-object v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    aget v3, v2, v5

    iget v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    mul-int/lit16 v4, v4, 0x3e8

    add-int/2addr v3, v4

    aput v3, v2, v5

    .line 393
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;

    move-object v1, v0

    .line 394
    .local v1, "rounds":Lcom/forthblue/pool/rules/LevelRule$GameRoundState;
    iget-object v2, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->hole_type:[I

    iget v3, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->hole_type_top:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->hole_type_top:I

    iget v4, p4, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    aput v4, v2, v3

    .line 398
    .end local v1    # "rounds":Lcom/forthblue/pool/rules/LevelRule$GameRoundState;
    :goto_0
    return v5

    .line 396
    :cond_0
    iput v5, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    goto :goto_0
.end method

.method public onRoundOver(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 22
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 179
    const/4 v10, 0x0

    .line 180
    .local v10, "available_ball_count":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move v3, v0

    if-ge v15, v3, :cond_3

    .line 181
    aget-object v3, p2, v15

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->x:F

    const v4, -0x3b66e000

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    aget-object v3, p2, v15

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->x:F

    const v4, 0x44982000

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    aget-object v3, p2, v15

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->y:F

    const v4, -0x3be8c000

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    aget-object v3, p2, v15

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->y:F

    const v4, 0x441c4000

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 182
    :cond_0
    aget-object v3, p2, v15

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    .line 183
    aget-object v3, p2, v15

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/forthblue/pool/engine/PoolBall;->setVisible(Z)V

    .line 185
    :cond_1
    if-lez v15, :cond_2

    aget-object v3, p2, v15

    iget-boolean v3, v3, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-eqz v3, :cond_2

    .line 186
    add-int/lit8 v10, v10, 0x1

    .line 180
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 190
    :cond_3
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p1

    iput v0, v1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 191
    move-object/from16 v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;

    move-object/from16 v19, v0

    .line 194
    .local v19, "rs":Lcom/forthblue/pool/rules/LevelRule$GameRoundState;
    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->hole_type_top:I

    move v3, v0

    if-ge v15, v3, :cond_7

    .line 195
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->hole_type:[I

    move-object v3, v0

    aget v3, v3, v15

    packed-switch v3, :pswitch_data_0

    .line 194
    :cond_4
    :goto_2
    :pswitch_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 197
    :pswitch_1
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->restTime:I

    move v3, v0

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->restTime:I

    goto :goto_2

    .line 200
    :pswitch_2
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->restTime:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->restTime:I

    goto :goto_2

    .line 203
    :pswitch_3
    if-nez v10, :cond_5

    .line 205
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->playerScore:[I

    move-object v3, v0

    const/4 v4, 0x0

    aget v5, v3, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->combo:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    mul-int/lit16 v6, v6, 0x5dc

    add-int/2addr v5, v6

    aput v5, v3, v4

    goto :goto_2

    .line 207
    :cond_5
    const/16 v16, 0x1

    .local v16, "j":I
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    .local v17, "n":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 208
    aget-object v3, p2, v16

    iget-boolean v3, v3, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-eqz v3, :cond_6

    .line 209
    aget-object v3, p2, v16

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    .line 210
    aget-object v3, p2, v16

    invoke-virtual {v3}, Lcom/forthblue/pool/engine/PoolBall;->reset()V

    .line 211
    aget-object v3, p2, v16

    invoke-virtual {v3}, Lcom/forthblue/pool/engine/PoolBall;->scaleToZero()V

    .line 212
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->playerScore:[I

    move-object v3, v0

    const/4 v4, 0x0

    aget v5, v3, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->combo:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    mul-int/lit16 v6, v6, 0x3e8

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 213
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->combo:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->combo:I

    .line 214
    add-int/lit8 v10, v10, -0x1

    .line 215
    goto :goto_2

    .line 207
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 224
    .end local v16    # "j":I
    .end local v17    # "n":I
    :cond_7
    const/16 v18, -0x2

    .line 225
    .local v18, "reward_type":I
    const/4 v3, 0x0

    aget-object v3, p2, v3

    iget-boolean v3, v3, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v3, :cond_9

    .line 226
    const/16 v18, 0x1

    .line 227
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->restTime:I

    move v3, v0

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->restTime:I

    .line 228
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->combo:I

    .line 255
    :goto_4
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->restTime:I

    move v3, v0

    if-gtz v3, :cond_f

    .line 256
    const/4 v3, 0x4

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->state:I

    .line 257
    const/4 v3, -0x1

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->winner:I

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/rules/LevelRule;->event_listener:Lcom/forthblue/pool/rules/LevelRule$EventListener;

    move-object v3, v0

    if-eqz v3, :cond_8

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/rules/LevelRule;->event_listener:Lcom/forthblue/pool/rules/LevelRule$EventListener;

    move-object v3, v0

    const/4 v4, 0x0

    move-object v0, v3

    move v1, v4

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/forthblue/pool/rules/LevelRule$EventListener;->onRoundOver(II)V

    .line 383
    :cond_8
    :goto_5
    return-void

    .line 230
    :cond_9
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->firsthit:I

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_a

    .line 231
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->restTime:I

    move v3, v0

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->restTime:I

    .line 232
    const/16 v18, 0x1

    .line 233
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->combo:I

    goto :goto_4

    .line 235
    :cond_a
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->potInOneBreak:I

    move v3, v0

    if-nez v3, :cond_b

    .line 236
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->restTime:I

    move v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->restTime:I

    .line 237
    const/16 v18, 0x0

    goto :goto_4

    .line 239
    :cond_b
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->hole_type_top:I

    move v3, v0

    if-lez v3, :cond_c

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->hole_type:[I

    move-object v3, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->hole_type_top:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget v3, v3, v4

    if-lez v3, :cond_c

    .line 240
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->hole_type:[I

    move-object v3, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->hole_type_top:I

    move v4, v0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget v18, v3, v4

    goto :goto_4

    .line 242
    :cond_c
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->potInOneBreak:I

    move v3, v0

    const/4 v4, 0x1

    if-gt v3, v4, :cond_d

    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->combo:I

    move v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_e

    .line 243
    :cond_d
    const/16 v18, 0x3

    goto/16 :goto_4

    .line 245
    :cond_e
    const/16 v18, 0x2

    goto/16 :goto_4

    .line 263
    :cond_f
    const/4 v3, -0x2

    move/from16 v0, v18

    move v1, v3

    if-le v0, v1, :cond_10

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/rules/LevelRule;->event_listener:Lcom/forthblue/pool/rules/LevelRule$EventListener;

    move-object v3, v0

    if-eqz v3, :cond_10

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/rules/LevelRule;->event_listener:Lcom/forthblue/pool/rules/LevelRule$EventListener;

    move-object v3, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->restTime:I

    move v4, v0

    move-object v0, v3

    move v1, v4

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/forthblue/pool/rules/LevelRule$EventListener;->onRoundOver(II)V

    .line 269
    :cond_10
    const/4 v3, 0x0

    aget-object v3, p2, v3

    iget-boolean v3, v3, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v3, :cond_11

    .line 270
    if-eqz v10, :cond_13

    .line 271
    const/4 v3, 0x3

    move v0, v3

    move-object/from16 v1, p1

    iput v0, v1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 272
    const/4 v6, 0x0

    const v7, -0x3bcfc000

    const/4 v8, 0x0

    sget-boolean v9, Lcom/forthblue/pool/rules/LevelRule;->isPractice:Z

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/forthblue/pool/rules/LevelRule;->putBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;IFFZ)V

    .line 283
    :cond_11
    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->potInOneBreak:I

    move v3, v0

    if-nez v3, :cond_12

    .line 284
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p1

    iput v0, v1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    .line 286
    :cond_12
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p1

    iput v0, v1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->potInOneBreak:I

    .line 287
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->hole_type_top:I

    .line 288
    const/4 v3, -0x1

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->firsthit:I

    .line 289
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->potcount:I

    .line 292
    const/4 v15, 0x0

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v17, v0

    .restart local v17    # "n":I
    :goto_6
    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_15

    .line 293
    aget-object v3, p3, v15

    const/4 v4, -0x1

    iput v4, v3, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    .line 292
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 274
    .end local v17    # "n":I
    :cond_13
    const/4 v3, 0x4

    move v0, v3

    move-object/from16 v1, p1

    iput v0, v1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 275
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->restTime:I

    move v3, v0

    if-lez v3, :cond_14

    .line 276
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->winner:I

    goto/16 :goto_5

    .line 278
    :cond_14
    const/4 v3, -0x1

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->winner:I

    goto/16 :goto_5

    .line 295
    .restart local v17    # "n":I
    :cond_15
    const/4 v3, 0x1

    if-lt v10, v3, :cond_8

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_stage:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_level:I

    move v3, v0

    const/16 v4, 0x1d

    if-ge v3, v4, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_level:I

    move v3, v0

    const/16 v4, 0x18

    if-le v3, v4, :cond_18

    .line 300
    sget-object v3, Lcom/forthblue/pool/rules/LevelRule;->rand:Ljava/util/Random;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 301
    .local v12, "hole_index":I
    aget-object v3, p3, v12

    const/4 v4, 0x1

    iput v4, v3, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    .line 326
    .end local v12    # "hole_index":I
    :cond_16
    :goto_7
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->combo:I

    move v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_20

    .line 327
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_add_cue:I

    move v3, v0

    if-lez v3, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_level:I

    move v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_17

    .line 328
    sget-object v3, Lcom/forthblue/pool/rules/LevelRule;->rand:Ljava/util/Random;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 329
    .restart local v12    # "hole_index":I
    aget-object v3, p3, v12

    iget v3, v3, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_17

    .line 330
    aget-object v3, p3, v12

    const/4 v4, 0x5

    iput v4, v3, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    .line 331
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_add_cue:I

    move v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_add_cue:I

    .line 379
    .end local v12    # "hole_index":I
    :cond_17
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/rules/LevelRule;->event_listener:Lcom/forthblue/pool/rules/LevelRule$EventListener;

    move-object v3, v0

    if-eqz v3, :cond_8

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/rules/LevelRule;->event_listener:Lcom/forthblue/pool/rules/LevelRule$EventListener;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/forthblue/pool/rules/LevelRule$EventListener;->resetHoles([Lcom/forthblue/pool/engine/PoolHole;)V

    goto/16 :goto_5

    .line 303
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_stage:I

    move v3, v0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_stage:I

    move v3, v0

    const/4 v4, 0x5

    if-eq v3, v4, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_stage:I

    move v3, v0

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_level:I

    move v3, v0

    const/16 v4, 0x15

    if-ge v3, v4, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_level:I

    move v3, v0

    const/16 v4, 0xe

    if-le v3, v4, :cond_1a

    .line 304
    sget-object v3, Lcom/forthblue/pool/rules/LevelRule;->rand:Ljava/util/Random;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 305
    .restart local v12    # "hole_index":I
    aget-object v3, p3, v12

    const/4 v4, 0x1

    iput v4, v3, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    goto :goto_7

    .line 307
    .end local v12    # "hole_index":I
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_stage:I

    move v3, v0

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_level:I

    move v3, v0

    const/16 v4, 0x14

    if-le v3, v4, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_level:I

    move v3, v0

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1d

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_stage:I

    move v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_stage:I

    move v3, v0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_stage:I

    move v3, v0

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1f

    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_level:I

    move v3, v0

    const/16 v4, 0x1f

    if-ge v3, v4, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_level:I

    move v3, v0

    const/16 v4, 0x18

    if-le v3, v4, :cond_1f

    .line 310
    :cond_1d
    sget-object v3, Lcom/forthblue/pool/rules/LevelRule;->rand:Ljava/util/Random;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    .line 311
    .local v13, "hole_index_a":I
    sget-object v3, Lcom/forthblue/pool/rules/LevelRule;->rand:Ljava/util/Random;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v14

    .line 312
    .local v14, "hole_index_b":I
    if-ne v13, v14, :cond_1e

    .line 313
    add-int/lit8 v3, v13, 0x2

    rem-int/lit8 v14, v3, 0x6

    .line 315
    :cond_1e
    aget-object v3, p3, v13

    const/4 v4, 0x1

    iput v4, v3, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    .line 316
    aget-object v3, p3, v14

    const/4 v4, 0x1

    iput v4, v3, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    goto/16 :goto_7

    .line 320
    .end local v13    # "hole_index_a":I
    .end local v14    # "hole_index_b":I
    :cond_1f
    const/4 v15, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->black_hole_count:I

    move v3, v0

    if-ge v15, v3, :cond_16

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/rules/LevelRule;->black_hole_id:[I

    move-object v3, v0

    aget v3, v3, v15

    aget-object v3, p3, v3

    const/4 v4, 0x1

    iput v4, v3, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    .line 320
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 334
    :cond_20
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->combo:I

    move v3, v0

    const/4 v4, 0x3

    if-le v3, v4, :cond_17

    .line 335
    const/4 v11, 0x0

    .line 337
    .local v11, "flag":Z
    const/16 v20, 0x0

    .local v20, "x_count":I
    const/4 v12, 0x0

    .line 339
    .restart local v12    # "hole_index":I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_add_cue:I

    move v3, v0

    if-lez v3, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_level:I

    move v3, v0

    const/4 v4, 0x1

    if-le v3, v4, :cond_21

    .line 340
    add-int/lit8 v20, v20, 0x1

    .line 341
    const/4 v11, 0x1

    .line 343
    :cond_21
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_mis_ball:I

    move v3, v0

    if-lez v3, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule;->arcade_level:I

    move v3, v0

    const/4 v4, 0x5

    if-le v3, v4, :cond_22

    .line 344
    add-int/lit8 v20, v20, 0x1

    .line 347
    :cond_22
    const/4 v3, 0x2

    move/from16 v0, v20

    move v1, v3

    if-ne v0, v1, :cond_24

    .line 348
    sget-object v3, Lcom/forthblue/pool/rules/LevelRule;->rand:Ljava/util/Random;

    move-object v0, v3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v21

    .line 349
    .local v21, "xx_index":I
    if-nez v21, :cond_23

    .line 350
    sget-object v3, Lcom/forthblue/pool/rules/LevelRule;->rand:Ljava/util/Random;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 351
    aget-object v3, p3, v12

    iget v3, v3, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_17

    .line 352
    aget-object v3, p3, v12

    const/4 v4, 0x5

    iput v4, v3, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    .line 353
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_add_cue:I

    move v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_add_cue:I

    goto/16 :goto_8

    .line 355
    :cond_23
    const/4 v3, 0x1

    move/from16 v0, v21

    move v1, v3

    if-ne v0, v1, :cond_17

    .line 356
    sget-object v3, Lcom/forthblue/pool/rules/LevelRule;->rand:Ljava/util/Random;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 357
    aget-object v3, p3, v12

    iget v3, v3, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_17

    .line 358
    aget-object v3, p3, v12

    const/4 v4, 0x4

    iput v4, v3, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    .line 359
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_mis_ball:I

    move v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_mis_ball:I

    goto/16 :goto_8

    .line 362
    .end local v21    # "xx_index":I
    :cond_24
    if-lez v20, :cond_17

    .line 363
    if-nez v11, :cond_25

    .line 364
    sget-object v3, Lcom/forthblue/pool/rules/LevelRule;->rand:Ljava/util/Random;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 365
    aget-object v3, p3, v12

    iget v3, v3, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_17

    .line 366
    aget-object v3, p3, v12

    const/4 v4, 0x4

    iput v4, v3, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    .line 367
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_mis_ball:I

    move v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_mis_ball:I

    goto/16 :goto_8

    .line 370
    :cond_25
    sget-object v3, Lcom/forthblue/pool/rules/LevelRule;->rand:Ljava/util/Random;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 371
    aget-object v3, p3, v12

    iget v3, v3, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_17

    .line 372
    aget-object v3, p3, v12

    const/4 v4, 0x5

    iput v4, v3, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    .line 373
    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_add_cue:I

    move v3, v0

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_add_cue:I

    goto/16 :goto_8

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public resetBalls([Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 6
    .param p1, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 79
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/forthblue/pool/engine/PoolBall;->reset()V

    .line 80
    aget-object v2, p1, v0

    iput-boolean v3, v2, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    .line 81
    aget-object v2, p1, v0

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/engine/PoolBall;->setVisible(Z)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/forthblue/pool/rules/LevelRule;->ballsPos:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 84
    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/forthblue/pool/rules/LevelRule;->ballsPos:[F

    mul-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    iput v3, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 85
    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/forthblue/pool/rules/LevelRule;->ballsPos:[F

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    iput v3, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 87
    aget-object v2, p1, v0

    iput-boolean v5, v2, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    .line 88
    aget-object v2, p1, v0

    invoke-virtual {v2, v5}, Lcom/forthblue/pool/engine/PoolBall;->setVisible(Z)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_1
    const/4 v0, 0x0

    array-length v1, p2

    .local v1, "n":I
    :goto_2
    if-ge v0, v1, :cond_2

    .line 91
    aget-object v2, p2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 93
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lcom/forthblue/pool/rules/LevelRule;->black_hole_count:I

    if-ge v0, v2, :cond_3

    .line 94
    iget-object v2, p0, Lcom/forthblue/pool/rules/LevelRule;->black_hole_id:[I

    aget v2, v2, v0

    aget-object v2, p2, v2

    iput v5, v2, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 96
    :cond_3
    iget-object v2, p0, Lcom/forthblue/pool/rules/LevelRule;->event_listener:Lcom/forthblue/pool/rules/LevelRule$EventListener;

    if-eqz v2, :cond_4

    .line 97
    iget-object v2, p0, Lcom/forthblue/pool/rules/LevelRule;->event_listener:Lcom/forthblue/pool/rules/LevelRule$EventListener;

    invoke-interface {v2, p2}, Lcom/forthblue/pool/rules/LevelRule$EventListener;->resetHoles([Lcom/forthblue/pool/engine/PoolHole;)V

    .line 99
    :cond_4
    return-void
.end method

.method public resetRoundState(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V
    .locals 5
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 142
    const/4 v2, 0x1

    iput v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 144
    iput v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->roundCount:I

    .line 145
    iput v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    .line 146
    iput v4, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->winner:I

    .line 148
    iget-object v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 149
    iput-boolean v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->counttime:Z

    .line 151
    iput v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->totalGameTime:I

    .line 152
    iput v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->roundTime:I

    .line 154
    iput v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    .line 155
    iput v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->potInOneBreak:I

    .line 156
    iput v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->matchCount:I

    .line 158
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;

    move-object v1, v0

    .line 159
    .local v1, "rs":Lcom/forthblue/pool/rules/LevelRule$GameRoundState;
    iput v4, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->firsthit:I

    .line 160
    iput v3, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->potcount:I

    .line 161
    const/4 v2, 0x6

    iput v2, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->restTime:I

    .line 162
    const/4 v2, 0x4

    iput v2, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_add_cue:I

    .line 163
    const/4 v2, 0x3

    iput v2, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_mis_ball:I

    .line 164
    iput v3, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->hole_type_top:I

    .line 166
    return-void
.end method

.method public resetRoundStateData(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V
    .locals 4
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    const/4 v3, 0x0

    .line 117
    iput-boolean v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->counttime:Z

    .line 119
    iput v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->totalGameTime:I

    .line 120
    iput v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->roundTime:I

    .line 122
    iput v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    .line 123
    iput v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->potInOneBreak:I

    .line 124
    iput v3, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->matchCount:I

    .line 126
    move-object v0, p1

    check-cast v0, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;

    move-object v1, v0

    .line 127
    .local v1, "rs":Lcom/forthblue/pool/rules/LevelRule$GameRoundState;
    const/4 v2, 0x6

    iput v2, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->restTime:I

    .line 128
    const/4 v2, 0x4

    iput v2, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_add_cue:I

    .line 129
    const/4 v2, 0x3

    iput v2, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->max_mis_ball:I

    .line 130
    iput v3, v1, Lcom/forthblue/pool/rules/LevelRule$GameRoundState;->hole_type_top:I

    .line 131
    return-void
.end method

.method public setEventListener(Lcom/forthblue/pool/rules/LevelRule$EventListener;)V
    .locals 0
    .param p1, "event_listener"    # Lcom/forthblue/pool/rules/LevelRule$EventListener;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/forthblue/pool/rules/LevelRule;->event_listener:Lcom/forthblue/pool/rules/LevelRule$EventListener;

    .line 519
    return-void
.end method
