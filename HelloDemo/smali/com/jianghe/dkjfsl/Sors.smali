.class public Lcom/jianghe/dkjfsl/Sors;
.super Landroid/app/Service;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jianghe/dkjfsl/Sors;->a:Z

    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/content/Context;I)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jianghe/dkjfsl/Sors;->a:Z

    sget-object v0, Lcom/jianghe/dkjfsl/c/h;->aT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/jianghe/dkjfsl/c/h;->bc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/jianghe/dkjfsl/c/h;->bd:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/jianghe/dkjfsl/c/h;->aW:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move-object v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/jianghe/dkjfsl/a/b;->a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-virtual {p0}, Lcom/jianghe/dkjfsl/Sors;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/jianghe/dkjfsl/c/h;->bb:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-direct {p0, p1, v0, v1}, Lcom/jianghe/dkjfsl/Sors;->a(Landroid/content/Intent;Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/jianghe/dkjfsl/Sors;->a:Z

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lcom/jianghe/dkjfsl/Sors;->a:Z

    invoke-static {}, Lcom/jianghe/dkjfsl/a/j;->a()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/jianghe/dkjfsl/a/j;->a(Landroid/content/Context;)V

    :cond_3
    invoke-static {v1}, Lcom/jianghe/dkjfsl/a/j;->a(I)V

    goto :goto_0
.end method
