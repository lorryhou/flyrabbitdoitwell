.class Lcom/jianghe/blcpml/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jianghe/blcpml/s;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/s;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/x;->a:Lcom/jianghe/blcpml/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/blcpml/x;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v0}, Lcom/jianghe/blcpml/s;->b(Lcom/jianghe/blcpml/s;)Lcom/jianghe/blcpml/b/f;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jianghe/blcpml/b/f;->u:Z

    iget-object v0, p0, Lcom/jianghe/blcpml/x;->a:Lcom/jianghe/blcpml/s;

    iget-object v0, v0, Lcom/jianghe/blcpml/s;->a:Lcom/jianghe/blcpml/d/a;

    sget-object v1, Lcom/jianghe/blcpml/e/b;->ag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jianghe/blcpml/d/a;->h(Ljava/lang/String;)V

    return-void
.end method
