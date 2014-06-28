.class final Lcom/fruitsmobile/basket/MotionService$2;
.super Ljava/lang/Object;
.source "MotionService.java"

# interfaces
.implements Lcom/fruitsmobile/basket/MotionService$wrapperInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fruitsmobile/basket/MotionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processMotionEvent(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 113
    .local v0, "eventtime":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sget v7, Lcom/fruitsmobile/basket/MotionService;->xScale:F

    mul-float v2, v6, v7

    .line 114
    .local v2, "newx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sget v7, Lcom/fruitsmobile/basket/MotionService;->yScale:F

    mul-float v3, v6, v7

    .line 115
    .local v3, "newy":F
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v6

    aget-object v6, v6, v9

    iget-wide v6, v6, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->lastEventTime:J

    sub-long v4, v0, v6

    .line 117
    .local v4, "timeDelay":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 118
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v6

    aget-object v6, v6, v9

    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v7

    aget-object v7, v7, v9

    iget v7, v7, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->x:F

    sub-float v7, v2, v7

    long-to-float v8, v4

    div-float/2addr v7, v8

    iput v7, v6, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->vx:F

    .line 119
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v6

    aget-object v6, v6, v9

    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v7

    aget-object v7, v7, v9

    iget v7, v7, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->y:F

    sub-float v7, v3, v7

    long-to-float v8, v4

    div-float/2addr v7, v8

    iput v7, v6, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->vy:F

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .line 135
    :goto_0
    :pswitch_0
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v6

    aget-object v6, v6, v9

    iput v2, v6, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->x:F

    .line 136
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v6

    aget-object v6, v6, v9

    iput v3, v6, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->y:F

    .line 137
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v7

    iput v7, v6, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->pressure:F

    .line 138
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v6

    aget-object v6, v6, v9

    iput-wide v0, v6, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->lastEventTime:J

    .line 139
    return-void

    .line 124
    :pswitch_1
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v6

    aget-object v6, v6, v9

    iget v7, v6, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->downcount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->downcount:I

    .line 125
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v6

    aget-object v6, v6, v9

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->pressing:Z

    goto :goto_0

    .line 129
    :pswitch_2
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v6

    aget-object v6, v6, v9

    iget v7, v6, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->upcount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->upcount:I

    .line 130
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v6

    aget-object v6, v6, v9

    iput-boolean v9, v6, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->pressing:Z

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
