.class Lcom/jianghe/blcpml/q;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jianghe/blcpml/n;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/n;JJI)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/q;->b:Lcom/jianghe/blcpml/n;

    iput p6, p0, Lcom/jianghe/blcpml/q;->a:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/blcpml/q;->b:Lcom/jianghe/blcpml/n;

    iget v1, p0, Lcom/jianghe/blcpml/q;->a:I

    invoke-virtual {v0, v1}, Lcom/jianghe/blcpml/n;->a(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
