.class Lcom/jianghe/blcpml/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jianghe/blcpml/d/e;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/d/f;->a:Lcom/jianghe/blcpml/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/blcpml/d/f;->a:Lcom/jianghe/blcpml/d/e;

    invoke-static {v0}, Lcom/jianghe/blcpml/d/e;->a(Lcom/jianghe/blcpml/d/e;)Lcom/jianghe/blcpml/d/h;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/jianghe/blcpml/d/h;->c(I)V

    return-void
.end method
