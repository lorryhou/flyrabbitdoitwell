.class public Lcom/miaozhen/mzmonitor/MZRequestHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;
    }
.end annotation


# instance fields
.field private a:Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler;->b:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler;->a:Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/miaozhen/mzmonitor/MZRequestHandler;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 71
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 72
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 73
    if-eqz v0, :cond_0

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 76
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 78
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 79
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 80
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/miaozhen/mzmonitor/MZRequestHandler;)Lcom/miaozhen/mzmonitor/MZCacheDescriptor;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler;->a:Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 33
    .line 35
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->a(Landroid/content/Context;)Lcom/miaozhen/mzmonitor/MZCacheHandler;

    move-result-object v3

    .line 37
    :try_start_0
    new-instance v0, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;

    invoke-direct {v0, p0}, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;-><init>(Lcom/miaozhen/mzmonitor/MZRequestHandler;)V

    .line 38
    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZRequestHandler$MZRequest;->a()Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 41
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 42
    const-string v4, "MZSDK:20130601"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Response code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-ltz v0, :cond_2

    const/16 v4, 0x190

    if-ge v0, v4, :cond_2

    .line 44
    const-string v0, "MZSDK:20130601"

    const-string v4, "Request has been successfully sent"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler;->a:Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->a(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;Z)V

    .line 46
    const-string v0, "Location"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 60
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 61
    invoke-direct {p0, v2}, Lcom/miaozhen/mzmonitor/MZRequestHandler;->a(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 65
    :cond_1
    :goto_1
    return-void

    .line 48
    :cond_2
    :try_start_2
    const-string v0, "MZSDK:20130601"

    const-string v4, "Failed to send request"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler;->a:Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->a(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;Z)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    :goto_2
    :try_start_3
    const-string v4, "MZSDK:20130601"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Connection Error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZRequestHandler;->a:Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->a(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    invoke-direct {p0, v2}, Lcom/miaozhen/mzmonitor/MZRequestHandler;->a(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 59
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 60
    :goto_3
    if-eqz v1, :cond_3

    .line 61
    invoke-direct {p0, v2}, Lcom/miaozhen/mzmonitor/MZRequestHandler;->a(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 64
    :cond_3
    throw v0

    .line 59
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 56
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
