.class public Lcom/jianghe/blcpml/a/d;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/jianghe/blcpml/a/d;


# instance fields
.field a:Landroid/content/Context;

.field private c:Lcom/jianghe/blcpml/c/b;

.field private d:Ljava/util/LinkedList;

.field private e:Lcom/jianghe/blcpml/a/f;

.field private f:Z

.field private g:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/jianghe/blcpml/a/d;->b:Lcom/jianghe/blcpml/a/d;

    iput-object p1, p0, Lcom/jianghe/blcpml/a/d;->a:Landroid/content/Context;

    new-instance v0, Lcom/jianghe/blcpml/c/b;

    invoke-direct {v0}, Lcom/jianghe/blcpml/c/b;-><init>()V

    iput-object v0, p0, Lcom/jianghe/blcpml/a/d;->c:Lcom/jianghe/blcpml/c/b;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    new-instance v0, Lcom/jianghe/blcpml/a/f;

    invoke-direct {v0, p1}, Lcom/jianghe/blcpml/a/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jianghe/blcpml/a/d;->e:Lcom/jianghe/blcpml/a/f;

    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->e:Lcom/jianghe/blcpml/a/f;

    invoke-virtual {v0}, Lcom/jianghe/blcpml/a/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/blcpml/a/e;

    new-instance v2, Lcom/jianghe/blcpml/a/h;

    invoke-direct {v2, p1, v0}, Lcom/jianghe/blcpml/a/h;-><init>(Landroid/content/Context;Lcom/jianghe/blcpml/a/e;)V

    invoke-virtual {v2}, Lcom/jianghe/blcpml/a/h;->h()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    invoke-virtual {v2}, Lcom/jianghe/blcpml/a/h;->n()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, ""

    invoke-virtual {v2}, Lcom/jianghe/blcpml/a/h;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/jianghe/blcpml/a/d;->e(Lcom/jianghe/blcpml/a/h;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/jianghe/blcpml/a/h;->d()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, -0x65813800

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/jianghe/blcpml/a/d;->e(Lcom/jianghe/blcpml/a/h;)V

    goto :goto_0

    :cond_2
    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/jianghe/blcpml/a/d;->a(Lcom/jianghe/blcpml/a/h;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Lcom/jianghe/blcpml/a/h;->a(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/jianghe/blcpml/a/d;->e(Lcom/jianghe/blcpml/a/h;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/blcpml/a/h;

    goto :goto_2

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a()Lcom/jianghe/blcpml/a/d;
    .locals 1

    sget-object v0, Lcom/jianghe/blcpml/a/d;->b:Lcom/jianghe/blcpml/a/d;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/jianghe/blcpml/a/d;
    .locals 3

    const-class v1, Lcom/jianghe/blcpml/a/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/jianghe/blcpml/a/d;->b:Lcom/jianghe/blcpml/a/d;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/jianghe/blcpml/a/d;

    invoke-direct {v2, v0}, Lcom/jianghe/blcpml/a/d;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/jianghe/blcpml/a/d;->b:Lcom/jianghe/blcpml/a/d;

    :cond_0
    sget-object v0, Lcom/jianghe/blcpml/a/d;->b:Lcom/jianghe/blcpml/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private h(Lcom/jianghe/blcpml/a/h;)Lcom/jianghe/blcpml/a/e;
    .locals 4

    new-instance v1, Lcom/jianghe/blcpml/a/e;

    invoke-direct {v1}, Lcom/jianghe/blcpml/a/e;-><init>()V

    invoke-virtual {p1}, Lcom/jianghe/blcpml/a/h;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/jianghe/blcpml/a/e;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jianghe/blcpml/a/h;->c()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, v1, Lcom/jianghe/blcpml/a/e;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jianghe/blcpml/a/h;->h()I

    move-result v0

    iput v0, v1, Lcom/jianghe/blcpml/a/e;->e:I

    invoke-virtual {p1}, Lcom/jianghe/blcpml/a/h;->i()I

    move-result v0

    iput v0, v1, Lcom/jianghe/blcpml/a/e;->d:I

    invoke-virtual {p1}, Lcom/jianghe/blcpml/a/h;->j()I

    move-result v0

    iput v0, v1, Lcom/jianghe/blcpml/a/e;->c:I

    invoke-virtual {p1}, Lcom/jianghe/blcpml/a/h;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/jianghe/blcpml/a/e;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jianghe/blcpml/a/h;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/jianghe/blcpml/a/e;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jianghe/blcpml/a/h;->m()I

    move-result v0

    iput v0, v1, Lcom/jianghe/blcpml/a/e;->h:I

    invoke-virtual {p1}, Lcom/jianghe/blcpml/a/h;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/jianghe/blcpml/a/e;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jianghe/blcpml/a/h;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jianghe/blcpml/a/e;->j:J

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/jianghe/blcpml/a/h;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/jianghe/blcpml/a/h;)Z
    .locals 1

    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/jianghe/blcpml/a/h;)Lcom/jianghe/blcpml/a/h;
    .locals 4

    iget-object v2, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    monitor-enter v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/blcpml/a/h;

    invoke-virtual {v0, p1}, Lcom/jianghe/blcpml/a/h;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jianghe/blcpml/a/d;->f:Z

    return v0
.end method

.method c(Lcom/jianghe/blcpml/a/h;)V
    .locals 3

    iget-object v1, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->e:Lcom/jianghe/blcpml/a/f;

    invoke-direct {p0, p1}, Lcom/jianghe/blcpml/a/d;->h(Lcom/jianghe/blcpml/a/h;)Lcom/jianghe/blcpml/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jianghe/blcpml/a/f;->a(Lcom/jianghe/blcpml/a/e;)V

    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->c:Lcom/jianghe/blcpml/c/b;

    invoke-virtual {p1}, Lcom/jianghe/blcpml/a/h;->b()Lcom/jianghe/blcpml/c/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jianghe/blcpml/c/b;->a(Lcom/jianghe/blcpml/c/e;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jianghe/blcpml/a/d;->g:Z

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    return-object v0
.end method

.method public d(Lcom/jianghe/blcpml/a/h;)V
    .locals 3

    iget-object v1, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->e:Lcom/jianghe/blcpml/a/f;

    invoke-direct {p0, p1}, Lcom/jianghe/blcpml/a/d;->h(Lcom/jianghe/blcpml/a/h;)Lcom/jianghe/blcpml/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jianghe/blcpml/a/f;->b(Lcom/jianghe/blcpml/a/e;)V

    invoke-virtual {p1}, Lcom/jianghe/blcpml/a/h;->b()Lcom/jianghe/blcpml/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jianghe/blcpml/c/e;->b()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Lcom/jianghe/blcpml/a/h;)V
    .locals 3

    iget-object v1, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->e:Lcom/jianghe/blcpml/a/f;

    invoke-direct {p0, p1}, Lcom/jianghe/blcpml/a/d;->h(Lcom/jianghe/blcpml/a/h;)Lcom/jianghe/blcpml/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jianghe/blcpml/a/f;->b(Lcom/jianghe/blcpml/a/e;)V

    invoke-virtual {p1}, Lcom/jianghe/blcpml/a/h;->b()Lcom/jianghe/blcpml/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jianghe/blcpml/c/e;->b()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method f(Lcom/jianghe/blcpml/a/h;)V
    .locals 3

    iget-object v1, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jianghe/blcpml/a/h;->b()Lcom/jianghe/blcpml/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jianghe/blcpml/c/e;->e()V

    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->c:Lcom/jianghe/blcpml/c/b;

    invoke-virtual {p1}, Lcom/jianghe/blcpml/a/h;->b()Lcom/jianghe/blcpml/c/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jianghe/blcpml/c/b;->a(Lcom/jianghe/blcpml/c/e;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g(Lcom/jianghe/blcpml/a/h;)V
    .locals 3

    iget-object v1, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/blcpml/a/d;->e:Lcom/jianghe/blcpml/a/f;

    invoke-direct {p0, p1}, Lcom/jianghe/blcpml/a/d;->h(Lcom/jianghe/blcpml/a/h;)Lcom/jianghe/blcpml/a/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jianghe/blcpml/a/f;->c(Lcom/jianghe/blcpml/a/e;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
