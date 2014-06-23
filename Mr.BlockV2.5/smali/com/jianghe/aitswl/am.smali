.class Lcom/jianghe/aitswl/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/jianghe/aitswl/Pda;


# direct methods
.method constructor <init>(Lcom/jianghe/aitswl/Pda;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/am;->a:Lcom/jianghe/aitswl/Pda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/aitswl/t;

    invoke-static {v0}, Lcom/jianghe/aitswl/ay;->a(Lcom/jianghe/aitswl/t;)Lcom/jianghe/aitswl/aj;

    move-result-object v1

    iget-object v2, p0, Lcom/jianghe/aitswl/am;->a:Lcom/jianghe/aitswl/Pda;

    new-instance v3, Lcom/jianghe/aitswl/c;

    invoke-static {}, Lcom/jianghe/aitswl/Pda;->b()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v1, v5}, Lcom/jianghe/aitswl/c;-><init>(Landroid/app/Activity;Lcom/jianghe/aitswl/aj;Z)V

    invoke-static {v2, v3}, Lcom/jianghe/aitswl/Pda;->a(Lcom/jianghe/aitswl/Pda;Lcom/jianghe/aitswl/c;)Lcom/jianghe/aitswl/c;

    iget-object v1, p0, Lcom/jianghe/aitswl/am;->a:Lcom/jianghe/aitswl/Pda;

    invoke-static {v1}, Lcom/jianghe/aitswl/Pda;->a(Lcom/jianghe/aitswl/Pda;)Lcom/jianghe/aitswl/c;

    move-result-object v1

    iget-object v2, p0, Lcom/jianghe/aitswl/am;->a:Lcom/jianghe/aitswl/Pda;

    iget-object v2, v2, Lcom/jianghe/aitswl/Pda;->a:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/jianghe/aitswl/c;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/jianghe/aitswl/am;->a:Lcom/jianghe/aitswl/Pda;

    iget-object v2, p0, Lcom/jianghe/aitswl/am;->a:Lcom/jianghe/aitswl/Pda;

    invoke-static {v2}, Lcom/jianghe/aitswl/Pda;->a(Lcom/jianghe/aitswl/Pda;)Lcom/jianghe/aitswl/c;

    move-result-object v2

    iget-object v2, v2, Lcom/jianghe/aitswl/c;->a:Lcom/jianghe/aitswl/i;

    invoke-virtual {v1, v2}, Lcom/jianghe/aitswl/Pda;->a(Lcom/jianghe/aitswl/i;)V

    iget-object v1, p0, Lcom/jianghe/aitswl/am;->a:Lcom/jianghe/aitswl/Pda;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/jianghe/aitswl/t;->e:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/jianghe/aitswl/ay;->g(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
