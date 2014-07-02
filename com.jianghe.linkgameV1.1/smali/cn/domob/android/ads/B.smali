.class public Lcn/domob/android/ads/B;
.super Lcn/domob/android/ads/a/e;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/m$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/B$a;
    }
.end annotation


# static fields
.field private static d:Lcn/domob/android/ads/d/e; = null

.field private static final f:Ljava/lang/String; = "domobBridge"


# instance fields
.field private e:Lcn/domob/android/ads/B$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/B;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/B;->d:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcn/domob/android/ads/B$a;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 40
    iput-object p4, p0, Lcn/domob/android/ads/B;->e:Lcn/domob/android/ads/B$a;

    .line 41
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/B;)Lcn/domob/android/ads/B$a;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcn/domob/android/ads/B;->e:Lcn/domob/android/ads/B$a;

    return-object v0
.end method

.method static synthetic a()Lcn/domob/android/ads/d/e;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcn/domob/android/ads/B;->d:Lcn/domob/android/ads/d/e;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/B;[BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/B;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a([BLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/domob/android/ads/B;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 178
    :goto_0
    return-object v0

    .line 161
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 162
    goto :goto_0

    .line 173
    :catch_1
    move-exception v1

    .line 174
    sget-object v2, Lcn/domob/android/ads/B;->d:Lcn/domob/android/ads/d/e;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 167
    :catch_2
    move-exception v0

    .line 168
    :try_start_3
    sget-object v2, Lcn/domob/android/ads/B;->d:Lcn/domob/android/ads/d/e;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    move-object v0, v1

    .line 175
    goto :goto_0

    .line 173
    :catch_3
    move-exception v0

    .line 174
    sget-object v2, Lcn/domob/android/ads/B;->d:Lcn/domob/android/ads/d/e;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 171
    :catchall_0
    move-exception v0

    .line 172
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 175
    :goto_2
    throw v0

    .line 173
    :catch_4
    move-exception v1

    .line 174
    sget-object v2, Lcn/domob/android/ads/B;->d:Lcn/domob/android/ads/d/e;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Lcn/domob/android/ads/B;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/domob/android/ads/d/d;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "domob.js"

    aput-object v3, v1, v2

    .line 47
    invoke-super {p0, v0, v1}, Lcn/domob/android/ads/a/e;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcn/domob/android/ads/m;)V
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p1}, Lcn/domob/android/ads/m;->f()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 118
    invoke-virtual {p1}, Lcn/domob/android/ads/m;->a()Ljava/lang/String;

    move-result-object v0

    .line 119
    sget-object v1, Lcn/domob/android/ads/B;->d:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download finish:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 120
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcn/domob/android/ads/B$1;

    invoke-direct {v2, p0, p1, v0}, Lcn/domob/android/ads/B$1;-><init>(Lcn/domob/android/ads/B;Lcn/domob/android/ads/m;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 153
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 53
    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/B;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcn/domob/android/ads/B;->e:Lcn/domob/android/ads/B$a;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcn/domob/android/ads/B;->e:Lcn/domob/android/ads/B$a;

    invoke-interface {v0, p0}, Lcn/domob/android/ads/B$a;->a(Lcn/domob/android/ads/a/e;)V

    .line 64
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 68
    :try_start_0
    new-instance v0, Lcn/domob/android/ads/c;

    invoke-direct {v0}, Lcn/domob/android/ads/c;-><init>()V

    .line 71
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcn/domob/android/ads/B;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p2}, Lcn/domob/android/ads/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    sget-object v1, Lcn/domob/android/ads/B;->d:Lcn/domob/android/ads/d/e;

    const-string v2, "There is no pair in DB: %s : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcn/domob/android/ads/B;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcn/domob/android/ads/c;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcn/domob/android/ads/B;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcn/domob/android/ads/c;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    invoke-virtual {p0}, Lcn/domob/android/ads/B;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcn/domob/android/ads/c;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    sget-object v1, Lcn/domob/android/ads/B;->d:Lcn/domob/android/ads/d/e;

    const-string v2, "Get image %s local location = %s from DB."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 80
    const-string v1, "%s.assetReady(\'%s\', \'%s\')"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "domobBridge"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/B;->a(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcn/domob/android/ads/B;->invalidate()V

    .line 94
    iget-object v0, p0, Lcn/domob/android/ads/B;->e:Lcn/domob/android/ads/B$a;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcn/domob/android/ads/B;->e:Lcn/domob/android/ads/B$a;

    invoke-interface {v0}, Lcn/domob/android/ads/B$a;->n()V

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    sget-object v0, Lcn/domob/android/ads/B;->d:Lcn/domob/android/ads/d/e;

    const-string v1, "Alias %s is in DB but the local location is not available. Need to download."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 106
    :goto_1
    sget-object v0, Lcn/domob/android/ads/B;->d:Lcn/domob/android/ads/d/e;

    const-string v1, "Alias %s is about to be downloaded."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcn/domob/android/ads/m;

    invoke-virtual {p0}, Lcn/domob/android/ads/B;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcn/domob/android/ads/m;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/ads/m$a;)V

    .line 108
    invoke-virtual {v0, p2}, Lcn/domob/android/ads/m;->a(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Lcn/domob/android/ads/m;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    sget-object v1, Lcn/domob/android/ads/B;->d:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 103
    :cond_3
    :try_start_1
    sget-object v0, Lcn/domob/android/ads/B;->d:Lcn/domob/android/ads/d/e;

    const-string v1, "Alias %s is not in DB. Download and insert."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
