.class public Lcom/miaozhen/mzmonitor/MZMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/Handler;

.field private static b:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/miaozhen/mzmonitor/MZMonitor;->a:Landroid/os/Handler;

    .line 22
    sput-object v0, Lcom/miaozhen/mzmonitor/MZMonitor;->b:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "a2.0"

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 82
    invoke-static {p0}, Lcom/miaozhen/mzmonitor/MZSdkProfile;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0}, Lcom/miaozhen/mzmonitor/MZSdkProfile;->i(Landroid/content/Context;)V

    .line 85
    :cond_0
    invoke-static {p0}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->a(Landroid/content/Context;)Lcom/miaozhen/mzmonitor/MZCacheHandler;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->d()Ljava/util/List;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 93
    :cond_1
    return-void

    .line 90
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    .line 91
    invoke-static {p0, v0}, Lcom/miaozhen/mzmonitor/MZMonitor;->a(Landroid/content/Context;Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;DDD)V
    .locals 5

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    cmpl-double v0, p5, v0

    if-lez v0, :cond_0

    const-wide v0, 0x408f400000000000L

    cmpg-double v0, p5, v0

    if-gez v0, :cond_0

    .line 46
    const-string v0, "%.7f,%.7f,%f,%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {}, Lcom/miaozhen/mzmonitor/MZUtility;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/miaozhen/mzmonitor/MZCrypto;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miaozhen/mzmonitor/MZSdkProfile;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)V
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/miaozhen/mzmonitor/MZMonitor;->b()V

    .line 72
    new-instance v0, Lcom/miaozhen/mzmonitor/MZMonitor$1;

    invoke-direct {v0, p0, p1}, Lcom/miaozhen/mzmonitor/MZMonitor$1;-><init>(Landroid/content/Context;Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)V

    .line 78
    sget-object v1, Lcom/miaozhen/mzmonitor/MZMonitor;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p1}, Lcom/miaozhen/mzmonitor/MZMonitor;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p0, p1}, Lcom/miaozhen/mzmonitor/MZSdkProfile;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    invoke-direct {v0, p1, p2, p3}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p0, v0}, Lcom/miaozhen/mzmonitor/MZMonitor;->a(Landroid/content/Context;Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)V

    .line 58
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 102
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 103
    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string v2, ".mzhen.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".miaozhen.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x1

    .line 114
    :cond_1
    :goto_0
    return v0

    .line 111
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b()V
    .locals 3

    .prologue
    .line 25
    const-class v1, Lcom/miaozhen/mzmonitor/MZMonitor;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/miaozhen/mzmonitor/MZMonitor;->b:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "MZMonitor"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miaozhen/mzmonitor/MZMonitor;->b:Landroid/os/HandlerThread;

    .line 28
    sget-object v0, Lcom/miaozhen/mzmonitor/MZMonitor;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/miaozhen/mzmonitor/MZMonitor;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miaozhen/mzmonitor/MZMonitor;->a:Landroid/os/Handler;

    .line 25
    :cond_0
    monitor-exit v1

    .line 32
    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 97
    invoke-static {p0}, Lcom/miaozhen/mzmonitor/MZMonitor;->a(Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-static {p0, p1, v0, v0}, Lcom/miaozhen/mzmonitor/MZMonitor;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 67
    invoke-static {p0, p1, p2, p3}, Lcom/miaozhen/mzmonitor/MZMonitor;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/miaozhen/mzmonitor/MZMonitor;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    return-void
.end method
