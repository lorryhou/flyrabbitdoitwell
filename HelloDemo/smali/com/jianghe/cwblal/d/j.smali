.class Lcom/jianghe/cwblal/d/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/jianghe/cwblal/d/i;


# direct methods
.method constructor <init>(Lcom/jianghe/cwblal/d/i;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/cwblal/d/j;->c:Lcom/jianghe/cwblal/d/i;

    iput-object p2, p0, Lcom/jianghe/cwblal/d/j;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/jianghe/cwblal/d/j;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/cwblal/d/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jianghe/cwblal/c/h;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/cwblal/d/j;->c:Lcom/jianghe/cwblal/d/i;

    invoke-virtual {v0}, Lcom/jianghe/cwblal/d/i;->a()V

    iget-object v0, p0, Lcom/jianghe/cwblal/d/j;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jianghe/cwblal/d/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jianghe/cwblal/c/h;->h(Landroid/content/Context;)V

    goto :goto_0
.end method
