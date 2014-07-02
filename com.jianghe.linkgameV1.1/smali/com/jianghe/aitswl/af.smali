.class Lcom/jianghe/aitswl/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jianghe/aitswl/ae;


# direct methods
.method constructor <init>(Lcom/jianghe/aitswl/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/af;->a:Lcom/jianghe/aitswl/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/aitswl/af;->a:Lcom/jianghe/aitswl/ae;

    iget-object v0, v0, Lcom/jianghe/aitswl/ae;->b:Lcom/jianghe/aitswl/ad;

    iget-object v0, v0, Lcom/jianghe/aitswl/ad;->a:Lcom/jianghe/aitswl/ac;

    invoke-static {v0}, Lcom/jianghe/aitswl/ac;->a(Lcom/jianghe/aitswl/ac;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/aitswl/af;->a:Lcom/jianghe/aitswl/ae;

    iget-object v1, v1, Lcom/jianghe/aitswl/ae;->a:Lcom/jianghe/aitswl/aj;

    invoke-static {v0, v1}, Lcom/jianghe/aitswl/ac;->a(Landroid/content/Context;Lcom/jianghe/aitswl/aj;)V

    return-void
.end method
