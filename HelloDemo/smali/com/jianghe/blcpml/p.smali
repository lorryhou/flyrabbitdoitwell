.class Lcom/jianghe/blcpml/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jianghe/blcpml/d/q;


# instance fields
.field final synthetic a:Lcom/jianghe/blcpml/n;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/n;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/p;->a:Lcom/jianghe/blcpml/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/blcpml/p;->a:Lcom/jianghe/blcpml/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jianghe/blcpml/n;->a(Lcom/jianghe/blcpml/n;Z)Z

    iget-object v0, p0, Lcom/jianghe/blcpml/p;->a:Lcom/jianghe/blcpml/n;

    invoke-static {v0}, Lcom/jianghe/blcpml/n;->a(Lcom/jianghe/blcpml/n;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/blcpml/p;->a:Lcom/jianghe/blcpml/n;

    invoke-static {v0}, Lcom/jianghe/blcpml/n;->a(Lcom/jianghe/blcpml/n;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/jianghe/blcpml/p;->a:Lcom/jianghe/blcpml/n;

    invoke-static {v0}, Lcom/jianghe/blcpml/n;->b(Lcom/jianghe/blcpml/n;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jianghe/blcpml/i;->a(Landroid/content/Context;)Lcom/jianghe/blcpml/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jianghe/blcpml/i;->a()V

    return-void
.end method
