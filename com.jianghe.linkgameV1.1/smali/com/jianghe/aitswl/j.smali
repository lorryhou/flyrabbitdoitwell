.class Lcom/jianghe/aitswl/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/jianghe/aitswl/i;


# direct methods
.method constructor <init>(Lcom/jianghe/aitswl/i;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/j;->a:Lcom/jianghe/aitswl/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/aitswl/j;->a:Lcom/jianghe/aitswl/i;

    invoke-static {v0}, Lcom/jianghe/aitswl/i;->a(Lcom/jianghe/aitswl/i;)Lcom/jianghe/aitswl/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jianghe/aitswl/a/a;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/aitswl/j;->a:Lcom/jianghe/aitswl/i;

    invoke-static {v0}, Lcom/jianghe/aitswl/i;->a(Lcom/jianghe/aitswl/i;)Lcom/jianghe/aitswl/a/a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/jianghe/aitswl/a/a;->setVisibility(I)V

    iget-object v0, p0, Lcom/jianghe/aitswl/j;->a:Lcom/jianghe/aitswl/i;

    invoke-static {v0}, Lcom/jianghe/aitswl/i;->b(Lcom/jianghe/aitswl/i;)Lcom/jianghe/aitswl/a/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jianghe/aitswl/a/a;->setSelection(I)V

    :cond_0
    return-void
.end method
