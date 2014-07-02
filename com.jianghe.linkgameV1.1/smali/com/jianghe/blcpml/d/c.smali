.class Lcom/jianghe/blcpml/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/jianghe/blcpml/d/a;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/d/c;->a:Lcom/jianghe/blcpml/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/blcpml/d/c;->a:Lcom/jianghe/blcpml/d/a;

    invoke-static {v0}, Lcom/jianghe/blcpml/d/a;->a(Lcom/jianghe/blcpml/d/a;)Lcom/jianghe/blcpml/d/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jianghe/blcpml/d/i;->setVisibility(I)V

    iget-object v0, p0, Lcom/jianghe/blcpml/d/c;->a:Lcom/jianghe/blcpml/d/a;

    invoke-static {v0}, Lcom/jianghe/blcpml/d/a;->a(Lcom/jianghe/blcpml/d/a;)Lcom/jianghe/blcpml/d/i;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jianghe/blcpml/d/i;->setSelection(I)V

    return-void
.end method
