.class final Lcom/jianghe/dkjfsl/c/l;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/dkjfsl/c/l;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/jianghe/dkjfsl/c/l;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/jianghe/dkjfsl/Sorm;->getInstance(Landroid/content/Context;)Lcom/jianghe/dkjfsl/Sorm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jianghe/dkjfsl/Sorm;->create()V

    return-void
.end method
