.class Lcom/jianghe/blcpml/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/jianghe/blcpml/Cefa;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/Cefa;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/b;->a:Lcom/jianghe/blcpml/Cefa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/blcpml/b/f;

    iget-object v1, p0, Lcom/jianghe/blcpml/b;->a:Lcom/jianghe/blcpml/Cefa;

    new-instance v2, Lcom/jianghe/blcpml/s;

    iget-object v3, p0, Lcom/jianghe/blcpml/b;->a:Lcom/jianghe/blcpml/Cefa;

    invoke-direct {v2, v3, v0}, Lcom/jianghe/blcpml/s;-><init>(Landroid/app/Activity;Lcom/jianghe/blcpml/b/f;)V

    iput-object v2, v1, Lcom/jianghe/blcpml/Cefa;->b:Lcom/jianghe/blcpml/s;

    iget-object v1, p0, Lcom/jianghe/blcpml/b;->a:Lcom/jianghe/blcpml/Cefa;

    iget-object v1, v1, Lcom/jianghe/blcpml/Cefa;->b:Lcom/jianghe/blcpml/s;

    iget-object v2, p0, Lcom/jianghe/blcpml/b;->a:Lcom/jianghe/blcpml/Cefa;

    invoke-static {v2}, Lcom/jianghe/blcpml/Cefa;->d(Lcom/jianghe/blcpml/Cefa;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jianghe/blcpml/s;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/jianghe/blcpml/b;->a:Lcom/jianghe/blcpml/Cefa;

    iget-object v2, p0, Lcom/jianghe/blcpml/b;->a:Lcom/jianghe/blcpml/Cefa;

    iget-object v2, v2, Lcom/jianghe/blcpml/Cefa;->b:Lcom/jianghe/blcpml/s;

    iget-object v2, v2, Lcom/jianghe/blcpml/s;->a:Lcom/jianghe/blcpml/d/a;

    invoke-virtual {v1, v2}, Lcom/jianghe/blcpml/Cefa;->a(Landroid/view/View;)V

    invoke-static {}, Lcom/jianghe/blcpml/b/a;->a()Lcom/jianghe/blcpml/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/jianghe/blcpml/b;->a:Lcom/jianghe/blcpml/Cefa;

    iget v0, v0, Lcom/jianghe/blcpml/b/f;->e:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/jianghe/blcpml/b/a;->a(Landroid/content/Context;II)V

    return-void
.end method
