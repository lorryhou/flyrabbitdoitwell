.class Lcom/jianghe/blcpml/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jianghe/blcpml/j;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/j;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/k;->a:Lcom/jianghe/blcpml/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/blcpml/k;->a:Lcom/jianghe/blcpml/j;

    iget-object v0, v0, Lcom/jianghe/blcpml/j;->b:Lcom/jianghe/blcpml/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jianghe/blcpml/i;->a(Lcom/jianghe/blcpml/i;Z)Z

    return-void
.end method
