.class Lcom/jianghe/blcpml/d/m;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Lcom/jianghe/blcpml/d/k;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/d/k;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/d/m;->a:Lcom/jianghe/blcpml/d/k;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/blcpml/d/m;->a:Lcom/jianghe/blcpml/d/k;

    invoke-static {v0}, Lcom/jianghe/blcpml/d/k;->a(Lcom/jianghe/blcpml/d/k;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
