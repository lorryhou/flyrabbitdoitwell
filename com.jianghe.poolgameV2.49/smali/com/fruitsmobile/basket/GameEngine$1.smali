.class Lcom/fruitsmobile/basket/GameEngine$1;
.super Ljava/lang/Object;
.source "GameEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fruitsmobile/basket/GameEngine;->createLogicThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fruitsmobile/basket/GameEngine;


# direct methods
.method constructor <init>(Lcom/fruitsmobile/basket/GameEngine;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/fruitsmobile/basket/GameEngine$1;->this$0:Lcom/fruitsmobile/basket/GameEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x10

    .line 204
    :goto_0
    iget-object v8, p0, Lcom/fruitsmobile/basket/GameEngine$1;->this$0:Lcom/fruitsmobile/basket/GameEngine;

    iget-boolean v8, v8, Lcom/fruitsmobile/basket/GameEngine;->finished:Z

    if-nez v8, :cond_2

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 206
    .local v6, "startTime":J
    iget-object v8, p0, Lcom/fruitsmobile/basket/GameEngine$1;->this$0:Lcom/fruitsmobile/basket/GameEngine;

    iget-wide v8, v8, Lcom/fruitsmobile/basket/GameEngine;->lastTime:J

    sub-long v0, v6, v8

    .line 207
    .local v0, "deltaTime":J
    move-wide v4, v0

    .line 209
    .local v4, "finalDelta":J
    const-wide/16 v8, 0xc

    cmp-long v8, v0, v8

    if-lez v8, :cond_0

    .line 210
    iget-object v8, p0, Lcom/fruitsmobile/basket/GameEngine$1;->this$0:Lcom/fruitsmobile/basket/GameEngine;

    iput-wide v6, v8, Lcom/fruitsmobile/basket/GameEngine;->lastTime:J

    .line 212
    iget-object v8, p0, Lcom/fruitsmobile/basket/GameEngine$1;->this$0:Lcom/fruitsmobile/basket/GameEngine;

    invoke-virtual {v8, v0, v1}, Lcom/fruitsmobile/basket/GameEngine;->onLogicFrame(J)V

    .line 213
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 215
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 216
    .local v2, "endTime":J
    sub-long v4, v2, v6

    .line 217
    cmp-long v8, v4, v11

    if-gez v8, :cond_0

    .line 219
    sub-long v8, v11, v4

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    .end local v2    # "endTime":J
    :cond_0
    :goto_1
    sget-object v8, Lcom/fruitsmobile/basket/GameEngine;->pauseLock:Ljava/lang/Object;

    monitor-enter v8

    .line 226
    :goto_2
    :try_start_1
    sget-boolean v9, Lcom/fruitsmobile/basket/GameEngine;->paused:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 228
    :try_start_2
    sget-object v9, Lcom/fruitsmobile/basket/GameEngine;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 229
    :catch_0
    move-exception v9

    goto :goto_2

    .line 232
    :cond_1
    :try_start_3
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 220
    .restart local v2    # "endTime":J
    :catch_1
    move-exception v8

    goto :goto_1

    .line 234
    .end local v0    # "deltaTime":J
    .end local v2    # "endTime":J
    .end local v4    # "finalDelta":J
    .end local v6    # "startTime":J
    :cond_2
    return-void
.end method
