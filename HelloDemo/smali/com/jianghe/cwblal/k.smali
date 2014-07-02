.class final Lcom/jianghe/cwblal/k;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jianghe/cwblal/i;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/jianghe/cwblal/i;->c()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jianghe/cwblal/Bons;

    invoke-static {v2, v3}, Lcom/jianghe/cwblal/c/h;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/jianghe/cwblal/i;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/jianghe/cwblal/i;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jianghe/cwblal/c/h;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/jianghe/cwblal/c/h;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {}, Lcom/jianghe/cwblal/i;->d()Lcom/jianghe/cwblal/d/c;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/jianghe/cwblal/i;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/jianghe/cwblal/i;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/jianghe/cwblal/i;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jianghe/cwblal/c/h;->a([Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/jianghe/cwblal/i;->d()Lcom/jianghe/cwblal/d/c;

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->b()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/jianghe/cwblal/d/c;

    invoke-static {}, Lcom/jianghe/cwblal/i;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/jianghe/cwblal/i;->e()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/jianghe/cwblal/i;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/jianghe/cwblal/c/h;->p(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/jianghe/cwblal/d/c;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    invoke-static {v0}, Lcom/jianghe/cwblal/i;->a(Lcom/jianghe/cwblal/d/c;)Lcom/jianghe/cwblal/d/c;

    invoke-static {}, Lcom/jianghe/cwblal/i;->d()Lcom/jianghe/cwblal/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jianghe/cwblal/d/c;->c()V

    :cond_4
    invoke-static {}, Lcom/jianghe/cwblal/i;->e()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jianghe/cwblal/i;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jianghe/cwblal/c/h;->t(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/jianghe/cwblal/i;->a(Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/jianghe/cwblal/i;->a()V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/jianghe/cwblal/i;->d()Lcom/jianghe/cwblal/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jianghe/cwblal/i;->d()Lcom/jianghe/cwblal/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jianghe/cwblal/d/c;->d()V

    invoke-static {}, Lcom/jianghe/cwblal/i;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jianghe/cwblal/c/h;->t(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/jianghe/cwblal/i;->a(Ljava/util/List;)Ljava/util/List;

    :cond_6
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/jianghe/cwblal/i;->a(Lcom/jianghe/cwblal/d/c;)Lcom/jianghe/cwblal/d/c;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
