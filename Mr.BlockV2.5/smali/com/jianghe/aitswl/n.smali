.class public Lcom/jianghe/aitswl/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jianghe/aitswl/b/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/jianghe/aitswl/t;

.field private c:Landroid/os/Handler;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jianghe/aitswl/t;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/jianghe/aitswl/n;->d:I

    iput v0, p0, Lcom/jianghe/aitswl/n;->e:I

    iput-object p1, p0, Lcom/jianghe/aitswl/n;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jianghe/aitswl/n;->b:Lcom/jianghe/aitswl/t;

    iput-object p3, p0, Lcom/jianghe/aitswl/n;->c:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/jianghe/aitswl/n;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/jianghe/aitswl/b/h;I)V
    .locals 9

    const/16 v4, 0x10

    const/4 v7, -0x1

    invoke-virtual {p1}, Lcom/jianghe/aitswl/b/h;->c()Ljava/io/File;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/jianghe/aitswl/h;->aH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jianghe/aitswl/b/h;->c()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/jianghe/aitswl/h;->cz:Ljava/lang/String;

    iget-object v0, p0, Lcom/jianghe/aitswl/n;->a:Landroid/content/Context;

    const v1, 0x1080082

    iget-object v3, p0, Lcom/jianghe/aitswl/n;->b:Lcom/jianghe/aitswl/t;

    iget v3, v3, Lcom/jianghe/aitswl/t;->e:I

    iget-object v5, p0, Lcom/jianghe/aitswl/n;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/jianghe/aitswl/b/h;->c()Ljava/io/File;

    move-result-object v6

    iget-object v8, p0, Lcom/jianghe/aitswl/n;->b:Lcom/jianghe/aitswl/t;

    iget-boolean v8, v8, Lcom/jianghe/aitswl/t;->o:Z

    invoke-static {v5, v6, v8}, Lcom/jianghe/aitswl/ay;->a(Landroid/content/Context;Ljava/io/File;Z)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/jianghe/aitswl/n;->b:Lcom/jianghe/aitswl/t;

    iget-object v6, v6, Lcom/jianghe/aitswl/t;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/jianghe/aitswl/ag;->a(Landroid/content/Context;ILjava/lang/String;IILandroid/content/Intent;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/jianghe/aitswl/n;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/jianghe/aitswl/b/h;->c()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jianghe/aitswl/n;->b:Lcom/jianghe/aitswl/t;

    iget-object v2, v2, Lcom/jianghe/aitswl/t;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/jianghe/aitswl/n;->b:Lcom/jianghe/aitswl/t;

    iget-boolean v3, v3, Lcom/jianghe/aitswl/t;->o:Z

    invoke-static {v0, v1, v2, v3}, Lcom/jianghe/aitswl/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/jianghe/aitswl/n;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/jianghe/aitswl/n;->b:Lcom/jianghe/aitswl/t;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/jianghe/aitswl/n;->a(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jianghe/aitswl/n;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/jianghe/aitswl/h;->aC:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jianghe/aitswl/b/h;->c()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/jianghe/aitswl/h;->aE:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jianghe/aitswl/b/h;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-direct {p0, v1}, Lcom/jianghe/aitswl/n;->a(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/jianghe/aitswl/h;->aH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/jianghe/aitswl/h;->cA:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/jianghe/aitswl/b/h;->l()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v2, Lcom/jianghe/aitswl/h;->cB:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/jianghe/aitswl/n;->a:Landroid/content/Context;

    const v1, 0x1080078

    iget-object v3, p0, Lcom/jianghe/aitswl/n;->b:Lcom/jianghe/aitswl/t;

    iget v3, v3, Lcom/jianghe/aitswl/t;->e:I

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/jianghe/aitswl/n;->b:Lcom/jianghe/aitswl/t;

    iget-object v6, v6, Lcom/jianghe/aitswl/t;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/jianghe/aitswl/ag;->a(Landroid/content/Context;ILjava/lang/String;IILandroid/content/Intent;Ljava/lang/String;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/jianghe/aitswl/b/h;J)V
    .locals 8

    invoke-virtual {p1}, Lcom/jianghe/aitswl/b/h;->c()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/jianghe/aitswl/h;->aH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jianghe/aitswl/b/h;->i()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-virtual {p1}, Lcom/jianghe/aitswl/b/h;->h()I

    move-result v1

    div-int/2addr v0, v1

    iget v1, p0, Lcom/jianghe/aitswl/n;->e:I

    sub-int v1, v0, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    iput v0, p0, Lcom/jianghe/aitswl/n;->e:I

    iget-object v0, p0, Lcom/jianghe/aitswl/n;->a:Landroid/content/Context;

    const v1, 0x1080081

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jianghe/aitswl/h;->cC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jianghe/aitswl/h;->aW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/jianghe/aitswl/n;->b:Lcom/jianghe/aitswl/t;

    iget v3, v3, Lcom/jianghe/aitswl/t;->e:I

    const/16 v4, 0x10

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/jianghe/aitswl/n;->b:Lcom/jianghe/aitswl/t;

    iget-object v6, v6, Lcom/jianghe/aitswl/t;->d:Ljava/lang/String;

    iget v7, p0, Lcom/jianghe/aitswl/n;->e:I

    invoke-static/range {v0 .. v7}, Lcom/jianghe/aitswl/ag;->a(Landroid/content/Context;ILjava/lang/String;IILandroid/content/Intent;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
