.class Lcom/jianghe/cwblal/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/jianghe/cwblal/b;


# direct methods
.method constructor <init>(Lcom/jianghe/cwblal/b;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/cwblal/c;->a:Lcom/jianghe/cwblal/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    iget-object v0, p0, Lcom/jianghe/cwblal/c;->a:Lcom/jianghe/cwblal/b;

    iget-object v0, v0, Lcom/jianghe/cwblal/b;->a:Lcom/jianghe/cwblal/Bona;

    invoke-static {v0}, Lcom/jianghe/cwblal/Bona;->a(Lcom/jianghe/cwblal/Bona;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/jianghe/cwblal/c/h;->b(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/jianghe/cwblal/c;->a:Lcom/jianghe/cwblal/b;

    iget-object v1, v1, Lcom/jianghe/cwblal/b;->a:Lcom/jianghe/cwblal/Bona;

    invoke-static {v1, v0}, Lcom/jianghe/cwblal/Bona;->a(Lcom/jianghe/cwblal/Bona;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/jianghe/cwblal/c;->a:Lcom/jianghe/cwblal/b;

    iget-object v0, v0, Lcom/jianghe/cwblal/b;->a:Lcom/jianghe/cwblal/Bona;

    iget-object v0, v0, Lcom/jianghe/cwblal/Bona;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
