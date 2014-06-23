.class final Lcom/jianghe/aitswl/at;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jianghe/aitswl/Pds;


# direct methods
.method public constructor <init>(Lcom/jianghe/aitswl/Pds;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0xa

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v0}, Lcom/jianghe/aitswl/Pds;->a(Lcom/jianghe/aitswl/Pds;)V

    sget-object v0, Lcom/jianghe/aitswl/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jianghe/aitswl/h;->cJ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v2}, Lcom/jianghe/aitswl/Pds;->b(Lcom/jianghe/aitswl/Pds;)Lcom/jianghe/aitswl/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/jianghe/aitswl/ai;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/jianghe/aitswl/d/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jianghe/aitswl/h;->cK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v2}, Lcom/jianghe/aitswl/Pds;->b(Lcom/jianghe/aitswl/Pds;)Lcom/jianghe/aitswl/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/jianghe/aitswl/ai;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v0}, Lcom/jianghe/aitswl/Pds;->b(Lcom/jianghe/aitswl/Pds;)Lcom/jianghe/aitswl/ai;

    move-result-object v0

    iget v0, v0, Lcom/jianghe/aitswl/ai;->i:I

    const v1, 0x186dd

    if-eq v0, v1, :cond_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    sget-object v1, Lcom/jianghe/aitswl/h;->T:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :try_start_0
    iget-object v0, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/Pds;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/jianghe/aitswl/d/b;->a:Ljava/lang/String;

    sget-object v2, Lcom/jianghe/aitswl/h;->cI:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    sget-object v0, Lcom/jianghe/aitswl/d/b;->a:Ljava/lang/String;

    sget-object v2, Lcom/jianghe/aitswl/h;->cH:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v0}, Lcom/jianghe/aitswl/ay;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v2}, Lcom/jianghe/aitswl/ay;->c(Landroid/content/Context;)I

    move-result v2

    sget-object v3, Lcom/jianghe/aitswl/h;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v4}, Lcom/jianghe/aitswl/Pds;->b(Lcom/jianghe/aitswl/Pds;)Lcom/jianghe/aitswl/ai;

    move-result-object v4

    iget-object v4, v4, Lcom/jianghe/aitswl/ai;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eq v1, v6, :cond_3

    sget-object v0, Lcom/jianghe/aitswl/d/b;->a:Ljava/lang/String;

    sget-object v1, Lcom/jianghe/aitswl/h;->cR:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v0}, Lcom/jianghe/aitswl/Pds;->b(Lcom/jianghe/aitswl/Pds;)Lcom/jianghe/aitswl/ai;

    move-result-object v0

    invoke-static {}, Lcom/jianghe/aitswl/Pds;->a()I

    move-result v1

    iput v1, v0, Lcom/jianghe/aitswl/ai;->m:I

    iget-object v0, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v0, v5}, Lcom/jianghe/aitswl/Pds;->a(Lcom/jianghe/aitswl/Pds;Z)V

    :cond_3
    :goto_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    goto :goto_0

    :cond_4
    if-eq v1, v6, :cond_5

    if-ne v2, v8, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v0}, Lcom/jianghe/aitswl/Pds;->b(Lcom/jianghe/aitswl/Pds;)Lcom/jianghe/aitswl/ai;

    move-result-object v0

    iput v6, v0, Lcom/jianghe/aitswl/ai;->m:I

    iget-object v0, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v0, v5}, Lcom/jianghe/aitswl/Pds;->a(Lcom/jianghe/aitswl/Pds;Z)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v3}, Lcom/jianghe/aitswl/Pds;->c(Lcom/jianghe/aitswl/Pds;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v3}, Lcom/jianghe/aitswl/Pds;->d(Lcom/jianghe/aitswl/Pds;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/jianghe/aitswl/Pds;->a()I

    move-result v3

    if-eq v3, v8, :cond_3

    :cond_7
    if-nez v0, :cond_8

    if-eq v1, v6, :cond_8

    iget-object v0, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v0}, Lcom/jianghe/aitswl/Pds;->b(Lcom/jianghe/aitswl/Pds;)Lcom/jianghe/aitswl/ai;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Lcom/jianghe/aitswl/ai;->m:I

    iget-object v0, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v0, v5}, Lcom/jianghe/aitswl/Pds;->a(Lcom/jianghe/aitswl/Pds;Z)V

    iget-object v0, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v0}, Lcom/jianghe/aitswl/Pds;->b(Lcom/jianghe/aitswl/Pds;)Lcom/jianghe/aitswl/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v1}, Lcom/jianghe/aitswl/ay;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jianghe/aitswl/ai;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v0}, Lcom/jianghe/aitswl/Pds;->b(Lcom/jianghe/aitswl/Pds;)Lcom/jianghe/aitswl/ai;

    move-result-object v0

    invoke-static {}, Lcom/jianghe/aitswl/Pds;->a()I

    move-result v1

    iput v1, v0, Lcom/jianghe/aitswl/ai;->m:I

    iget-object v0, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v0, v7}, Lcom/jianghe/aitswl/Pds;->a(Lcom/jianghe/aitswl/Pds;Z)V

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_9

    if-ne v2, v7, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v0}, Lcom/jianghe/aitswl/Pds;->b(Lcom/jianghe/aitswl/Pds;)Lcom/jianghe/aitswl/ai;

    move-result-object v0

    invoke-static {}, Lcom/jianghe/aitswl/Pds;->a()I

    move-result v1

    iput v1, v0, Lcom/jianghe/aitswl/ai;->m:I

    iget-object v0, p0, Lcom/jianghe/aitswl/at;->a:Lcom/jianghe/aitswl/Pds;

    invoke-static {v0, v7}, Lcom/jianghe/aitswl/Pds;->a(Lcom/jianghe/aitswl/Pds;Z)V

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/jianghe/aitswl/d/b;->a:Ljava/lang/String;

    sget-object v1, Lcom/jianghe/aitswl/h;->cG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
