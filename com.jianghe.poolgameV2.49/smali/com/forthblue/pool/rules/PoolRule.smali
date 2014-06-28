.class public interface abstract Lcom/forthblue/pool/rules/PoolRule;
.super Ljava/lang/Object;
.source "PoolRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/forthblue/pool/rules/PoolRule$RoundState;
    }
.end annotation


# static fields
.field public static final PLAYER_TYPE_AI:I = 0x1

.field public static final PLAYER_TYPE_PLAYER:I = 0x0

.field public static final STATE_END:I = 0x4

.field public static final STATE_FREEBALL:I = 0x3

.field public static final STATE_RUNNING:I = 0x2

.field public static final STATE_WAITING:I = 0x1


# virtual methods
.method public abstract canPut([Lcom/forthblue/pool/engine/PoolBall;IFF)Z
.end method

.method public abstract checkFreeballArea(Lcom/forthblue/pool/rules/PoolRule$RoundState;Lcom/forthblue/pool/engine/PoolBall;)V
.end method

.method public abstract createRoundState()Lcom/forthblue/pool/rules/PoolRule$RoundState;
.end method

.method public abstract getAI()Lcom/forthblue/pool/engine/PoolAI;
.end method

.method public abstract getAimTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;)I
.end method

.method public abstract getBallCount()I
.end method

.method public abstract getBallRadius()F
.end method

.method public abstract getBallTexture(I)Lcom/fruitsmobile/basket/resources/Texture;
.end method

.method public abstract getBlockerCount()I
.end method

.method public abstract getClickTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;)I
.end method

.method public abstract getDefaultAimAngle()F
.end method

.method public abstract getForce()F
.end method

.method public abstract getHighlightTexture()Lcom/fruitsmobile/basket/resources/Texture;
.end method

.method public abstract getHoleCount()I
.end method

.method public abstract getHoleGravity()F
.end method

.method public abstract getMaxStrength()F
.end method

.method public abstract getMinStrength()F
.end method

.method public abstract getPlayerCount()I
.end method

.method public abstract getPlayerType(I)I
.end method

.method public abstract getRollForce()F
.end method

.method public abstract getShadowTexture()Lcom/fruitsmobile/basket/resources/Texture;
.end method

.method public abstract getTableHeight()F
.end method

.method public abstract getTableWidth()F
.end method

.method public abstract getTargetTexture()Lcom/fruitsmobile/basket/resources/Texture;
.end method

.method public abstract isAvailableTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)Z
.end method

.method public abstract newMatch(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
.end method

.method public abstract onClick(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;)V
.end method

.method public abstract onHitBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;II[Lcom/forthblue/pool/engine/PoolBall;)V
.end method

.method public abstract onHitBlocker(Lcom/forthblue/pool/rules/PoolRule$RoundState;II[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolBlocker;)V
.end method

.method public abstract onPotBall(Lcom/forthblue/pool/rules/PoolRule$RoundState;I[Lcom/forthblue/pool/engine/PoolBall;Lcom/forthblue/pool/engine/PoolHole;)Z
.end method

.method public abstract onPutFreeball(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;I)V
.end method

.method public abstract onRoundOver(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
.end method

.method public abstract onTimeOver(Lcom/forthblue/pool/rules/PoolRule$RoundState;[Lcom/forthblue/pool/engine/PoolBall;)V
.end method

.method public abstract resetBalls([Lcom/forthblue/pool/engine/PoolBall;[Lcom/forthblue/pool/engine/PoolHole;)V
.end method

.method public abstract resetBlockers([Lcom/forthblue/pool/engine/PoolBlocker;)V
.end method

.method public abstract resetHoles([Lcom/forthblue/pool/engine/PoolHole;)V
.end method

.method public abstract resetRoundState(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V
.end method

.method public abstract resetRoundStateData(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V
.end method

.method public abstract showTargetSign(Lcom/forthblue/pool/rules/PoolRule$RoundState;)Z
.end method
