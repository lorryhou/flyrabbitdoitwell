.class Lcom/jianghe/aitswl/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jianghe/aitswl/c;


# direct methods
.method constructor <init>(Lcom/jianghe/aitswl/c;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/e;->a:Lcom/jianghe/aitswl/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/jianghe/aitswl/h;->aE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/jianghe/aitswl/h;->aC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/jianghe/aitswl/e;->a:Lcom/jianghe/aitswl/c;

    invoke-static {v2}, Lcom/jianghe/aitswl/c;->b(Lcom/jianghe/aitswl/c;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/jianghe/aitswl/d/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/jianghe/aitswl/e;->a:Lcom/jianghe/aitswl/c;

    iget-object v2, v2, Lcom/jianghe/aitswl/c;->a:Lcom/jianghe/aitswl/i;

    if-eqz v2, :cond_0

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/jianghe/aitswl/e;->a:Lcom/jianghe/aitswl/c;

    iget-object v1, v1, Lcom/jianghe/aitswl/c;->a:Lcom/jianghe/aitswl/i;

    invoke-virtual {v1, v0}, Lcom/jianghe/aitswl/i;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-le v1, v3, :cond_0

    iget-object v2, p0, Lcom/jianghe/aitswl/e;->a:Lcom/jianghe/aitswl/c;

    invoke-static {v2}, Lcom/jianghe/aitswl/c;->c(Lcom/jianghe/aitswl/c;)I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/jianghe/aitswl/e;->a:Lcom/jianghe/aitswl/c;

    iget-object v2, v2, Lcom/jianghe/aitswl/c;->a:Lcom/jianghe/aitswl/i;

    invoke-virtual {v2, v0, v1}, Lcom/jianghe/aitswl/i;->a(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method
