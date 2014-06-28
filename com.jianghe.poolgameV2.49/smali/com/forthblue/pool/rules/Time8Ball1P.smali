.class public Lcom/forthblue/pool/rules/Time8Ball1P;
.super Lcom/forthblue/pool/rules/TimeRuleBase;
.source "Time8Ball1P.java"


# static fields
.field public static ballsPos:[F


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    .line 13
    const/16 v0, 0x22

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    .line 48
    sget-object v0, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    const/4 v1, 0x0

    const v2, -0x3bcfc000

    aput v2, v0, v1

    .line 49
    sget-object v0, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 51
    const v0, 0x43fc8000

    .line 52
    .local v0, "baseX":F
    const/4 v1, 0x0

    .line 54
    .local v1, "baseY":F
    const v2, 0x4244999a

    .line 55
    .local v2, "r":F
    const/high16 v3, 0x41f00000

    invoke-static {v3}, Lcom/fruitsmobile/basket/math/MathUtil;->cos(F)F

    move-result v3

    mul-float/2addr v3, v2

    const/high16 v4, 0x40000000

    mul-float v9, v3, v4

    .line 56
    .local v9, "rowX":F
    neg-float v3, v2

    const/high16 v4, 0x41f00000

    invoke-static {v4}, Lcom/fruitsmobile/basket/math/MathUtil;->sin(F)F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000

    mul-float v10, v3, v4

    .line 58
    .local v10, "rowY":F
    const/4 v4, 0x0

    .line 59
    .local v4, "columnX":F
    const/high16 v3, 0x40000000

    mul-float v5, v2, v3

    .line 61
    .local v5, "columnY":F
    const/4 v2, 0x2

    .line 62
    .local v2, "c":I
    const/4 v3, 0x0

    .local v3, "m":I
    move v7, v3

    .end local v3    # "m":I
    .local v7, "m":I
    :goto_0
    const/4 v3, 0x5

    if-ge v7, v3, :cond_1

    .line 63
    const/4 v3, 0x0

    .local v3, "n":I
    move v8, v3

    .end local v3    # "n":I
    .local v8, "n":I
    move v3, v2

    .end local v2    # "c":I
    .local v3, "c":I
    :goto_1
    if-gt v8, v7, :cond_0

    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, "d":F
    rem-int/lit8 v6, v7, 0x2

    if-nez v6, :cond_2

    .line 67
    div-int/lit8 v2, v7, 0x2

    .end local v2    # "d":F
    sub-int v2, v8, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, -0x40800000

    mul-float/2addr v2, v6

    .restart local v2    # "d":F
    move v6, v2

    .line 69
    .end local v2    # "d":F
    .local v6, "d":F
    :goto_2
    sget-object v11, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "c":I
    .local v2, "c":I
    int-to-float v12, v7

    mul-float/2addr v12, v9

    add-float/2addr v12, v0

    int-to-float v13, v8

    mul-float/2addr v13, v4

    add-float/2addr v12, v13

    sget-object v13, Lcom/forthblue/pool/rules/Time8Ball1P;->rand:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextFloat()F

    move-result v13

    const/high16 v14, 0x3f800000

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const/high16 v13, 0x3f000000

    sub-float/2addr v12, v13

    add-float/2addr v6, v12

    aput v6, v11, v3

    .line 70
    .end local v6    # "d":F
    sget-object v6, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "c":I
    .restart local v3    # "c":I
    int-to-float v11, v7

    mul-float/2addr v11, v10

    add-float/2addr v11, v1

    int-to-float v12, v8

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    sget-object v12, Lcom/forthblue/pool/rules/Time8Ball1P;->rand:Ljava/util/Random;

    invoke-virtual {v12}, Ljava/util/Random;->nextFloat()F

    move-result v12

    const/high16 v13, 0x3f800000

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    const/high16 v12, 0x3f000000

    sub-float/2addr v11, v12

    aput v11, v6, v2

    .line 63
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "n":I
    .local v2, "n":I
    move v8, v2

    .end local v2    # "n":I
    .restart local v8    # "n":I
    goto :goto_1

    .line 62
    :cond_0
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "m":I
    .local v2, "m":I
    move v7, v2

    .end local v2    # "m":I
    .restart local v7    # "m":I
    move v2, v3

    .end local v3    # "c":I
    .local v2, "c":I
    goto :goto_0

    .line 75
    .end local v8    # "n":I
    :cond_1
    const/4 v0, 0x5

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/forthblue/pool/rules/Time8Ball1P;->swapPos(II)V

    .line 77
    .end local v0    # "baseX":F
    .end local v1    # "baseY":F
    const/4 v0, 0x2

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/forthblue/pool/rules/Time8Ball1P;->swapPos(II)V

    .line 78
    const/4 v0, 0x6

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/forthblue/pool/rules/Time8Ball1P;->swapPos(II)V

    .line 79
    const/4 v0, 0x7

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/forthblue/pool/rules/Time8Ball1P;->swapPos(II)V

    .line 80
    return-void

    .restart local v0    # "baseX":F
    .restart local v1    # "baseY":F
    .local v2, "d":F
    .restart local v3    # "c":I
    .restart local v8    # "n":I
    :cond_2
    move v6, v2

    .end local v2    # "d":F
    .restart local v6    # "d":F
    goto :goto_2

    .line 13
    :array_0
    .array-data 4
        0x0
        0x0
        -0x3cb80000
        0x0
        0x0
        0x43480000
        0x43480000
        0x0
        0x0
        -0x3cb80000
        -0x3c510000
        0x0
        0x43af0000
        0x0
        -0x3c060000
        0x0
        0x43fa0000
        0x0
        -0x3bdd8000
        0x0
        0x44228000
        0x0
        -0x3bb80000
        0x0
        0x44480000
        0x0
        -0x3b928000
        0x0
        0x446d8000
        0x0
        -0x3b768000
        0x0
        0x44898000
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/forthblue/pool/rules/TimeRuleBase;-><init>()V

    return-void
.end method

.method public static reset8BallBalls([Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 6
    .param p0, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    const/4 v5, 0x1

    .line 107
    invoke-static {}, Lcom/forthblue/pool/rules/Time8Ball1P;->resetBallsPos()V

    .line 108
    sget-object v2, Lcom/forthblue/pool/rules/Time8Ball1P;->rand:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    .line 110
    .local v1, "swap":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 111
    aget-object v2, p0, v0

    sget-object v3, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    mul-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    iput v3, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 112
    aget-object v2, p0, v0

    sget-object v3, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    iput v3, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 113
    if-eqz v1, :cond_0

    .line 114
    aget-object v2, p0, v0

    aget-object v3, p0, v0

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->y:F

    neg-float v3, v3

    iput v3, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 116
    :cond_0
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/forthblue/pool/engine/PoolBall;->reset()V

    .line 117
    aget-object v2, p0, v0

    iput-boolean v5, v2, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    .line 118
    aget-object v2, p0, v0

    invoke-virtual {v2, v5}, Lcom/forthblue/pool/engine/PoolBall;->setVisible(Z)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    return-void
.end method

.method private static resetBallsPos()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    .line 85
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xf

    if-gt v0, v2, :cond_0

    .line 86
    sget-object v2, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    neg-float v4, v4

    aput v4, v2, v3

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    sget-object v2, Lcom/forthblue/pool/rules/Time8Ball1P;->rand:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    const/4 v0, 0x1

    :goto_1
    if-gt v0, v6, :cond_1

    .line 92
    add-int/lit8 v2, v0, 0x8

    invoke-static {v0, v2}, Lcom/forthblue/pool/rules/Time8Ball1P;->swapPos(II)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :cond_1
    const/4 v0, 0x1

    :goto_2
    if-gt v0, v6, :cond_4

    .line 97
    sget-object v2, Lcom/forthblue/pool/rules/Time8Ball1P;->rand:Ljava/util/Random;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 98
    .local v1, "k":I
    if-eq v0, v1, :cond_2

    .line 99
    invoke-static {v0, v1}, Lcom/forthblue/pool/rules/Time8Ball1P;->swapPos(II)V

    .line 100
    :cond_2
    sget-object v2, Lcom/forthblue/pool/rules/Time8Ball1P;->rand:Ljava/util/Random;

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 101
    if-eq v0, v1, :cond_3

    .line 102
    add-int/lit8 v2, v0, 0x8

    add-int/lit8 v3, v1, 0x8

    invoke-static {v2, v3}, Lcom/forthblue/pool/rules/Time8Ball1P;->swapPos(II)V

    .line 96
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 104
    .end local v1    # "k":I
    :cond_4
    return-void
.end method

.method public static swapPos(II)V
    .locals 5
    .param p0, "i"    # I
    .param p1, "j"    # I

    .prologue
    .line 37
    sget-object v1, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    mul-int/lit8 v2, p0, 0x2

    aget v0, v1, v2

    .line 38
    .local v0, "tmp":F
    sget-object v1, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    mul-int/lit8 v2, p0, 0x2

    sget-object v3, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    mul-int/lit8 v4, p1, 0x2

    aget v3, v3, v4

    aput v3, v1, v2

    .line 39
    sget-object v1, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    mul-int/lit8 v2, p1, 0x2

    aput v0, v1, v2

    .line 41
    sget-object v1, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 42
    sget-object v1, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    .line 43
    sget-object v1, Lcom/forthblue/pool/rules/Time8Ball1P;->ballsPos:[F

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    aput v0, v1, v2

    .line 44
    return-void
.end method


# virtual methods
.method public getBallCount()I
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0x10

    return v0
.end method

.method public resetBalls([Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 0
    .param p1, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 124
    invoke-static {p1}, Lcom/forthblue/pool/rules/Time8Ball1P;->reset8BallBalls([Lcom/forthblue/pool/engine/PoolBall;)V

    .line 125
    return-void
.end method
