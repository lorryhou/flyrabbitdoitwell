.class Lcom/jianghe/aitswl/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jianghe/aitswl/b/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/jianghe/aitswl/aj;

.field private c:Landroid/os/Handler;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jianghe/aitswl/aj;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/jianghe/aitswl/m;->d:I

    iput v0, p0, Lcom/jianghe/aitswl/m;->e:I

    iput-object p1, p0, Lcom/jianghe/aitswl/m;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/jianghe/aitswl/m;->b:Lcom/jianghe/aitswl/aj;

    iput-object p3, p0, Lcom/jianghe/aitswl/m;->c:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/jianghe/aitswl/m;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/jianghe/aitswl/b/h;I)V
    .locals 9

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

    move-result-object v1

    sget-object v2, Lcom/jianghe/aitswl/h;->aH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/jianghe/aitswl/h;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/jianghe/aitswl/h;->aK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/jianghe/aitswl/b/h;->c()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/jianghe/aitswl/h;->cz:Ljava/lang/String;

    iget-object v0, p0, Lcom/jianghe/aitswl/m;->a:Landroid/content/Context;

    const v1, 0x1080082

    iget-object v3, p0, Lcom/jianghe/aitswl/m;->b:Lcom/jianghe/aitswl/aj;

    iget v3, v3, Lcom/jianghe/aitswl/aj;->h:I

    const/16 v4, 0x20

    iget-object v5, p0, Lcom/jianghe/aitswl/m;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/jianghe/aitswl/b/h;->c()Ljava/io/File;

    move-result-object v6

    iget-object v8, p0, Lcom/jianghe/aitswl/m;->b:Lcom/jianghe/aitswl/aj;

    iget v8, v8, Lcom/jianghe/aitswl/aj;->w:I

    invoke-static {v5, v6, v8}, Lcom/jianghe/aitswl/ay;->a(Landroid/content/Context;Ljava/io/File;I)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/jianghe/aitswl/m;->b:Lcom/jianghe/aitswl/aj;

    iget-object v6, v6, Lcom/jianghe/aitswl/aj;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/jianghe/aitswl/ag;->a(Landroid/content/Context;ILjava/lang/String;IILandroid/content/Intent;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/jianghe/aitswl/m;->b:Lcom/jianghe/aitswl/aj;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/jianghe/aitswl/aj;->l:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/jianghe/aitswl/m;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/jianghe/aitswl/m;->b:Lcom/jianghe/aitswl/aj;

    invoke-static {v0, v1}, Lcom/jianghe/aitswl/ay;->b(Landroid/content/Context;Lcom/jianghe/aitswl/aj;)Z

    iget-object v0, p0, Lcom/jianghe/aitswl/m;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/jianghe/aitswl/b/h;->c()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jianghe/aitswl/m;->b:Lcom/jianghe/aitswl/aj;

    iget-object v2, v2, Lcom/jianghe/aitswl/aj;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/jianghe/aitswl/m;->b:Lcom/jianghe/aitswl/aj;

    iget v3, v3, Lcom/jianghe/aitswl/aj;->w:I

    invoke-static {v0, v1, v2, v3}, Lcom/jianghe/aitswl/ay;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jianghe/aitswl/m;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/jianghe/aitswl/m;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/jianghe/aitswl/Pdm;->getService(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/jianghe/aitswl/h;->T:Ljava/lang/String;

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/jianghe/aitswl/m;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/jianghe/aitswl/m;->b:Lcom/jianghe/aitswl/aj;

    iget-byte v0, v0, Lcom/jianghe/aitswl/aj;->e:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/jianghe/aitswl/a;->a()Lcom/jianghe/aitswl/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/aitswl/m;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/jianghe/aitswl/m;->b:Lcom/jianghe/aitswl/aj;

    iget v2, v2, Lcom/jianghe/aitswl/aj;->h:I

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/jianghe/aitswl/a;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/jianghe/aitswl/m;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/jianghe/aitswl/m;->b:Lcom/jianghe/aitswl/aj;

    invoke-static {v1}, Lcom/jianghe/aitswl/ay;->a(Lcom/jianghe/aitswl/aj;)Lcom/jianghe/aitswl/t;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jianghe/aitswl/ay;->a(Landroid/content/Context;Lcom/jianghe/aitswl/t;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/jianghe/aitswl/m;->c:Landroid/os/Handler;

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

    invoke-direct {p0, v1}, Lcom/jianghe/aitswl/m;->a(Landroid/os/Message;)V

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

    if-ne v0, v1, :cond_3

    sget-object v2, Lcom/jianghe/aitswl/h;->cB:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/jianghe/aitswl/m;->a:Landroid/content/Context;

    const v1, 0x1080078

    iget-object v3, p0, Lcom/jianghe/aitswl/m;->b:Lcom/jianghe/aitswl/aj;

    iget v3, v3, Lcom/jianghe/aitswl/aj;->h:I

    const/16 v4, 0x10

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/jianghe/aitswl/m;->b:Lcom/jianghe/aitswl/aj;

    iget-object v6, v6, Lcom/jianghe/aitswl/aj;->m:Ljava/lang/String;

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

    iget v1, p0, Lcom/jianghe/aitswl/m;->e:I

    sub-int v1, v0, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    iput v0, p0, Lcom/jianghe/aitswl/m;->e:I

    iget-object v0, p0, Lcom/jianghe/aitswl/m;->a:Landroid/content/Context;

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

    iget-object v3, p0, Lcom/jianghe/aitswl/m;->b:Lcom/jianghe/aitswl/aj;

    iget v3, v3, Lcom/jianghe/aitswl/aj;->h:I

    const/16 v4, 0x10

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/jianghe/aitswl/m;->b:Lcom/jianghe/aitswl/aj;

    iget-object v6, v6, Lcom/jianghe/aitswl/aj;->g:Ljava/lang/String;

    iget v7, p0, Lcom/jianghe/aitswl/m;->e:I

    invoke-static/range {v0 .. v7}, Lcom/jianghe/aitswl/ag;->a(Landroid/content/Context;ILjava/lang/String;IILandroid/content/Intent;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
