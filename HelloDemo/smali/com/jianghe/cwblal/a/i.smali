.class public Lcom/jianghe/cwblal/a/i;
.super Ljava/lang/Thread;


# static fields
.field public static a:Ljava/util/Map;

.field public static b:Ljava/util/Map;


# instance fields
.field private c:Ljava/io/File;

.field private d:Ljava/net/URL;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Lcom/jianghe/cwblal/a/j;

.field private j:Ljava/net/HttpURLConnection;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jianghe/cwblal/a/i;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jianghe/cwblal/a/i;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/jianghe/cwblal/a/j;Ljava/net/URL;Ljava/io/File;IIILjava/net/HttpURLConnection;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/jianghe/cwblal/a/i;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jianghe/cwblal/a/i;->h:Z

    iput-object p2, p0, Lcom/jianghe/cwblal/a/i;->d:Ljava/net/URL;

    iput-object p3, p0, Lcom/jianghe/cwblal/a/i;->c:Ljava/io/File;

    iput p4, p0, Lcom/jianghe/cwblal/a/i;->e:I

    iput-object p1, p0, Lcom/jianghe/cwblal/a/i;->i:Lcom/jianghe/cwblal/a/j;

    iput p6, p0, Lcom/jianghe/cwblal/a/i;->f:I

    iput p5, p0, Lcom/jianghe/cwblal/a/i;->g:I

    iput-object p7, p0, Lcom/jianghe/cwblal/a/i;->j:Ljava/net/HttpURLConnection;

    iput p8, p0, Lcom/jianghe/cwblal/a/i;->k:I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jianghe/cwblal/a/i;->h:Z

    return v0
.end method

.method public b()J
    .locals 2

    iget v0, p0, Lcom/jianghe/cwblal/a/i;->g:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public run()V
    .locals 13

    const/4 v3, 0x1

    const/4 v12, -0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/jianghe/cwblal/a/i;->g:I

    iget v2, p0, Lcom/jianghe/cwblal/a/i;->e:I

    if-ge v1, v2, :cond_2

    :try_start_0
    iget v1, p0, Lcom/jianghe/cwblal/a/i;->k:I

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/jianghe/cwblal/a/i;->d:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget-object v1, Lcom/jianghe/cwblal/c/b;->bc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    sget-object v1, Lcom/jianghe/cwblal/c/b;->ai:Ljava/lang/String;

    sget-object v2, Lcom/jianghe/cwblal/c/b;->aj:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/jianghe/cwblal/c/b;->ak:Ljava/lang/String;

    sget-object v2, Lcom/jianghe/cwblal/c/b;->al:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/jianghe/cwblal/c/b;->bp:Ljava/lang/String;

    iget-object v2, p0, Lcom/jianghe/cwblal/a/i;->d:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/jianghe/cwblal/c/b;->am:Ljava/lang/String;

    sget-object v2, Lcom/jianghe/cwblal/c/b;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/jianghe/cwblal/a/i;->e:I

    iget v2, p0, Lcom/jianghe/cwblal/a/i;->f:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/jianghe/cwblal/a/i;->g:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/jianghe/cwblal/a/i;->e:I

    iget v3, p0, Lcom/jianghe/cwblal/a/i;->f:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/jianghe/cwblal/c/b;->ah:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/jianghe/cwblal/c/b;->ag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/jianghe/cwblal/c/b;->an:Ljava/lang/String;

    sget-object v3, Lcom/jianghe/cwblal/c/b;->ao:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/jianghe/cwblal/c/b;->ap:Ljava/lang/String;

    sget-object v3, Lcom/jianghe/cwblal/c/b;->aq:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v4, v0

    move v0, v1

    :goto_0
    const/16 v5, 0x3c00

    new-array v6, v5, [B

    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/jianghe/cwblal/a/i;->c:Ljava/io/File;

    sget-object v2, Lcom/jianghe/cwblal/c/b;->bg:Ljava/lang/String;

    invoke-direct {v7, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    int-to-long v0, v0

    invoke-virtual {v7, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const-wide/16 v2, 0x0

    :goto_1
    iget-object v0, p0, Lcom/jianghe/cwblal/a/i;->i:Lcom/jianghe/cwblal/a/j;

    invoke-virtual {v0}, Lcom/jianghe/cwblal/a/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v4, v6, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eq v0, v12, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v7, v6, v1, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    iget v1, p0, Lcom/jianghe/cwblal/a/i;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jianghe/cwblal/a/i;->g:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v8, v0, v2

    const-wide/16 v10, 0x320

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    iget-object v2, p0, Lcom/jianghe/cwblal/a/i;->i:Lcom/jianghe/cwblal/a/j;

    iget v3, p0, Lcom/jianghe/cwblal/a/i;->f:I

    iget v8, p0, Lcom/jianghe/cwblal/a/i;->g:I

    invoke-virtual {v2, v3, v8}, Lcom/jianghe/cwblal/a/j;->a(II)V

    :goto_2
    iget-object v2, p0, Lcom/jianghe/cwblal/a/i;->i:Lcom/jianghe/cwblal/a/j;

    iget v3, p0, Lcom/jianghe/cwblal/a/i;->g:I

    invoke-virtual {v2, v3}, Lcom/jianghe/cwblal/a/j;->a(I)V

    move-wide v2, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/jianghe/cwblal/a/i;->j:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jianghe/cwblal/a/i;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_3
    return-void

    :catch_0
    move-exception v0

    iput v12, p0, Lcom/jianghe/cwblal/a/i;->g:I

    goto :goto_3

    :cond_3
    move-wide v0, v2

    goto :goto_2
.end method
