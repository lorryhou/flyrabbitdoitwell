.class Lcom/jianghe/blcpml/u;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jianghe/blcpml/s;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/s;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/u;->a:Lcom/jianghe/blcpml/s;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blcpml/e/b;->aa:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/jianghe/blcpml/e/b;->bG:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sget-object v3, Lcom/jianghe/blcpml/e/b;->af:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sget-object v4, Lcom/jianghe/blcpml/e/b;->bF:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Lcom/jianghe/blcpml/u;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v4}, Lcom/jianghe/blcpml/s;->b(Lcom/jianghe/blcpml/s;)Lcom/jianghe/blcpml/b/f;

    move-result-object v4

    iget v4, v4, Lcom/jianghe/blcpml/b/f;->e:I

    if-ne v4, v1, :cond_0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/jianghe/blcpml/u;->a:Lcom/jianghe/blcpml/s;

    iget-object v0, v0, Lcom/jianghe/blcpml/s;->a:Lcom/jianghe/blcpml/d/a;

    sget-object v1, Lcom/jianghe/blcpml/e/b;->aj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jianghe/blcpml/d/a;->h(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/jianghe/blcpml/u;->a:Lcom/jianghe/blcpml/s;

    iget-object v0, v0, Lcom/jianghe/blcpml/s;->a:Lcom/jianghe/blcpml/d/a;

    sget-object v1, Lcom/jianghe/blcpml/e/b;->ah:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jianghe/blcpml/d/a;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/jianghe/blcpml/u;->a:Lcom/jianghe/blcpml/s;

    iget-object v1, v1, Lcom/jianghe/blcpml/s;->a:Lcom/jianghe/blcpml/d/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jianghe/blcpml/e/b;->ai:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " %"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jianghe/blcpml/d/a;->h(Ljava/lang/String;)V

    goto :goto_0
.end method
