.class public Lcom/jianghe/cwblal/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jianghe/cwblal/d/c;


# direct methods
.method public constructor <init>(Lcom/jianghe/cwblal/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/cwblal/d/e;->a:Lcom/jianghe/cwblal/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/jianghe/cwblal/d/c;->f()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/cwblal/d/e;->a:Lcom/jianghe/cwblal/d/c;

    invoke-static {v1}, Lcom/jianghe/cwblal/d/c;->a(Lcom/jianghe/cwblal/d/c;)Lcom/jianghe/cwblal/d/b;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->g()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->g()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/jianghe/cwblal/Bons;

    invoke-static {v3, v4}, Lcom/jianghe/cwblal/c/h;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/jianghe/cwblal/d/c;->f()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/cwblal/d/e;->a:Lcom/jianghe/cwblal/d/c;

    invoke-static {v1}, Lcom/jianghe/cwblal/d/c;->a(Lcom/jianghe/cwblal/d/c;)Lcom/jianghe/cwblal/d/b;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/jianghe/cwblal/d/e;->a:Lcom/jianghe/cwblal/d/c;

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->g()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jianghe/cwblal/d/e;->a:Lcom/jianghe/cwblal/d/c;

    invoke-static {v2}, Lcom/jianghe/cwblal/d/c;->b(Lcom/jianghe/cwblal/d/c;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/jianghe/cwblal/d/c;->a(Lcom/jianghe/cwblal/d/c;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/jianghe/cwblal/d/e;->a:Lcom/jianghe/cwblal/d/c;

    invoke-virtual {v0}, Lcom/jianghe/cwblal/d/c;->c()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/jianghe/cwblal/d/c;->f()Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/jianghe/cwblal/d/c;->f()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->h()Landroid/widget/AbsoluteLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->g()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->g()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jianghe/cwblal/Bona;

    invoke-static {v2, v3}, Lcom/jianghe/cwblal/c/h;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "l"

    iget-object v2, p0, Lcom/jianghe/cwblal/d/e;->a:Lcom/jianghe/cwblal/d/c;

    invoke-static {v2}, Lcom/jianghe/cwblal/d/c;->b(Lcom/jianghe/cwblal/d/c;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/jianghe/cwblal/d/e;->a:Lcom/jianghe/cwblal/d/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jianghe/cwblal/d/c;->a(Lcom/jianghe/cwblal/d/c;Z)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
