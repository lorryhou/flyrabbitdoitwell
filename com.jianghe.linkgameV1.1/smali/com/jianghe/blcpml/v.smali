.class Lcom/jianghe/blcpml/v;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jianghe/blcpml/s;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/s;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/v;->a:Lcom/jianghe/blcpml/s;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blcpml/e/b;->aR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/jianghe/blcpml/e/b;->aQ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/jianghe/blcpml/v;->a:Lcom/jianghe/blcpml/s;

    iget-object v1, v1, Lcom/jianghe/blcpml/s;->a:Lcom/jianghe/blcpml/d/a;

    iget-object v2, p0, Lcom/jianghe/blcpml/v;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v2}, Lcom/jianghe/blcpml/s;->c(Lcom/jianghe/blcpml/s;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/jianghe/blcpml/d/u;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jianghe/blcpml/d/a;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-le v1, v3, :cond_0

    iget-object v2, p0, Lcom/jianghe/blcpml/v;->a:Lcom/jianghe/blcpml/s;

    iget-object v2, v2, Lcom/jianghe/blcpml/s;->a:Lcom/jianghe/blcpml/d/a;

    iget-object v3, p0, Lcom/jianghe/blcpml/v;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v3}, Lcom/jianghe/blcpml/s;->c(Lcom/jianghe/blcpml/s;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/jianghe/blcpml/d/u;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/jianghe/blcpml/d/a;->a(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method
