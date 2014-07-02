.class Lcom/jianghe/blcpml/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Lcom/jianghe/blcpml/b/k;

.field final synthetic b:Lcom/jianghe/blcpml/b/n;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/b/n;[Lcom/jianghe/blcpml/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/b/o;->b:Lcom/jianghe/blcpml/b/n;

    iput-object p2, p0, Lcom/jianghe/blcpml/b/o;->a:[Lcom/jianghe/blcpml/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/blcpml/b/o;->b:Lcom/jianghe/blcpml/b/n;

    iget-object v0, v0, Lcom/jianghe/blcpml/b/n;->b:Lcom/jianghe/blcpml/b/m;

    invoke-static {v0}, Lcom/jianghe/blcpml/b/m;->b(Lcom/jianghe/blcpml/b/m;)Lcom/jianghe/blcpml/b/p;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/blcpml/b/o;->a:[Lcom/jianghe/blcpml/b/k;

    invoke-interface {v0, v1}, Lcom/jianghe/blcpml/b/p;->a([Lcom/jianghe/blcpml/b/k;)V

    return-void
.end method
