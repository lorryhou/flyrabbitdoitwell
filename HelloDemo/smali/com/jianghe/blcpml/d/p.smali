.class Lcom/jianghe/blcpml/d/p;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Lcom/jianghe/blcpml/d/o;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/d/o;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/d/p;->a:Lcom/jianghe/blcpml/d/o;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/blcpml/d/p;->a:Lcom/jianghe/blcpml/d/o;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jianghe/blcpml/d/o;->a(Lcom/jianghe/blcpml/d/o;Z)Z

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
