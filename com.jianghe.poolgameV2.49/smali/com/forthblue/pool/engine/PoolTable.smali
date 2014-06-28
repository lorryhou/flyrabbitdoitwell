.class public Lcom/forthblue/pool/engine/PoolTable;
.super Lcom/forthblue/pool/engine/WindowContainer;
.source "PoolTable.java"


# static fields
.field private static final AI_STATE_AIMING:I = 0x1

.field private static final AI_STATE_POWERING:I = 0x2

.field private static final AI_STATE_PUTTING:I = 0x3

.field private static final AI_STATE_THINKING:I = 0x0

.field public static final BLOCK_HIT_LOST:F = 0.8f

.field public static final DEBUG:Z = false

.field public static final MAX_TIME:F = 3600.0f

.field public static final ROLLW_FORCE_K:F = 0.15f

.field public static final ROLL_K:F = 1.5811388f

.field static hita:I

.field static hitb:I

.field static hittype:I

.field static hitx:F

.field static hitx0:F

.field static hitx1:F

.field static hity:F

.field static hity0:F

.field static hity1:F

.field public static nextHitTime:[[[F

.field private static tempQuat:Lcom/fruitsmobile/basket/math/Quaternion;


# instance fields
.field private ai:Lcom/forthblue/pool/engine/PoolAI;

.field ai_restTime:J

.field private ai_state:I

.field public aiangle:F

.field public aipx:F

.field public aipy:F

.field public aistrength:F

.field public bAIActived:Z

.field public balls:[Lcom/forthblue/pool/engine/PoolBall;

.field public blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

.field private disableLight:Lcom/fruitsmobile/basket/DrawableObject;

.field private enableLight:Lcom/fruitsmobile/basket/DrawableObject;

.field public highlights:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

.field holeTexture:Lcom/fruitsmobile/basket/resources/Texture;

.field public holes:[Lcom/forthblue/pool/engine/PoolHole;

.field private lastAimBallIndex:I

.field public roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

.field private rule:Lcom/forthblue/pool/rules/PoolRule;

.field public shadows:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

.field targetVisible:Z

.field public targets:Lcom/fruitsmobile/basket/particle/StaticImageParticle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 269
    new-instance v0, Lcom/fruitsmobile/basket/math/Quaternion;

    invoke-direct {v0}, Lcom/fruitsmobile/basket/math/Quaternion;-><init>()V

    sput-object v0, Lcom/forthblue/pool/engine/PoolTable;->tempQuat:Lcom/fruitsmobile/basket/math/Quaternion;

    .line 455
    const/4 v0, 0x6

    filled-new-array {v0, v1, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    sput-object v0, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    return-void
.end method

.method public constructor <init>(Lcom/fruitsmobile/basket/Layer;)V
    .locals 3
    .param p1, "parentLayer"    # Lcom/fruitsmobile/basket/Layer;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 37
    const/16 v0, 0x64

    invoke-direct {p0, v0, p1}, Lcom/forthblue/pool/engine/WindowContainer;-><init>(ILcom/fruitsmobile/basket/Layer;)V

    .line 34
    iput-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->holeTexture:Lcom/fruitsmobile/basket/resources/Texture;

    .line 44
    iput-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    .line 52
    iput-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .line 75
    iput-boolean v2, p0, Lcom/forthblue/pool/engine/PoolTable;->targetVisible:Z

    .line 1003
    iput-boolean v2, p0, Lcom/forthblue/pool/engine/PoolTable;->bAIActived:Z

    .line 1125
    new-instance v0, Lcom/forthblue/pool/engine/PoolTable$1;

    invoke-direct {v0, p0}, Lcom/forthblue/pool/engine/PoolTable$1;-><init>(Lcom/forthblue/pool/engine/PoolTable;)V

    iput-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->enableLight:Lcom/fruitsmobile/basket/DrawableObject;

    .line 1171
    new-instance v0, Lcom/forthblue/pool/engine/PoolTable$2;

    invoke-direct {v0, p0}, Lcom/forthblue/pool/engine/PoolTable$2;-><init>(Lcom/forthblue/pool/engine/PoolTable;)V

    iput-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->disableLight:Lcom/fruitsmobile/basket/DrawableObject;

    .line 42
    return-void
.end method

.method private calcAimTargetWith(FFFFF)F
    .locals 10
    .param p1, "cos"    # F
    .param p2, "sin"    # F
    .param p3, "dx"    # F
    .param p4, "dy"    # F
    .param p5, "r"    # F

    .prologue
    const/high16 v9, 0x40000000

    const/4 v8, 0x0

    .line 891
    mul-float v6, p3, p1

    mul-float v7, p4, p2

    add-float v3, v6, v7

    .line 894
    .local v3, "dot":F
    cmpg-float v6, v3, v8

    if-gez v6, :cond_0

    move v6, v8

    .line 914
    :goto_0
    return v6

    .line 899
    :cond_0
    mul-float v6, p1, p1

    mul-float v7, p2, p2

    add-float v0, v6, v7

    .line 900
    .local v0, "a":F
    mul-float v4, v9, v3

    .line 901
    .local v4, "minusb":F
    mul-float v6, p3, p3

    mul-float v7, p4, p4

    add-float/2addr v6, v7

    mul-float v7, p5, p5

    sub-float v1, v6, v7

    .line 903
    .local v1, "c":F
    mul-float v6, v4, v4

    const/high16 v7, 0x40800000

    mul-float/2addr v7, v0

    mul-float/2addr v7, v1

    sub-float v2, v6, v7

    .line 906
    .local v2, "delta":F
    cmpg-float v6, v2, v8

    if-gez v6, :cond_1

    move v6, v8

    .line 907
    goto :goto_0

    .line 911
    :cond_1
    invoke-static {v2}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v6

    sub-float v6, v4, v6

    mul-float v7, v0, v9

    div-float v5, v6, v7

    .local v5, "t":F
    move v6, v5

    .line 914
    goto :goto_0
.end method

.method private calcAimTargetWith(FFFFFFF)F
    .locals 10
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "dx"    # F
    .param p4, "dy"    # F
    .param p5, "cos"    # F
    .param p6, "sin"    # F
    .param p7, "len"    # F

    .prologue
    .line 972
    mul-float v6, p4, p5

    mul-float v7, p3, p6

    sub-float v0, v6, v7

    .line 973
    .local v0, "a":F
    mul-float v6, p1, p4

    mul-float v7, p2, p3

    sub-float v2, v6, v7

    .line 975
    .local v2, "minusb":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3f50624dd2f1a9fcL

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 976
    const/4 v6, 0x0

    .line 987
    :goto_0
    return v6

    .line 977
    :cond_0
    div-float v3, v2, v0

    .line 978
    .local v3, "ret":F
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_2

    .line 980
    neg-float v6, p1

    mul-float v7, v3, p5

    add-float v4, v6, v7

    .line 981
    .local v4, "x":F
    neg-float v6, p2

    mul-float v7, v3, p6

    add-float v5, v6, v7

    .line 983
    .local v5, "y":F
    mul-float v6, v4, p3

    mul-float v7, v5, p4

    add-float v1, v6, v7

    .line 984
    .local v1, "l":F
    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-ltz v6, :cond_1

    cmpl-float v6, v1, p7

    if-lez v6, :cond_2

    .line 985
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .end local v1    # "l":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_2
    move v6, v3

    .line 987
    goto :goto_0
.end method

.method private calcAimTargetWith(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolBall;FFF)F
    .locals 6
    .param p1, "ball"    # Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "other"    # Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "angel"    # F
    .param p4, "cos"    # F
    .param p5, "sin"    # F

    .prologue
    .line 882
    iget v0, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    iget v1, p1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    sub-float v3, v0, v1

    .line 883
    .local v3, "dx":F
    iget v0, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    iget v1, p1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    sub-float v4, v0, v1

    .line 885
    .local v4, "dy":F
    iget v0, p1, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    iget v1, p2, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    add-float v5, v0, v1

    .local v5, "r":F
    move-object v0, p0

    move v1, p4

    move v2, p5

    .line 887
    invoke-direct/range {v0 .. v5}, Lcom/forthblue/pool/engine/PoolTable;->calcAimTargetWith(FFFFF)F

    move-result v0

    return v0
.end method

.method private calcAimTargetWith(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolBlocker;FFF)F
    .locals 26
    .param p1, "ball"    # Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "blocker"    # Lcom/forthblue/pool/engine/PoolBlocker;
    .param p3, "angel"    # F
    .param p4, "cos"    # F
    .param p5, "sin"    # F

    .prologue
    .line 919
    invoke-virtual/range {p2 .. p2}, Lcom/forthblue/pool/engine/PoolBlocker;->getX0()F

    move-result v12

    .line 920
    .local v12, "blockerx0":F
    invoke-virtual/range {p2 .. p2}, Lcom/forthblue/pool/engine/PoolBlocker;->getY0()F

    move-result v14

    .line 921
    .local v14, "blockery0":F
    invoke-virtual/range {p2 .. p2}, Lcom/forthblue/pool/engine/PoolBlocker;->getX1()F

    move-result v13

    .line 922
    .local v13, "blockerx1":F
    invoke-virtual/range {p2 .. p2}, Lcom/forthblue/pool/engine/PoolBlocker;->getY1()F

    move-result v15

    .line 925
    .local v15, "blockery1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v2, v0

    invoke-interface {v2}, Lcom/forthblue/pool/rules/PoolRule;->getTableHeight()F

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v3, v0

    invoke-interface {v3}, Lcom/forthblue/pool/rules/PoolRule;->getTableWidth()F

    move-result v3

    add-float v23, v2, v3

    .line 927
    .local v23, "targetLength":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move v2, v0

    sub-float v5, v12, v2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move v2, v0

    sub-float v6, v14, v2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    move v7, v0

    move-object/from16 v2, p0

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct/range {v2 .. v7}, Lcom/forthblue/pool/engine/PoolTable;->calcAimTargetWith(FFFFF)F

    move-result v22

    .line 928
    .local v22, "ret":F
    const/high16 v2, 0x3f800000

    cmpl-float v2, v22, v2

    if-ltz v2, :cond_0

    .line 929
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v23

    .line 931
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move v2, v0

    sub-float v5, v13, v2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move v2, v0

    sub-float v6, v15, v2

    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    move v7, v0

    move-object/from16 v2, p0

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct/range {v2 .. v7}, Lcom/forthblue/pool/engine/PoolTable;->calcAimTargetWith(FFFFF)F

    move-result v22

    .line 932
    const/high16 v2, 0x3f800000

    cmpl-float v2, v22, v2

    if-ltz v2, :cond_1

    .line 933
    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v23

    .line 940
    :cond_1
    sub-float v10, v13, v12

    .line 941
    .local v10, "blockerdx":F
    sub-float v11, v15, v14

    .line 944
    .local v11, "blockerdy":F
    mul-float v2, v10, v10

    mul-float v3, v11, v11

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v9

    .line 945
    .local v9, "t":F
    const/high16 v2, 0x3f800000

    cmpg-float v2, v9, v2

    if-gez v2, :cond_2

    move/from16 v2, v22

    .line 968
    :goto_0
    return v2

    .line 947
    :cond_2
    div-float v5, v10, v9

    .line 948
    .local v5, "nx":F
    div-float v6, v11, v9

    .line 950
    .local v6, "ny":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    move v2, v0

    mul-float v24, v6, v2

    .line 951
    .local v24, "tx":F
    neg-float v2, v5

    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    move v3, v0

    mul-float v25, v2, v3

    .line 953
    .local v25, "ty":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move v2, v0

    sub-float v16, v2, v24

    .line 954
    .local v16, "p1x":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move v2, v0

    sub-float v17, v2, v25

    .line 955
    .local v17, "p1y":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move v2, v0

    add-float v18, v2, v24

    .line 956
    .local v18, "p2x":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move v2, v0

    add-float v19, v2, v25

    .line 958
    .local v19, "p2y":F
    sub-float v3, v12, v16

    sub-float v4, v14, v17

    move-object/from16 v2, p0

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/forthblue/pool/engine/PoolTable;->calcAimTargetWith(FFFFFFF)F

    move-result v20

    .line 959
    .local v20, "r1":F
    sub-float v3, v12, v18

    sub-float v4, v14, v19

    move-object/from16 v2, p0

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/forthblue/pool/engine/PoolTable;->calcAimTargetWith(FFFFFFF)F

    move-result v21

    .line 961
    .local v21, "r2":F
    const/high16 v2, 0x3f800000

    cmpl-float v2, v20, v2

    if-ltz v2, :cond_3

    .line 962
    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v23

    .line 965
    :cond_3
    const/high16 v2, 0x3f800000

    cmpl-float v2, v21, v2

    if-ltz v2, :cond_4

    .line 966
    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v23

    :cond_4
    move/from16 v2, v23

    .line 968
    goto :goto_0
.end method

.method private doHit(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolBall;)V
    .locals 12
    .param p1, "ball"    # Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "other"    # Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    .line 816
    iget v9, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    iget v10, p1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    sub-float v3, v9, v10

    .line 817
    .local v3, "dx":F
    iget v9, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    iget v10, p1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    sub-float v4, v9, v10

    .line 818
    .local v4, "dy":F
    mul-float v9, v3, v3

    mul-float v10, v4, v4

    add-float v6, v9, v10

    .line 820
    .local v6, "t":F
    invoke-static {v6}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v5

    .line 821
    .local v5, "p":F
    div-float/2addr v3, v5

    .line 822
    div-float/2addr v4, v5

    .line 824
    iget v9, p1, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    mul-float/2addr v9, v3

    iget v10, p1, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    mul-float/2addr v10, v4

    add-float v7, v9, v10

    .line 825
    .local v7, "vy0":F
    iget v9, p2, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    mul-float/2addr v9, v3

    iget v10, p2, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    mul-float/2addr v10, v4

    add-float v8, v9, v10

    .line 826
    .local v8, "vy1":F
    sub-float v0, v7, v8

    .line 828
    .local v0, "d":F
    const/4 v9, 0x0

    const v10, 0x3a83126f

    mul-float/2addr v10, v0

    const/high16 v11, 0x3f800000

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Lcom/fruitsmobile/basket/audio/SoundManager;->playSound(IF)V

    .line 831
    mul-float v1, v0, v3

    .line 832
    .local v1, "dvx":F
    mul-float v2, v0, v4

    .line 834
    .local v2, "dvy":F
    iget v9, p1, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    sub-float/2addr v9, v1

    iput v9, p1, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    .line 835
    iget v9, p1, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    sub-float/2addr v9, v2

    iput v9, p1, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    .line 837
    iget v9, p2, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    add-float/2addr v9, v1

    iput v9, p2, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    .line 838
    iget v9, p2, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    add-float/2addr v9, v2

    iput v9, p2, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    .line 839
    return-void
.end method

.method private doHit(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolBlocker;)V
    .locals 13
    .param p1, "ball"    # Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "blocker"    # Lcom/forthblue/pool/engine/PoolBlocker;

    .prologue
    const v12, 0x3f4ccccd

    const/4 v11, 0x0

    const/high16 v10, 0x40000000

    .line 769
    iget v7, p1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    sget v8, Lcom/forthblue/pool/engine/PoolTable;->hitx:F

    sub-float v1, v7, v8

    .line 770
    .local v1, "dx":F
    iget v7, p1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    sget v8, Lcom/forthblue/pool/engine/PoolTable;->hity:F

    sub-float v2, v7, v8

    .line 772
    .local v2, "dy":F
    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    invoke-static {v7}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v4

    .line 774
    .local v4, "len":F
    div-float/2addr v1, v4

    .line 775
    div-float/2addr v2, v4

    .line 778
    iget v7, p1, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    mul-float/2addr v7, v1

    iget v8, p1, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    mul-float/2addr v8, v2

    add-float v0, v7, v8

    .line 779
    .local v0, "dot":F
    cmpg-float v7, v0, v11

    if-gez v7, :cond_1

    .line 780
    move v6, v0

    .line 783
    .local v6, "rotv":F
    const/4 v7, 0x1

    const v8, -0x472e48e9

    mul-float/2addr v8, v6

    const/high16 v9, 0x3f800000

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Lcom/fruitsmobile/basket/audio/SoundManager;->playSound(IF)V

    .line 785
    const/high16 v7, -0x40000000

    mul-float/2addr v6, v7

    .line 787
    iget v7, p1, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    mul-float v8, v1, v6

    add-float/2addr v7, v8

    iput v7, p1, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    .line 788
    iget v7, p1, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    mul-float v8, v2, v6

    add-float/2addr v7, v8

    iput v7, p1, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    .line 792
    iget v7, p1, Lcom/forthblue/pool/engine/PoolBall;->w:F

    iget-object v8, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v8}, Lcom/forthblue/pool/rules/PoolRule;->getBallRadius()F

    move-result v8

    mul-float v5, v7, v8

    .line 793
    .local v5, "rdx":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p2, Lcom/forthblue/pool/engine/PoolBlocker;->force:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_0

    .line 794
    cmpl-float v7, v5, v11

    if-lez v7, :cond_2

    iget v7, p2, Lcom/forthblue/pool/engine/PoolBlocker;->force:F

    move v3, v7

    .line 796
    .local v3, "f":F
    :goto_0
    iget v7, p1, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    mul-float v8, v3, v2

    sub-float/2addr v7, v8

    iput v7, p1, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    .line 797
    iget v7, p1, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    mul-float v8, v3, v1

    add-float/2addr v7, v8

    iput v7, p1, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    .line 799
    iget v7, p1, Lcom/forthblue/pool/engine/PoolBall;->w:F

    const v8, 0x3fca62c2

    mul-float/2addr v8, v3

    iget-object v9, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v9}, Lcom/forthblue/pool/rules/PoolRule;->getBallRadius()F

    move-result v9

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p1, Lcom/forthblue/pool/engine/PoolBall;->w:F

    .line 805
    .end local v3    # "f":F
    :cond_0
    iget v7, p1, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    mul-float/2addr v7, v12

    iput v7, p1, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    .line 806
    iget v7, p1, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    mul-float/2addr v7, v12

    iput v7, p1, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    .line 809
    iget v7, p1, Lcom/forthblue/pool/engine/PoolBall;->w:F

    div-float/2addr v7, v10

    iput v7, p1, Lcom/forthblue/pool/engine/PoolBall;->w:F

    .line 810
    iget v7, p1, Lcom/forthblue/pool/engine/PoolBall;->rvx:F

    iget v8, p1, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v10

    iput v7, p1, Lcom/forthblue/pool/engine/PoolBall;->rvx:F

    .line 811
    iget v7, p1, Lcom/forthblue/pool/engine/PoolBall;->rvy:F

    iget v8, p1, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v10

    iput v7, p1, Lcom/forthblue/pool/engine/PoolBall;->rvy:F

    .line 813
    .end local v5    # "rdx":F
    .end local v6    # "rotv":F
    :cond_1
    return-void

    .line 794
    .restart local v5    # "rdx":F
    .restart local v6    # "rotv":F
    :cond_2
    iget v7, p2, Lcom/forthblue/pool/engine/PoolBlocker;->force:F

    neg-float v7, v7

    move v3, v7

    goto :goto_0
.end method

.method private doHit(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 0
    .param p1, "ball"    # Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "hole"    # Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 749
    iput-object p2, p1, Lcom/forthblue/pool/engine/PoolBall;->inHole:Lcom/forthblue/pool/engine/PoolHole;

    .line 750
    return-void
.end method

.method private doRunning(F)V
    .locals 20
    .param p1, "t"    # F

    .prologue
    .line 400
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    move-object/from16 v17, v0

    aget-object v2, v17, v10

    .line 402
    .local v2, "ball":Lcom/forthblue/pool/engine/PoolBall;
    invoke-virtual {v2}, Lcom/forthblue/pool/engine/PoolBall;->isVisible()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object v0, v2

    iget-boolean v0, v0, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 400
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 406
    :cond_1
    move-object v0, v2

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolBall;->inHole:Lcom/forthblue/pool/engine/PoolHole;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 408
    iget-object v7, v2, Lcom/forthblue/pool/engine/PoolBall;->inHole:Lcom/forthblue/pool/engine/PoolHole;

    .line 409
    .local v7, "hole":Lcom/forthblue/pool/engine/PoolHole;
    invoke-virtual {v7}, Lcom/forthblue/pool/engine/PoolHole;->getX()F

    move-result v8

    .line 410
    .local v8, "holex":F
    invoke-virtual {v7}, Lcom/forthblue/pool/engine/PoolHole;->getY()F

    move-result v9

    .line 411
    .local v9, "holey":F
    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v17, v0

    sub-float v3, v8, v17

    .line 412
    .local v3, "dx":F
    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v17, v0

    sub-float v4, v9, v17

    .line 413
    .local v4, "dy":F
    mul-float v17, v3, v3

    mul-float v18, v4, v4

    add-float v14, v17, v18

    .line 415
    .local v14, "tt":F
    invoke-static {v14}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v11

    .line 416
    .local v11, "p":F
    div-float v5, v3, v11

    .line 417
    .local v5, "fx":F
    div-float v6, v4, v11

    .line 419
    .local v6, "fy":F
    const/high16 v17, 0x3f000000

    mul-float v17, v17, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/forthblue/pool/rules/PoolRule;->getHoleGravity()F

    move-result v18

    mul-float v13, v17, v18

    .line 422
    .local v13, "tn":F
    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    move/from16 v17, v0

    mul-float v17, v17, v5

    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    move/from16 v18, v0

    mul-float v18, v18, v6

    add-float v16, v17, v18

    .line 423
    .local v16, "vp":F
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_2

    .line 424
    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    move/from16 v17, v0

    mul-float v18, v16, v5

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    .line 425
    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    move/from16 v17, v0

    mul-float v18, v16, v6

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    .line 429
    :cond_2
    const/high16 v17, 0x3f800000

    const/high16 v18, 0x40a00000

    mul-float v18, v18, p1

    sub-float v12, v17, v18

    .line 430
    .local v12, "pp":F
    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    move/from16 v17, v0

    mul-float v17, v17, v12

    move/from16 v0, v17

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    .line 431
    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    move/from16 v17, v0

    mul-float v17, v17, v12

    move/from16 v0, v17

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    .line 433
    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    move/from16 v17, v0

    mul-float v18, v5, v13

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    .line 434
    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    move/from16 v17, v0

    mul-float v18, v6, v13

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    .line 436
    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    move/from16 v17, v0

    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    move/from16 v18, v0

    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v15, v17, v18

    .line 437
    .local v15, "v":F
    mul-float v17, v15, p1

    mul-float v15, v17, p1

    .line 439
    cmpl-float v17, v15, v14

    if-lez v17, :cond_3

    .line 440
    div-float/2addr v14, v15

    .line 441
    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    move/from16 v17, v0

    mul-float v17, v17, v14

    move/from16 v0, v17

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    .line 442
    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    move/from16 v17, v0

    mul-float v17, v17, v14

    move/from16 v0, v17

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    .line 445
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v5    # "fx":F
    .end local v6    # "fy":F
    .end local v7    # "hole":Lcom/forthblue/pool/engine/PoolHole;
    .end local v8    # "holex":F
    .end local v9    # "holey":F
    .end local v11    # "p":F
    .end local v12    # "pp":F
    .end local v13    # "tn":F
    .end local v14    # "tt":F
    .end local v15    # "v":F
    .end local v16    # "vp":F
    :cond_3
    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v17, v0

    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    move/from16 v18, v0

    mul-float v18, v18, p1

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 446
    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v17, v0

    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    move/from16 v18, v0

    mul-float v18, v18, p1

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object v1, v2

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    goto/16 :goto_1

    .line 448
    .end local v2    # "ball":Lcom/forthblue/pool/engine/PoolBall;
    :cond_4
    return-void
.end method

.method private static getAngleDiff(FF)F
    .locals 3
    .param p0, "angle"    # F
    .param p1, "angle2"    # F

    .prologue
    const/high16 v2, 0x43b40000

    .line 1099
    sub-float v0, p0, p1

    .line 1100
    .local v0, "diff":F
    const/high16 v1, -0x3ccc0000

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 1101
    add-float/2addr v0, v2

    .line 1102
    :cond_0
    const/high16 v1, 0x43340000

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 1103
    sub-float/2addr v0, v2

    .line 1104
    :cond_1
    return v0
.end method

.method private getNextHitTime(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolBall;)F
    .locals 7
    .param p1, "ball"    # Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "other"    # Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    .line 725
    iget v0, p1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    iget v6, p2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    sub-float v1, v0, v6

    .line 726
    .local v1, "x":F
    iget v0, p1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    iget v6, p2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    sub-float v2, v0, v6

    .line 727
    .local v2, "y":F
    iget v0, p1, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    iget v6, p2, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    sub-float v3, v0, v6

    .line 728
    .local v3, "vx":F
    iget v0, p1, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    iget v6, p2, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    sub-float v4, v0, v6

    .line 729
    .local v4, "vy":F
    iget v0, p1, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    iget v6, p2, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    add-float v5, v0, v6

    .local v5, "r":F
    move-object v0, p0

    .line 731
    invoke-direct/range {v0 .. v5}, Lcom/forthblue/pool/engine/PoolTable;->workout(FFFFF)F

    move-result v0

    return v0
.end method

.method private getNextHitTime(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolBlocker;)F
    .locals 21
    .param p1, "ball"    # Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "blocker"    # Lcom/forthblue/pool/engine/PoolBlocker;

    .prologue
    .line 625
    invoke-virtual/range {p2 .. p2}, Lcom/forthblue/pool/engine/PoolBlocker;->getX0()F

    move-result v11

    .line 626
    .local v11, "blockerx0":F
    invoke-virtual/range {p2 .. p2}, Lcom/forthblue/pool/engine/PoolBlocker;->getY0()F

    move-result v13

    .line 627
    .local v13, "blockery0":F
    invoke-virtual/range {p2 .. p2}, Lcom/forthblue/pool/engine/PoolBlocker;->getX1()F

    move-result v12

    .line 628
    .local v12, "blockerx1":F
    invoke-virtual/range {p2 .. p2}, Lcom/forthblue/pool/engine/PoolBlocker;->getY1()F

    move-result v14

    .line 632
    .local v14, "blockery1":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move v1, v0

    sub-float v2, v1, v11

    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move v1, v0

    sub-float v3, v1, v13

    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    move v6, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/forthblue/pool/engine/PoolTable;->workout(FFFFF)F

    move-result v18

    .line 633
    .local v18, "ret":F
    sput v11, Lcom/forthblue/pool/engine/PoolTable;->hitx0:F

    .line 634
    sput v13, Lcom/forthblue/pool/engine/PoolTable;->hity0:F

    .line 635
    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move v1, v0

    sub-float v2, v1, v12

    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move v1, v0

    sub-float v3, v1, v14

    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    move v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    move v6, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/forthblue/pool/engine/PoolTable;->workout(FFFFF)F

    move-result v17

    .line 636
    .local v17, "r1":F
    cmpg-float v1, v17, v18

    if-gez v1, :cond_0

    .line 637
    move/from16 v18, v17

    .line 638
    sput v12, Lcom/forthblue/pool/engine/PoolTable;->hitx0:F

    .line 639
    sput v14, Lcom/forthblue/pool/engine/PoolTable;->hity0:F

    .line 645
    :cond_0
    sub-float v9, v12, v11

    .line 646
    .local v9, "blockerdx":F
    sub-float v10, v14, v13

    .line 649
    .local v10, "blockerdy":F
    mul-float v1, v9, v9

    mul-float v2, v10, v10

    add-float/2addr v1, v2

    invoke-static {v1}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v8

    .line 650
    .local v8, "t":F
    div-float v4, v9, v8

    .line 651
    .local v4, "nx":F
    div-float v5, v10, v8

    .line 653
    .local v5, "ny":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    move v1, v0

    mul-float v19, v5, v1

    .line 654
    .local v19, "tx":F
    neg-float v1, v4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    move v2, v0

    mul-float v20, v1, v2

    .line 656
    .local v20, "ty":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    move v1, v0

    mul-float v1, v1, v19

    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    move v2, v0

    mul-float v2, v2, v20

    add-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 657
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    .line 658
    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    .line 661
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move v1, v0

    add-float v15, v1, v19

    .line 662
    .local v15, "p2x":F
    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move v1, v0

    add-float v16, v1, v20

    .line 664
    .local v16, "p2y":F
    sub-float v2, v11, v15

    sub-float v3, v13, v16

    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    move v7, v0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/forthblue/pool/engine/PoolTable;->workout(FFFFFFF)F

    move-result v17

    .line 665
    cmpg-float v1, v17, v18

    if-gez v1, :cond_2

    .line 666
    move/from16 v18, v17

    .line 667
    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    move v1, v0

    mul-float v1, v1, v17

    add-float/2addr v1, v15

    sput v1, Lcom/forthblue/pool/engine/PoolTable;->hitx0:F

    .line 668
    move-object/from16 v0, p1

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    move v1, v0

    mul-float v1, v1, v17

    add-float v1, v1, v16

    sput v1, Lcom/forthblue/pool/engine/PoolTable;->hity0:F

    .line 671
    :cond_2
    return v18
.end method

.method private getNextHitTime(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolHole;)F
    .locals 8
    .param p1, "ball"    # Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "hole"    # Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 607
    iget v0, p1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    invoke-virtual {p2}, Lcom/forthblue/pool/engine/PoolHole;->getX()F

    move-result v6

    sub-float v1, v0, v6

    .line 608
    .local v1, "x":F
    iget v0, p1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    invoke-virtual {p2}, Lcom/forthblue/pool/engine/PoolHole;->getY()F

    move-result v6

    sub-float v2, v0, v6

    .line 609
    .local v2, "y":F
    iget v3, p1, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    .line 610
    .local v3, "vx":F
    iget v4, p1, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    .line 611
    .local v4, "vy":F
    invoke-virtual {p2}, Lcom/forthblue/pool/engine/PoolHole;->getWidth()F

    move-result v0

    const/high16 v6, 0x3f000000

    mul-float v5, v0, v6

    .line 613
    .local v5, "r":F
    iget-object v0, p1, Lcom/forthblue/pool/engine/PoolBall;->inHole:Lcom/forthblue/pool/engine/PoolHole;

    if-ne p2, v0, :cond_1

    .line 614
    mul-float v0, v1, v1

    mul-float v6, v2, v2

    add-float/2addr v0, v6

    mul-float v6, v5, v5

    const v7, 0x39d1b717

    mul-float/2addr v6, v7

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_0

    .line 616
    const/4 v0, 0x0

    .line 620
    .end local v5    # "r":F
    :goto_0
    return v0

    .line 618
    .restart local v5    # "r":F
    :cond_0
    const v0, 0x3ca3d70a

    mul-float/2addr v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/forthblue/pool/engine/PoolTable;->workout(FFFFF)F

    .end local v5    # "r":F
    move-result v0

    goto :goto_0

    .restart local v5    # "r":F
    :cond_1
    move-object v0, p0

    .line 620
    invoke-direct/range {v0 .. v5}, Lcom/forthblue/pool/engine/PoolTable;->workout(FFFFF)F

    move-result v0

    goto :goto_0
.end method

.method private getNextHitTime(ZF)F
    .locals 12
    .param p1, "forceAll"    # Z
    .param p2, "lasttime"    # F

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/high16 v8, 0x45610000

    const/4 v7, 0x0

    .line 459
    if-eqz p1, :cond_d

    .line 460
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    array-length v3, v3

    if-ge v0, v3, :cond_13

    .line 461
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/forthblue/pool/engine/PoolBall;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v3, :cond_5

    .line 462
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 463
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v7

    aget-object v3, v3, v0

    sget-object v4, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v4, v4, v7

    aget-object v4, v4, v1

    aput v8, v4, v0

    aput v8, v3, v1

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 465
    :cond_1
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 466
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v9

    aget-object v3, v3, v0

    aput v8, v3, v1

    .line 465
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 468
    :cond_2
    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 469
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v10

    aget-object v3, v3, v0

    aput v8, v3, v1

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 471
    :cond_3
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v11

    aget-object v3, v3, v0

    aput v8, v3, v7

    .line 460
    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    .end local v1    # "j":I
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_5
    if-ge v1, v0, :cond_8

    .line 475
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/forthblue/pool/engine/PoolBall;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v3, :cond_7

    .line 476
    :cond_6
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v7

    aget-object v3, v3, v0

    sget-object v4, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v4, v4, v7

    aget-object v4, v4, v1

    aput v8, v4, v0

    aput v8, v3, v1

    .line 474
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 478
    :cond_7
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v7

    aget-object v3, v3, v0

    sget-object v4, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v4, v4, v7

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v6, v6, v1

    invoke-direct {p0, v5, v6}, Lcom/forthblue/pool/engine/PoolTable;->getNextHitTime(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolBall;)F

    move-result v5

    aput v5, v4, v0

    aput v5, v3, v1

    goto :goto_6

    .line 481
    :cond_8
    const/4 v1, 0x0

    :goto_7
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    array-length v3, v3

    if-ge v1, v3, :cond_a

    .line 482
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/forthblue/pool/engine/PoolBlocker;->isVisible()Z

    move-result v3

    if-nez v3, :cond_9

    .line 483
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v9

    aget-object v3, v3, v0

    aput v8, v3, v1

    .line 481
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 485
    :cond_9
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v9

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    aget-object v5, v5, v1

    invoke-direct {p0, v4, v5}, Lcom/forthblue/pool/engine/PoolTable;->getNextHitTime(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolBlocker;)F

    move-result v4

    aput v4, v3, v1

    .line 486
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    const/4 v4, 0x4

    aget-object v3, v3, v4

    aget-object v3, v3, v0

    sget v4, Lcom/forthblue/pool/engine/PoolTable;->hitx0:F

    aput v4, v3, v1

    .line 487
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    const/4 v4, 0x5

    aget-object v3, v3, v4

    aget-object v3, v3, v0

    sget v4, Lcom/forthblue/pool/engine/PoolTable;->hity0:F

    aput v4, v3, v1

    goto :goto_8

    .line 490
    :cond_a
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/forthblue/pool/engine/PoolBall;->inHole:Lcom/forthblue/pool/engine/PoolHole;

    if-eqz v3, :cond_b

    .line 491
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v11

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/forthblue/pool/engine/PoolBall;->inHole:Lcom/forthblue/pool/engine/PoolHole;

    invoke-direct {p0, v4, v5}, Lcom/forthblue/pool/engine/PoolTable;->getNextHitTime(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolHole;)F

    move-result v4

    aput v4, v3, v7

    goto/16 :goto_4

    .line 493
    :cond_b
    const/4 v1, 0x0

    :goto_9
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 494
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/forthblue/pool/engine/PoolHole;->isVisible()Z

    move-result v3

    if-nez v3, :cond_c

    .line 495
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v10

    aget-object v3, v3, v0

    aput v8, v3, v1

    .line 493
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 497
    :cond_c
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v10

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    aget-object v5, v5, v1

    invoke-direct {p0, v4, v5}, Lcom/forthblue/pool/engine/PoolTable;->getNextHitTime(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolHole;)F

    move-result v4

    aput v4, v3, v1

    goto :goto_a

    .line 503
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    array-length v3, v3

    if-ge v0, v3, :cond_12

    .line 504
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_c
    if-ge v1, v0, :cond_e

    .line 505
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v7

    aget-object v3, v3, v0

    aget v4, v3, v1

    sub-float/2addr v4, p2

    aput v4, v3, v1

    .line 504
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 507
    :cond_e
    const/4 v1, 0x0

    :goto_d
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    array-length v3, v3

    if-ge v1, v3, :cond_f

    .line 508
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v9

    aget-object v3, v3, v0

    aget v4, v3, v1

    sub-float/2addr v4, p2

    aput v4, v3, v1

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 510
    :cond_f
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/forthblue/pool/engine/PoolBall;->inHole:Lcom/forthblue/pool/engine/PoolHole;

    if-eqz v3, :cond_11

    .line 511
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v11

    aget-object v3, v3, v0

    aget v4, v3, v7

    sub-float/2addr v4, p2

    aput v4, v3, v7

    .line 503
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 513
    :cond_11
    const/4 v1, 0x0

    :goto_e
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    array-length v3, v3

    if-ge v1, v3, :cond_10

    .line 514
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v10

    aget-object v3, v3, v0

    aget v4, v3, v1

    sub-float/2addr v4, p2

    aput v4, v3, v1

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 519
    .end local v1    # "j":I
    :cond_12
    sget v3, Lcom/forthblue/pool/engine/PoolTable;->hittype:I

    if-nez v3, :cond_15

    .line 521
    sget v3, Lcom/forthblue/pool/engine/PoolTable;->hita:I

    sget v4, Lcom/forthblue/pool/engine/PoolTable;->hitb:I

    invoke-direct {p0, v3, v4}, Lcom/forthblue/pool/engine/PoolTable;->getNextHitTime(II)V

    .line 522
    sget v3, Lcom/forthblue/pool/engine/PoolTable;->hitb:I

    sget v4, Lcom/forthblue/pool/engine/PoolTable;->hita:I

    invoke-direct {p0, v3, v4}, Lcom/forthblue/pool/engine/PoolTable;->getNextHitTime(II)V

    .line 523
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v7

    sget v4, Lcom/forthblue/pool/engine/PoolTable;->hita:I

    aget-object v3, v3, v4

    sget v4, Lcom/forthblue/pool/engine/PoolTable;->hitb:I

    sget-object v5, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v5, v5, v7

    sget v6, Lcom/forthblue/pool/engine/PoolTable;->hitb:I

    aget-object v5, v5, v6

    sget v6, Lcom/forthblue/pool/engine/PoolTable;->hita:I

    aput v8, v5, v6

    aput v8, v3, v4

    .line 530
    :cond_13
    :goto_f
    const/high16 v2, 0x45610000

    .line 531
    .local v2, "ret":F
    const/4 v0, 0x0

    :goto_10
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    array-length v3, v3

    if-ge v0, v3, :cond_1c

    .line 532
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_11
    if-ge v1, v0, :cond_16

    .line 533
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v7

    aget-object v3, v3, v0

    aget v3, v3, v1

    cmpg-float v3, v3, v2

    if-gez v3, :cond_14

    .line 534
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v7

    aget-object v3, v3, v0

    aget v2, v3, v1

    .line 535
    sput v7, Lcom/forthblue/pool/engine/PoolTable;->hittype:I

    .line 536
    sput v0, Lcom/forthblue/pool/engine/PoolTable;->hita:I

    .line 537
    sput v1, Lcom/forthblue/pool/engine/PoolTable;->hitb:I

    .line 532
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 525
    .end local v1    # "j":I
    .end local v2    # "ret":F
    :cond_15
    sget v3, Lcom/forthblue/pool/engine/PoolTable;->hita:I

    const/4 v4, -0x1

    invoke-direct {p0, v3, v4}, Lcom/forthblue/pool/engine/PoolTable;->getNextHitTime(II)V

    .line 526
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    sget v4, Lcom/forthblue/pool/engine/PoolTable;->hittype:I

    aget-object v3, v3, v4

    sget v4, Lcom/forthblue/pool/engine/PoolTable;->hita:I

    aget-object v3, v3, v4

    sget v4, Lcom/forthblue/pool/engine/PoolTable;->hitb:I

    aput v8, v3, v4

    goto :goto_f

    .line 540
    .restart local v1    # "j":I
    .restart local v2    # "ret":F
    :cond_16
    const/4 v1, 0x0

    :goto_12
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    array-length v3, v3

    if-ge v1, v3, :cond_18

    .line 541
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v9

    aget-object v3, v3, v0

    aget v3, v3, v1

    cmpg-float v3, v3, v2

    if-gez v3, :cond_17

    .line 542
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v9

    aget-object v3, v3, v0

    aget v2, v3, v1

    .line 543
    sput v9, Lcom/forthblue/pool/engine/PoolTable;->hittype:I

    .line 544
    sput v0, Lcom/forthblue/pool/engine/PoolTable;->hita:I

    .line 545
    sput v1, Lcom/forthblue/pool/engine/PoolTable;->hitb:I

    .line 546
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    const/4 v4, 0x4

    aget-object v3, v3, v4

    aget-object v3, v3, v0

    aget v3, v3, v1

    sput v3, Lcom/forthblue/pool/engine/PoolTable;->hitx:F

    .line 547
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    const/4 v4, 0x5

    aget-object v3, v3, v4

    aget-object v3, v3, v0

    aget v3, v3, v1

    sput v3, Lcom/forthblue/pool/engine/PoolTable;->hity:F

    .line 540
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 550
    :cond_18
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/forthblue/pool/engine/PoolBall;->inHole:Lcom/forthblue/pool/engine/PoolHole;

    if-eqz v3, :cond_1a

    .line 551
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v11

    aget-object v3, v3, v0

    aget v3, v3, v7

    cmpg-float v3, v3, v2

    if-gez v3, :cond_19

    .line 552
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v11

    aget-object v3, v3, v0

    aget v2, v3, v7

    .line 553
    sput v11, Lcom/forthblue/pool/engine/PoolTable;->hittype:I

    .line 554
    sput v0, Lcom/forthblue/pool/engine/PoolTable;->hita:I

    .line 555
    sput v7, Lcom/forthblue/pool/engine/PoolTable;->hitb:I

    .line 531
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_10

    .line 558
    :cond_1a
    const/4 v1, 0x0

    :goto_13
    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    array-length v3, v3

    if-ge v1, v3, :cond_19

    .line 559
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v10

    aget-object v3, v3, v0

    aget v3, v3, v1

    cmpg-float v3, v3, v2

    if-gez v3, :cond_1b

    .line 560
    sget-object v3, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v3, v3, v10

    aget-object v3, v3, v0

    aget v2, v3, v1

    .line 561
    sput v10, Lcom/forthblue/pool/engine/PoolTable;->hittype:I

    .line 562
    sput v0, Lcom/forthblue/pool/engine/PoolTable;->hita:I

    .line 563
    sput v1, Lcom/forthblue/pool/engine/PoolTable;->hitb:I

    .line 558
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 569
    .end local v1    # "j":I
    :cond_1c
    return v2
.end method

.method private getNextHitTime(II)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "hitb"    # I

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x45610000

    const/4 v5, 0x0

    .line 573
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 578
    if-eq v0, p2, :cond_2

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/forthblue/pool/engine/PoolBall;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v1, :cond_3

    .line 579
    :cond_2
    sget-object v1, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v1, v1, v5

    aget-object v1, v1, p1

    sget-object v2, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v2, v2, v5

    aget-object v2, v2, v0

    aput v6, v2, p1

    aput v6, v1, v0

    .line 577
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 581
    :cond_3
    sget-object v1, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v1, v1, v5

    aget-object v1, v1, p1

    sget-object v2, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v2, v2, v5

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v4, v4, v0

    invoke-direct {p0, v3, v4}, Lcom/forthblue/pool/engine/PoolTable;->getNextHitTime(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolBall;)F

    move-result v3

    aput v3, v2, p1

    aput v3, v1, v0

    goto :goto_2

    .line 584
    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 585
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/forthblue/pool/engine/PoolBlocker;->isVisible()Z

    move-result v1

    if-nez v1, :cond_5

    .line 586
    sget-object v1, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v1, v1, v7

    aget-object v1, v1, p1

    aput v6, v1, v0

    .line 584
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 588
    :cond_5
    sget-object v1, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v1, v1, v7

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/forthblue/pool/engine/PoolTable;->getNextHitTime(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolBlocker;)F

    move-result v2

    aput v2, v1, v0

    .line 589
    sget-object v1, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    const/4 v2, 0x4

    aget-object v1, v1, v2

    aget-object v1, v1, p1

    sget v2, Lcom/forthblue/pool/engine/PoolTable;->hitx0:F

    aput v2, v1, v0

    .line 590
    sget-object v1, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    const/4 v2, 0x5

    aget-object v1, v1, v2

    aget-object v1, v1, p1

    sget v2, Lcom/forthblue/pool/engine/PoolTable;->hity0:F

    aput v2, v1, v0

    goto :goto_4

    .line 593
    :cond_6
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/forthblue/pool/engine/PoolBall;->inHole:Lcom/forthblue/pool/engine/PoolHole;

    if-eqz v1, :cond_7

    .line 594
    sget-object v1, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    const/4 v2, 0x3

    aget-object v1, v1, v2

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/forthblue/pool/engine/PoolBall;->inHole:Lcom/forthblue/pool/engine/PoolHole;

    invoke-direct {p0, v2, v3}, Lcom/forthblue/pool/engine/PoolTable;->getNextHitTime(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolHole;)F

    move-result v2

    aput v2, v1, v5

    goto/16 :goto_0

    .line 596
    :cond_7
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 597
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/forthblue/pool/engine/PoolHole;->isVisible()Z

    move-result v1

    if-nez v1, :cond_8

    .line 598
    sget-object v1, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    aget-object v1, v1, v7

    aget-object v1, v1, p1

    aput v6, v1, v0

    .line 596
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 600
    :cond_8
    sget-object v1, Lcom/forthblue/pool/engine/PoolTable;->nextHitTime:[[[F

    const/4 v2, 0x2

    aget-object v1, v1, v2

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/forthblue/pool/engine/PoolTable;->getNextHitTime(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolHole;)F

    move-result v2

    aput v2, v1, v0

    goto :goto_6
.end method

.method private onPotBall(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 4
    .param p1, "ball"    # Lcom/forthblue/pool/engine/PoolBall;
    .param p2, "hole"    # Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 753
    invoke-virtual {p2}, Lcom/forthblue/pool/engine/PoolHole;->getX()F

    move-result v0

    iput v0, p1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 754
    invoke-virtual {p2}, Lcom/forthblue/pool/engine/PoolHole;->getY()F

    move-result v0

    iput v0, p1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    .line 756
    invoke-virtual {p1}, Lcom/forthblue/pool/engine/PoolBall;->reset()V

    .line 757
    invoke-virtual {p1}, Lcom/forthblue/pool/engine/PoolBall;->prepareDisappear()V

    .line 758
    const/4 v0, 0x2

    const/high16 v1, 0x3f800000

    invoke-static {v0, v1}, Lcom/fruitsmobile/basket/audio/SoundManager;->playSound(IF)V

    .line 760
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v2, p1, Lcom/forthblue/pool/engine/PoolBall;->id:I

    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/forthblue/pool/rules/PoolRule;->onPotBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;I[Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolHole;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->parentLayer:Lcom/fruitsmobile/basket/Layer;

    check-cast v0, Lcom/forthblue/pool/ui/GameScene;

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v1, v1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    invoke-virtual {v0, v1, p1}, Lcom/forthblue/pool/ui/GameScene;->onPotBall(ILcom/forthblue/pool/engine/PoolBall;)V

    .line 763
    :cond_0
    iget v0, p1, Lcom/forthblue/pool/engine/PoolBall;->id:I

    if-eqz v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->parentLayer:Lcom/fruitsmobile/basket/Layer;

    check-cast v0, Lcom/forthblue/pool/ui/GameScene;

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v1, v1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->combo:I

    iget v2, p1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    iget v3, p1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/forthblue/pool/ui/GameScene;->onBallIntoHole(IFF)V

    .line 766
    :cond_1
    return-void
.end method

.method private processHit()V
    .locals 6

    .prologue
    .line 735
    sget v0, Lcom/forthblue/pool/engine/PoolTable;->hittype:I

    if-nez v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    sget v1, Lcom/forthblue/pool/engine/PoolTable;->hita:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    sget v2, Lcom/forthblue/pool/engine/PoolTable;->hitb:I

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/forthblue/pool/engine/PoolTable;->doHit(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolBall;)V

    .line 737
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    sget v2, Lcom/forthblue/pool/engine/PoolTable;->hita:I

    sget v3, Lcom/forthblue/pool/engine/PoolTable;->hitb:I

    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/forthblue/pool/rules/PoolRule;->onHitBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;II[Lcom/forthblue/pool/engine/PoolBall;)V

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    sget v0, Lcom/forthblue/pool/engine/PoolTable;->hittype:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 739
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    sget v1, Lcom/forthblue/pool/engine/PoolTable;->hita:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    sget v2, Lcom/forthblue/pool/engine/PoolTable;->hitb:I

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/forthblue/pool/engine/PoolTable;->doHit(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolBlocker;)V

    .line 740
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    sget v2, Lcom/forthblue/pool/engine/PoolTable;->hita:I

    sget v3, Lcom/forthblue/pool/engine/PoolTable;->hitb:I

    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    iget-object v5, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    invoke-interface/range {v0 .. v5}, Lcom/forthblue/pool/rules/PoolRule;->onHitBlocker(Lcom/forthblue/pool/rules/PoolRule$RoundState;II[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolBlocker;)V

    goto :goto_0

    .line 741
    :cond_2
    sget v0, Lcom/forthblue/pool/engine/PoolTable;->hittype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 742
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    sget v1, Lcom/forthblue/pool/engine/PoolTable;->hita:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    sget v2, Lcom/forthblue/pool/engine/PoolTable;->hitb:I

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/forthblue/pool/engine/PoolTable;->doHit(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolHole;)V

    goto :goto_0

    .line 743
    :cond_3
    sget v0, Lcom/forthblue/pool/engine/PoolTable;->hittype:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 744
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    sget v1, Lcom/forthblue/pool/engine/PoolTable;->hita:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    sget v2, Lcom/forthblue/pool/engine/PoolTable;->hita:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/forthblue/pool/engine/PoolBall;->inHole:Lcom/forthblue/pool/engine/PoolHole;

    invoke-direct {p0, v0, v1}, Lcom/forthblue/pool/engine/PoolTable;->onPotBall(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolHole;)V

    goto :goto_0
.end method

.method private processRunning(F)V
    .locals 4
    .param p1, "time"    # F

    .prologue
    .line 381
    const/4 v3, -0x1

    sput v3, Lcom/forthblue/pool/engine/PoolTable;->hittype:I

    .line 382
    const/4 v0, 0x1

    .line 383
    .local v0, "forceAll":Z
    const/4 v1, 0x0

    .line 385
    .local v1, "lastt":F
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/forthblue/pool/engine/PoolTable;->getNextHitTime(ZF)F

    move-result v2

    .line 386
    .local v2, "nextt":F
    const/4 v0, 0x0

    .line 387
    cmpl-float v3, v2, p1

    if-ltz v3, :cond_0

    .line 388
    invoke-direct {p0, p1}, Lcom/forthblue/pool/engine/PoolTable;->doRunning(F)V

    .line 397
    return-void

    .line 391
    :cond_0
    sub-float/2addr p1, v2

    .line 392
    const v3, 0x3a83126f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 393
    invoke-direct {p0, v2}, Lcom/forthblue/pool/engine/PoolTable;->doRunning(F)V

    .line 394
    :cond_1
    invoke-direct {p0}, Lcom/forthblue/pool/engine/PoolTable;->processHit()V

    .line 395
    move v1, v2

    .line 396
    goto :goto_0
.end method

.method private startAI()V
    .locals 5

    .prologue
    .line 1108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/forthblue/pool/engine/PoolTable;->bAIActived:Z

    .line 1109
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v0}, Lcom/forthblue/pool/rules/PoolRule;->getAI()Lcom/forthblue/pool/engine/PoolAI;

    move-result-object v0

    iput-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->ai:Lcom/forthblue/pool/engine/PoolAI;

    .line 1110
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v0, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->ai:Lcom/forthblue/pool/engine/PoolAI;

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/forthblue/pool/engine/PoolAI;->thinkFreeball(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolBlocker;[Lcom/forthblue/pool/engine/PoolHole;)V

    .line 1115
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/forthblue/pool/engine/PoolTable;->ai_state:I

    .line 1116
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/forthblue/pool/engine/PoolTable;->ai_restTime:J

    .line 1118
    const/4 v0, 0x0

    iput v0, p0, Lcom/forthblue/pool/engine/PoolTable;->aistrength:F

    .line 1119
    return-void

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->ai:Lcom/forthblue/pool/engine/PoolAI;

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/forthblue/pool/engine/PoolAI;->think(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolBlocker;[Lcom/forthblue/pool/engine/PoolHole;)V

    goto :goto_0
.end method

.method private updateRunning(J)V
    .locals 19
    .param p1, "timeSpan"    # J

    .prologue
    .line 272
    move-wide/from16 v0, p1

    long-to-float v0, v0

    move v13, v0

    const v14, 0x3a83126f

    mul-float v12, v13, v14

    .line 274
    .local v12, "t":F
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/forthblue/pool/engine/PoolTable;->processRunning(F)V

    .line 276
    const/4 v11, 0x0

    .line 278
    .local v11, "stillRunning":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    move-object v13, v0

    array-length v13, v13

    if-ge v4, v13, :cond_d

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    move-object v13, v0

    aget-object v2, v13, v4

    .line 280
    .local v2, "ball":Lcom/forthblue/pool/engine/PoolBall;
    invoke-virtual {v2}, Lcom/forthblue/pool/engine/PoolBall;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_0

    iget-boolean v13, v2, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v13, :cond_2

    .line 283
    :cond_0
    invoke-virtual {v2}, Lcom/forthblue/pool/engine/PoolBall;->isVisible()Z

    move-result v13

    if-eqz v13, :cond_1

    iget-boolean v13, v2, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v13, :cond_1

    .line 284
    const/4 v11, 0x1

    .line 278
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 288
    :cond_2
    iget-object v13, v2, Lcom/forthblue/pool/engine/PoolBall;->inHole:Lcom/forthblue/pool/engine/PoolHole;

    if-eqz v13, :cond_3

    .line 290
    const/4 v11, 0x1

    .line 294
    :cond_3
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->rvx:F

    iget v14, v2, Lcom/forthblue/pool/engine/PoolBall;->rvx:F

    mul-float/2addr v13, v14

    iget v14, v2, Lcom/forthblue/pool/engine/PoolBall;->rvy:F

    iget v15, v2, Lcom/forthblue/pool/engine/PoolBall;->rvy:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    invoke-static {v13}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v10

    .line 295
    .local v10, "rv":F
    const/high16 v13, 0x3f800000

    cmpl-float v13, v10, v13

    if-lez v13, :cond_4

    .line 296
    sget-object v13, Lcom/forthblue/pool/engine/PoolTable;->tempQuat:Lcom/fruitsmobile/basket/math/Quaternion;

    mul-float v14, v10, v12

    iget v15, v2, Lcom/forthblue/pool/engine/PoolBall;->rvy:F

    move-object v0, v2

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->rvx:F

    move/from16 v16, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/fruitsmobile/basket/math/Quaternion;->loadWith(FFFF)V

    .line 297
    sget-object v13, Lcom/forthblue/pool/engine/PoolTable;->tempQuat:Lcom/fruitsmobile/basket/math/Quaternion;

    iget-object v14, v2, Lcom/forthblue/pool/engine/PoolBall;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    invoke-virtual {v13, v14}, Lcom/fruitsmobile/basket/math/Quaternion;->mulWith(Lcom/fruitsmobile/basket/math/Quaternion;)V

    .line 298
    iget-object v13, v2, Lcom/forthblue/pool/engine/PoolBall;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    sget-object v14, Lcom/forthblue/pool/engine/PoolTable;->tempQuat:Lcom/fruitsmobile/basket/math/Quaternion;

    invoke-virtual {v13, v14}, Lcom/fruitsmobile/basket/math/Quaternion;->copyFrom(Lcom/fruitsmobile/basket/math/Quaternion;)V

    .line 301
    :cond_4
    sget-object v13, Lcom/forthblue/pool/engine/PoolTable;->tempQuat:Lcom/fruitsmobile/basket/math/Quaternion;

    iget v14, v2, Lcom/forthblue/pool/engine/PoolBall;->w:F

    mul-float/2addr v14, v12

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000

    invoke-virtual/range {v13 .. v17}, Lcom/fruitsmobile/basket/math/Quaternion;->loadWith(FFFF)V

    .line 302
    sget-object v13, Lcom/forthblue/pool/engine/PoolTable;->tempQuat:Lcom/fruitsmobile/basket/math/Quaternion;

    iget-object v14, v2, Lcom/forthblue/pool/engine/PoolBall;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    invoke-virtual {v13, v14}, Lcom/fruitsmobile/basket/math/Quaternion;->mulWith(Lcom/fruitsmobile/basket/math/Quaternion;)V

    .line 303
    iget-object v13, v2, Lcom/forthblue/pool/engine/PoolBall;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    sget-object v14, Lcom/forthblue/pool/engine/PoolTable;->tempQuat:Lcom/fruitsmobile/basket/math/Quaternion;

    invoke-virtual {v13, v14}, Lcom/fruitsmobile/basket/math/Quaternion;->copyFrom(Lcom/fruitsmobile/basket/math/Quaternion;)V

    .line 306
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    float-to-double v13, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v15, v0

    invoke-interface {v15}, Lcom/forthblue/pool/rules/PoolRule;->getTableWidth()F

    move-result v15

    float-to-double v15, v15

    const-wide/high16 v17, -0x4020000000000000L

    mul-double v15, v15, v17

    cmpg-double v13, v13, v15

    if-gez v13, :cond_5

    .line 307
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v14, v0

    invoke-interface {v14}, Lcom/forthblue/pool/rules/PoolRule;->getTableWidth()F

    move-result v14

    add-float/2addr v13, v14

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 309
    :cond_5
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    float-to-double v13, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v15, v0

    invoke-interface {v15}, Lcom/forthblue/pool/rules/PoolRule;->getTableHeight()F

    move-result v15

    float-to-double v15, v15

    const-wide/high16 v17, -0x4020000000000000L

    mul-double v15, v15, v17

    cmpg-double v13, v13, v15

    if-gez v13, :cond_6

    .line 310
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v14, v0

    invoke-interface {v14}, Lcom/forthblue/pool/rules/PoolRule;->getTableHeight()F

    move-result v14

    add-float/2addr v13, v14

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 312
    :cond_6
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    float-to-double v13, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v15, v0

    invoke-interface {v15}, Lcom/forthblue/pool/rules/PoolRule;->getTableWidth()F

    move-result v15

    float-to-double v15, v15

    const-wide/high16 v17, 0x3fe0000000000000L

    mul-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-lez v13, :cond_7

    .line 313
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v14, v0

    invoke-interface {v14}, Lcom/forthblue/pool/rules/PoolRule;->getTableWidth()F

    move-result v14

    sub-float/2addr v13, v14

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 315
    :cond_7
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    float-to-double v13, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v15, v0

    invoke-interface {v15}, Lcom/forthblue/pool/rules/PoolRule;->getTableHeight()F

    move-result v15

    float-to-double v15, v15

    const-wide/high16 v17, 0x3fe0000000000000L

    mul-double v15, v15, v17

    cmpl-double v13, v13, v15

    if-lez v13, :cond_8

    .line 316
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v14, v0

    invoke-interface {v14}, Lcom/forthblue/pool/rules/PoolRule;->getTableHeight()F

    move-result v14

    sub-float/2addr v13, v14

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 320
    :cond_8
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->rvx:F

    iget v14, v2, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    add-float v5, v13, v14

    .line 321
    .local v5, "pvx":F
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->rvy:F

    iget v14, v2, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    add-float v6, v13, v14

    .line 323
    .local v6, "pvy":F
    mul-float v13, v5, v5

    mul-float v14, v6, v6

    add-float/2addr v13, v14

    invoke-static {v13}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v3

    .line 324
    .local v3, "fp":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v13, v0

    invoke-interface {v13}, Lcom/forthblue/pool/rules/PoolRule;->getForce()F

    move-result v13

    mul-float/2addr v13, v12

    cmpl-float v13, v3, v13

    if-lez v13, :cond_9

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v13, v0

    invoke-interface {v13}, Lcom/forthblue/pool/rules/PoolRule;->getForce()F

    move-result v13

    div-float v9, v13, v3

    .line 326
    .local v9, "r":F
    mul-float/2addr v5, v9

    .line 327
    mul-float/2addr v6, v9

    .line 328
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    mul-float v14, v5, v12

    sub-float/2addr v13, v14

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    .line 329
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    mul-float v14, v6, v12

    sub-float/2addr v13, v14

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    .line 331
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->rvx:F

    mul-float v14, v5, v12

    const v15, 0x3fca62c2

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->rvx:F

    .line 332
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->rvy:F

    mul-float v14, v6, v12

    const v15, 0x3fca62c2

    mul-float/2addr v14, v15

    sub-float/2addr v13, v14

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->rvy:F

    .line 333
    const/4 v11, 0x1

    .line 340
    .end local v9    # "r":F
    :goto_2
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->w:F

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v14, v0

    invoke-interface {v14}, Lcom/forthblue/pool/rules/PoolRule;->getForce()F

    move-result v14

    const v15, 0x3e19999a

    mul-float/2addr v14, v15

    mul-float/2addr v14, v12

    cmpl-float v13, v13, v14

    if-lez v13, :cond_b

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v13, v0

    invoke-interface {v13}, Lcom/forthblue/pool/rules/PoolRule;->getForce()F

    move-result v13

    const v14, 0x3e19999a

    mul-float v9, v13, v14

    .line 342
    .restart local v9    # "r":F
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->w:F

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_a

    .line 343
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->w:F

    mul-float v14, v9, v12

    add-float/2addr v13, v14

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->w:F

    .line 346
    :goto_3
    const/4 v11, 0x1

    .line 352
    .end local v9    # "r":F
    :goto_4
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    iget v14, v2, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    mul-float/2addr v13, v14

    iget v14, v2, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    iget v15, v2, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    invoke-static {v13}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v3

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v13, v0

    invoke-interface {v13}, Lcom/forthblue/pool/rules/PoolRule;->getRollForce()F

    move-result v13

    mul-float/2addr v13, v12

    cmpl-float v13, v3, v13

    if-lez v13, :cond_c

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v13, v0

    invoke-interface {v13}, Lcom/forthblue/pool/rules/PoolRule;->getRollForce()F

    move-result v13

    div-float v9, v13, v3

    .line 355
    .restart local v9    # "r":F
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    mul-float/2addr v13, v9

    mul-float v7, v13, v12

    .line 356
    .local v7, "px":F
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    mul-float/2addr v13, v9

    mul-float v8, v13, v12

    .line 358
    .local v8, "py":F
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    sub-float/2addr v13, v7

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    .line 359
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    sub-float/2addr v13, v8

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    .line 360
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->rvx:F

    add-float/2addr v13, v7

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->rvx:F

    .line 361
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->rvy:F

    add-float/2addr v13, v8

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->rvy:F

    .line 362
    const/4 v11, 0x1

    .line 370
    .end local v7    # "px":F
    .end local v8    # "py":F
    .end local v9    # "r":F
    :goto_5
    iget-object v13, v2, Lcom/forthblue/pool/engine/PoolBall;->quat:Lcom/fruitsmobile/basket/math/Quaternion;

    invoke-virtual {v13}, Lcom/fruitsmobile/basket/math/Quaternion;->normalize()V

    goto/16 :goto_1

    .line 335
    :cond_9
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    neg-float v13, v13

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->rvx:F

    .line 336
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    neg-float v13, v13

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->rvy:F

    goto/16 :goto_2

    .line 345
    .restart local v9    # "r":F
    :cond_a
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->w:F

    mul-float v14, v9, v12

    sub-float/2addr v13, v14

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->w:F

    goto :goto_3

    .line 348
    .end local v9    # "r":F
    :cond_b
    const/4 v13, 0x0

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->w:F

    goto :goto_4

    .line 364
    :cond_c
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->rvx:F

    iget v14, v2, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    add-float/2addr v13, v14

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->rvx:F

    .line 365
    iget v13, v2, Lcom/forthblue/pool/engine/PoolBall;->rvy:F

    iget v14, v2, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    add-float/2addr v13, v14

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->rvy:F

    .line 366
    const/4 v13, 0x0

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    .line 367
    const/4 v13, 0x0

    iput v13, v2, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    goto :goto_5

    .line 372
    .end local v2    # "ball":Lcom/forthblue/pool/engine/PoolBall;
    .end local v3    # "fp":F
    .end local v5    # "pvx":F
    .end local v6    # "pvy":F
    .end local v10    # "rv":F
    :cond_d
    if-nez v11, :cond_e

    .line 373
    const-string v13, "Pool"

    const-string v14, "Stopped"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    move-object/from16 v16, v0

    invoke-interface/range {v13 .. v16}, Lcom/forthblue/pool/rules/PoolRule;->onRoundOver(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V

    .line 376
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/forthblue/pool/engine/PoolTable;->updateShadow()V

    .line 377
    return-void
.end method

.method private updateShadow()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 136
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 137
    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v0, v2, v1

    .line 138
    .local v0, "ball":Lcom/forthblue/pool/engine/PoolBall;
    invoke-virtual {v0}, Lcom/forthblue/pool/engine/PoolBall;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v2, :cond_3

    .line 139
    :cond_0
    iget-object v2, v0, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->shadows:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    iget-object v3, v0, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v3, v3, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->id:I

    invoke-virtual {v2, v3}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->deleteAt(I)V

    .line 141
    iput-object v6, v0, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    .line 144
    :cond_1
    iget-object v2, v0, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    if-eqz v2, :cond_2

    .line 145
    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->highlights:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    iget-object v3, v0, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v3, v3, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->id:I

    invoke-virtual {v2, v3}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->deleteAt(I)V

    .line 146
    iput-object v6, v0, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    .line 136
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_3
    iget-object v2, v0, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    if-nez v2, :cond_4

    .line 151
    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->shadows:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    invoke-virtual {v2}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->alloc()Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-result-object v2

    iput-object v2, v0, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    .line 152
    iget-object v2, v0, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget-object v3, v0, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v4, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    const/high16 v5, 0x3fa00000

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusy:F

    iput v4, v2, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    .line 154
    :cond_4
    iget-object v2, v0, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    if-nez v2, :cond_5

    .line 155
    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->highlights:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    invoke-virtual {v2}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->alloc()Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-result-object v2

    iput-object v2, v0, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    .line 156
    iget-object v2, v0, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget-object v3, v0, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v4, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    iput v4, v3, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusy:F

    iput v4, v2, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    .line 157
    iget-object v2, v0, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    const v3, 0x3f4ccccd

    iput v3, v2, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    .line 159
    :cond_5
    iget-object v2, v0, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v3, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    iget v4, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    const v5, 0x3e4ccccd

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->x:F

    .line 160
    iget-object v2, v0, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v3, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    iget v4, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    const/high16 v5, 0x3e800000

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->y:F

    .line 161
    iget-object v2, v0, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v3, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    iput v3, v2, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->x:F

    .line 162
    iget-object v2, v0, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v3, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    iput v3, v2, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->y:F

    goto :goto_1

    .line 165
    .end local v0    # "ball":Lcom/forthblue/pool/engine/PoolBall;
    :cond_6
    return-void
.end method

.method private updateTargetSign()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 78
    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    iget-object v5, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    invoke-interface {v4, v5}, Lcom/forthblue/pool/rules/PoolRule;->showTargetSign(Lcom/forthblue/pool/rules/PoolRule$RoundState;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v4, v4, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    if-eq v4, v8, :cond_0

    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v4, v4, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    :cond_0
    move v0, v8

    .line 81
    .local v0, "bNeedShow":Z
    :goto_0
    iget-boolean v4, p0, Lcom/forthblue/pool/engine/PoolTable;->targetVisible:Z

    if-eq v0, v4, :cond_8

    .line 82
    iput-boolean v0, p0, Lcom/forthblue/pool/engine/PoolTable;->targetVisible:Z

    .line 83
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    array-length v4, v4

    if-ge v3, v4, :cond_8

    .line 84
    iget-boolean v4, p0, Lcom/forthblue/pool/engine/PoolTable;->targetVisible:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v4, v4, v3

    iget-boolean v4, v4, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    iget-object v5, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget-object v6, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    invoke-interface {v4, v5, v6, v3}, Lcom/forthblue/pool/rules/PoolRule;->isAvailableTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v8

    .line 85
    .local v1, "bV":Z
    :goto_2
    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v2, v4, v3

    .line 86
    .local v2, "ball":Lcom/forthblue/pool/engine/PoolBall;
    if-nez v1, :cond_5

    .line 87
    iget-object v4, v2, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    if-eqz v4, :cond_1

    .line 88
    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->targets:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    iget-object v5, v2, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v5, v5, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->id:I

    invoke-virtual {v4, v5}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->deleteAt(I)V

    .line 89
    iput-object v10, v2, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    .line 91
    :cond_1
    iget-object v4, v2, Lcom/forthblue/pool/engine/PoolBall;->aimtarget1:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    if-eqz v4, :cond_2

    .line 92
    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->targets:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    iget-object v5, v2, Lcom/forthblue/pool/engine/PoolBall;->aimtarget1:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v5, v5, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->id:I

    invoke-virtual {v4, v5}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->deleteAt(I)V

    .line 93
    iput-object v10, v2, Lcom/forthblue/pool/engine/PoolBall;->aimtarget1:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    .line 83
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "bNeedShow":Z
    .end local v1    # "bV":Z
    .end local v2    # "ball":Lcom/forthblue/pool/engine/PoolBall;
    .end local v3    # "i":I
    :cond_3
    move v0, v9

    .line 78
    goto :goto_0

    .restart local v0    # "bNeedShow":Z
    .restart local v3    # "i":I
    :cond_4
    move v1, v9

    .line 84
    goto :goto_2

    .line 96
    .restart local v1    # "bV":Z
    .restart local v2    # "ball":Lcom/forthblue/pool/engine/PoolBall;
    :cond_5
    iget-object v4, v2, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    if-nez v4, :cond_6

    .line 97
    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->targets:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    invoke-virtual {v4}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->alloc()Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-result-object v4

    iput-object v4, v2, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    .line 99
    :cond_6
    iget-object v4, v2, Lcom/forthblue/pool/engine/PoolBall;->aimtarget1:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    if-nez v4, :cond_7

    .line 100
    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->targets:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    invoke-virtual {v4}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->alloc()Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-result-object v4

    iput-object v4, v2, Lcom/forthblue/pool/engine/PoolBall;->aimtarget1:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    .line 102
    :cond_7
    iget-object v4, v2, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget-object v5, v2, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v6, v2, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    const/high16 v7, 0x40800000

    mul-float/2addr v6, v7

    iput v6, v5, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusy:F

    iput v6, v4, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    .line 103
    iget-object v4, v2, Lcom/forthblue/pool/engine/PoolBall;->aimtarget1:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget-object v5, v2, Lcom/forthblue/pool/engine/PoolBall;->aimtarget1:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget v6, v2, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    const v7, 0x40033333

    mul-float/2addr v6, v7

    iput v6, v5, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusy:F

    iput v6, v4, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    .line 104
    iget-object v4, v2, Lcom/forthblue/pool/engine/PoolBall;->aimtarget0:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    iget-object v5, v2, Lcom/forthblue/pool/engine/PoolBall;->aimtarget1:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    const/4 v6, 0x0

    iput v6, v5, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    iput v6, v4, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    goto :goto_3

    .line 108
    .end local v1    # "bV":Z
    .end local v2    # "ball":Lcom/forthblue/pool/engine/PoolBall;
    .end local v3    # "i":I
    :cond_8
    return-void
.end method

.method private workout(FFFFF)F
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "vx"    # F
    .param p4, "vy"    # F
    .param p5, "r"    # F

    .prologue
    .line 696
    mul-float v5, p3, p3

    mul-float v6, p4, p4

    add-float v0, v5, v6

    .line 697
    .local v0, "a":F
    const/high16 v5, -0x40000000

    mul-float v6, p1, p3

    mul-float v7, p2, p4

    add-float/2addr v6, v7

    mul-float v3, v5, v6

    .line 698
    .local v3, "minusb":F
    mul-float v5, p1, p1

    mul-float v6, p2, p2

    add-float/2addr v5, v6

    mul-float v6, p5, p5

    sub-float v1, v5, v6

    .line 701
    .local v1, "c":F
    const v5, 0x3a83126f

    cmpg-float v5, v0, v5

    if-gez v5, :cond_0

    .line 702
    const/high16 v5, 0x45610000

    .line 721
    :goto_0
    return v5

    .line 706
    :cond_0
    const v5, 0x3a83126f

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_1

    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_1

    .line 707
    const/4 v5, 0x0

    goto :goto_0

    .line 710
    :cond_1
    mul-float v5, v3, v3

    const/high16 v6, 0x40800000

    mul-float/2addr v6, v0

    mul-float/2addr v6, v1

    sub-float v2, v5, v6

    .line 713
    .local v2, "delta":F
    const v5, 0x3a83126f

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_2

    .line 714
    const/high16 v5, 0x45610000

    goto :goto_0

    .line 717
    :cond_2
    invoke-static {v2}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v5

    sub-float v5, v3, v5

    const/high16 v6, 0x40000000

    mul-float/2addr v6, v0

    div-float v4, v5, v6

    .line 719
    .local v4, "t":F
    const v5, 0x3a83126f

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_3

    .line 720
    const/high16 v5, 0x45610000

    goto :goto_0

    :cond_3
    move v5, v4

    .line 721
    goto :goto_0
.end method

.method private workout(FFFFFFF)F
    .locals 10
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "dx"    # F
    .param p4, "dy"    # F
    .param p5, "vx"    # F
    .param p6, "vy"    # F
    .param p7, "t"    # F

    .prologue
    .line 676
    mul-float v6, p4, p5

    mul-float v7, p3, p6

    sub-float v0, v6, v7

    .line 677
    .local v0, "a":F
    mul-float v6, p1, p4

    mul-float v7, p2, p3

    sub-float v2, v6, v7

    .line 679
    .local v2, "minusb":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3f50624dd2f1a9fcL

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 680
    const/high16 v6, 0x45610000

    .line 692
    :goto_0
    return v6

    .line 682
    :cond_0
    div-float v3, v2, v0

    .line 683
    .local v3, "ret":F
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_1

    .line 685
    neg-float v6, p1

    mul-float v7, v3, p5

    add-float v4, v6, v7

    .line 686
    .local v4, "x":F
    neg-float v6, p2

    mul-float v7, v3, p6

    add-float v5, v6, v7

    .line 688
    .local v5, "y":F
    mul-float v6, v4, p3

    mul-float v7, v5, p4

    add-float v1, v6, v7

    .line 689
    .local v1, "l":F
    const/4 v6, 0x0

    cmpg-float v6, v6, v1

    if-gtz v6, :cond_1

    cmpg-float v6, v1, p7

    if-gtz v6, :cond_1

    move v6, v3

    .line 690
    goto :goto_0

    .line 692
    .end local v1    # "l":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_1
    const/high16 v6, 0x45610000

    goto :goto_0
.end method


# virtual methods
.method public calcAimTarget(F)F
    .locals 12
    .param p1, "aimAngle"    # F

    .prologue
    const/4 v11, -0x1

    const/high16 v10, 0x3f800000

    .line 844
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    invoke-interface {v0, v2}, Lcom/forthblue/pool/rules/PoolRule;->getClickTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;)I

    move-result v8

    .line 845
    .local v8, "target":I
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v1, v0, v8

    .line 847
    .local v1, "ball":Lcom/forthblue/pool/engine/PoolBall;
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v0}, Lcom/forthblue/pool/rules/PoolRule;->getTableHeight()F

    move-result v0

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v2}, Lcom/forthblue/pool/rules/PoolRule;->getTableWidth()F

    move-result v2

    add-float v9, v0, v2

    .line 849
    .local v9, "targetLength":F
    invoke-static {p1}, Lcom/fruitsmobile/basket/math/MathUtil;->cos(F)F

    move-result v4

    .line 850
    .local v4, "cos":F
    invoke-static {p1}, Lcom/fruitsmobile/basket/math/MathUtil;->sin(F)F

    move-result v5

    .line 852
    .local v5, "sin":F
    iput v11, p0, Lcom/forthblue/pool/engine/PoolTable;->lastAimBallIndex:I

    .line 854
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/forthblue/pool/engine/PoolBlocker;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    aget-object v2, v0, v6

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/forthblue/pool/engine/PoolTable;->calcAimTargetWith(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolBlocker;FFF)F

    move-result v7

    .line 857
    .local v7, "r":F
    cmpg-float v0, v7, v9

    if-gez v0, :cond_0

    cmpl-float v0, v7, v10

    if-ltz v0, :cond_0

    .line 858
    move v9, v7

    .line 859
    iput v11, p0, Lcom/forthblue/pool/engine/PoolTable;->lastAimBallIndex:I

    .line 854
    .end local v7    # "r":F
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 864
    :cond_1
    const/4 v6, 0x0

    :goto_1
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    array-length v0, v0

    if-ge v6, v0, :cond_3

    .line 865
    if-eq v6, v8, :cond_2

    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v0, v0, v6

    iget-boolean v0, v0, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-eqz v0, :cond_2

    .line 866
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v2, v0, v6

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/forthblue/pool/engine/PoolTable;->calcAimTargetWith(Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolBall;FFF)F

    move-result v7

    .line 867
    .restart local v7    # "r":F
    cmpg-float v0, v7, v9

    if-gez v0, :cond_2

    cmpl-float v0, v7, v10

    if-ltz v0, :cond_2

    .line 868
    move v9, v7

    .line 869
    iput v6, p0, Lcom/forthblue/pool/engine/PoolTable;->lastAimBallIndex:I

    .line 864
    .end local v7    # "r":F
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 874
    :cond_3
    return v9
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    .line 66
    iput-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .line 67
    iput-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    .line 68
    iput-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    .line 69
    iput-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->shadows:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    .line 70
    iput-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->highlights:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    .line 71
    iput-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->targets:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    .line 72
    invoke-super {p0}, Lcom/forthblue/pool/engine/WindowContainer;->clear()V

    .line 73
    return-void
.end method

.method public click(FFFF)V
    .locals 7
    .param p1, "strength"    # F
    .param p2, "px"    # F
    .param p3, "py"    # F
    .param p4, "angle"    # F

    .prologue
    .line 248
    const-string v4, "Pool"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clicking with strength:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", angle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v4, v4, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 267
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    iget-object v5, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    iget-object v6, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    invoke-interface {v5, v6}, Lcom/forthblue/pool/rules/PoolRule;->getClickTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;)I

    move-result v5

    aget-object v0, v4, v5

    .line 254
    .local v0, "ball":Lcom/forthblue/pool/engine/PoolBall;
    invoke-static {p4}, Lcom/fruitsmobile/basket/math/MathUtil;->cos(F)F

    move-result v1

    .line 255
    .local v1, "cos":F
    invoke-static {p4}, Lcom/fruitsmobile/basket/math/MathUtil;->sin(F)F

    move-result v3

    .line 256
    .local v3, "sin":F
    mul-float v4, p1, v1

    iput v4, v0, Lcom/forthblue/pool/engine/PoolBall;->vx:F

    .line 257
    mul-float v4, p1, v3

    iput v4, v0, Lcom/forthblue/pool/engine/PoolBall;->vy:F

    .line 259
    mul-float v2, p1, p3

    .line 260
    .local v2, "r":F
    mul-float v4, v2, v1

    iput v4, v0, Lcom/forthblue/pool/engine/PoolBall;->rvx:F

    .line 261
    mul-float v4, v2, v3

    iput v4, v0, Lcom/forthblue/pool/engine/PoolBall;->rvy:F

    .line 262
    neg-float v4, p1

    mul-float/2addr v4, p2

    iget-object v5, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v5}, Lcom/forthblue/pool/rules/PoolRule;->getBallRadius()F

    move-result v5

    div-float/2addr v4, v5

    iput v4, v0, Lcom/forthblue/pool/engine/PoolBall;->w:F

    .line 264
    iget-object v4, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    iget-object v5, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget-object v6, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    invoke-interface {v4, v5, v6}, Lcom/forthblue/pool/rules/PoolRule;->onClick(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;)V

    .line 266
    const/4 v4, 0x3

    const/high16 v5, 0x3f800000

    const v6, 0x3a83126f

    mul-float/2addr v6, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Lcom/fruitsmobile/basket/audio/SoundManager;->playSound(IF)V

    goto :goto_0
.end method

.method public getLastAimBallIndex()I
    .locals 1

    .prologue
    .line 878
    iget v0, p0, Lcom/forthblue/pool/engine/PoolTable;->lastAimBallIndex:I

    return v0
.end method

.method public getRoundState()Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    return-object v0
.end method

.method public newMatch()V
    .locals 4

    .prologue
    .line 991
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    invoke-interface {v0, v1, v2}, Lcom/forthblue/pool/rules/PoolRule;->resetBalls([Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V

    .line 992
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    invoke-interface {v0, v1, v2, v3}, Lcom/forthblue/pool/rules/PoolRule;->newMatch(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V

    .line 993
    invoke-direct {p0}, Lcom/forthblue/pool/engine/PoolTable;->updateShadow()V

    .line 994
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/forthblue/pool/engine/PoolTable;->bAIActived:Z

    .line 995
    return-void
.end method

.method public putFreeball()V
    .locals 2

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    const/4 v1, 0x1

    iput v1, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 1123
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const/16 v5, 0x1e

    const/4 v4, 0x0

    .line 176
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    if-nez v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/forthblue/pool/engine/PoolTable;->clear()V

    .line 243
    :goto_0
    iput-boolean v4, p0, Lcom/forthblue/pool/engine/PoolTable;->bAIActived:Z

    .line 244
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->ai:Lcom/forthblue/pool/engine/PoolAI;

    .line 245
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->shadows:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    if-nez v1, :cond_1

    .line 180
    new-instance v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v2}, Lcom/forthblue/pool/rules/PoolRule;->getShadowTexture()Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;-><init>(ILcom/fruitsmobile/basket/resources/Texture;)V

    iput-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->shadows:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    .line 181
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->shadows:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    invoke-virtual {p0, v1}, Lcom/forthblue/pool/engine/PoolTable;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 185
    :goto_1
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    if-nez v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v1}, Lcom/forthblue/pool/rules/PoolRule;->getBlockerCount()I

    move-result v1

    new-array v1, v1, [Lcom/forthblue/pool/engine/PoolBlocker;

    iput-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    new-instance v2, Lcom/forthblue/pool/engine/PoolBlocker;

    invoke-direct {v2}, Lcom/forthblue/pool/engine/PoolBlocker;-><init>()V

    aput-object v2, v1, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 183
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->shadows:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->clearAll()V

    goto :goto_1

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->blockers:[Lcom/forthblue/pool/engine/PoolBlocker;

    invoke-interface {v1, v2}, Lcom/forthblue/pool/rules/PoolRule;->resetBlockers([Lcom/forthblue/pool/engine/PoolBlocker;)V

    .line 195
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    if-nez v1, :cond_3

    .line 196
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v1}, Lcom/forthblue/pool/rules/PoolRule;->getHoleCount()I

    move-result v1

    new-array v1, v1, [Lcom/forthblue/pool/engine/PoolHole;

    iput-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    .line 197
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 198
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    new-instance v2, Lcom/forthblue/pool/engine/PoolHole;

    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->holeTexture:Lcom/fruitsmobile/basket/resources/Texture;

    invoke-direct {v2, v3}, Lcom/forthblue/pool/engine/PoolHole;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    aput-object v2, v1, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 203
    .end local v0    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    invoke-interface {v1, v2}, Lcom/forthblue/pool/rules/PoolRule;->resetHoles([Lcom/forthblue/pool/engine/PoolHole;)V

    .line 205
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->enableLight:Lcom/fruitsmobile/basket/DrawableObject;

    invoke-virtual {p0, v1}, Lcom/forthblue/pool/engine/PoolTable;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 206
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    if-nez v1, :cond_4

    .line 207
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v1}, Lcom/forthblue/pool/rules/PoolRule;->getBallCount()I

    move-result v1

    new-array v1, v1, [Lcom/forthblue/pool/engine/PoolBall;

    iput-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    .line 208
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 209
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    new-instance v2, Lcom/forthblue/pool/engine/PoolBall;

    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v3, v0}, Lcom/forthblue/pool/rules/PoolRule;->getBallTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/forthblue/pool/engine/PoolBall;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    aput-object v2, v1, v0

    .line 210
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v1, v1, v0

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->id:I

    .line 211
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v2}, Lcom/forthblue/pool/rules/PoolRule;->getBallRadius()F

    move-result v2

    iput v2, v1, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    .line 212
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/forthblue/pool/engine/PoolTable;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 215
    .end local v0    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->disableLight:Lcom/fruitsmobile/basket/DrawableObject;

    invoke-virtual {p0, v1}, Lcom/forthblue/pool/engine/PoolTable;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 217
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->holes:[Lcom/forthblue/pool/engine/PoolHole;

    invoke-interface {v1, v2, v3}, Lcom/forthblue/pool/rules/PoolRule;->resetBalls([Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V

    .line 219
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->highlights:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    if-nez v1, :cond_6

    .line 220
    new-instance v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v2}, Lcom/forthblue/pool/rules/PoolRule;->getHighlightTexture()Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;-><init>(ILcom/fruitsmobile/basket/resources/Texture;)V

    iput-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->highlights:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    .line 221
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->highlights:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    invoke-virtual {p0, v1}, Lcom/forthblue/pool/engine/PoolTable;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 226
    :goto_5
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->targets:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    if-nez v1, :cond_7

    .line 227
    new-instance v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    const/16 v2, 0x3c

    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v3}, Lcom/forthblue/pool/rules/PoolRule;->getTargetTexture()Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;-><init>(ILcom/fruitsmobile/basket/resources/Texture;)V

    iput-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->targets:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    .line 228
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->targets:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    invoke-virtual {p0, v1}, Lcom/forthblue/pool/engine/PoolTable;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 233
    :goto_6
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    if-nez v1, :cond_5

    .line 234
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v1}, Lcom/forthblue/pool/rules/PoolRule;->createRoundState()Lcom/forthblue/pool/rules/PoolRule$RoundState;

    move-result-object v1

    iput-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .line 236
    :cond_5
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    invoke-interface {v1, v2}, Lcom/forthblue/pool/rules/PoolRule;->resetRoundState(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V

    .line 238
    invoke-direct {p0}, Lcom/forthblue/pool/engine/PoolTable;->updateShadow()V

    .line 240
    iput-boolean v4, p0, Lcom/forthblue/pool/engine/PoolTable;->targetVisible:Z

    goto/16 :goto_0

    .line 223
    :cond_6
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->highlights:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->clearAll()V

    goto :goto_5

    .line 230
    :cond_7
    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->targets:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->clearAll()V

    goto :goto_6
.end method

.method public resetScale()V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000

    .line 168
    iget v1, p0, Lcom/forthblue/pool/engine/PoolTable;->windoww:F

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v2}, Lcom/forthblue/pool/rules/PoolRule;->getTableWidth()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/forthblue/pool/engine/PoolTable;->windowh:F

    iget-object v3, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v3}, Lcom/forthblue/pool/rules/PoolRule;->getTableHeight()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 169
    .local v0, "scale":F
    iput v0, p0, Lcom/forthblue/pool/engine/PoolTable;->scaley:F

    iput v0, p0, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    .line 171
    iget v1, p0, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    iget v2, p0, Lcom/forthblue/pool/engine/PoolTable;->windoww:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/forthblue/pool/engine/PoolTable;->windowx:F

    .line 172
    iget v1, p0, Lcom/forthblue/pool/engine/PoolTable;->centery:F

    iget v2, p0, Lcom/forthblue/pool/engine/PoolTable;->windowh:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/forthblue/pool/engine/PoolTable;->windowy:F

    .line 173
    return-void
.end method

.method public setRule(Lcom/forthblue/pool/rules/PoolRule;)V
    .locals 0
    .param p1, "rule"    # Lcom/forthblue/pool/rules/PoolRule;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    .line 60
    invoke-virtual {p0}, Lcom/forthblue/pool/engine/PoolTable;->clear()V

    .line 61
    invoke-virtual {p0}, Lcom/forthblue/pool/engine/PoolTable;->resetScale()V

    .line 62
    return-void
.end method

.method public tick(J)V
    .locals 3
    .param p1, "timeSpan"    # J

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/forthblue/pool/engine/PoolTable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v0, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget-boolean v0, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->counttime:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v1, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->totalGameTime:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v1, v1

    iput v1, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->totalGameTime:I

    .line 121
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v1, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->roundTime:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    long-to-int v1, v1

    iput v1, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->roundTime:I

    .line 122
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v1, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->restTime:I

    int-to-long v1, v1

    sub-long/2addr v1, p1

    long-to-int v1, v1

    iput v1, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->restTime:I

    .line 123
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v0, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->restTime:I

    if-gez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v1, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->roundTime:I

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v2, v2, Lcom/forthblue/pool/rules/PoolRule$RoundState;->restTime:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->roundTime:I

    .line 125
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v1, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->totalGameTime:I

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v2, v2, Lcom/forthblue/pool/rules/PoolRule$RoundState;->restTime:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->totalGameTime:I

    .line 126
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    const/4 v1, 0x0

    iput v1, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->restTime:I

    .line 127
    iget-object v0, p0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    iget-object v1, p0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget-object v2, p0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    invoke-interface {v0, v1, v2}, Lcom/forthblue/pool/rules/PoolRule;->onTimeOver(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;)V

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/forthblue/pool/engine/PoolTable;->updateTargetSign()V

    .line 132
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/forthblue/pool/engine/WindowContainer;->tick(J)V

    .line 133
    return-void

    .line 116
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/forthblue/pool/engine/PoolTable;->updateRunning(J)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public tickAI(J)V
    .locals 20
    .param p1, "timeSpan"    # J

    .prologue
    .line 1010
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/forthblue/pool/engine/PoolTable;->bAIActived:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 1011
    invoke-direct/range {p0 .. p0}, Lcom/forthblue/pool/engine/PoolTable;->startAI()V

    .line 1096
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    move-wide/from16 v0, p1

    long-to-float v0, v0

    move/from16 v16, v0

    const v17, 0x3a83126f

    mul-float v11, v16, v17

    .line 1017
    .local v11, "ft":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->ai_state:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    goto :goto_0

    .line 1019
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/forthblue/pool/engine/PoolTable;->ai_restTime:J

    move-wide/from16 v16, v0

    sub-long v16, v16, p1

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/forthblue/pool/engine/PoolTable;->ai_restTime:J

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gez v16, :cond_0

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 1021
    const/16 v16, 0x3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/engine/PoolTable;->ai_state:I

    goto :goto_0

    .line 1023
    :cond_2
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/engine/PoolTable;->ai_state:I

    goto :goto_0

    .line 1028
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->ai:Lcom/forthblue/pool/engine/PoolAI;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/forthblue/pool/engine/PoolAI;->getAngle()F

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->aiangle:F

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/forthblue/pool/engine/PoolTable;->getAngleDiff(FF)F

    move-result v7

    .line 1029
    .local v7, "diff":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1030
    .local v5, "absdiff":F
    const/high16 v16, 0x41300000

    cmpl-float v16, v5, v16

    if-lez v16, :cond_4

    .line 1031
    const/high16 v16, 0x41200000

    sub-float v16, v5, v16

    const/high16 v17, 0x43160000

    div-float v13, v16, v17

    .line 1032
    .local v13, "t":F
    cmpg-float v16, v13, v11

    if-gez v16, :cond_3

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->ai:Lcom/forthblue/pool/engine/PoolAI;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/forthblue/pool/engine/PoolAI;->getAngle()F

    move-result v16

    div-float v17, v7, v5

    const/high16 v18, 0x41200000

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/engine/PoolTable;->aiangle:F

    goto/16 :goto_0

    .line 1035
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->aiangle:F

    move/from16 v16, v0

    div-float v17, v7, v5

    const/high16 v18, 0x43160000

    mul-float v17, v17, v18

    mul-float v17, v17, v11

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/engine/PoolTable;->aiangle:F

    goto/16 :goto_0

    .line 1037
    .end local v13    # "t":F
    :cond_4
    const/high16 v16, 0x3f800000

    cmpl-float v16, v5, v16

    if-lez v16, :cond_6

    .line 1038
    const/high16 v16, 0x3e800000

    cmpl-float v16, v11, v16

    if-lez v16, :cond_5

    .line 1039
    const/high16 v11, 0x3e800000

    .line 1041
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->ai:Lcom/forthblue/pool/engine/PoolAI;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/forthblue/pool/engine/PoolAI;->getAngle()F

    move-result v16

    const/high16 v17, 0x3f800000

    const/high16 v18, 0x40000000

    mul-float v18, v18, v11

    sub-float v17, v17, v18

    mul-float v17, v17, v7

    sub-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/engine/PoolTable;->aiangle:F

    goto/16 :goto_0

    .line 1042
    :cond_6
    const v16, 0x3dcccccd

    cmpl-float v16, v5, v16

    if-lez v16, :cond_8

    .line 1043
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->aiangle:F

    move/from16 v16, v0

    const/16 v17, 0x0

    cmpg-float v17, v7, v17

    if-gez v17, :cond_7

    const v17, -0x435c28f6

    :goto_1
    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/engine/PoolTable;->aiangle:F

    goto/16 :goto_0

    :cond_7
    const v17, 0x3ca3d70a

    goto :goto_1

    .line 1044
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/forthblue/pool/engine/PoolTable;->ai_restTime:J

    move-wide/from16 v16, v0

    sub-long v16, v16, p1

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/forthblue/pool/engine/PoolTable;->ai_restTime:J

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gez v16, :cond_9

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->ai:Lcom/forthblue/pool/engine/PoolAI;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/forthblue/pool/engine/PoolAI;->getAngle()F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/engine/PoolTable;->aiangle:F

    .line 1046
    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/engine/PoolTable;->ai_state:I

    goto/16 :goto_0

    .line 1048
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->ai:Lcom/forthblue/pool/engine/PoolAI;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/forthblue/pool/engine/PoolAI;->getAngle()F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/engine/PoolTable;->aiangle:F

    goto/16 :goto_0

    .line 1053
    .end local v5    # "absdiff":F
    .end local v7    # "diff":F
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->aistrength:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->ai:Lcom/forthblue/pool/engine/PoolAI;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/forthblue/pool/engine/PoolAI;->getStrength()F

    move-result v17

    cmpg-float v16, v16, v17

    if-gez v16, :cond_a

    .line 1054
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->aistrength:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/forthblue/pool/rules/PoolRule;->getMaxStrength()F

    move-result v17

    mul-float v17, v17, v11

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/engine/PoolTable;->aistrength:F

    goto/16 :goto_0

    .line 1056
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->aistrength:F

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->aiangle:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/forthblue/pool/engine/PoolTable;->click(FFFF)V

    .line 1057
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/engine/PoolTable;->bAIActived:Z

    .line 1058
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/engine/PoolTable;->ai:Lcom/forthblue/pool/engine/PoolAI;

    goto/16 :goto_0

    .line 1063
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->ai:Lcom/forthblue/pool/engine/PoolAI;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/forthblue/pool/engine/PoolAI;->getTarX()F

    move-result v14

    .line 1064
    .local v14, "tarx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->ai:Lcom/forthblue/pool/engine/PoolAI;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/forthblue/pool/engine/PoolAI;->getTarY()F

    move-result v15

    .line 1065
    .local v15, "tary":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v6, v16, v17

    .line 1066
    .local v6, "ball":Lcom/forthblue/pool/engine/PoolBall;
    move-object v0, v6

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v16, v0

    sub-float v9, v14, v16

    .line 1067
    .local v9, "dx":F
    move-object v0, v6

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v16, v0

    sub-float v10, v15, v16

    .line 1068
    .local v10, "dy":F
    mul-float v16, v9, v9

    mul-float v17, v10, v10

    add-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v12

    .line 1069
    .local v12, "len":F
    const/high16 v16, 0x3f800000

    move-wide/from16 v0, p1

    long-to-float v0, v0

    move/from16 v17, v0

    mul-float v8, v16, v17

    .line 1070
    .local v8, "dr":F
    cmpg-float v16, v12, v8

    if-gez v16, :cond_d

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 1072
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/engine/PoolTable;->ai_state:I

    .line 1073
    iput v14, v6, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 1074
    iput v15, v6, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 1080
    :goto_2
    move-object v0, v6

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-object/from16 v16, v0

    if-nez v16, :cond_b

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->shadows:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->alloc()Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    iput-object v0, v1, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    .line 1082
    move-object v0, v6

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-object/from16 v16, v0

    move-object v0, v6

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-object/from16 v17, v0

    move-object v0, v6

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    move/from16 v18, v0

    const/high16 v19, 0x3fa00000

    mul-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusy:F

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    .line 1084
    :cond_b
    move-object v0, v6

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-object/from16 v16, v0

    if-nez v16, :cond_c

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->highlights:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->alloc()Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    iput-object v0, v1, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    .line 1086
    move-object v0, v6

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-object/from16 v16, v0

    move-object v0, v6

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-object/from16 v17, v0

    move-object v0, v6

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusy:F

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    .line 1087
    move-object v0, v6

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-object/from16 v16, v0

    const v17, 0x3f4ccccd

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    .line 1089
    :cond_c
    move-object v0, v6

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-object/from16 v16, v0

    move-object v0, v6

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v17, v0

    move-object v0, v6

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    move/from16 v18, v0

    const v19, 0x3e4ccccd

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->x:F

    .line 1090
    move-object v0, v6

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolBall;->shadow:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-object/from16 v16, v0

    move-object v0, v6

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v17, v0

    move-object v0, v6

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    move/from16 v18, v0

    const/high16 v19, 0x3e800000

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->y:F

    .line 1091
    move-object v0, v6

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-object/from16 v16, v0

    move-object v0, v6

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->x:F

    .line 1092
    move-object v0, v6

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolBall;->highlight:Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-object/from16 v16, v0

    move-object v0, v6

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->y:F

    goto/16 :goto_0

    .line 1076
    :cond_d
    div-float/2addr v8, v12

    .line 1077
    move-object v0, v6

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v16, v0

    mul-float v17, v9, v8

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object v1, v6

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 1078
    move-object v0, v6

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v16, v0

    mul-float v17, v10, v8

    add-float v16, v16, v17

    move/from16 v0, v16

    move-object v1, v6

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    goto/16 :goto_2

    .line 1017
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
