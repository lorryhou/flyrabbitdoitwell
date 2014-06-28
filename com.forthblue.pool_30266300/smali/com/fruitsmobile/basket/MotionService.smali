.class public Lcom/fruitsmobile/basket/MotionService;
.super Ljava/lang/Object;
.source "MotionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fruitsmobile/basket/MotionService$Handler;,
        Lcom/fruitsmobile/basket/MotionService$wrapperInterface;,
        Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    }
.end annotation


# static fields
.field public static final MAX_MOTION_POINT_COUNT:I = 0xa

.field private static lock:Ljava/lang/Object;

.field private static motionVersion:I

.field private static points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

.field private static wrapper:Lcom/fruitsmobile/basket/MotionService$wrapperInterface;

.field public static xScale:F

.field public static yScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x5

    const/high16 v5, 0x3f800000

    const/4 v4, 0x0

    .line 24
    new-array v2, v7, [Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    sput-object v2, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    .line 27
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 28
    sget-object v2, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    new-instance v3, Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    invoke-direct {v3}, Lcom/fruitsmobile/basket/MotionService$MotionPoint;-><init>()V

    aput-object v3, v2, v1

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/fruitsmobile/basket/MotionService;->lock:Ljava/lang/Object;

    .line 34
    sput v5, Lcom/fruitsmobile/basket/MotionService;->xScale:F

    .line 35
    sput v5, Lcom/fruitsmobile/basket/MotionService;->yScale:F

    .line 37
    sput v4, Lcom/fruitsmobile/basket/MotionService;->motionVersion:I

    .line 48
    :try_start_0
    const-class v0, Landroid/view/MotionEvent;

    .line 49
    .local v0, "classType":Ljava/lang/Class;
    const-string v2, "getPointerCount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "getPointerId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "getX"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "getY"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 53
    const/4 v2, 0x5

    sput v2, Lcom/fruitsmobile/basket/MotionService;->motionVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0    # "classType":Ljava/lang/Class;
    :cond_1
    :goto_1
    sget v2, Lcom/fruitsmobile/basket/MotionService;->motionVersion:I

    if-lt v2, v6, :cond_2

    .line 60
    new-instance v2, Lcom/fruitsmobile/basket/MotionService$1;

    invoke-direct {v2}, Lcom/fruitsmobile/basket/MotionService$1;-><init>()V

    sput-object v2, Lcom/fruitsmobile/basket/MotionService;->wrapper:Lcom/fruitsmobile/basket/MotionService$wrapperInterface;

    .line 142
    :goto_2
    return-void

    .line 108
    :cond_2
    new-instance v2, Lcom/fruitsmobile/basket/MotionService$2;

    invoke-direct {v2}, Lcom/fruitsmobile/basket/MotionService$2;-><init>()V

    sput-object v2, Lcom/fruitsmobile/basket/MotionService;->wrapper:Lcom/fruitsmobile/basket/MotionService$wrapperInterface;

    goto :goto_2

    .line 55
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method static synthetic access$000()[Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    return-object v0
.end method

.method public static cancelMotion(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 234
    if-ltz p0, :cond_0

    const/16 v0, 0xa

    if-lt p0, v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    invoke-interface {v0, p0}, Lcom/fruitsmobile/basket/interfaces/Motionable;->onMotionCancel(I)V

    .line 238
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v0, v0, p0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    goto :goto_0
.end method

.method public static getPoint(I)Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 145
    if-ltz p0, :cond_0

    const/16 v0, 0xa

    if-lt p0, v0, :cond_1

    .line 146
    :cond_0
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 147
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static ignoreTouchEvent()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 193
    sget-object v1, Lcom/fruitsmobile/basket/MotionService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 195
    :try_start_0
    sget-object v2, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->downcount:I

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 199
    sget-object v2, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->pressing:Z

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_2

    .line 203
    sget-object v2, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->upcount:I

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 205
    :cond_2
    monitor-exit v1

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static onLogicFrame(Lcom/fruitsmobile/basket/MotionService$Handler;)V
    .locals 7
    .param p0, "engine"    # Lcom/fruitsmobile/basket/MotionService$Handler;

    .prologue
    const/16 v6, 0xa

    .line 163
    sget-object v1, Lcom/fruitsmobile/basket/MotionService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 166
    :try_start_0
    sget-object v2, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->downcount:I

    if-lez v2, :cond_0

    sget-object v2, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->pressing:Z

    if-eqz v2, :cond_0

    .line 167
    invoke-interface {p0, v0}, Lcom/fruitsmobile/basket/MotionService$Handler;->onTouchDown(I)V

    .line 169
    :cond_0
    sget-object v2, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->downcount:I

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_3

    .line 173
    sget-object v2, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->pressing:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    if-eqz v2, :cond_2

    .line 174
    sget-object v2, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    sget-object v3, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->x:F

    sget-object v4, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->basex:F

    sub-float/2addr v3, v4

    sget-object v4, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->y:F

    sget-object v5, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->basey:F

    sub-float/2addr v4, v5

    invoke-interface {v2, v0, v3, v4}, Lcom/fruitsmobile/basket/interfaces/Motionable;->onMotionMove(IFF)V

    .line 172
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_5

    .line 180
    sget-object v2, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->upcount:I

    if-lez v2, :cond_4

    sget-object v2, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->pressing:Z

    if-nez v2, :cond_4

    .line 181
    invoke-interface {p0, v0}, Lcom/fruitsmobile/basket/MotionService$Handler;->onTouchUp(I)V

    .line 182
    sget-object v2, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    if-eqz v2, :cond_4

    .line 183
    sget-object v2, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    sget-object v3, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->x:F

    sget-object v4, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->basex:F

    sub-float/2addr v3, v4

    sget-object v4, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->y:F

    sget-object v5, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->basey:F

    sub-float/2addr v4, v5

    invoke-interface {v2, v0, v3, v4}, Lcom/fruitsmobile/basket/interfaces/Motionable;->onMotionOver(IFF)V

    .line 184
    sget-object v2, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    .line 187
    :cond_4
    sget-object v2, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->upcount:I

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 189
    :cond_5
    monitor-exit v1

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static processMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    sget-object v1, Lcom/fruitsmobile/basket/MotionService;->wrapper:Lcom/fruitsmobile/basket/MotionService$wrapperInterface;

    invoke-interface {v1, p0}, Lcom/fruitsmobile/basket/MotionService$wrapperInterface;->processMotionEvent(Landroid/view/MotionEvent;)V

    .line 153
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "target"    # Lcom/fruitsmobile/basket/interfaces/Motionable;

    .prologue
    const/4 v1, 0x0

    .line 209
    if-ltz p0, :cond_0

    const/16 v0, 0xa

    if-lt p0, v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    if-eqz v0, :cond_2

    .line 212
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    invoke-interface {v0, p0}, Lcom/fruitsmobile/basket/interfaces/Motionable;->onMotionCancel(I)V

    .line 214
    :cond_2
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v0, v0, p0

    iput-object p1, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    .line 215
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v0, v0, p0

    iput v1, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->basex:F

    .line 216
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v0, v0, p0

    iput v1, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->basey:F

    .line 217
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->x:F

    sget-object v1, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v1, v1, p0

    iget v1, v1, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->y:F

    invoke-interface {p1, p0, v0, v1}, Lcom/fruitsmobile/basket/interfaces/Motionable;->onMotionBegin(IFF)V

    goto :goto_0
.end method

.method public static startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;FF)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "target"    # Lcom/fruitsmobile/basket/interfaces/Motionable;
    .param p2, "basex"    # F
    .param p3, "basey"    # F

    .prologue
    .line 222
    if-ltz p0, :cond_0

    const/16 v0, 0xa

    if-lt p0, v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    if-eqz v0, :cond_2

    .line 225
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    invoke-interface {v0, p0}, Lcom/fruitsmobile/basket/interfaces/Motionable;->onMotionCancel(I)V

    .line 227
    :cond_2
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v0, v0, p0

    iput-object p1, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->target:Lcom/fruitsmobile/basket/interfaces/Motionable;

    .line 228
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v0, v0, p0

    iput p2, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->basex:F

    .line 229
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v0, v0, p0

    iput p3, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->basey:F

    .line 230
    sget-object v0, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->x:F

    sub-float/2addr v0, p2

    sget-object v1, Lcom/fruitsmobile/basket/MotionService;->points:[Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    aget-object v1, v1, p0

    iget v1, v1, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->y:F

    sub-float/2addr v1, p3

    invoke-interface {p1, p0, v0, v1}, Lcom/fruitsmobile/basket/interfaces/Motionable;->onMotionBegin(IFF)V

    goto :goto_0
.end method
