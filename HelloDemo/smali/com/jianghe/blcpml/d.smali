.class Lcom/jianghe/blcpml/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/jianghe/blcpml/Cefm;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/Cefm;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/d;->c:Lcom/jianghe/blcpml/Cefm;

    iput-object p2, p0, Lcom/jianghe/blcpml/d;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/jianghe/blcpml/d;->b:Z

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/jianghe/blcpml/d;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/jianghe/blcpml/d;->b:Z

    invoke-static {v0, v1}, Lcom/jianghe/blcpml/e/h;->a(Landroid/content/Context;Z)Z

    iget-boolean v0, p0, Lcom/jianghe/blcpml/d;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/blcpml/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jianghe/blcpml/e/h;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/blcpml/d;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/jianghe/blcpml/e/h;->k(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Lcom/jianghe/blcpml/e/h;->d()J

    move-result-wide v2

    iget-object v4, p0, Lcom/jianghe/blcpml/d;->c:Lcom/jianghe/blcpml/Cefm;

    iget-object v5, p0, Lcom/jianghe/blcpml/d;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/jianghe/blcpml/e/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/jianghe/blcpml/Cefm;->id:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/jianghe/blcpml/Cefm;->access$002(Lcom/jianghe/blcpml/Cefm;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/jianghe/blcpml/d;->c:Lcom/jianghe/blcpml/Cefm;

    # getter for: Lcom/jianghe/blcpml/Cefm;->id:Ljava/lang/String;
    invoke-static {v4}, Lcom/jianghe/blcpml/Cefm;->access$000(Lcom/jianghe/blcpml/Cefm;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/jianghe/blcpml/e/b;->aH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/jianghe/blcpml/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jianghe/blcpml/i;->a(Landroid/content/Context;)Lcom/jianghe/blcpml/i;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/jianghe/blcpml/i;->a(I)V

    :goto_0
    return-void

    :cond_1
    sub-long v4, v0, v2

    iget-object v6, p0, Lcom/jianghe/blcpml/d;->c:Lcom/jianghe/blcpml/Cefm;

    # getter for: Lcom/jianghe/blcpml/Cefm;->ShowTimejiange:J
    invoke-static {v6}, Lcom/jianghe/blcpml/Cefm;->access$100(Lcom/jianghe/blcpml/Cefm;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_2

    const-wide/16 v4, 0x3c

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/jianghe/blcpml/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/jianghe/blcpml/i;->a(Landroid/content/Context;)Lcom/jianghe/blcpml/i;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/jianghe/blcpml/i;->a(I)V

    invoke-static {v0, v1}, Lcom/jianghe/blcpml/e/h;->a(J)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/jianghe/blcpml/e/b;->C:Ljava/lang/String;

    sget-object v1, Lcom/jianghe/blcpml/e/b;->aO:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
