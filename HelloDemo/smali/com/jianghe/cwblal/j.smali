.class final Lcom/jianghe/cwblal/j;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x0

    invoke-static {}, Lcom/jianghe/cwblal/i;->c()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/jianghe/cwblal/i;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/jianghe/cwblal/c/h;->b(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/jianghe/cwblal/i;->a(Ljava/util/List;)Ljava/util/List;

    sget-object v0, Lcom/jianghe/cwblal/i;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
