.class Lcom/jianghe/blcpml/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jianghe/blcpml/i;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/i;I)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    iput p2, p0, Lcom/jianghe/blcpml/j;->a:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v0, v5}, Lcom/jianghe/blcpml/i;->a(Lcom/jianghe/blcpml/i;Z)Z

    iget-object v0, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v0}, Lcom/jianghe/blcpml/i;->a(Lcom/jianghe/blcpml/i;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/jianghe/blcpml/k;

    invoke-direct {v2, p0}, Lcom/jianghe/blcpml/k;-><init>(Lcom/jianghe/blcpml/j;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v0}, Lcom/jianghe/blcpml/i;->b(Lcom/jianghe/blcpml/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jianghe/blcpml/a/d;->a(Landroid/content/Context;)Lcom/jianghe/blcpml/a/d;

    iget-object v0, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v0}, Lcom/jianghe/blcpml/i;->b(Lcom/jianghe/blcpml/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jianghe/blcpml/e/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v2}, Lcom/jianghe/blcpml/i;->b(Lcom/jianghe/blcpml/i;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/jianghe/blcpml/b/c;->a(Landroid/content/Context;)Lcom/jianghe/blcpml/b/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/jianghe/blcpml/b/c;->a(Ljava/lang/String;)[Lcom/jianghe/blcpml/b/f;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    aget-object v0, v0, v1

    invoke-static {v2, v0}, Lcom/jianghe/blcpml/i;->a(Lcom/jianghe/blcpml/i;Lcom/jianghe/blcpml/b/f;)Lcom/jianghe/blcpml/b/f;

    iget-object v0, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v0}, Lcom/jianghe/blcpml/i;->c(Lcom/jianghe/blcpml/i;)Lcom/jianghe/blcpml/b/f;

    move-result-object v0

    iput v5, v0, Lcom/jianghe/blcpml/b/f;->y:I

    iget-object v0, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v0}, Lcom/jianghe/blcpml/i;->b(Lcom/jianghe/blcpml/i;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v2}, Lcom/jianghe/blcpml/i;->c(Lcom/jianghe/blcpml/i;)Lcom/jianghe/blcpml/b/f;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/jianghe/blcpml/e/h;->c(Landroid/content/Context;Lcom/jianghe/blcpml/b/f;)Z

    iget-object v0, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v0}, Lcom/jianghe/blcpml/i;->b(Lcom/jianghe/blcpml/i;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/jianghe/blcpml/e/b;->F:Ljava/lang/String;

    iget-object v3, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v3}, Lcom/jianghe/blcpml/i;->c(Lcom/jianghe/blcpml/i;)Lcom/jianghe/blcpml/b/f;

    move-result-object v3

    iget v3, v3, Lcom/jianghe/blcpml/b/f;->e:I

    invoke-static {v0, v2, v3}, Lcom/jianghe/blcpml/e/h;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/jianghe/blcpml/i;->a(Ljava/io/File;)Ljava/io/File;

    iget-object v0, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v0}, Lcom/jianghe/blcpml/i;->b(Lcom/jianghe/blcpml/i;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/jianghe/blcpml/e/b;->G:Ljava/lang/String;

    iget-object v3, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v3}, Lcom/jianghe/blcpml/i;->c(Lcom/jianghe/blcpml/i;)Lcom/jianghe/blcpml/b/f;

    move-result-object v3

    iget v3, v3, Lcom/jianghe/blcpml/b/f;->e:I

    invoke-static {v0, v2, v3}, Lcom/jianghe/blcpml/e/h;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/jianghe/blcpml/i;->b(Ljava/io/File;)Ljava/io/File;

    invoke-static {}, Lcom/jianghe/blcpml/i;->b()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jianghe/blcpml/i;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/jianghe/blcpml/i;->c()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/jianghe/blcpml/i;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v0}, Lcom/jianghe/blcpml/i;->c(Lcom/jianghe/blcpml/i;)Lcom/jianghe/blcpml/b/f;

    move-result-object v0

    iget-object v0, v0, Lcom/jianghe/blcpml/b/f;->r:Ljava/lang/String;

    const-string v2, ";"

    invoke-static {v0, v2}, Lcom/jianghe/blcpml/e/h;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    const/4 v0, 0x2

    if-lt v3, v0, :cond_3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_3

    new-instance v4, Lcom/jianghe/blcpml/a/h;

    aget-object v5, v2, v0

    iget-object v6, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v6}, Lcom/jianghe/blcpml/i;->b(Lcom/jianghe/blcpml/i;)Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/jianghe/blcpml/e/b;->H:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/jianghe/blcpml/e/b;->I:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v8}, Lcom/jianghe/blcpml/i;->c(Lcom/jianghe/blcpml/i;)Lcom/jianghe/blcpml/b/f;

    move-result-object v8

    iget v8, v8, Lcom/jianghe/blcpml/b/f;->e:I

    invoke-static {v6, v7, v8}, Lcom/jianghe/blcpml/e/h;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1}, Lcom/jianghe/blcpml/a/h;-><init>(Ljava/lang/String;Ljava/io/File;I)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jianghe/blcpml/a/h;->a(Ljava/lang/Object;)V

    new-instance v5, Lcom/jianghe/blcpml/m;

    iget-object v6, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v6}, Lcom/jianghe/blcpml/i;->b(Lcom/jianghe/blcpml/i;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v7}, Lcom/jianghe/blcpml/i;->c(Lcom/jianghe/blcpml/i;)Lcom/jianghe/blcpml/b/f;

    move-result-object v7

    iget-object v8, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v8}, Lcom/jianghe/blcpml/i;->a(Lcom/jianghe/blcpml/i;)Landroid/os/Handler;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/jianghe/blcpml/m;-><init>(Landroid/content/Context;Lcom/jianghe/blcpml/b/f;Landroid/os/Handler;)V

    iget-object v6, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v6}, Lcom/jianghe/blcpml/i;->b(Lcom/jianghe/blcpml/i;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lcom/jianghe/blcpml/r;->a(Landroid/content/Context;Lcom/jianghe/blcpml/a/h;Lcom/jianghe/blcpml/a/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    invoke-static {v0}, Lcom/jianghe/blcpml/i;->a(Lcom/jianghe/blcpml/i;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/jianghe/blcpml/j;->a:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method
