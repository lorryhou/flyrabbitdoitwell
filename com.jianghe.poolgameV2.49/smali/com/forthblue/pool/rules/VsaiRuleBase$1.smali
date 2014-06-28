.class Lcom/forthblue/pool/rules/VsaiRuleBase$1;
.super Ljava/lang/Object;
.source "VsaiRuleBase.java"

# interfaces
.implements Lcom/forthblue/pool/engine/PoolAI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/forthblue/pool/rules/VsaiRuleBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field angle:F

.field cosda:F

.field ignoreLog:Z

.field level:I

.field maxlevel:I

.field score:F

.field strength:F

.field target:I

.field tarx:F

.field tary:F

.field final synthetic this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;


# direct methods
.method constructor <init>(Lcom/forthblue/pool/rules/VsaiRuleBase;)V
    .locals 1

    .prologue
    .line 54
    iput-object p1, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->ignoreLog:Z

    return-void
.end method

.method private adjustDifficulty()V
    .locals 4

    .prologue
    const/high16 v3, 0x457a0000

    .line 237
    iget v0, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->angle:F

    sget-object v1, Lcom/forthblue/pool/rules/RuleImplBase;->rand:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x3f800000

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->angle:F

    .line 238
    iget v0, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->strength:F

    const v1, 0x3fb33333

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->strength:F

    .line 239
    iget v0, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->strength:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 240
    iput v3, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->strength:F

    .line 242
    :cond_0
    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->angle:F

    return v0
.end method

.method public getStrength()F
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->strength:F

    return v0
.end method

.method public getTarX()F
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->tarx:F

    return v0
.end method

.method public getTarY()F
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->tary:F

    return v0
.end method

.method public think(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolBlocker;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 10
    .param p1, "roundstate"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "blockers"    # [Lcom/forthblue/pool/engine/PoolBlocker;
    .param p4, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 70
    const-string v7, "Basket"

    const-string v8, "Thinking for shoot"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    invoke-virtual {v7}, Lcom/forthblue/pool/rules/VsaiRuleBase;->getMaxStrength()F

    move-result v7

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->strength:F

    .line 73
    const/4 v0, 0x1

    .line 74
    .local v0, "b":Z
    const/4 v4, 0x0

    .line 75
    .local v4, "score":F
    const/4 v5, 0x0

    .line 76
    .local v5, "target":I
    const/4 v6, 0x0

    .line 79
    .local v6, "targethole":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v7, p2

    if-ge v1, v7, :cond_3

    .line 80
    aget-object v7, p2, v1

    iget-boolean v7, v7, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    invoke-virtual {v7, p1, p2, v1}, Lcom/forthblue/pool/rules/VsaiRuleBase;->isAvailableTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 81
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    sget-object v7, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickholesPosition:[F

    array-length v7, v7

    div-int/lit8 v7, v7, 0x2

    if-ge v2, v7, :cond_2

    .line 82
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    invoke-virtual {v7, p2, v1, v2}, Lcom/forthblue/pool/rules/VsaiRuleBase;->checkStraightPot([Lcom/forthblue/pool/engine/PoolBall;II)F

    move-result v3

    .line 83
    .local v3, "s":F
    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-ltz v7, :cond_1

    if-nez v0, :cond_0

    iget v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->cosda:F

    iget-object v8, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    iget v8, v8, Lcom/forthblue/pool/rules/VsaiRuleBase;->cosda:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 85
    move v4, v3

    .line 86
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    iget v7, v7, Lcom/forthblue/pool/rules/VsaiRuleBase;->strength:F

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->strength:F

    .line 87
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    iget v7, v7, Lcom/forthblue/pool/rules/VsaiRuleBase;->angle:F

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->angle:F

    .line 88
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    iget v7, v7, Lcom/forthblue/pool/rules/VsaiRuleBase;->cosda:F

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->cosda:F

    .line 89
    move v6, v2

    .line 90
    move v5, v1

    .line 81
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 79
    .end local v2    # "j":I
    .end local v3    # "s":F
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_3
    if-nez v0, :cond_6

    .line 97
    const/4 v7, 0x3

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->level:I

    .line 98
    iput v5, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->target:I

    .line 99
    iget-boolean v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->ignoreLog:Z

    if-nez v7, :cond_4

    .line 100
    const-string v7, "Pool"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Try potting ball "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "into hole"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_4
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    iget v7, v7, Lcom/forthblue/pool/rules/VsaiRuleBase;->difficulty:I

    if-nez v7, :cond_5

    .line 103
    invoke-direct {p0}, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->adjustDifficulty()V

    .line 234
    :cond_5
    :goto_2
    return-void

    .line 108
    :cond_6
    iget v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->maxlevel:I

    const/4 v8, 0x3

    if-lt v7, v8, :cond_7

    .line 109
    const/4 v7, -0x1

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->level:I

    goto :goto_2

    .line 114
    :cond_7
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    iget v7, v7, Lcom/forthblue/pool/rules/VsaiRuleBase;->difficulty:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_d

    .line 116
    const/4 v1, 0x1

    :goto_3
    array-length v7, p2

    if-ge v1, v7, :cond_b

    .line 117
    aget-object v7, p2, v1

    iget-boolean v7, v7, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    invoke-virtual {v7, p1, p2, v1}, Lcom/forthblue/pool/rules/VsaiRuleBase;->isAvailableTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 118
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_4
    sget-object v7, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickholesPosition:[F

    array-length v7, v7

    div-int/lit8 v7, v7, 0x2

    if-ge v2, v7, :cond_a

    .line 119
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    invoke-virtual {v7, p2, v1, v2}, Lcom/forthblue/pool/rules/VsaiRuleBase;->checkPotByBlocker([Lcom/forthblue/pool/engine/PoolBall;II)F

    move-result v3

    .line 120
    .restart local v3    # "s":F
    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-ltz v7, :cond_9

    if-nez v0, :cond_8

    iget v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->cosda:F

    iget-object v8, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    iget v8, v8, Lcom/forthblue/pool/rules/VsaiRuleBase;->cosda:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_9

    .line 121
    :cond_8
    const/4 v0, 0x0

    .line 122
    move v4, v3

    .line 123
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    iget v7, v7, Lcom/forthblue/pool/rules/VsaiRuleBase;->strength:F

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->strength:F

    .line 124
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    iget v7, v7, Lcom/forthblue/pool/rules/VsaiRuleBase;->angle:F

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->angle:F

    .line 125
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    iget v7, v7, Lcom/forthblue/pool/rules/VsaiRuleBase;->cosda:F

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->cosda:F

    .line 126
    move v5, v1

    .line 127
    move v6, v2

    .line 118
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 116
    .end local v2    # "j":I
    .end local v3    # "s":F
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 133
    :cond_b
    if-nez v0, :cond_d

    .line 134
    const/4 v7, 0x2

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->level:I

    .line 135
    iput v5, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->target:I

    .line 136
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    iget v7, v7, Lcom/forthblue/pool/rules/VsaiRuleBase;->difficulty:I

    if-nez v7, :cond_c

    .line 137
    invoke-direct {p0}, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->adjustDifficulty()V

    .line 139
    :cond_c
    iget-boolean v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->ignoreLog:Z

    if-nez v7, :cond_5

    .line 140
    const-string v7, "Pool"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Try potting ball "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "into hole"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " by hit block once."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 147
    :cond_d
    iget v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->maxlevel:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_e

    .line 148
    const/4 v7, -0x1

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->level:I

    goto/16 :goto_2

    .line 153
    :cond_e
    const/4 v1, 0x1

    :goto_5
    array-length v7, p2

    if-ge v1, v7, :cond_11

    .line 154
    aget-object v7, p2, v1

    iget-boolean v7, v7, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    invoke-virtual {v7, p1, p2, v1}, Lcom/forthblue/pool/rules/VsaiRuleBase;->isAvailableTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 155
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    const/4 v8, 0x1

    invoke-virtual {v7, p2, v1, v8}, Lcom/forthblue/pool/rules/VsaiRuleBase;->checkStraightShot([Lcom/forthblue/pool/engine/PoolBall;IZ)F

    move-result v3

    .line 156
    .restart local v3    # "s":F
    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-lez v7, :cond_10

    if-nez v0, :cond_f

    cmpg-float v7, v3, v4

    if-gez v7, :cond_10

    .line 157
    :cond_f
    const/4 v0, 0x0

    .line 158
    move v4, v3

    .line 159
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    iget v7, v7, Lcom/forthblue/pool/rules/VsaiRuleBase;->angle:F

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->angle:F

    .line 160
    move v5, v1

    .line 153
    .end local v3    # "s":F
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 165
    :cond_11
    if-nez v0, :cond_13

    .line 166
    const/4 v7, 0x1

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->level:I

    .line 167
    iput v4, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->score:F

    .line 168
    iput v5, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->target:I

    .line 169
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    iget v7, v7, Lcom/forthblue/pool/rules/VsaiRuleBase;->difficulty:I

    if-nez v7, :cond_12

    .line 170
    invoke-direct {p0}, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->adjustDifficulty()V

    .line 172
    :cond_12
    iget-boolean v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->ignoreLog:Z

    if-nez v7, :cond_5

    .line 173
    const-string v7, "Pool"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Try hitting ball "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " directly"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 180
    :cond_13
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    iget v7, v7, Lcom/forthblue/pool/rules/VsaiRuleBase;->difficulty:I

    const/4 v8, 0x2

    if-lt v7, v8, :cond_18

    .line 181
    const/4 v1, 0x1

    :goto_6
    array-length v7, p2

    if-ge v1, v7, :cond_16

    .line 182
    aget-object v7, p2, v1

    iget-boolean v7, v7, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    invoke-virtual {v7, p1, p2, v1}, Lcom/forthblue/pool/rules/VsaiRuleBase;->isAvailableTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 183
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    invoke-virtual {v7, p2, v1}, Lcom/forthblue/pool/rules/VsaiRuleBase;->checkShotByBlocker([Lcom/forthblue/pool/engine/PoolBall;I)F

    move-result v3

    .line 184
    .restart local v3    # "s":F
    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-lez v7, :cond_15

    if-nez v0, :cond_14

    cmpg-float v7, v3, v4

    if-gez v7, :cond_15

    .line 185
    :cond_14
    const/4 v0, 0x0

    .line 186
    move v4, v3

    .line 187
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    iget v7, v7, Lcom/forthblue/pool/rules/VsaiRuleBase;->angle:F

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->angle:F

    .line 188
    move v5, v1

    .line 181
    .end local v3    # "s":F
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 193
    :cond_16
    if-nez v0, :cond_18

    .line 194
    const/4 v7, 0x1

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->level:I

    .line 195
    iput v4, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->score:F

    .line 196
    iput v5, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->target:I

    .line 197
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    iget v7, v7, Lcom/forthblue/pool/rules/VsaiRuleBase;->difficulty:I

    if-nez v7, :cond_17

    .line 198
    invoke-direct {p0}, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->adjustDifficulty()V

    .line 200
    :cond_17
    iget-boolean v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->ignoreLog:Z

    if-nez v7, :cond_5

    .line 201
    const-string v7, "Pool"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Try hitting ball "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " by hit block once."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 207
    :cond_18
    iget v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->maxlevel:I

    const/4 v8, 0x1

    if-lt v7, v8, :cond_19

    .line 208
    const/4 v7, -0x1

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->level:I

    goto/16 :goto_2

    .line 212
    :cond_19
    const/4 v7, 0x0

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->level:I

    .line 214
    const/4 v1, 0x1

    :goto_7
    array-length v7, p2

    if-ge v1, v7, :cond_1c

    .line 215
    aget-object v7, p2, v1

    iget-boolean v7, v7, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-eqz v7, :cond_1b

    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    invoke-virtual {v7, p1, p2, v1}, Lcom/forthblue/pool/rules/VsaiRuleBase;->isAvailableTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 216
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    const/4 v8, 0x0

    invoke-virtual {v7, p2, v1, v8}, Lcom/forthblue/pool/rules/VsaiRuleBase;->checkStraightShot([Lcom/forthblue/pool/engine/PoolBall;IZ)F

    move-result v3

    .line 217
    .restart local v3    # "s":F
    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-lez v7, :cond_1b

    if-nez v0, :cond_1a

    cmpg-float v7, v3, v4

    if-gez v7, :cond_1b

    .line 218
    :cond_1a
    const/4 v0, 0x0

    .line 219
    move v4, v3

    .line 220
    iget-object v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    iget v7, v7, Lcom/forthblue/pool/rules/VsaiRuleBase;->angle:F

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->angle:F

    .line 221
    move v5, v1

    .line 214
    .end local v3    # "s":F
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 225
    :cond_1c
    if-nez v0, :cond_1d

    .line 226
    const-string v7, "Pool"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Try hitting ball "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 230
    :cond_1d
    const/4 v7, -0x1

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->level:I

    .line 232
    sget-object v7, Lcom/forthblue/pool/rules/RuleImplBase;->rand:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const/high16 v8, 0x43b40000

    mul-float/2addr v7, v8

    iput v7, p0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->angle:F

    .line 233
    const-string v7, "Pool"

    const-string v8, "No available target, Random click"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public thinkFreeball(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolBlocker;[Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 24
    .param p1, "state"    # Lcom/forthblue/pool/rules/PoolRule$RoundState;
    .param p2, "balls"    # [Lcom/forthblue/pool/engine/PoolBall;
    .param p3, "blockers"    # [Lcom/forthblue/pool/engine/PoolBlocker;
    .param p4, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    .line 267
    const-string v21, "Basket"

    const-string v22, "Thinking for freeball"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/forthblue/pool/rules/VsaiRuleBase;->getMaxStrength()F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->strength:F

    .line 270
    const/4 v5, 0x1

    .line 271
    .local v5, "b":Z
    const/16 v18, 0x0

    .line 272
    .local v18, "score":F
    const/16 v19, 0x0

    .line 274
    .local v19, "target":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/rules/VsaiRuleBase;->isUnderlineFreeball(Lcom/forthblue/pool/rules/PoolRule$RoundState;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 276
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    move v0, v12

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 277
    aget-object v21, p2, v12

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Lcom/forthblue/pool/rules/VsaiRuleBase;->isAvailableTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 278
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    sget-object v21, Lcom/forthblue/pool/rules/VsaiRuleBase;->quickholesPosition:[F

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move v0, v13

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move v2, v12

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lcom/forthblue/pool/rules/VsaiRuleBase;->checkFreeballPot([Lcom/forthblue/pool/engine/PoolBall;II)F

    move-result v17

    .line 280
    .local v17, "s":F
    const/16 v21, 0x0

    cmpl-float v21, v17, v21

    if-ltz v21, :cond_1

    if-nez v5, :cond_0

    cmpg-float v21, v17, v18

    if-gez v21, :cond_1

    .line 281
    :cond_0
    const/4 v5, 0x0

    .line 282
    move/from16 v18, v17

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase;->strength:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->strength:F

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase;->angle:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->angle:F

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase;->tarx:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->tarx:F

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase;->tary:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->tary:F

    .line 287
    move/from16 v19, v12

    .line 278
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 276
    .end local v13    # "j":I
    .end local v17    # "s":F
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 293
    :cond_3
    if-nez v5, :cond_4

    .line 294
    const-string v21, "Pool"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Try potting ball "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v12    # "i":I
    :goto_2
    return-void

    .line 301
    :cond_4
    const/4 v9, 0x0

    .line 306
    .local v9, "badtryied":I
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->maxlevel:I

    .line 308
    const/4 v14, 0x0

    .line 310
    .local v14, "maxcosda":F
    const/16 v16, 0x0

    .line 311
    .local v16, "recstrength":F
    const/4 v15, 0x0

    .line 314
    .local v15, "recangle":F
    const/16 v21, 0x0

    aget-object v21, p2, v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move v7, v0

    .line 315
    .local v7, "backupx":F
    const/16 v21, 0x0

    aget-object v21, p2, v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move v8, v0

    .line 317
    .local v8, "backupy":F
    const v20, 0x4511c000

    .line 318
    .local v20, "xw":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/rules/VsaiRuleBase;->isUnderlineFreeball(Lcom/forthblue/pool/rules/PoolRule$RoundState;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 319
    const v20, 0x44084000

    .line 322
    :cond_5
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->ignoreLog:Z

    .line 323
    :cond_6
    :goto_3
    const/16 v21, 0x1e

    move v0, v9

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 325
    sget-object v21, Lcom/forthblue/pool/rules/RuleImplBase;->rand:Ljava/util/Random;

    invoke-virtual/range {v21 .. v21}, Ljava/util/Random;->nextFloat()F

    move-result v21

    mul-float v21, v21, v20

    const v22, 0x44924000

    sub-float v10, v21, v22

    .line 326
    .local v10, "ballx":F
    sget-object v21, Lcom/forthblue/pool/rules/RuleImplBase;->rand:Ljava/util/Random;

    invoke-virtual/range {v21 .. v21}, Ljava/util/Random;->nextFloat()F

    move-result v21

    const/high16 v22, 0x448c0000

    mul-float v21, v21, v22

    const v22, 0x44098000

    sub-float v11, v21, v22

    .line 328
    .local v11, "bally":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->this$0:Lcom/forthblue/pool/rules/VsaiRuleBase;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v22

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/forthblue/pool/rules/VsaiRuleBase;->canPut([Lcom/forthblue/pool/engine/PoolBall;IFF)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 332
    const/16 v21, 0x0

    aget-object v21, p2, v21

    move v0, v10

    move-object/from16 v1, v21

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 333
    const/16 v21, 0x0

    aget-object v21, p2, v21

    move v0, v11

    move-object/from16 v1, v21

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 334
    invoke-virtual/range {p0 .. p4}, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->think(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolBlocker;[Lcom/forthblue/pool/engine/PoolHole;)V

    .line 336
    const/4 v6, 0x0

    .line 337
    .local v6, "bOverride":Z
    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->level:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->maxlevel:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    .line 338
    :cond_7
    const/4 v6, 0x1

    .line 347
    :cond_8
    :goto_4
    if-eqz v6, :cond_b

    .line 348
    const/4 v5, 0x1

    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->level:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->maxlevel:I

    .line 350
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->cosda:F

    move v14, v0

    .line 351
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->score:F

    move/from16 v18, v0

    .line 352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->strength:F

    move/from16 v16, v0

    .line 353
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->angle:F

    move v15, v0

    .line 354
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->target:I

    move/from16 v19, v0

    .line 355
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->tarx:F

    .line 356
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->tary:F

    .line 357
    const/4 v9, 0x0

    .line 358
    const-string v21, "Pool"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "angle="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->angle:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 339
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->level:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->maxlevel:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->level:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->cosda:F

    move/from16 v21, v0

    cmpl-float v21, v21, v14

    if-lez v21, :cond_a

    .line 341
    const/4 v6, 0x1

    goto/16 :goto_4

    .line 342
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->level:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->score:F

    move/from16 v21, v0

    cmpg-float v21, v21, v18

    if-gez v21, :cond_8

    .line 343
    const/4 v6, 0x1

    goto/16 :goto_4

    .line 361
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 365
    .end local v6    # "bOverride":Z
    .end local v10    # "ballx":F
    .end local v11    # "bally":F
    :cond_c
    const/high16 v21, 0x3fa00000

    mul-float v21, v21, v16

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->strength:F

    .line 366
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->angle:F

    .line 368
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->ignoreLog:Z

    .line 370
    const/16 v21, 0x0

    aget-object v21, p2, v21

    move v0, v7

    move-object/from16 v1, v21

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->x:F

    .line 371
    const/16 v21, 0x0

    aget-object v21, p2, v21

    move v0, v8

    move-object/from16 v1, v21

    iput v0, v1, Lcom/forthblue/pool/engine/PoolBall;->y:F

    .line 373
    const-string v21, "Pool"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Freeball got level "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->maxlevel:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->maxlevel:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 375
    const-string v21, "Pool"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Try hitting ball "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_d
    :goto_5
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->maxlevel:I

    goto/16 :goto_2

    .line 376
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase$1;->maxlevel:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_d

    .line 377
    const-string v21, "Pool"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Try potting ball "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
