.class Lcom/jianghe/aitswl/as;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jianghe/aitswl/Pdr;


# direct methods
.method constructor <init>(Lcom/jianghe/aitswl/Pdr;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/as;->a:Lcom/jianghe/aitswl/Pdr;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jianghe/aitswl/as;->a:Lcom/jianghe/aitswl/Pdr;

    iget-object v1, p0, Lcom/jianghe/aitswl/as;->a:Lcom/jianghe/aitswl/Pdr;

    invoke-static {v1}, Lcom/jianghe/aitswl/Pdr;->a(Lcom/jianghe/aitswl/Pdr;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jianghe/aitswl/Pdr;->a(Lcom/jianghe/aitswl/Pdr;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget v9, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/jianghe/aitswl/t;

    iget-object v0, p0, Lcom/jianghe/aitswl/as;->a:Lcom/jianghe/aitswl/Pdr;

    invoke-static {v0}, Lcom/jianghe/aitswl/Pdr;->a(Lcom/jianghe/aitswl/Pdr;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, v6, Lcom/jianghe/aitswl/t;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/jianghe/aitswl/as;->a:Lcom/jianghe/aitswl/Pdr;

    invoke-static {v2}, Lcom/jianghe/aitswl/Pdr;->a(Lcom/jianghe/aitswl/Pdr;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/jianghe/aitswl/ay;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object v8

    iget-object v0, p0, Lcom/jianghe/aitswl/as;->a:Lcom/jianghe/aitswl/Pdr;

    invoke-static {v0}, Lcom/jianghe/aitswl/Pdr;->a(Lcom/jianghe/aitswl/Pdr;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080034

    sget-object v2, Lcom/jianghe/aitswl/h;->cD:Ljava/lang/String;

    iget v3, v6, Lcom/jianghe/aitswl/t;->e:I

    const/16 v4, 0x10

    if-nez v8, :cond_1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    :goto_1
    iget-object v6, v6, Lcom/jianghe/aitswl/t;->d:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-static/range {v0 .. v7}, Lcom/jianghe/aitswl/ag;->a(Landroid/content/Context;ILjava/lang/String;IILandroid/content/Intent;Ljava/lang/String;I)V

    invoke-static {}, Lcom/jianghe/aitswl/a;->a()Lcom/jianghe/aitswl/a;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/aitswl/as;->a:Lcom/jianghe/aitswl/Pdr;

    invoke-static {v1}, Lcom/jianghe/aitswl/Pdr;->a(Lcom/jianghe/aitswl/Pdr;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v9, v2}, Lcom/jianghe/aitswl/a;->a(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/jianghe/aitswl/as;->a:Lcom/jianghe/aitswl/Pdr;

    invoke-static {v0}, Lcom/jianghe/aitswl/Pdr;->a(Lcom/jianghe/aitswl/Pdr;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    move-object v5, v8

    goto :goto_1
.end method
