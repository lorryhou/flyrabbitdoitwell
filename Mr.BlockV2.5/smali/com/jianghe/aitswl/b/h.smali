.class public Lcom/jianghe/aitswl/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jianghe/aitswl/c/f;


# instance fields
.field private a:Lcom/jianghe/aitswl/c/e;

.field private b:Ljava/io/File;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/jianghe/aitswl/b/c;

.field private g:I

.field private h:Lcom/jianghe/aitswl/b/d;

.field private i:Ljava/io/BufferedInputStream;

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/jianghe/aitswl/b/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/jianghe/aitswl/b/h;->k:I

    new-instance v0, Lcom/jianghe/aitswl/c/h;

    iget-object v1, p2, Lcom/jianghe/aitswl/b/e;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/jianghe/aitswl/c/h;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/jianghe/aitswl/c/a;

    invoke-direct {v1, p1, v0}, Lcom/jianghe/aitswl/c/a;-><init>(Landroid/content/Context;Lcom/jianghe/aitswl/c/h;)V

    iput-object v1, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-static {}, Lcom/jianghe/aitswl/b/d;->a()Lcom/jianghe/aitswl/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/jianghe/aitswl/b/h;->h:Lcom/jianghe/aitswl/b/d;

    iget-object v0, p2, Lcom/jianghe/aitswl/b/e;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/jianghe/aitswl/b/h;->l:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Lcom/jianghe/aitswl/b/e;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jianghe/aitswl/b/h;->b:Ljava/io/File;

    iget v0, p2, Lcom/jianghe/aitswl/b/e;->m:I

    iput v0, p0, Lcom/jianghe/aitswl/b/h;->d:I

    iget v0, p2, Lcom/jianghe/aitswl/b/e;->n:I

    iput v0, p0, Lcom/jianghe/aitswl/b/h;->e:I

    iget v0, p2, Lcom/jianghe/aitswl/b/e;->o:I

    iput v0, p0, Lcom/jianghe/aitswl/b/h;->c:I

    iget-object v0, p2, Lcom/jianghe/aitswl/b/e;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/jianghe/aitswl/b/h;->o:Ljava/lang/String;

    iget-object v0, p2, Lcom/jianghe/aitswl/b/e;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/jianghe/aitswl/b/h;->n:Ljava/lang/String;

    iget v0, p2, Lcom/jianghe/aitswl/b/e;->r:I

    iput v0, p0, Lcom/jianghe/aitswl/b/h;->g:I

    iget-object v0, p2, Lcom/jianghe/aitswl/b/e;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/jianghe/aitswl/b/h;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/jianghe/aitswl/b/h;->k:I

    iput-object p2, p0, Lcom/jianghe/aitswl/b/h;->b:Ljava/io/File;

    iput-object p1, p0, Lcom/jianghe/aitswl/b/h;->l:Ljava/lang/String;

    new-instance v0, Lcom/jianghe/aitswl/c/a;

    invoke-static {}, Lcom/jianghe/aitswl/b/d;->a()Lcom/jianghe/aitswl/b/d;

    move-result-object v1

    iget-object v1, v1, Lcom/jianghe/aitswl/b/d;->a:Landroid/content/Context;

    new-instance v2, Lcom/jianghe/aitswl/c/h;

    invoke-direct {v2, p1}, Lcom/jianghe/aitswl/c/h;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/jianghe/aitswl/c/a;-><init>(Landroid/content/Context;Lcom/jianghe/aitswl/c/h;)V

    iput-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    const/4 v0, -0x1

    iput v0, p0, Lcom/jianghe/aitswl/b/h;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/jianghe/aitswl/b/h;->c:I

    iput p3, p0, Lcom/jianghe/aitswl/b/h;->g:I

    invoke-direct {p0}, Lcom/jianghe/aitswl/b/h;->q()V

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 10

    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jianghe/aitswl/b/h;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/jianghe/aitswl/h;->aI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v0, Lcom/jianghe/aitswl/h;->aJ:Ljava/lang/String;

    invoke-direct {v1, v4, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p0, Lcom/jianghe/aitswl/b/h;->g:I

    if-ne v0, v5, :cond_1

    sget-object v2, Lcom/jianghe/aitswl/h;->bl:Ljava/lang/String;

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/c/e;->g()Ljava/util/Map;

    move-result-object v0

    sget-object v5, Lcom/jianghe/aitswl/h;->bn:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/c/e;->g()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/jianghe/aitswl/h;->bo:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/jianghe/aitswl/b/h;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v5, v2

    invoke-virtual {p0, v1}, Lcom/jianghe/aitswl/b/h;->a(Ljava/io/RandomAccessFile;)J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v5, 0x3

    const/16 v6, 0x22b8

    aput v6, v2, v5

    :cond_0
    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {p0, v1}, Lcom/jianghe/aitswl/b/h;->a(Ljava/io/RandomAccessFile;)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/jianghe/aitswl/b/h;->a(Ljava/io/RandomAccessFile;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_1
    :goto_0
    const/16 v0, 0x1000

    new-array v2, v0, [B

    move v0, v3

    :cond_2
    :goto_1
    iget v3, p0, Lcom/jianghe/aitswl/b/h;->c:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-eq v0, v9, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    iget v3, p0, Lcom/jianghe/aitswl/b/h;->d:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/jianghe/aitswl/b/h;->d:I

    iget-object v3, p0, Lcom/jianghe/aitswl/b/h;->f:Lcom/jianghe/aitswl/b/c;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/jianghe/aitswl/b/h;->f:Lcom/jianghe/aitswl/b/c;

    int-to-long v5, v0

    invoke-interface {v3, p0, v5, v6}, Lcom/jianghe/aitswl/b/c;->a(Lcom/jianghe/aitswl/b/h;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, v0}, Lcom/jianghe/aitswl/b/h;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/c/e;->b()V

    :goto_5
    return-void

    :cond_4
    const/4 v0, 0x0

    :try_start_5
    iput v0, p0, Lcom/jianghe/aitswl/b/h;->g:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jianghe/aitswl/b/h;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v2, 0x3

    const/16 v5, 0x22b8

    aput v5, v0, v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_6
    if-eqz p1, :cond_5

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_5
    :goto_7
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :goto_8
    iget-object v1, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v1}, Lcom/jianghe/aitswl/c/e;->b()V

    throw v0

    :cond_6
    :try_start_8
    iget-object v2, p0, Lcom/jianghe/aitswl/b/h;->b:Ljava/io/File;

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    if-ne v0, v9, :cond_7

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/jianghe/aitswl/b/h;->a(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_7
    if-eqz p1, :cond_8

    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_8
    :goto_9
    :try_start_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/c/e;->b()V

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 2

    iget v0, p0, Lcom/jianghe/aitswl/b/h;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/jianghe/aitswl/b/h;->j:I

    iget v1, p0, Lcom/jianghe/aitswl/b/h;->k:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/jianghe/aitswl/b/h;->r()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/jianghe/aitswl/b/h;->j:I

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/jianghe/aitswl/b/h;->a(I)V

    goto :goto_0
.end method

.method private q()V
    .locals 4

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v0, p0}, Lcom/jianghe/aitswl/c/e;->a(Lcom/jianghe/aitswl/c/f;)V

    iget v0, p0, Lcom/jianghe/aitswl/b/h;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/jianghe/aitswl/b/h;->o()J

    move-result-wide v0

    long-to-int v2, v0

    iput v2, p0, Lcom/jianghe/aitswl/b/h;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jianghe/aitswl/h;->bl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v1}, Lcom/jianghe/aitswl/c/e;->d()Lcom/jianghe/aitswl/c/h;

    move-result-object v1

    sget-object v2, Lcom/jianghe/aitswl/h;->bm:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/jianghe/aitswl/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/jianghe/aitswl/b/d;->a()Lcom/jianghe/aitswl/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/jianghe/aitswl/b/h;->h:Lcom/jianghe/aitswl/b/d;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/jianghe/aitswl/b/h;->d:I

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/c/e;->d()Lcom/jianghe/aitswl/c/h;

    move-result-object v0

    sget-object v1, Lcom/jianghe/aitswl/h;->bm:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jianghe/aitswl/h;->bl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jianghe/aitswl/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private r()V
    .locals 4

    new-instance v0, Lcom/jianghe/aitswl/c/a;

    invoke-static {}, Lcom/jianghe/aitswl/b/d;->a()Lcom/jianghe/aitswl/b/d;

    move-result-object v1

    iget-object v1, v1, Lcom/jianghe/aitswl/b/d;->a:Landroid/content/Context;

    new-instance v2, Lcom/jianghe/aitswl/c/h;

    iget-object v3, p0, Lcom/jianghe/aitswl/b/h;->l:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/jianghe/aitswl/c/h;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/jianghe/aitswl/c/a;-><init>(Landroid/content/Context;Lcom/jianghe/aitswl/c/h;)V

    iput-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-direct {p0}, Lcom/jianghe/aitswl/b/h;->s()V

    invoke-direct {p0}, Lcom/jianghe/aitswl/b/h;->q()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jianghe/aitswl/b/h;->a(I)V

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->h:Lcom/jianghe/aitswl/b/d;

    invoke-virtual {v0, p0}, Lcom/jianghe/aitswl/b/d;->d(Lcom/jianghe/aitswl/b/h;)V

    return-void
.end method

.method private s()V
    .locals 4

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/c/e;->d()Lcom/jianghe/aitswl/c/h;

    move-result-object v0

    sget-object v1, Lcom/jianghe/aitswl/h;->bp:Ljava/lang/String;

    sget-object v2, Lcom/jianghe/aitswl/h;->bq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jianghe/aitswl/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/c/e;->d()Lcom/jianghe/aitswl/c/h;

    move-result-object v0

    sget-object v1, Lcom/jianghe/aitswl/h;->br:Ljava/lang/String;

    sget-object v2, Lcom/jianghe/aitswl/h;->bs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jianghe/aitswl/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/c/e;->d()Lcom/jianghe/aitswl/c/h;

    move-result-object v0

    sget-object v1, Lcom/jianghe/aitswl/h;->bt:Ljava/lang/String;

    sget-object v2, Lcom/jianghe/aitswl/h;->aZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jianghe/aitswl/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/jianghe/aitswl/b/h;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/jianghe/aitswl/b/h;->o()J

    move-result-wide v0

    long-to-int v2, v0

    iput v2, p0, Lcom/jianghe/aitswl/b/h;->d:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jianghe/aitswl/h;->bl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v1}, Lcom/jianghe/aitswl/c/e;->d()Lcom/jianghe/aitswl/c/h;

    move-result-object v1

    sget-object v2, Lcom/jianghe/aitswl/h;->bm:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/jianghe/aitswl/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/c/e;->d()Lcom/jianghe/aitswl/c/h;

    move-result-object v0

    sget-object v1, Lcom/jianghe/aitswl/h;->bu:Ljava/lang/String;

    sget-object v2, Lcom/jianghe/aitswl/h;->bv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jianghe/aitswl/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/c/e;->d()Lcom/jianghe/aitswl/c/h;

    move-result-object v0

    sget-object v1, Lcom/jianghe/aitswl/h;->bw:Ljava/lang/String;

    sget-object v2, Lcom/jianghe/aitswl/h;->bx:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/jianghe/aitswl/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/c/e;->d()Lcom/jianghe/aitswl/c/h;

    move-result-object v0

    sget-object v1, Lcom/jianghe/aitswl/h;->bm:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jianghe/aitswl/h;->bl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jianghe/aitswl/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jianghe/aitswl/b/h;->d:I

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/RandomAccessFile;)J
    .locals 2

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->p:Ljava/lang/String;

    return-object v0
.end method

.method a(I)V
    .locals 1

    iget v0, p0, Lcom/jianghe/aitswl/b/h;->c:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/jianghe/aitswl/b/h;->c:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->h:Lcom/jianghe/aitswl/b/d;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/b/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->h:Lcom/jianghe/aitswl/b/d;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/b/d;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/jianghe/aitswl/b/h;->f()V

    :goto_0
    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->f:Lcom/jianghe/aitswl/b/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->f:Lcom/jianghe/aitswl/b/c;

    invoke-interface {v0, p0, p1}, Lcom/jianghe/aitswl/b/c;->a(Lcom/jianghe/aitswl/b/h;I)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->h:Lcom/jianghe/aitswl/b/d;

    invoke-virtual {v0, p0}, Lcom/jianghe/aitswl/b/d;->e(Lcom/jianghe/aitswl/b/h;)V

    goto :goto_0
.end method

.method public a(Lcom/jianghe/aitswl/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/b/h;->f:Lcom/jianghe/aitswl/b/c;

    return-void
.end method

.method public a(Lcom/jianghe/aitswl/c/e;I)V
    .locals 3

    iget v0, p0, Lcom/jianghe/aitswl/b/h;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :pswitch_0
    sparse-switch p2, :sswitch_data_0

    invoke-virtual {p1}, Lcom/jianghe/aitswl/c/e;->b()V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/jianghe/aitswl/b/h;->a(I)V

    invoke-virtual {p1}, Lcom/jianghe/aitswl/c/e;->f()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/jianghe/aitswl/b/h;->i:Ljava/io/BufferedInputStream;

    const/4 v0, -0x1

    iput v0, p0, Lcom/jianghe/aitswl/b/h;->e:I

    invoke-virtual {p0}, Lcom/jianghe/aitswl/b/h;->h()I

    move-result v0

    iput v0, p0, Lcom/jianghe/aitswl/b/h;->e:I

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->i:Ljava/io/BufferedInputStream;

    invoke-direct {p0, v0}, Lcom/jianghe/aitswl/b/h;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/jianghe/aitswl/c/e;->i()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jianghe/aitswl/b/h;->a(Ljava/lang/Exception;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/b/h;->m:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[-/]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/jianghe/aitswl/c/e;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/b/h;->n:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->b:Ljava/io/File;

    return-object v0
.end method

.method public d()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/jianghe/aitswl/b/h;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/jianghe/aitswl/b/h;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/jianghe/aitswl/b/h;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->h:Lcom/jianghe/aitswl/b/d;

    invoke-virtual {v0, p0}, Lcom/jianghe/aitswl/b/d;->a(Lcom/jianghe/aitswl/b/h;)Lcom/jianghe/aitswl/b/h;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/jianghe/aitswl/b/h;->d:I

    invoke-virtual {p0, v2}, Lcom/jianghe/aitswl/b/h;->a(I)V

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->h:Lcom/jianghe/aitswl/b/d;

    invoke-virtual {v0, p0}, Lcom/jianghe/aitswl/b/d;->b(Lcom/jianghe/aitswl/b/h;)V

    goto :goto_0

    :cond_2
    iget v1, v0, Lcom/jianghe/aitswl/b/h;->c:I

    if-eq v1, v3, :cond_3

    iget v0, v0, Lcom/jianghe/aitswl/b/h;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/jianghe/aitswl/b/h;->a(I)V

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->h:Lcom/jianghe/aitswl/b/d;

    invoke-virtual {v0, p0}, Lcom/jianghe/aitswl/b/d;->b(Lcom/jianghe/aitswl/b/h;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e()V
    .locals 1

    iget v0, p0, Lcom/jianghe/aitswl/b/h;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/jianghe/aitswl/b/h;->r()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/jianghe/aitswl/b/h;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/jianghe/aitswl/b/h;

    invoke-virtual {p0}, Lcom/jianghe/aitswl/b/h;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/jianghe/aitswl/b/h;->b:Ljava/io/File;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/jianghe/aitswl/b/h;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jianghe/aitswl/b/h;->b:Ljava/io/File;

    invoke-virtual {p1}, Lcom/jianghe/aitswl/b/h;->c()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jianghe/aitswl/b/h;->a(I)V

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->h:Lcom/jianghe/aitswl/b/d;

    invoke-virtual {v0, p0}, Lcom/jianghe/aitswl/b/d;->c(Lcom/jianghe/aitswl/b/h;)V

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/jianghe/aitswl/b/h;->c:I

    return v0
.end method

.method public h()I
    .locals 2

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/jianghe/aitswl/b/h;->e:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/jianghe/aitswl/b/h;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/c/e;->h()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/c/e;->g()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/jianghe/aitswl/h;->bo:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/jianghe/aitswl/b/h;->e:I

    :cond_1
    iget v0, p0, Lcom/jianghe/aitswl/b/h;->e:I

    goto :goto_0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/jianghe/aitswl/b/h;->d:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/c/e;->h()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->a:Lcom/jianghe/aitswl/c/e;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/c/e;->g()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/jianghe/aitswl/h;->aD:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/jianghe/aitswl/b/h;->o:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->o:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->n:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/jianghe/aitswl/b/h;->g:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->l:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public o()J
    .locals 5

    const-wide/16 v0, 0x0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/jianghe/aitswl/b/h;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/jianghe/aitswl/h;->aI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/aitswl/b/h;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jianghe/aitswl/b/h;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/aitswl/b/h;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jianghe/aitswl/b/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jianghe/aitswl/b/h;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/jianghe/aitswl/b/h;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
