.class public Lcom/forthblue/pool/rules/Time9Ball1P;
.super Lcom/forthblue/pool/rules/TimeRuleBase;
.source "Time9Ball1P.java"


# static fields
.field private static ballsPos:[F

.field static rand:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 24
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/forthblue/pool/rules/Time9Ball1P;->ballsPos:[F

    .line 52
    sget-object v0, Lcom/forthblue/pool/rules/Time9Ball1P;->ballsPos:[F

    const/4 v1, 0x0

    const v2, -0x3bcfc000

    aput v2, v0, v1

    .line 53
    sget-object v0, Lcom/forthblue/pool/rules/Time9Ball1P;->ballsPos:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 55
    const v0, 0x43fc8000

    .line 56
    .local v0, "baseX":F
    const/4 v1, 0x0

    .line 58
    .local v1, "baseY":F
    const v2, 0x4244999a

    .line 59
    .local v2, "r":F
    const/high16 v3, 0x41f00000

    invoke-static {v3}, Lcom/fruitsmobile/basket/math/MathUtil;->cos(F)F

    move-result v3

    mul-float/2addr v3, v2

    const/high16 v4, 0x40000000

    mul-float v8, v3, v4

    .line 60
    .local v8, "rowX":F
    neg-float v3, v2

    const/high16 v4, 0x41f00000

    invoke-static {v4}, Lcom/fruitsmobile/basket/math/MathUtil;->sin(F)F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000

    mul-float v9, v3, v4

    .line 62
    .local v9, "rowY":F
    const/4 v4, 0x0

    .line 63
    .local v4, "columnX":F
    const/high16 v3, 0x40000000

    mul-float v5, v2, v3

    .line 65
    .local v5, "columnY":F
    const/4 v2, 0x2

    .line 66
    .local v2, "c":I
    const/4 v3, 0x0

    .local v3, "m":I
    move v6, v3

    .end local v3    # "m":I
    .local v6, "m":I
    :goto_0
    const/4 v3, 0x5

    if-ge v6, v3, :cond_4

    .line 67
    const/4 v3, 0x0

    .local v3, "n":I
    move v7, v3

    .end local v3    # "n":I
    .local v7, "n":I
    move v3, v2

    .end local v2    # "c":I
    .local v3, "c":I
    :goto_1
    if-gt v7, v6, :cond_3

    .line 68
    const/4 v2, 0x3

    if-ne v6, v2, :cond_0

    if-eqz v7, :cond_2

    if-ne v7, v6, :cond_0

    move v2, v3

    .line 67
    .end local v3    # "c":I
    .restart local v2    # "c":I
    :goto_2
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "n":I
    .local v3, "n":I
    move v7, v3

    .end local v3    # "n":I
    .restart local v7    # "n":I
    move v3, v2

    .end local v2    # "c":I
    .local v3, "c":I
    goto :goto_1

    .line 70
    :cond_0
    const/4 v2, 0x4

    if-ne v6, v2, :cond_1

    const/4 v2, 0x2

    if-eq v7, v2, :cond_1

    move v2, v3

    .line 71
    .end local v3    # "c":I
    .restart local v2    # "c":I
    goto :goto_2

    .line 72
    .end local v2    # "c":I
    .restart local v3    # "c":I
    :cond_1
    sget-object v10, Lcom/forthblue/pool/rules/Time9Ball1P;->ballsPos:[F

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "c":I
    .restart local v2    # "c":I
    int-to-float v11, v6

    mul-float/2addr v11, v8

    add-float/2addr v11, v0

    int-to-float v12, v7

    mul-float/2addr v12, v4

    add-float/2addr v11, v12

    aput v11, v10, v3

    .line 73
    sget-object v10, Lcom/forthblue/pool/rules/Time9Ball1P;->ballsPos:[F

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "c":I
    .restart local v3    # "c":I
    int-to-float v11, v6

    mul-float/2addr v11, v9

    add-float/2addr v11, v1

    int-to-float v12, v7

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    aput v11, v10, v2

    :cond_2
    move v2, v3

    .end local v3    # "c":I
    .restart local v2    # "c":I
    goto :goto_2

    .line 66
    .end local v2    # "c":I
    .restart local v3    # "c":I
    :cond_3
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "m":I
    .local v2, "m":I
    move v6, v2

    .end local v2    # "m":I
    .restart local v6    # "m":I
    move v2, v3

    .end local v3    # "c":I
    .local v2, "c":I
    goto :goto_0

    .line 78
    .end local v7    # "n":I
    :cond_4
    const/4 v0, 0x5

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/forthblue/pool/rules/Time9Ball1P;->swapPos(II)V

    .line 81
    .end local v0    # "baseX":F
    .end local v1    # "baseY":F
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/forthblue/pool/rules/Time9Ball1P;->rand:Ljava/util/Random;

    return-void

    .line 24
    nop

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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/forthblue/pool/rules/TimeRuleBase;-><init>()V

    return-void
.end method

.method public static reset9BallBalls([Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 5
    .param p0, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    const/4 v4, 0x1

    .line 94
    invoke-static {}, Lcom/forthblue/pool/rules/Time9Ball1P;->resetBallsPos()V

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/forthblue/pool/rules/Time9Ball1P;->ballsPos:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 96
    aget-object v1, p0, v0

    sget-object v2, Lcom/forthblue/pool/rules/Time9Ball1P;->ballsPos:[F

    mul-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    iput v2, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 97
    aget-object v1, p0, v0

    sget-object v2, Lcom/forthblue/pool/rules/Time9Ball1P;->ballsPos:[F

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    iput v2, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 99
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/forthblue/pool/engine/PoolBall;->reset()V

    .line 100
    aget-object v1, p0, v0

    iput-boolean v4, v1, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    .line 101
    aget-object v1, p0, v0

    invoke-virtual {v1, v4}, Lcom/forthblue/pool/engine/PoolBall;->setVisible(Z)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method private static resetBallsPos()V
    .locals 4

    .prologue
    .line 85
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 86
    sget-object v2, Lcom/forthblue/pool/rules/Time9Ball1P;->rand:Ljava/util/Random;

    const/4 v3, 0x1

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x2

    .line 87
    .local v1, "k":I
    if-eq v0, v1, :cond_0

    .line 88
    invoke-static {v0, v1}, Lcom/forthblue/pool/rules/Time9Ball1P;->swapPos(II)V

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "k":I
    :cond_1
    return-void
.end method

.method private static swapPos(II)V
    .locals 5
    .param p0, "i"    # I
    .param p1, "j"    # I

    .prologue
    .line 41
    sget-object v1, Lcom/forthblue/pool/rules/Time9Ball1P;->ballsPos:[F

    mul-int/lit8 v2, p0, 0x2

    aget v0, v1, v2

    .line 42
    .local v0, "tmp":F
    sget-object v1, Lcom/forthblue/pool/rules/Time9Ball1P;->ballsPos:[F

    mul-int/lit8 v2, p0, 0x2

    sget-object v3, Lcom/forthblue/pool/rules/Time9Ball1P;->ballsPos:[F

    mul-int/lit8 v4, p1, 0x2

    aget v3, v3, v4

    aput v3, v1, v2

    .line 43
    sget-object v1, Lcom/forthblue/pool/rules/Time9Ball1P;->ballsPos:[F

    mul-int/lit8 v2, p1, 0x2

    aput v0, v1, v2

    .line 45
    sget-object v1, Lcom/forthblue/pool/rules/Time9Ball1P;->ballsPos:[F

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 46
    sget-object v1, Lcom/forthblue/pool/rules/Time9Ball1P;->ballsPos:[F

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/forthblue/pool/rules/Time9Ball1P;->ballsPos:[F

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    .line 47
    sget-object v1, Lcom/forthblue/pool/rules/Time9Ball1P;->ballsPos:[F

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    aput v0, v1, v2

    .line 48
    return-void
.end method


# virtual methods
.method public getBallCount()I
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0xa

    return v0
.end method

.method public getBallTexture(I)Lcom/fruitsmobile/basket/resources/Texture;
    .locals 2
    .param p1, "ballid"    # I

    .prologue
    .line 17
    if-nez p1, :cond_0

    .line 18
    iget-object v0, p0, Lcom/forthblue/pool/rules/Time9Ball1P;->ballWhite:Lcom/fruitsmobile/basket/resources/Texture;

    .line 20
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/rules/Time9Ball1P;->balls:[Lcom/fruitsmobile/basket/resources/Texture;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public resetBalls([Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 0
    .param p1, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 107
    invoke-static {p1}, Lcom/forthblue/pool/rules/Time9Ball1P;->reset9BallBalls([Lcom/forthblue/pool/engine/PoolBall;)V

    .line 108
    return-void
.end method
