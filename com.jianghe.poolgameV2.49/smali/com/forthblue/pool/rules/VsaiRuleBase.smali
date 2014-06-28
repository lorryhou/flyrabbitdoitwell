.class public Lcom/forthblue/pool/rules/VsaiRuleBase;
.super Lcom/forthblue/pool/rules/RuleImplBase;
.source "VsaiRuleBase.java"


# static fields
.field public static not_ai_player_count:I

.field static final quickblockersPosition:[F

.field static final quickholesPosition:[F


# instance fields
.field ai:Lcom/forthblue/pool/engine/PoolAI;

.field angle:F

.field blocker:I

.field cosda:F

.field strength:F

.field tarx:F

.field tary:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x2

    sput v0, Lcom/forthblue/pool/rules/VsaiRuleBase;->not_ai_player_count:I

    .line 393
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickblockersPosition:[F

    .line 404
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickholesPosition:[F

    return-void

    .line 393
    :array_0
    .array-data 4
        -0x3b66e000
        -0x3be8c000
        -0x3b66e000
        0x441c4000
        -0x3b66e000
        -0x3be8c000
        0x44982000
        -0x3be8c000
        0x44982000
        -0x3be8c000
        0x44982000
        0x441c4000
        -0x3b66e000
        0x441c4000
        0x44982000
        0x441c4000
    .end array-data

    .line 404
    :array_1
    .array-data 4
        -0x3b66e000
        -0x3be8c000
        -0x3b66e000
        0x441c4000
        0x0
        -0x3be8c000
        0x0
        0x441c4000
        0x44982000
        -0x3be8c000
        0x44982000
        0x441c4000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/forthblue/pool/rules/RuleImplBase;-><init>()V

    .line 54
    new-instance v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;

    invoke-direct {v0, p0}, Lcom/forthblue/pool/rules/VsaiRuleBase$1;-><init>(Lcom/forthblue/pool/rules/VsaiRuleBase;)V

    iput-object v0, p0, Lcom/forthblue/pool/rules/VsaiRuleBase;->ai:Lcom/forthblue/pool/engine/PoolAI;

    .line 29
    return-void
.end method

.method private static workout(FFFFFFF)F
    .locals 6
    .param p0, "x0"    # F
    .param p1, "y0"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "vx"    # F
    .param p5, "vy"    # F
    .param p6, "t"    # F

    .prologue
    .line 946
    mul-float v0, p3, p4

    mul-float v1, p2, p5

    sub-float/2addr v0, v1

    .line 947
    .local v0, "a":F
    mul-float v1, p0, p3

    mul-float v2, p1, p2

    sub-float/2addr v1, v2

    .line 949
    .local v1, "minusb":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f50624dd2f1a9fcL

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 950
    const/high16 p0, -0x40800000

    .line 962
    .end local v0    # "a":F
    .end local v1    # "minusb":F
    .end local p0    # "x0":F
    .end local p1    # "y0":F
    .end local p4    # "vx":F
    :goto_0
    return p0

    .line 952
    .restart local v0    # "a":F
    .restart local v1    # "minusb":F
    .restart local p0    # "x0":F
    .restart local p1    # "y0":F
    .restart local p4    # "vx":F
    :cond_0
    div-float v0, v1, v0

    .line 953
    .local v0, "ret":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 955
    .end local v1    # "minusb":F
    neg-float p0, p0

    mul-float/2addr p4, v0

    add-float/2addr p0, p4

    .line 956
    .local p0, "x":F
    neg-float p1, p1

    mul-float p4, v0, p5

    add-float/2addr p1, p4

    .line 958
    .local p1, "y":F
    mul-float/2addr p0, p2

    mul-float/2addr p1, p3

    add-float/2addr p0, p1

    .line 959
    .local p0, "l":F
    const/4 p1, 0x0

    cmpg-float p1, p1, p0

    if-gtz p1, :cond_1

    .end local p1    # "y":F
    .end local p4    # "vx":F
    cmpg-float p0, p0, p6

    if-gtz p0, :cond_1

    .end local p0    # "l":F
    move p0, v0

    .line 960
    goto :goto_0

    .line 962
    :cond_1
    const/high16 p0, -0x40800000

    goto :goto_0
.end method


# virtual methods
.method protected calcAimTargetWith(FFFFF)F
    .locals 8
    .param p1, "cos"    # F
    .param p2, "sin"    # F
    .param p3, "dx"    # F
    .param p4, "dy"    # F
    .param p5, "r"    # F

    .prologue
    .line 920
    mul-float v6, p3, p1

    mul-float v7, p4, p2

    add-float v3, v6, v7

    .line 923
    .local v3, "dot":F
    const/4 v6, 0x0

    cmpg-float v6, v3, v6

    if-gez v6, :cond_0

    .line 924
    const/high16 v6, -0x40800000

    .line 942
    :goto_0
    return v6

    .line 928
    :cond_0
    mul-float v6, p1, p1

    mul-float v7, p2, p2

    add-float v0, v6, v7

    .line 929
    .local v0, "a":F
    const/high16 v6, 0x40000000

    mul-float v4, v6, v3

    .line 930
    .local v4, "minusb":F
    mul-float v6, p3, p3

    mul-float v7, p4, p4

    add-float/2addr v6, v7

    mul-float v7, p5, p5

    sub-float v1, v6, v7

    .line 932
    .local v1, "c":F
    mul-float v6, v4, v4

    const/high16 v7, 0x40800000

    mul-float/2addr v7, v0

    mul-float/2addr v7, v1

    sub-float v2, v6, v7

    .line 935
    .local v2, "delta":F
    const/4 v6, 0x0

    cmpg-float v6, v2, v6

    if-gez v6, :cond_1

    .line 936
    const/high16 v6, -0x40800000

    goto :goto_0

    .line 939
    :cond_1
    invoke-static {v2}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v6

    sub-float v6, v4, v6

    const/high16 v7, 0x40000000

    mul-float/2addr v7, v0

    div-float v5, v6, v7

    .local v5, "t":F
    move v6, v5

    .line 942
    goto :goto_0
.end method

.method protected checkFreeballPot([Lcom/forthblue/pool/engine/PoolBall;II)F
    .locals 38
    .param p1, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "ind"    # I
    .param p3, "hole"    # I

    .prologue
    .line 408
    aget-object v34, p1, p2

    .line 409
    .local v34, "target":Lcom/forthblue/pool/engine/PoolBall;
    sget-object v2, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickholesPosition:[F

    mul-int/lit8 v3, p3, 0x2

    aget v4, v2, v3

    .line 410
    .local v4, "holex":F
    sget-object v2, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickholesPosition:[F

    mul-int/lit8 v3, p3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v5, v2, v3

    .line 411
    .local v5, "holey":F
    move-object/from16 v0, v34

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move v2, v0

    sub-float v27, v4, v2

    .line 412
    .local v27, "dx":F
    move-object/from16 v0, v34

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move v2, v0

    sub-float v28, v5, v2

    .line 413
    .local v28, "dy":F
    mul-float v2, v27, v27

    mul-float v3, v28, v28

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v7

    .local v7, "len":F
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p2

    .line 415
    invoke-virtual/range {v2 .. v7}, Lcom/forthblue/pool/rules/VsaiRuleBase;->checkRoad1([Lcom/forthblue/pool/engine/PoolBall;FFIF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 416
    const/high16 v2, -0x40800000

    .line 498
    :goto_0
    return v2

    .line 422
    :cond_0
    const/high16 v32, -0x40800000

    .line 425
    .local v32, "r":F
    move/from16 v0, v27

    neg-float v0, v0

    move v2, v0

    div-float v9, v2, v7

    .line 426
    .local v9, "cos":F
    move/from16 v0, v28

    neg-float v0, v0

    move v2, v0

    div-float v10, v2, v7

    .line 429
    .local v10, "sin":F
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    const/high16 v3, 0x40000000

    mul-float v13, v2, v3

    .line 431
    .local v13, "ballr":F
    const/16 v29, 0x1

    .local v29, "i":I
    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move v2, v0

    move/from16 v0, v29

    move v1, v2

    if-ge v0, v1, :cond_3

    .line 432
    move/from16 v0, v29

    move/from16 v1, p2

    if-eq v0, v1, :cond_2

    aget-object v2, p1, v29

    iget-boolean v2, v2, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-eqz v2, :cond_2

    .line 433
    aget-object v2, p1, v29

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    aget-object v3, p1, p2

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->x:F

    sub-float v11, v2, v3

    aget-object v2, p1, v29

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    aget-object v3, p1, p2

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->y:F

    sub-float v12, v2, v3

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/forthblue/pool/rules/VsaiRuleBase;->calcAimTargetWith(FFFFF)F

    move-result v37

    .line 434
    .local v37, "v":F
    const/4 v2, 0x0

    cmpl-float v2, v37, v2

    if-lez v2, :cond_2

    .line 435
    const/4 v2, 0x0

    cmpg-float v2, v32, v2

    if-ltz v2, :cond_1

    cmpg-float v2, v37, v32

    if-gez v2, :cond_2

    .line 436
    :cond_1
    move/from16 v32, v37

    .line 431
    .end local v37    # "v":F
    :cond_2
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 442
    :cond_3
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    .line 443
    const/16 v29, 0x0

    :goto_2
    sget-object v2, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickblockersPosition:[F

    array-length v2, v2

    div-int/lit8 v2, v2, 0x4

    move/from16 v0, v29

    move v1, v2

    if-ge v0, v1, :cond_7

    .line 444
    sget-object v2, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickblockersPosition:[F

    mul-int/lit8 v3, v29, 0x4

    aget v23, v2, v3

    .line 445
    .local v23, "blockerx0":F
    sget-object v2, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickblockersPosition:[F

    mul-int/lit8 v3, v29, 0x4

    add-int/lit8 v3, v3, 0x1

    aget v25, v2, v3

    .line 446
    .local v25, "blockery0":F
    sget-object v2, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickblockersPosition:[F

    mul-int/lit8 v3, v29, 0x4

    add-int/lit8 v3, v3, 0x2

    aget v24, v2, v3

    .line 447
    .local v24, "blockerx1":F
    sget-object v2, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickblockersPosition:[F

    mul-int/lit8 v3, v29, 0x4

    add-int/lit8 v3, v3, 0x3

    aget v26, v2, v3

    .line 449
    .local v26, "blockery1":F
    sub-float v21, v24, v23

    .line 450
    .local v21, "blockerdx":F
    sub-float v22, v26, v25

    .line 453
    .local v22, "blockerdy":F
    add-float v20, v21, v22

    .line 454
    .local v20, "t":F
    div-float v16, v21, v20

    .line 455
    .local v16, "nx":F
    div-float v17, v22, v20

    .line 457
    .local v17, "ny":F
    mul-float v35, v17, v13

    .line 458
    .local v35, "tx":F
    move/from16 v0, v16

    neg-float v0, v0

    move v2, v0

    mul-float v36, v2, v13

    .line 460
    .local v36, "ty":F
    mul-float v2, v35, v9

    mul-float v3, v36, v10

    add-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 461
    move/from16 v0, v35

    neg-float v0, v0

    move/from16 v35, v0

    .line 462
    move/from16 v0, v36

    neg-float v0, v0

    move/from16 v36, v0

    .line 465
    :cond_4
    aget-object v2, p1, p2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    add-float v30, v2, v35

    .line 466
    .local v30, "p2x":F
    aget-object v2, p1, p2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    add-float v31, v2, v36

    .line 467
    .local v31, "p2y":F
    sub-float v14, v23, v30

    sub-float v15, v25, v31

    move/from16 v18, v9

    move/from16 v19, v10

    invoke-static/range {v14 .. v20}, Lcom/forthblue/pool/rules/VsaiRuleBase;->workout(FFFFFFF)F

    move-result v37

    .line 469
    .restart local v37    # "v":F
    const/4 v2, 0x0

    cmpl-float v2, v37, v2

    if-lez v2, :cond_6

    .line 470
    const/4 v2, 0x0

    cmpg-float v2, v32, v2

    if-ltz v2, :cond_5

    cmpg-float v2, v37, v32

    if-gez v2, :cond_6

    .line 471
    :cond_5
    move/from16 v32, v37

    .line 443
    :cond_6
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 476
    .end local v16    # "nx":F
    .end local v17    # "ny":F
    .end local v20    # "t":F
    .end local v21    # "blockerdx":F
    .end local v22    # "blockerdy":F
    .end local v23    # "blockerx0":F
    .end local v24    # "blockerx1":F
    .end local v25    # "blockery0":F
    .end local v26    # "blockery1":F
    .end local v30    # "p2x":F
    .end local v31    # "p2y":F
    .end local v35    # "tx":F
    .end local v36    # "ty":F
    .end local v37    # "v":F
    :cond_7
    const/high16 v2, 0x40000000

    mul-float/2addr v13, v2

    .line 477
    cmpg-float v2, v32, v13

    if-gez v2, :cond_8

    .line 478
    const/high16 v2, -0x40800000

    goto/16 :goto_0

    .line 480
    :cond_8
    const/high16 v2, 0x3f000000

    mul-float v32, v32, v2

    .line 481
    const/high16 v2, 0x40a00000

    mul-float/2addr v2, v13

    cmpl-float v2, v32, v2

    if-lez v2, :cond_9

    .line 482
    const/high16 v2, 0x40a00000

    mul-float v32, v13, v2

    .line 484
    :cond_9
    cmpg-float v2, v32, v13

    if-gez v2, :cond_a

    .line 485
    move/from16 v32, v13

    .line 488
    :cond_a
    aget-object v2, p1, p2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    mul-float v3, v32, v9

    add-float/2addr v2, v3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase;->tarx:F

    .line 489
    aget-object v2, p1, p2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    mul-float v3, v32, v10

    add-float/2addr v2, v3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase;->tary:F

    .line 490
    neg-float v2, v10

    neg-float v3, v9

    invoke-static {v2, v3}, Lcom/fruitsmobile/basket/math/MathUtil;->atan2(FF)F

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase;->angle:F

    .line 491
    add-float v33, v7, v32

    .line 492
    .local v33, "score":F
    invoke-virtual/range {p0 .. p0}, Lcom/forthblue/pool/rules/VsaiRuleBase;->getRollForce()F

    move-result v2

    mul-float v2, v2, v33

    const/high16 v3, 0x41a00000

    mul-float/2addr v2, v3

    invoke-static {v2}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase;->strength:F

    .line 494
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase;->strength:F

    move v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/forthblue/pool/rules/VsaiRuleBase;->getMaxStrength()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/forthblue/pool/rules/VsaiRuleBase;->getMaxStrength()F

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase;->strength:F

    :cond_b
    move v2, v7

    .line 498
    goto/16 :goto_0
.end method

.method protected checkPotByBlocker([Lcom/forthblue/pool/engine/PoolBall;II)F
    .locals 44
    .param p1, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "ind"    # I
    .param p3, "hole"    # I

    .prologue
    .line 738
    aget-object v37, p1, p2

    .line 739
    .local v37, "target":Lcom/forthblue/pool/engine/PoolBall;
    sget-object v2, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickholesPosition:[F

    mul-int/lit8 v3, p3, 0x2

    aget v4, v2, v3

    .line 740
    .local v4, "holex":F
    sget-object v2, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickholesPosition:[F

    mul-int/lit8 v3, p3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v5, v2, v3

    .line 741
    .local v5, "holey":F
    move-object/from16 v0, v37

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move v2, v0

    sub-float v26, v4, v2

    .line 742
    .local v26, "dx":F
    move-object/from16 v0, v37

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move v2, v0

    sub-float v28, v5, v2

    .line 743
    .local v28, "dy":F
    mul-float v2, v26, v26

    mul-float v3, v28, v28

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v7

    .local v7, "len":F
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p2

    .line 745
    invoke-virtual/range {v2 .. v7}, Lcom/forthblue/pool/rules/VsaiRuleBase;->checkRoad1([Lcom/forthblue/pool/engine/PoolBall;FFIF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 746
    const/high16 v2, -0x40800000

    .line 871
    .end local v4    # "holex":F
    :goto_0
    return v2

    .line 749
    .restart local v4    # "holex":F
    :cond_0
    aget-object v2, p1, p2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    add-float v33, v2, v3

    .line 751
    .local v33, "r":F
    move-object/from16 v0, v37

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move v2, v0

    div-float v3, v26, v7

    mul-float v3, v3, v33

    sub-float v16, v2, v3

    .line 752
    .local v16, "tarx":F
    move-object/from16 v0, v37

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move v2, v0

    div-float v3, v28, v7

    mul-float v3, v3, v33

    sub-float v17, v2, v3

    .line 754
    .local v17, "tary":F
    const/16 v32, 0x0

    .line 755
    .local v32, "minscore":F
    const/16 v20, 0x0

    .line 757
    .local v20, "b":Z
    const/16 v23, 0x0

    .end local v4    # "holex":F
    .local v23, "bid":I
    :goto_1
    const/4 v2, 0x4

    move/from16 v0, v23

    move v1, v2

    if-ge v0, v1, :cond_7

    .line 758
    const/4 v2, 0x0

    aget-object v2, p1, v2

    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v21, v0

    .line 759
    .local v21, "backupballx":F
    const/4 v2, 0x0

    aget-object v2, p1, v2

    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v22, v0

    .line 761
    .local v22, "backupbally":F
    move/from16 v42, v21

    .line 762
    .local v42, "virtballx":F
    move/from16 v43, v22

    .line 765
    .local v43, "virtbally":F
    packed-switch v23, :pswitch_data_0

    .line 780
    :goto_2
    sub-float v27, v16, v42

    .line 781
    .local v27, "dx0":F
    sub-float v29, v17, v43

    .line 783
    .local v29, "dy0":F
    mul-float v2, v26, v27

    mul-float v3, v28, v29

    add-float v25, v2, v3

    .line 784
    .local v25, "dot":F
    mul-float v2, v27, v27

    mul-float v3, v29, v29

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v13

    .line 785
    .local v13, "len1":F
    div-float v2, v25, v7

    div-float v24, v2, v13

    .line 787
    .local v24, "cos":F
    move/from16 v0, v24

    float-to-double v0, v0

    move-wide v2, v0

    const-wide v4, 0x3fb999999999999aL

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 757
    :cond_1
    :goto_3
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 767
    .end local v13    # "len1":F
    .end local v24    # "cos":F
    .end local v25    # "dot":F
    .end local v27    # "dx0":F
    .end local v29    # "dy0":F
    :pswitch_0
    const v2, -0x3aecc4cd

    sub-float v42, v2, v42

    .line 768
    goto :goto_2

    .line 770
    :pswitch_1
    const v2, -0x3b74899a

    sub-float v43, v2, v43

    .line 771
    goto :goto_2

    .line 773
    :pswitch_2
    const v2, 0x45123b33

    sub-float v42, v2, v42

    .line 774
    goto :goto_2

    .line 776
    :pswitch_3
    const v2, 0x44907666

    sub-float v43, v2, v43

    goto :goto_2

    .line 792
    .restart local v13    # "len1":F
    .restart local v24    # "cos":F
    .restart local v25    # "dot":F
    .restart local v27    # "dx0":F
    .restart local v29    # "dy0":F
    :cond_2
    const/4 v10, 0x0

    .line 793
    .local v10, "chx":F
    const/4 v11, 0x0

    .line 794
    .local v11, "chy":F
    packed-switch v23, :pswitch_data_1

    .line 808
    :goto_4
    const v30, 0x42fe4ccd

    .line 809
    .local v30, "hhxr":F
    mul-float v30, v30, v30

    .line 811
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_5
    const/4 v2, 0x6

    move/from16 v0, v31

    move v1, v2

    if-ge v0, v1, :cond_3

    .line 812
    sget-object v2, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickholesPosition:[F

    mul-int/lit8 v3, v31, 0x2

    aget v38, v2, v3

    .line 813
    .local v38, "tholex":F
    sget-object v2, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickholesPosition:[F

    mul-int/lit8 v3, v31, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v39, v2, v3

    .line 814
    .local v39, "tholey":F
    sub-float v40, v38, v10

    .line 815
    .local v40, "ttdx":F
    sub-float v41, v39, v11

    .line 816
    .local v41, "ttdy":F
    mul-float v2, v40, v40

    mul-float v3, v41, v41

    add-float/2addr v2, v3

    cmpg-float v2, v2, v30

    if-gez v2, :cond_4

    .line 820
    .end local v38    # "tholex":F
    .end local v39    # "tholey":F
    .end local v40    # "ttdx":F
    .end local v41    # "ttdy":F
    :cond_3
    const/4 v2, 0x6

    move/from16 v0, v31

    move v1, v2

    if-lt v0, v1, :cond_1

    .line 824
    const/4 v12, -0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Lcom/forthblue/pool/rules/VsaiRuleBase;->checkRoad([Lcom/forthblue/pool/engine/PoolBall;FFIF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 828
    const/4 v2, 0x0

    aget-object v2, p1, v2

    move/from16 v0, v42

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 829
    const/4 v2, 0x0

    aget-object v2, p1, v2

    move/from16 v0, v43

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v18, p2

    move/from16 v19, v13

    .line 831
    invoke-virtual/range {v14 .. v19}, Lcom/forthblue/pool/rules/VsaiRuleBase;->checkRoad([Lcom/forthblue/pool/engine/PoolBall;FFIF)Z

    move-result v2

    if-nez v2, :cond_5

    .line 832
    const/4 v2, 0x0

    aget-object v2, p1, v2

    move/from16 v0, v21

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 833
    const/4 v2, 0x0

    aget-object v2, p1, v2

    move/from16 v0, v22

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    goto/16 :goto_3

    .line 797
    .end local v30    # "hhxr":F
    .end local v31    # "i":I
    :pswitch_4
    add-float v2, v21, v42

    const/high16 v3, 0x40000000

    div-float v10, v2, v3

    .line 798
    div-float v2, v29, v27

    sub-float v3, v10, v42

    mul-float/2addr v2, v3

    add-float v11, v43, v2

    .line 799
    goto :goto_4

    .line 802
    :pswitch_5
    add-float v2, v22, v43

    const/high16 v3, 0x40000000

    div-float v11, v2, v3

    .line 803
    div-float v2, v27, v29

    sub-float v3, v11, v43

    mul-float/2addr v2, v3

    add-float v10, v42, v2

    goto/16 :goto_4

    .line 811
    .restart local v30    # "hhxr":F
    .restart local v31    # "i":I
    .restart local v38    # "tholex":F
    .restart local v39    # "tholey":F
    .restart local v40    # "ttdx":F
    .restart local v41    # "ttdy":F
    :cond_4
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_5

    .line 837
    .end local v38    # "tholex":F
    .end local v39    # "tholey":F
    .end local v40    # "ttdx":F
    .end local v41    # "ttdy":F
    :cond_5
    const/4 v2, 0x0

    aget-object v2, p1, v2

    move/from16 v0, v21

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 838
    const/4 v2, 0x0

    aget-object v2, p1, v2

    move/from16 v0, v22

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 839
    add-float v35, v7, v13

    .line 841
    .local v35, "score":F
    packed-switch v23, :pswitch_data_2

    .line 852
    :goto_6
    move/from16 v0, v29

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/fruitsmobile/basket/math/MathUtil;->atan2(FF)F

    move-result v34

    .line 854
    .local v34, "sangle":F
    invoke-virtual/range {p0 .. p0}, Lcom/forthblue/pool/rules/VsaiRuleBase;->getRollForce()F

    move-result v2

    mul-float v2, v2, v35

    const/high16 v3, 0x41f00000

    mul-float/2addr v2, v3

    div-float v2, v2, v24

    invoke-static {v2}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v36

    .line 855
    .local v36, "sstrength":F
    invoke-virtual/range {p0 .. p0}, Lcom/forthblue/pool/rules/VsaiRuleBase;->getMaxStrength()F

    move-result v2

    cmpl-float v2, v36, v2

    if-gtz v2, :cond_1

    .line 859
    if-eqz v20, :cond_6

    cmpg-float v2, v35, v32

    if-gez v2, :cond_1

    .line 860
    :cond_6
    const/16 v20, 0x1

    .line 861
    move/from16 v32, v35

    .line 862
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase;->angle:F

    .line 863
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase;->strength:F

    .line 864
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase;->cosda:F

    goto/16 :goto_3

    .line 844
    .end local v34    # "sangle":F
    .end local v36    # "sstrength":F
    :pswitch_6
    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    .line 845
    goto :goto_6

    .line 848
    :pswitch_7
    move/from16 v0, v29

    neg-float v0, v0

    move/from16 v29, v0

    goto :goto_6

    .line 868
    .end local v10    # "chx":F
    .end local v11    # "chy":F
    .end local v13    # "len1":F
    .end local v21    # "backupballx":F
    .end local v22    # "backupbally":F
    .end local v24    # "cos":F
    .end local v25    # "dot":F
    .end local v27    # "dx0":F
    .end local v29    # "dy0":F
    .end local v30    # "hhxr":F
    .end local v31    # "i":I
    .end local v35    # "score":F
    .end local v42    # "virtballx":F
    .end local v43    # "virtbally":F
    :cond_7
    if-nez v20, :cond_8

    .line 869
    const/high16 v2, -0x40800000

    goto/16 :goto_0

    :cond_8
    move/from16 v2, v32

    .line 871
    goto/16 :goto_0

    .line 765
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 794
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 841
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected checkRoad([Lcom/forthblue/pool/engine/PoolBall;FFIF)Z
    .locals 10
    .param p1, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "tarx"    # F
    .param p3, "tary"    # F
    .param p4, "ind"    # I
    .param p5, "len"    # F

    .prologue
    .line 895
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    sub-float v6, p2, v0

    .line 896
    .local v6, "dx":F
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    sub-float v7, p3, v0

    .line 897
    .local v7, "dy":F
    div-float v1, v6, p5

    .line 898
    .local v1, "cos":F
    div-float v2, v7, p5

    .line 901
    .local v2, "sin":F
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget v5, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    .line 902
    .local v5, "ballr":F
    sub-float v0, p2, v5

    const v3, -0x3b66e000

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_0

    add-float v0, p2, v5

    const v3, 0x44982000

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    sub-float v0, p3, v5

    const v3, -0x3be8c000

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_0

    add-float v0, p3, v5

    const v3, 0x441c4000

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 903
    :cond_0
    const/4 v0, 0x0

    .line 916
    :goto_0
    return v0

    .line 905
    :cond_1
    const/high16 v0, 0x40000000

    mul-float/2addr v5, v0

    .line 906
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_1
    array-length v0, p1

    if-ge v8, v0, :cond_4

    .line 907
    if-eq v8, p4, :cond_2

    aget-object v0, p1, v8

    iget-boolean v0, v0, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v0, :cond_3

    .line 906
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 910
    :cond_3
    aget-object v0, p1, v8

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->x:F

    sub-float v3, v0, v3

    aget-object v0, p1, v8

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    const/4 v4, 0x0

    aget-object v4, p1, v4

    iget v4, v4, Lcom/forthblue/pool/engine/PoolBall;->y:F

    sub-float v4, v0, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/forthblue/pool/rules/VsaiRuleBase;->calcAimTargetWith(FFFFF)F

    move-result v9

    .line 911
    .local v9, "r":F
    const/4 v0, 0x0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_2

    cmpg-float v0, v9, p5

    if-gez v0, :cond_2

    .line 912
    iput v8, p0, Lcom/forthblue/pool/rules/VsaiRuleBase;->blocker:I

    .line 913
    const/4 v0, 0x0

    goto :goto_0

    .line 916
    .end local v9    # "r":F
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected checkRoad1([Lcom/forthblue/pool/engine/PoolBall;FFIF)Z
    .locals 10
    .param p1, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "tarx"    # F
    .param p3, "tary"    # F
    .param p4, "ind"    # I
    .param p5, "len"    # F

    .prologue
    .line 875
    aget-object v0, p1, p4

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    sub-float v6, p2, v0

    .line 876
    .local v6, "dx":F
    aget-object v0, p1, p4

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    sub-float v7, p3, v0

    .line 877
    .local v7, "dy":F
    div-float v1, v6, p5

    .line 878
    .local v1, "cos":F
    div-float v2, v7, p5

    .line 880
    .local v2, "sin":F
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget v5, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    .line 881
    .local v5, "ballr":F
    const/high16 v0, 0x40000000

    mul-float/2addr v5, v0

    .line 882
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_2

    .line 883
    if-eq v8, p4, :cond_0

    aget-object v0, p1, v8

    iget-boolean v0, v0, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v0, :cond_1

    .line 882
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 886
    :cond_1
    aget-object v0, p1, v8

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    aget-object v3, p1, p4

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->x:F

    sub-float v3, v0, v3

    aget-object v0, p1, v8

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    aget-object v4, p1, p4

    iget v4, v4, Lcom/forthblue/pool/engine/PoolBall;->y:F

    sub-float v4, v0, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/forthblue/pool/rules/VsaiRuleBase;->calcAimTargetWith(FFFFF)F

    move-result v9

    .line 887
    .local v9, "r":F
    const/4 v0, 0x0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_0

    cmpg-float v0, v9, p5

    if-gez v0, :cond_0

    .line 888
    const/4 v0, 0x0

    .line 891
    .end local v9    # "r":F
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected checkShotByBlocker([Lcom/forthblue/pool/engine/PoolBall;I)F
    .locals 29
    .param p1, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "ind"    # I

    .prologue
    .line 557
    const/4 v14, 0x0

    .line 558
    .local v14, "b":Z
    const/16 v22, 0x0

    .line 560
    .local v22, "minscore":F
    const/16 v17, 0x0

    .local v17, "bid":I
    :goto_0
    const/4 v2, 0x4

    move/from16 v0, v17

    move v1, v2

    if-ge v0, v1, :cond_6

    .line 561
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget v15, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 562
    .local v15, "backupballx":F
    const/4 v2, 0x0

    aget-object v2, p1, v2

    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v16, v0

    .line 564
    .local v16, "backupbally":F
    move/from16 v27, v15

    .line 565
    .local v27, "virtballx":F
    move/from16 v28, v16

    .line 568
    .local v28, "virtbally":F
    packed-switch v17, :pswitch_data_0

    .line 583
    :goto_1
    aget-object v2, p1, p2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    sub-float v18, v2, v27

    .line 584
    .local v18, "dx0":F
    aget-object v2, p1, p2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    sub-float v19, v2, v28

    .line 587
    .local v19, "dy0":F
    const/4 v4, 0x0

    .line 588
    .local v4, "chx":F
    const/4 v5, 0x0

    .line 589
    .local v5, "chy":F
    packed-switch v17, :pswitch_data_1

    .line 603
    :goto_2
    const v20, 0x42fe4ccd

    .line 604
    .local v20, "hhxr":F
    mul-float v20, v20, v20

    .line 606
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_3
    const/4 v2, 0x6

    move/from16 v0, v21

    move v1, v2

    if-ge v0, v1, :cond_0

    .line 607
    sget-object v2, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickholesPosition:[F

    mul-int/lit8 v3, v21, 0x2

    aget v23, v2, v3

    .line 608
    .local v23, "tholex":F
    sget-object v2, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickholesPosition:[F

    mul-int/lit8 v3, v21, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v24, v2, v3

    .line 609
    .local v24, "tholey":F
    sub-float v25, v23, v4

    .line 610
    .local v25, "ttdx":F
    sub-float v26, v24, v5

    .line 611
    .local v26, "ttdy":F
    mul-float v2, v25, v25

    mul-float v3, v26, v26

    add-float/2addr v2, v3

    cmpg-float v2, v2, v20

    if-gez v2, :cond_2

    .line 615
    .end local v23    # "tholex":F
    .end local v24    # "tholey":F
    .end local v25    # "ttdx":F
    .end local v26    # "ttdy":F
    :cond_0
    const/4 v2, 0x6

    move/from16 v0, v21

    move v1, v2

    if-ge v0, v1, :cond_3

    .line 560
    :cond_1
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 570
    .end local v4    # "chx":F
    .end local v5    # "chy":F
    .end local v18    # "dx0":F
    .end local v19    # "dy0":F
    .end local v20    # "hhxr":F
    .end local v21    # "i":I
    :pswitch_0
    const v2, -0x3aecc4cd

    sub-float v27, v2, v27

    .line 571
    goto :goto_1

    .line 573
    :pswitch_1
    const v2, -0x3b74899a

    sub-float v28, v2, v28

    .line 574
    goto :goto_1

    .line 576
    :pswitch_2
    const v2, 0x45123b33

    sub-float v27, v2, v27

    .line 577
    goto :goto_1

    .line 579
    :pswitch_3
    const v2, 0x44907666

    sub-float v28, v2, v28

    goto :goto_1

    .line 592
    .restart local v4    # "chx":F
    .restart local v5    # "chy":F
    .restart local v18    # "dx0":F
    .restart local v19    # "dy0":F
    :pswitch_4
    add-float v2, v15, v27

    const/high16 v3, 0x40000000

    div-float v4, v2, v3

    .line 593
    div-float v2, v19, v18

    sub-float v3, v4, v27

    mul-float/2addr v2, v3

    add-float v5, v28, v2

    .line 594
    goto :goto_2

    .line 597
    :pswitch_5
    add-float v2, v16, v28

    const/high16 v3, 0x40000000

    div-float v5, v2, v3

    .line 598
    div-float v2, v18, v19

    sub-float v3, v5, v28

    mul-float/2addr v2, v3

    add-float v4, v27, v2

    goto :goto_2

    .line 606
    .restart local v20    # "hhxr":F
    .restart local v21    # "i":I
    .restart local v23    # "tholex":F
    .restart local v24    # "tholey":F
    .restart local v25    # "ttdx":F
    .restart local v26    # "ttdy":F
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 618
    .end local v23    # "tholex":F
    .end local v24    # "tholey":F
    .end local v25    # "ttdx":F
    .end local v26    # "ttdy":F
    :cond_3
    mul-float v2, v18, v18

    mul-float v3, v19, v19

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v7

    .line 620
    .local v7, "len1":F
    const/4 v6, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/forthblue/pool/rules/VsaiRuleBase;->checkRoad([Lcom/forthblue/pool/engine/PoolBall;FFIF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 624
    const/4 v2, 0x0

    aget-object v2, p1, v2

    move/from16 v0, v27

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 625
    const/4 v2, 0x0

    aget-object v2, p1, v2

    move/from16 v0, v28

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 627
    aget-object v2, p1, p2

    iget v10, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    aget-object v2, p1, p2

    iget v11, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v12, p2

    move v13, v7

    invoke-virtual/range {v8 .. v13}, Lcom/forthblue/pool/rules/VsaiRuleBase;->checkRoad([Lcom/forthblue/pool/engine/PoolBall;FFIF)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 628
    if-eqz v14, :cond_4

    cmpg-float v2, v7, v22

    if-gez v2, :cond_5

    .line 629
    :cond_4
    const/4 v14, 0x1

    .line 630
    move/from16 v22, v7

    .line 631
    packed-switch v17, :pswitch_data_2

    .line 642
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/fruitsmobile/basket/math/MathUtil;->atan2(FF)F

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase;->angle:F

    .line 643
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput v15, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 644
    const/4 v2, 0x0

    aget-object v2, p1, v2

    move/from16 v0, v16

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    goto/16 :goto_4

    .line 634
    :pswitch_6
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    .line 635
    goto :goto_5

    .line 638
    :pswitch_7
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    goto :goto_5

    .line 648
    :cond_5
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput v15, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 649
    const/4 v2, 0x0

    aget-object v2, p1, v2

    move/from16 v0, v16

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    goto/16 :goto_4

    .line 686
    .end local v4    # "chx":F
    .end local v5    # "chy":F
    .end local v7    # "len1":F
    .end local v15    # "backupballx":F
    .end local v16    # "backupbally":F
    .end local v18    # "dx0":F
    .end local v19    # "dy0":F
    .end local v20    # "hhxr":F
    .end local v21    # "i":I
    .end local v27    # "virtballx":F
    .end local v28    # "virtbally":F
    :cond_6
    if-nez v14, :cond_7

    .line 687
    const/high16 v2, -0x40800000

    .line 688
    :goto_6
    return v2

    :cond_7
    move/from16 v2, v22

    goto :goto_6

    .line 568
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 589
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 631
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected checkStraightPot([Lcom/forthblue/pool/engine/PoolBall;II)F
    .locals 23
    .param p1, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "ind"    # I
    .param p3, "hole"    # I

    .prologue
    .line 693
    aget-object v22, p1, p2

    .line 694
    .local v22, "target":Lcom/forthblue/pool/engine/PoolBall;
    sget-object v2, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickholesPosition:[F

    mul-int/lit8 v3, p3, 0x2

    aget v4, v2, v3

    .line 695
    .local v4, "holex":F
    sget-object v2, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickholesPosition:[F

    mul-int/lit8 v3, p3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v5, v2, v3

    .line 696
    .local v5, "holey":F
    move-object/from16 v0, v22

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move v2, v0

    sub-float v16, v4, v2

    .line 697
    .local v16, "dx":F
    move-object/from16 v0, v22

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move v2, v0

    sub-float v18, v5, v2

    .line 698
    .local v18, "dy":F
    mul-float v2, v16, v16

    mul-float v3, v18, v18

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v7

    .local v7, "len":F
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p2

    .line 700
    invoke-virtual/range {v2 .. v7}, Lcom/forthblue/pool/rules/VsaiRuleBase;->checkRoad1([Lcom/forthblue/pool/engine/PoolBall;FFIF)Z

    move-result v2

    if-nez v2, :cond_0

    .line 701
    const/high16 v2, -0x40800000

    .line 733
    .end local v4    # "holex":F
    :goto_0
    return v2

    .line 704
    .restart local v4    # "holex":F
    :cond_0
    aget-object v2, p1, p2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    add-float v20, v2, v3

    .line 706
    .local v20, "r":F
    move-object/from16 v0, v22

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move v2, v0

    div-float v3, v16, v7

    mul-float v3, v3, v20

    sub-float v10, v2, v3

    .line 707
    .local v10, "tarx":F
    move-object/from16 v0, v22

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move v2, v0

    div-float v3, v18, v7

    mul-float v3, v3, v20

    sub-float v11, v2, v3

    .line 709
    .local v11, "tary":F
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    sub-float v17, v10, v2

    .line 710
    .local v17, "dx0":F
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    sub-float v19, v11, v2

    .line 712
    .local v19, "dy0":F
    mul-float v2, v16, v17

    mul-float v3, v18, v19

    add-float v15, v2, v3

    .line 713
    .local v15, "dot":F
    mul-float v2, v17, v17

    mul-float v3, v19, v19

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v13

    .line 714
    .local v13, "len1":F
    div-float v2, v15, v7

    div-float v14, v2, v13

    .line 716
    .local v14, "cos":F
    float-to-double v2, v14

    const-wide v4, 0x3fb999999999999aL

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 717
    .end local v4    # "holex":F
    const/high16 v2, -0x40800000

    goto :goto_0

    :cond_1
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v12, p2

    .line 720
    invoke-virtual/range {v8 .. v13}, Lcom/forthblue/pool/rules/VsaiRuleBase;->checkRoad([Lcom/forthblue/pool/engine/PoolBall;FFIF)Z

    move-result v2

    if-nez v2, :cond_2

    .line 721
    const/high16 v2, -0x40800000

    goto :goto_0

    .line 724
    :cond_2
    add-float v21, v7, v13

    .line 725
    .local v21, "score":F
    move/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/fruitsmobile/basket/math/MathUtil;->atan2(FF)F

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase;->angle:F

    .line 727
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase;->cosda:F

    .line 728
    invoke-virtual/range {p0 .. p0}, Lcom/forthblue/pool/rules/VsaiRuleBase;->getRollForce()F

    move-result v2

    mul-float v2, v2, v21

    const/high16 v3, 0x41a00000

    mul-float/2addr v2, v3

    div-float/2addr v2, v14

    invoke-static {v2}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase;->strength:F

    .line 729
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase;->strength:F

    move v2, v0

    invoke-virtual/range {p0 .. p0}, Lcom/forthblue/pool/rules/VsaiRuleBase;->getMaxStrength()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 730
    const/high16 v2, -0x40800000

    goto/16 :goto_0

    :cond_3
    move/from16 v2, v21

    .line 733
    goto/16 :goto_0
.end method

.method protected checkStraightShot([Lcom/forthblue/pool/engine/PoolBall;IZ)F
    .locals 23
    .param p1, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "ind"    # I
    .param p3, "checkRoad"    # Z

    .prologue
    .line 505
    aget-object v2, p1, p2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->x:F

    sub-float v15, v2, v3

    .line 506
    .local v15, "dx0":F
    aget-object v2, p1, p2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->y:F

    sub-float v17, v2, v3

    .line 508
    .local v17, "dy0":F
    mul-float v2, v15, v15

    mul-float v3, v17, v17

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v7

    .line 509
    .local v7, "len1":F
    if-eqz p3, :cond_7

    .line 510
    move/from16 v0, v17

    move v1, v15

    invoke-static {v0, v1}, Lcom/fruitsmobile/basket/math/MathUtil;->atan2(FF)F

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase;->angle:F

    .line 511
    aget-object v2, p1, p2

    iget v4, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    aget-object v2, p1, p2

    iget v5, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/forthblue/pool/rules/VsaiRuleBase;->checkRoad([Lcom/forthblue/pool/engine/PoolBall;FFIF)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v7

    .line 552
    :goto_0
    return v2

    .line 516
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase;->blocker:I

    move v2, v0

    aget-object v2, p1, v2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->x:F

    sub-float v16, v2, v3

    .line 517
    .local v16, "dx1":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase;->blocker:I

    move v2, v0

    aget-object v2, p1, v2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->y:F

    sub-float v18, v2, v3

    .line 519
    .local v18, "dy1":F
    mul-float v2, v15, v18

    mul-float v3, v17, v16

    sub-float v22, v2, v3

    .line 521
    .local v22, "zmul":F
    const/4 v2, 0x0

    cmpl-float v2, v22, v2

    if-lez v2, :cond_2

    const v2, -0x42333333

    move v14, v2

    .line 523
    .local v14, "dir":F
    :goto_1
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    const/high16 v3, 0x40000000

    mul-float v13, v2, v3

    .line 526
    .local v13, "ballr":F
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase;->angle:F

    move v2, v0

    add-float/2addr v2, v14

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase;->angle:F

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase;->angle:F

    move v2, v0

    invoke-static {v2}, Lcom/fruitsmobile/basket/math/MathUtil;->cos(F)F

    move-result v9

    .line 530
    .local v9, "cos":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase;->angle:F

    move v2, v0

    invoke-static {v2}, Lcom/fruitsmobile/basket/math/MathUtil;->sin(F)F

    move-result v10

    .line 531
    .local v10, "sin":F
    aget-object v2, p1, p2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->x:F

    sub-float v11, v2, v3

    aget-object v2, p1, p2

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->y:F

    sub-float v12, v2, v3

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/forthblue/pool/rules/VsaiRuleBase;->calcAimTargetWith(FFFFF)F

    move-result v20

    .line 533
    .local v20, "minr":F
    const/4 v2, 0x0

    cmpg-float v2, v20, v2

    if-gtz v2, :cond_3

    .line 534
    const/high16 v2, -0x40800000

    goto :goto_0

    .line 521
    .end local v9    # "cos":F
    .end local v10    # "sin":F
    .end local v13    # "ballr":F
    .end local v14    # "dir":F
    .end local v20    # "minr":F
    :cond_2
    const v2, 0x3dcccccd

    move v14, v2

    goto :goto_1

    .line 537
    .restart local v9    # "cos":F
    .restart local v10    # "sin":F
    .restart local v13    # "ballr":F
    .restart local v14    # "dir":F
    .restart local v20    # "minr":F
    :cond_3
    const/16 v19, 0x1

    .local v19, "i":I
    :goto_2
    move-object/from16 v0, p1

    array-length v0, v0

    move v2, v0

    move/from16 v0, v19

    move v1, v2

    if-ge v0, v1, :cond_6

    .line 538
    move/from16 v0, v19

    move/from16 v1, p2

    if-eq v0, v1, :cond_4

    aget-object v2, p1, v19

    iget-boolean v2, v2, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v2, :cond_5

    .line 537
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 540
    :cond_5
    aget-object v2, p1, v19

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->x:F

    sub-float v11, v2, v3

    aget-object v2, p1, v19

    iget v2, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    const/4 v3, 0x0

    aget-object v3, p1, v3

    iget v3, v3, Lcom/forthblue/pool/engine/PoolBall;->y:F

    sub-float v12, v2, v3

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/forthblue/pool/rules/VsaiRuleBase;->calcAimTargetWith(FFFFF)F

    move-result v21

    .line 541
    .local v21, "r":F
    const/4 v2, 0x0

    cmpl-float v2, v21, v2

    if-ltz v2, :cond_4

    cmpg-float v2, v21, v20

    if-gez v2, :cond_4

    .line 545
    .end local v21    # "r":F
    :cond_6
    move-object/from16 v0, p1

    array-length v0, v0

    move v2, v0

    move/from16 v0, v19

    move v1, v2

    if-ne v0, v1, :cond_1

    move/from16 v2, v20

    .line 546
    goto/16 :goto_0

    .line 551
    .end local v9    # "cos":F
    .end local v10    # "sin":F
    .end local v13    # "ballr":F
    .end local v14    # "dir":F
    .end local v16    # "dx1":F
    .end local v18    # "dy1":F
    .end local v19    # "i":I
    .end local v20    # "minr":F
    .end local v22    # "zmul":F
    :cond_7
    move/from16 v0, v17

    move v1, v15

    invoke-static {v0, v1}, Lcom/fruitsmobile/basket/math/MathUtil;->atan2(FF)F

    move-result v2

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase;->angle:F

    move v2, v7

    .line 552
    goto/16 :goto_0
.end method

.method public getAI()Lcom/forthblue/pool/engine/PoolAI;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/forthblue/pool/rules/VsaiRuleBase;->ai:Lcom/forthblue/pool/engine/PoolAI;

    return-object v0
.end method

.method public getPlayerCount()I
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x2

    return v0
.end method

.method public getPlayerType(I)I
    .locals 1
    .param p1, "playerid"    # I

    .prologue
    .line 21
    sget v0, Lcom/forthblue/pool/rules/VsaiRuleBase;->not_ai_player_count:I

    if-ge p1, v0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isUnderlineFreeball(Lcom/forthblue/pool/rules/PoolRule$RoundState;)Z
    .locals 1
    .param p1, "rs"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 1
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    .line 966
    const/4 v0, 0x2

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 967
    return-void
.end method

.method protected setLose(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V
    .locals 3
    .param p1, "rs"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    .line 32
    const-string v0, "Pool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " losed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v0, 0x4

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 34
    const/4 v0, 0x1

    iget v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->winner:I

    .line 35
    return-void
.end method

.method protected setWin(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V
    .locals 3
    .param p1, "rs"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    .line 38
    const-string v0, "Pool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " win."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x4

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 40
    iget v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->winner:I

    .line 41
    return-void
.end method

.method protected switchPlayer(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V
    .locals 2
    .param p1, "rs"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .prologue
    .line 44
    const/4 v0, 0x1

    iget v1, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    .line 45
    return-void
.end method
