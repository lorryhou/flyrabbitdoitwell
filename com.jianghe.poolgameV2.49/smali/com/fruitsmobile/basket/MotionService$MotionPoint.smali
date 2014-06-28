.class public Lcom/fruitsmobile/basket/MotionService$MotionPoint;
.super Ljava/lang/Object;
.source "MotionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fruitsmobile/basket/MotionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionPoint"
.end annotation


# instance fields
.field public basex:F

.field public basey:F

.field public downcount:I

.field public lastEventTime:J

.field public pressing:Z

.field public pressure:F

.field public target:Lcom/fruitsmobile/basket/interfaces/Motionable;

.field public upcount:I

.field public vx:F

.field public vy:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->downcount:I

    iput v1, p0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->upcount:I

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    .line 20
    iput-boolean v1, p0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->pressing:Z

    return-void
.end method
