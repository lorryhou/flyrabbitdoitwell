.class Lcom/jianghe/blcpml/d/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic c:Lcom/jianghe/blcpml/d/k;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/d/k;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/d/l;->c:Lcom/jianghe/blcpml/d/k;

    iput-object p2, p0, Lcom/jianghe/blcpml/d/l;->a:Landroid/content/Context;

    iput p3, p0, Lcom/jianghe/blcpml/d/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/blcpml/d/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jianghe/blcpml/n;->a(Landroid/content/Context;)Lcom/jianghe/blcpml/n;

    move-result-object v0

    iget v1, p0, Lcom/jianghe/blcpml/d/l;->b:I

    invoke-virtual {v0, v1}, Lcom/jianghe/blcpml/n;->a(I)V

    return-void
.end method
