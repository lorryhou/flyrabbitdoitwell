.class Lcom/jianghe/blcpml/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jianghe/blcpml/s;


# direct methods
.method constructor <init>(Lcom/jianghe/blcpml/s;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v0}, Lcom/jianghe/blcpml/s;->b(Lcom/jianghe/blcpml/s;)Lcom/jianghe/blcpml/b/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/jianghe/blcpml/b/f;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v0}, Lcom/jianghe/blcpml/s;->c(Lcom/jianghe/blcpml/s;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v1}, Lcom/jianghe/blcpml/s;->b(Lcom/jianghe/blcpml/s;)Lcom/jianghe/blcpml/b/f;

    move-result-object v1

    iget-object v1, v1, Lcom/jianghe/blcpml/b/f;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jianghe/blcpml/e/h;->d(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v0}, Lcom/jianghe/blcpml/s;->b(Lcom/jianghe/blcpml/s;)Lcom/jianghe/blcpml/b/f;

    move-result-object v0

    iget-boolean v0, v0, Lcom/jianghe/blcpml/b/f;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v0}, Lcom/jianghe/blcpml/s;->c(Lcom/jianghe/blcpml/s;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v1}, Lcom/jianghe/blcpml/s;->b(Lcom/jianghe/blcpml/s;)Lcom/jianghe/blcpml/b/f;

    move-result-object v1

    invoke-static {v1}, Lcom/jianghe/blcpml/e/h;->a(Lcom/jianghe/blcpml/b/f;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v2}, Lcom/jianghe/blcpml/s;->b(Lcom/jianghe/blcpml/s;)Lcom/jianghe/blcpml/b/f;

    move-result-object v2

    iget v2, v2, Lcom/jianghe/blcpml/b/f;->e:I

    invoke-static {v0, v1, v2}, Lcom/jianghe/blcpml/e/h;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v1}, Lcom/jianghe/blcpml/s;->c(Lcom/jianghe/blcpml/s;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v2}, Lcom/jianghe/blcpml/s;->b(Lcom/jianghe/blcpml/s;)Lcom/jianghe/blcpml/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/jianghe/blcpml/b/f;->f:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/jianghe/blcpml/e/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v0}, Lcom/jianghe/blcpml/s;->c(Lcom/jianghe/blcpml/s;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v1}, Lcom/jianghe/blcpml/s;->b(Lcom/jianghe/blcpml/s;)Lcom/jianghe/blcpml/b/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jianghe/blcpml/e/h;->a(Landroid/content/Context;Lcom/jianghe/blcpml/b/f;)V

    iget-object v0, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    iget-object v0, v0, Lcom/jianghe/blcpml/s;->a:Lcom/jianghe/blcpml/d/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jianghe/blcpml/e/b;->ai:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jianghe/blcpml/e/b;->bK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jianghe/blcpml/d/a;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v0}, Lcom/jianghe/blcpml/s;->b(Lcom/jianghe/blcpml/s;)Lcom/jianghe/blcpml/b/f;

    move-result-object v0

    iget v0, v0, Lcom/jianghe/blcpml/b/f;->y:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v0}, Lcom/jianghe/blcpml/s;->b(Lcom/jianghe/blcpml/s;)Lcom/jianghe/blcpml/b/f;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/jianghe/blcpml/b/f;->x:I

    iget-object v0, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v0}, Lcom/jianghe/blcpml/s;->c(Lcom/jianghe/blcpml/s;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v1}, Lcom/jianghe/blcpml/s;->b(Lcom/jianghe/blcpml/s;)Lcom/jianghe/blcpml/b/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jianghe/blcpml/e/h;->d(Landroid/content/Context;Lcom/jianghe/blcpml/b/f;)Z

    new-instance v0, Lcom/jianghe/blcpml/b/q;

    invoke-direct {v0}, Lcom/jianghe/blcpml/b/q;-><init>()V

    iget-object v1, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v1}, Lcom/jianghe/blcpml/s;->c(Lcom/jianghe/blcpml/s;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jianghe/blcpml/b/q;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/jianghe/blcpml/b/a;->a()Lcom/jianghe/blcpml/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v1}, Lcom/jianghe/blcpml/s;->c(Lcom/jianghe/blcpml/s;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v2}, Lcom/jianghe/blcpml/s;->b(Lcom/jianghe/blcpml/s;)Lcom/jianghe/blcpml/b/f;

    move-result-object v2

    iget v2, v2, Lcom/jianghe/blcpml/b/f;->e:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/jianghe/blcpml/b/a;->a(Landroid/content/Context;II)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v0}, Lcom/jianghe/blcpml/s;->c(Lcom/jianghe/blcpml/s;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/jianghe/blcpml/e/b;->an:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v2}, Lcom/jianghe/blcpml/s;->b(Lcom/jianghe/blcpml/s;)Lcom/jianghe/blcpml/b/f;

    move-result-object v2

    iget-object v2, v2, Lcom/jianghe/blcpml/b/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/jianghe/blcpml/e/b;->ao:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jianghe/blcpml/e/b;->ap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v1}, Lcom/jianghe/blcpml/s;->b(Lcom/jianghe/blcpml/s;)Lcom/jianghe/blcpml/b/f;

    move-result-object v1

    iget-object v1, v1, Lcom/jianghe/blcpml/b/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blcpml/e/b;->aq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v1}, Lcom/jianghe/blcpml/s;->b(Lcom/jianghe/blcpml/s;)Lcom/jianghe/blcpml/b/f;

    move-result-object v1

    iget-object v1, v1, Lcom/jianghe/blcpml/b/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v1}, Lcom/jianghe/blcpml/s;->c(Lcom/jianghe/blcpml/s;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v2, v0}, Lcom/jianghe/blcpml/s;->a(Lcom/jianghe/blcpml/s;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/jianghe/blcpml/w;->a:Lcom/jianghe/blcpml/s;

    invoke-static {v0}, Lcom/jianghe/blcpml/s;->a(Lcom/jianghe/blcpml/s;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
