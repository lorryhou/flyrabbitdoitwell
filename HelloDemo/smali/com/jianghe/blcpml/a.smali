.class Lcom/jianghe/blcpml/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/jianghe/blcpml/Cefa;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/Cefa;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/a;->b:Lcom/jianghe/blcpml/Cefa;

    iput-object p2, p0, Lcom/jianghe/blcpml/a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/blcpml/a;->b:Lcom/jianghe/blcpml/Cefa;

    invoke-static {v0}, Lcom/jianghe/blcpml/Cefa;->a(Lcom/jianghe/blcpml/Cefa;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/blcpml/a;->b:Lcom/jianghe/blcpml/Cefa;

    invoke-static {v0}, Lcom/jianghe/blcpml/Cefa;->a(Lcom/jianghe/blcpml/Cefa;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    iget-object v1, p0, Lcom/jianghe/blcpml/a;->b:Lcom/jianghe/blcpml/Cefa;

    invoke-static {v1}, Lcom/jianghe/blcpml/Cefa;->b(Lcom/jianghe/blcpml/Cefa;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/jianghe/blcpml/a;->b:Lcom/jianghe/blcpml/Cefa;

    invoke-static {v0}, Lcom/jianghe/blcpml/Cefa;->a(Lcom/jianghe/blcpml/Cefa;)Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/blcpml/a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jianghe/blcpml/a;->b:Lcom/jianghe/blcpml/Cefa;

    iget-object v1, p0, Lcom/jianghe/blcpml/a;->a:Landroid/view/View;

    iput-object v1, v0, Lcom/jianghe/blcpml/Cefa;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/jianghe/blcpml/a;->b:Lcom/jianghe/blcpml/Cefa;

    iget-object v1, p0, Lcom/jianghe/blcpml/a;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/jianghe/blcpml/Cefa;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/jianghe/blcpml/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/jianghe/blcpml/a;->b:Lcom/jianghe/blcpml/Cefa;

    invoke-static {v0}, Lcom/jianghe/blcpml/Cefa;->a(Lcom/jianghe/blcpml/Cefa;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/jianghe/blcpml/a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/jianghe/blcpml/a;->b:Lcom/jianghe/blcpml/Cefa;

    invoke-static {v1}, Lcom/jianghe/blcpml/Cefa;->c(Lcom/jianghe/blcpml/Cefa;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
