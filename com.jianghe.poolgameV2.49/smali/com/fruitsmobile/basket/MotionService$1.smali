.class final Lcom/fruitsmobile/basket/MotionService$1;
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
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processMotionEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 65
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 66
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 67
    .local v5, "ind":I
    if-ltz v5, :cond_0

    const/16 v11, 0xa

    if-lt v5, v11, :cond_1

    .line 65
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    sget v12, Lcom/fruitsmobile/basket/MotionService;->xScale:F

    mul-float v7, v11, v12

    .line 71
    .local v7, "newx":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    sget v12, Lcom/fruitsmobile/basket/MotionService;->yScale:F

    mul-float v8, v11, v12

    .line 72
    .local v8, "newy":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 74
    .local v2, "eventtime":J
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v11

    aget-object v11, v11, v5

    iget-wide v11, v11, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->lastEventTime:J

    sub-long v9, v2, v11

    .line 76
    .local v9, "timeDelay":J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-lez v11, :cond_2

    .line 77
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v11

    aget-object v11, v11, v5

    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v12

    aget-object v12, v12, v5

    iget v12, v12, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->x:F

    sub-float v12, v7, v12

    long-to-float v13, v9

    div-float/2addr v12, v13

    iput v12, v11, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->vx:F

    .line 78
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v11

    aget-object v11, v11, v5

    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v12

    aget-object v12, v12, v5

    iget v12, v12, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->y:F

    sub-float v12, v8, v12

    long-to-float v13, v9

    div-float/2addr v12, v13

    iput v12, v11, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->vy:F

    .line 81
    :cond_2
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v11

    aget-object v11, v11, v5

    iput-wide v2, v11, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->lastEventTime:J

    .line 82
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v11

    aget-object v11, v11, v5

    iput v7, v11, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->x:F

    .line 83
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v11

    aget-object v11, v11, v5

    iput v8, v11, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->y:F

    .line 84
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v11

    aget-object v11, v11, v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v12

    iput v12, v11, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->pressure:F

    goto :goto_1

    .line 87
    .end local v2    # "eventtime":J
    .end local v5    # "ind":I
    .end local v7    # "newx":F
    .end local v8    # "newy":F
    .end local v9    # "timeDelay":J
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 88
    .local v0, "action":I
    shr-int/lit8 v11, v0, 0x8

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 89
    .local v6, "index":I
    and-int/lit16 v0, v0, 0xff

    .line 91
    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_2
    :pswitch_0
    return-void

    .line 94
    :pswitch_1
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v11

    aget-object v11, v11, v6

    iget v12, v11, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->downcount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->downcount:I

    .line 95
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v11

    aget-object v11, v11, v6

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->pressing:Z

    goto :goto_2

    .line 101
    :pswitch_2
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v11

    aget-object v11, v11, v6

    iget v12, v11, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->upcount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->upcount:I

    .line 102
    # getter for: Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    invoke-static {}, Lcom/fruitsmobile/basket/MotionService;->access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v11

    aget-object v11, v11, v6

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->pressing:Z

    goto :goto_2

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
