.class Lcom/jianghe/blcpml/c/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/jianghe/blcpml/c/c;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/c/d;->a:Lcom/jianghe/blcpml/c/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/jianghe/blcpml/c/d;->a:Lcom/jianghe/blcpml/c/c;

    invoke-virtual {v0}, Lcom/jianghe/blcpml/c/c;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/blcpml/c/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/blcpml/c/d;->a:Lcom/jianghe/blcpml/c/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jianghe/blcpml/c/c;->a(Lcom/jianghe/blcpml/c/c;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/jianghe/blcpml/c/e;->h()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/jianghe/blcpml/c/d;->a:Lcom/jianghe/blcpml/c/c;

    iget-object v3, v3, Lcom/jianghe/blcpml/c/c;->a:Lcom/jianghe/blcpml/c/b;

    invoke-static {v3, v0}, Lcom/jianghe/blcpml/c/b;->a(Lcom/jianghe/blcpml/c/b;Lcom/jianghe/blcpml/c/e;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-le v1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/jianghe/blcpml/c/d;->a:Lcom/jianghe/blcpml/c/c;

    invoke-virtual {v0}, Lcom/jianghe/blcpml/c/c;->poll()Ljava/lang/Object;

    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method
