.class public Lcom/fruitsmobile/basket/Time;
.super Ljava/lang/Object;
.source "Time.java"


# static fields
.field protected static drawRealTicks:J

.field protected static drawTicks:J

.field protected static drawTicksFraction:F

.field protected static lastDrawTicks:J

.field protected static lastLoopTicks:J

.field protected static loopRealTicks:J

.field protected static loopTicks:J

.field protected static loopTicksFraction:F

.field protected static pauseStart:J

.field protected static pauseTime:J

.field protected static paused:Z

.field protected static ticksSinceLastFrame:I

.field protected static ticksSinceLastLoop:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDrawTicks()J
    .locals 2

    .prologue
    .line 71
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->drawTicks:J

    return-wide v0
.end method

.method public static getDrawTicksFraction()F
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/fruitsmobile/basket/Time;->drawTicksFraction:F

    return v0
.end method

.method public static getLastDrawTicks()J
    .locals 2

    .prologue
    .line 98
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->lastDrawTicks:J

    return-wide v0
.end method

.method public static getLastLoopTicks()J
    .locals 2

    .prologue
    .line 62
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->lastLoopTicks:J

    return-wide v0
.end method

.method public static getLoopTicks()J
    .locals 2

    .prologue
    .line 50
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->loopTicks:J

    return-wide v0
.end method

.method public static getLoopTicksFraction()F
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/fruitsmobile/basket/Time;->loopTicksFraction:F

    return v0
.end method

.method public static getTicksSinceLastFrame()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/fruitsmobile/basket/Time;->ticksSinceLastFrame:I

    return v0
.end method

.method public static getTicksSinceLastLoop()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/fruitsmobile/basket/Time;->ticksSinceLastLoop:I

    return v0
.end method

.method public static now()J
    .locals 2

    .prologue
    .line 46
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->loopRealTicks:J

    return-wide v0
.end method

.method public static pause()V
    .locals 2

    .prologue
    .line 105
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->drawTicks:J

    sput-wide v0, Lcom/fruitsmobile/basket/Time;->pauseStart:J

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fruitsmobile/basket/Time;->paused:Z

    .line 107
    return-void
.end method

.method public static resume()V
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/fruitsmobile/basket/Time;->pauseStart:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/fruitsmobile/basket/Time;->pauseTime:J

    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fruitsmobile/basket/Time;->paused:Z

    .line 115
    return-void
.end method

.method protected static update()V
    .locals 4

    .prologue
    .line 22
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->drawTicks:J

    sput-wide v0, Lcom/fruitsmobile/basket/Time;->lastDrawTicks:J

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/fruitsmobile/basket/Time;->drawRealTicks:J

    .line 24
    sget-boolean v0, Lcom/fruitsmobile/basket/Time;->paused:Z

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->drawRealTicks:J

    sget-wide v2, Lcom/fruitsmobile/basket/Time;->pauseTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/fruitsmobile/basket/Time;->drawTicks:J

    .line 27
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->lastDrawTicks:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 29
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->drawTicks:J

    sget-wide v2, Lcom/fruitsmobile/basket/Time;->lastDrawTicks:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/fruitsmobile/basket/Time;->ticksSinceLastFrame:I

    .line 30
    sget v0, Lcom/fruitsmobile/basket/Time;->ticksSinceLastFrame:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000

    div-float/2addr v0, v1

    sput v0, Lcom/fruitsmobile/basket/Time;->drawTicksFraction:F

    goto :goto_0
.end method

.method protected static updateLoop()V
    .locals 4

    .prologue
    .line 34
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->loopTicks:J

    sput-wide v0, Lcom/fruitsmobile/basket/Time;->lastLoopTicks:J

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/fruitsmobile/basket/Time;->loopRealTicks:J

    .line 36
    sget-boolean v0, Lcom/fruitsmobile/basket/Time;->paused:Z

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->loopRealTicks:J

    sget-wide v2, Lcom/fruitsmobile/basket/Time;->pauseTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/fruitsmobile/basket/Time;->loopTicks:J

    .line 39
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->lastLoopTicks:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 41
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->loopTicks:J

    sget-wide v2, Lcom/fruitsmobile/basket/Time;->lastLoopTicks:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/fruitsmobile/basket/Time;->ticksSinceLastLoop:I

    .line 42
    sget v0, Lcom/fruitsmobile/basket/Time;->ticksSinceLastLoop:I

    int-to-float v0, v0

    const/high16 v1, 0x447a0000

    div-float/2addr v0, v1

    sput v0, Lcom/fruitsmobile/basket/Time;->loopTicksFraction:F

    goto :goto_0
.end method
