.class Lcom/jianghe/aitswl/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jianghe/aitswl/b/c;


# instance fields
.field final synthetic a:Lcom/jianghe/aitswl/aj;

.field final synthetic b:Lcom/jianghe/aitswl/ad;


# direct methods
.method constructor <init>(Lcom/jianghe/aitswl/ad;Lcom/jianghe/aitswl/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/ae;->b:Lcom/jianghe/aitswl/ad;

    iput-object p2, p0, Lcom/jianghe/aitswl/ae;->a:Lcom/jianghe/aitswl/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jianghe/aitswl/b/h;I)V
    .locals 2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/jianghe/aitswl/ae;->b:Lcom/jianghe/aitswl/ad;

    new-instance v1, Lcom/jianghe/aitswl/af;

    invoke-direct {v1, p0}, Lcom/jianghe/aitswl/af;-><init>(Lcom/jianghe/aitswl/ae;)V

    invoke-virtual {v0, v1}, Lcom/jianghe/aitswl/ad;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/jianghe/aitswl/ae;->a:Lcom/jianghe/aitswl/aj;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/jianghe/aitswl/aj;->l:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/jianghe/aitswl/ae;->b:Lcom/jianghe/aitswl/ad;

    iget-object v0, v0, Lcom/jianghe/aitswl/ad;->a:Lcom/jianghe/aitswl/ac;

    invoke-static {v0}, Lcom/jianghe/aitswl/ac;->a(Lcom/jianghe/aitswl/ac;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/aitswl/ae;->a:Lcom/jianghe/aitswl/aj;

    invoke-static {v0, v1}, Lcom/jianghe/aitswl/ay;->b(Landroid/content/Context;Lcom/jianghe/aitswl/aj;)Z

    invoke-static {}, Lcom/jianghe/aitswl/Pdr;->a()V

    :cond_1
    return-void
.end method

.method public a(Lcom/jianghe/aitswl/b/h;J)V
    .locals 0

    return-void
.end method
