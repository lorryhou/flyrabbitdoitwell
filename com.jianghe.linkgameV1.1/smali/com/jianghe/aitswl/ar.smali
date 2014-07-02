.class Lcom/jianghe/aitswl/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/jianghe/aitswl/aq;


# direct methods
.method constructor <init>(Lcom/jianghe/aitswl/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/ar;->a:Lcom/jianghe/aitswl/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/jianghe/aitswl/h;->T:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/jianghe/aitswl/ar;->a:Lcom/jianghe/aitswl/aq;

    iget-object v1, v1, Lcom/jianghe/aitswl/aq;->a:Lcom/jianghe/aitswl/Pdr;

    invoke-static {v1}, Lcom/jianghe/aitswl/Pdr;->a(Lcom/jianghe/aitswl/Pdr;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/jianghe/aitswl/Pdr;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
