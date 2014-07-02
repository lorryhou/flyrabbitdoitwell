.class Lcom/jianghe/aitswl/aq;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/jianghe/aitswl/Pdr;


# direct methods
.method constructor <init>(Lcom/jianghe/aitswl/Pdr;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/aq;->a:Lcom/jianghe/aitswl/Pdr;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/aitswl/aq;->a:Lcom/jianghe/aitswl/Pdr;

    invoke-static {v0}, Lcom/jianghe/aitswl/Pdr;->b(Lcom/jianghe/aitswl/Pdr;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jianghe/aitswl/ar;

    invoke-direct {v1, p0}, Lcom/jianghe/aitswl/ar;-><init>(Lcom/jianghe/aitswl/aq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
