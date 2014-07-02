.class final Lcom/jianghe/blcpml/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jianghe/blcpml/Cefs;


# direct methods
.method public constructor <init>(Lcom/jianghe/blcpml/Cefs;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/h;->a:Lcom/jianghe/blcpml/Cefs;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/jianghe/blcpml/h;->a:Lcom/jianghe/blcpml/Cefs;

    invoke-static {v0}, Lcom/jianghe/blcpml/Cefs;->b(Lcom/jianghe/blcpml/Cefs;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/blcpml/h;->a:Lcom/jianghe/blcpml/Cefs;

    invoke-static {v0}, Lcom/jianghe/blcpml/Cefs;->c(Lcom/jianghe/blcpml/Cefs;)V

    :cond_0
    iget-object v0, p0, Lcom/jianghe/blcpml/h;->a:Lcom/jianghe/blcpml/Cefs;

    invoke-static {v0}, Lcom/jianghe/blcpml/Cefs;->d(Lcom/jianghe/blcpml/Cefs;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jianghe/blcpml/h;->a:Lcom/jianghe/blcpml/Cefs;

    invoke-static {v0}, Lcom/jianghe/blcpml/Cefs;->e(Lcom/jianghe/blcpml/Cefs;)Lcom/jianghe/blcpml/h;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/jianghe/blcpml/h;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
