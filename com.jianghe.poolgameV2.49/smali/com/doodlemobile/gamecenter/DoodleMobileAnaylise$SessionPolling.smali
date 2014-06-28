.class Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$SessionPolling;
.super Ljava/util/TimerTask;
.source "DoodleMobileAnaylise.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionPolling"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)V
    .locals 0

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$SessionPolling;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1025
    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$1;)V
    .locals 0

    .prologue
    .line 1023
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$SessionPolling;-><init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)V

    return-void
.end method


# virtual methods
.method public isTopTask()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1033
    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$SessionPolling;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1400(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1036
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$SessionPolling;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1400(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1041
    :goto_0
    return v0

    .line 1039
    :catch_0
    move-exception v0

    move v0, v2

    .line 1041
    goto :goto_0
.end method

.method public declared-synchronized run()V
    .locals 2

    .prologue
    .line 1028
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$SessionPolling;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$SessionPolling;->isTopTask()Z

    move-result v1

    # invokes: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->handleSessionStatus(Z)V
    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1900(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    monitor-exit p0

    return-void

    .line 1028
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
