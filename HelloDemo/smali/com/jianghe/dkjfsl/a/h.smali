.class public Lcom/jianghe/dkjfsl/a/h;
.super Ljava/lang/Thread;


# static fields
.field public static a:Ljava/util/Map;


# instance fields
.field private b:Ljava/io/File;

.field private c:Ljava/net/URL;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Lcom/jianghe/dkjfsl/a/i;

.field private i:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jianghe/dkjfsl/a/h;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/jianghe/dkjfsl/a/i;Ljava/net/URL;Ljava/io/File;IIILjava/net/HttpURLConnection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/jianghe/dkjfsl/a/h;->e:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jianghe/dkjfsl/a/h;->g:Z

    iput-object p2, p0, Lcom/jianghe/dkjfsl/a/h;->c:Ljava/net/URL;

    iput-object p3, p0, Lcom/jianghe/dkjfsl/a/h;->b:Ljava/io/File;

    iput p4, p0, Lcom/jianghe/dkjfsl/a/h;->d:I

    iput-object p1, p0, Lcom/jianghe/dkjfsl/a/h;->h:Lcom/jianghe/dkjfsl/a/i;

    iput p6, p0, Lcom/jianghe/dkjfsl/a/h;->e:I

    iput p5, p0, Lcom/jianghe/dkjfsl/a/h;->f:I

    iput-object p7, p0, Lcom/jianghe/dkjfsl/a/h;->i:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jianghe/dkjfsl/a/h;->g:Z

    return v0
.end method

.method public b()J
    .locals 2

    iget v0, p0, Lcom/jianghe/dkjfsl/a/h;->f:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public run()V
    .locals 13

    const/4 v12, -0x1

    iget v0, p0, Lcom/jianghe/dkjfsl/a/h;->f:I

    iget v1, p0, Lcom/jianghe/dkjfsl/a/h;->d:I

    if-ge v0, v1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/jianghe/dkjfsl/a/h;->d:I

    iget v1, p0, Lcom/jianghe/dkjfsl/a/h;->e:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/jianghe/dkjfsl/a/h;->f:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/jianghe/dkjfsl/a/h;->i:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x3c00

    new-array v6, v5, [B

    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/jianghe/dkjfsl/a/h;->b:Ljava/io/File;

    sget-object v2, Lcom/jianghe/dkjfsl/c/h;->bp:Ljava/lang/String;

    invoke-direct {v7, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    int-to-long v0, v0

    invoke-virtual {v7, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/jianghe/dkjfsl/a/h;->h:Lcom/jianghe/dkjfsl/a/i;

    invoke-virtual {v0}, Lcom/jianghe/dkjfsl/a/i;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v4, v6, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v12, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v7, v6, v1, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    iget v1, p0, Lcom/jianghe/dkjfsl/a/h;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jianghe/dkjfsl/a/h;->f:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v8, v0, v2

    const-wide/16 v10, 0x320

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    iget-object v2, p0, Lcom/jianghe/dkjfsl/a/h;->h:Lcom/jianghe/dkjfsl/a/i;

    iget v3, p0, Lcom/jianghe/dkjfsl/a/h;->e:I

    iget v8, p0, Lcom/jianghe/dkjfsl/a/h;->f:I

    invoke-virtual {v2, v3, v8}, Lcom/jianghe/dkjfsl/a/i;->a(II)V

    :goto_1
    iget-object v2, p0, Lcom/jianghe/dkjfsl/a/h;->h:Lcom/jianghe/dkjfsl/a/i;

    iget v3, p0, Lcom/jianghe/dkjfsl/a/h;->f:I

    invoke-virtual {v2, v3}, Lcom/jianghe/dkjfsl/a/i;->a(I)V

    move-wide v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jianghe/dkjfsl/a/h;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    iput v12, p0, Lcom/jianghe/dkjfsl/a/h;->f:I

    goto :goto_2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method
