.class Lcom/fruitsmobile/basket/FPSCounter;
.super Ljava/lang/Object;
.source "FPSCounter.java"


# static fields
.field protected static final FPS_AVG:I = 0x5

.field protected static frameCount:I

.field protected static logicFPS:F

.field protected static loopCount:I

.field protected static loopSecondStart:J

.field protected static renderFPS:F

.field protected static secondStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 13
    sput v1, Lcom/fruitsmobile/basket/FPSCounter;->frameCount:I

    .line 14
    sput-wide v2, Lcom/fruitsmobile/basket/FPSCounter;->secondStart:J

    .line 16
    sput v1, Lcom/fruitsmobile/basket/FPSCounter;->loopCount:I

    .line 17
    sput-wide v2, Lcom/fruitsmobile/basket/FPSCounter;->loopSecondStart:J

    .line 19
    sput v0, Lcom/fruitsmobile/basket/FPSCounter;->renderFPS:F

    .line 20
    sput v0, Lcom/fruitsmobile/basket/FPSCounter;->logicFPS:F

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogicFPS()F
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/fruitsmobile/basket/FPSCounter;->logicFPS:F

    return v0
.end method

.method public static getRenderFPS()F
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/fruitsmobile/basket/FPSCounter;->renderFPS:F

    return v0
.end method

.method protected static onFrame()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1388

    .line 31
    sget-wide v0, Lcom/fruitsmobile/basket/FPSCounter;->secondStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 32
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->drawTicks:J

    sput-wide v0, Lcom/fruitsmobile/basket/FPSCounter;->secondStart:J

    .line 33
    sget v0, Lcom/fruitsmobile/basket/FPSCounter;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/fruitsmobile/basket/FPSCounter;->frameCount:I

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    sget v0, Lcom/fruitsmobile/basket/FPSCounter;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/fruitsmobile/basket/FPSCounter;->frameCount:I

    .line 37
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->drawTicks:J

    sget-wide v2, Lcom/fruitsmobile/basket/FPSCounter;->secondStart:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 38
    sget-wide v0, Lcom/fruitsmobile/basket/FPSCounter;->secondStart:J

    add-long/2addr v0, v4

    sput-wide v0, Lcom/fruitsmobile/basket/FPSCounter;->secondStart:J

    .line 39
    sget v0, Lcom/fruitsmobile/basket/FPSCounter;->frameCount:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    sput v0, Lcom/fruitsmobile/basket/FPSCounter;->renderFPS:F

    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/fruitsmobile/basket/FPSCounter;->frameCount:I

    goto :goto_0
.end method

.method protected static onLoop()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1388

    .line 47
    sget-wide v0, Lcom/fruitsmobile/basket/FPSCounter;->loopSecondStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 48
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->loopTicks:J

    sput-wide v0, Lcom/fruitsmobile/basket/FPSCounter;->loopSecondStart:J

    .line 49
    sget v0, Lcom/fruitsmobile/basket/FPSCounter;->loopCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/fruitsmobile/basket/FPSCounter;->loopCount:I

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    sget v0, Lcom/fruitsmobile/basket/FPSCounter;->loopCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/fruitsmobile/basket/FPSCounter;->loopCount:I

    .line 53
    sget-wide v0, Lcom/fruitsmobile/basket/Time;->loopTicks:J

    sget-wide v2, Lcom/fruitsmobile/basket/FPSCounter;->loopSecondStart:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 54
    sget-wide v0, Lcom/fruitsmobile/basket/FPSCounter;->loopSecondStart:J

    add-long/2addr v0, v4

    sput-wide v0, Lcom/fruitsmobile/basket/FPSCounter;->loopSecondStart:J

    .line 55
    sget v0, Lcom/fruitsmobile/basket/FPSCounter;->loopCount:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    sput v0, Lcom/fruitsmobile/basket/FPSCounter;->logicFPS:F

    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/fruitsmobile/basket/FPSCounter;->loopCount:I

    goto :goto_0
.end method
