.class Lcom/jianghe/blcpml/l;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jianghe/blcpml/i;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/i;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/l;->a:Lcom/jianghe/blcpml/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 1

    invoke-static {}, Lcom/jianghe/blcpml/i;->b()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jianghe/blcpml/i;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jianghe/blcpml/i;->c()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jianghe/blcpml/i;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blcpml/e/b;->aR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/jianghe/blcpml/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/blcpml/l;->a:Lcom/jianghe/blcpml/i;

    invoke-static {v0}, Lcom/jianghe/blcpml/i;->d(Lcom/jianghe/blcpml/i;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/jianghe/blcpml/l;->a:Lcom/jianghe/blcpml/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jianghe/blcpml/i;->a(Lcom/jianghe/blcpml/i;Z)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/jianghe/blcpml/l;->a:Lcom/jianghe/blcpml/i;

    invoke-static {v0}, Lcom/jianghe/blcpml/i;->b(Lcom/jianghe/blcpml/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jianghe/blcpml/n;->a(Landroid/content/Context;)Lcom/jianghe/blcpml/n;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/blcpml/l;->a:Lcom/jianghe/blcpml/i;

    invoke-static {v1}, Lcom/jianghe/blcpml/i;->c(Lcom/jianghe/blcpml/i;)Lcom/jianghe/blcpml/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jianghe/blcpml/n;->b(Lcom/jianghe/blcpml/b/f;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/jianghe/blcpml/l;->a:Lcom/jianghe/blcpml/i;

    invoke-static {v0}, Lcom/jianghe/blcpml/i;->b(Lcom/jianghe/blcpml/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jianghe/blcpml/n;->a(Landroid/content/Context;)Lcom/jianghe/blcpml/n;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/blcpml/l;->a:Lcom/jianghe/blcpml/i;

    invoke-static {v1}, Lcom/jianghe/blcpml/i;->c(Lcom/jianghe/blcpml/i;)Lcom/jianghe/blcpml/b/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jianghe/blcpml/n;->a(Lcom/jianghe/blcpml/b/f;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/jianghe/blcpml/l;->a:Lcom/jianghe/blcpml/i;

    invoke-static {v0}, Lcom/jianghe/blcpml/i;->b(Lcom/jianghe/blcpml/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jianghe/blcpml/n;->a(Landroid/content/Context;)Lcom/jianghe/blcpml/n;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/blcpml/l;->a:Lcom/jianghe/blcpml/i;

    invoke-static {v1}, Lcom/jianghe/blcpml/i;->b(Lcom/jianghe/blcpml/i;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jianghe/blcpml/l;->a:Lcom/jianghe/blcpml/i;

    invoke-static {v2}, Lcom/jianghe/blcpml/i;->c(Lcom/jianghe/blcpml/i;)Lcom/jianghe/blcpml/b/f;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jianghe/blcpml/n;->a(Landroid/content/Context;Lcom/jianghe/blcpml/b/f;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
