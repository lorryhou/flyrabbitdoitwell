.class Lcom/jianghe/aitswl/av;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jianghe/aitswl/au;


# direct methods
.method constructor <init>(Lcom/jianghe/aitswl/au;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/av;->a:Lcom/jianghe/aitswl/au;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/jianghe/aitswl/h;->aE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/jianghe/aitswl/h;->aC:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/jianghe/aitswl/av;->a:Lcom/jianghe/aitswl/au;

    invoke-static {v2}, Lcom/jianghe/aitswl/au;->a(Lcom/jianghe/aitswl/au;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/jianghe/aitswl/ay;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/aitswl/av;->a:Lcom/jianghe/aitswl/au;

    invoke-virtual {v0}, Lcom/jianghe/aitswl/au;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
