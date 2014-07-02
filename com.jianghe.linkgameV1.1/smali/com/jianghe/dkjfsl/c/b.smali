.class Lcom/jianghe/dkjfsl/c/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jianghe/dkjfsl/c/a;


# direct methods
.method constructor <init>(Lcom/jianghe/dkjfsl/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/dkjfsl/c/b;->a:Lcom/jianghe/dkjfsl/c/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/dkjfsl/c/b;->a:Lcom/jianghe/dkjfsl/c/a;

    invoke-static {v0}, Lcom/jianghe/dkjfsl/c/a;->a(Lcom/jianghe/dkjfsl/c/a;)Lcom/jianghe/dkjfsl/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jianghe/dkjfsl/d/e;->a()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/jianghe/dkjfsl/c/s;->d:Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/jianghe/dkjfsl/c/b;->a:Lcom/jianghe/dkjfsl/c/a;

    invoke-static {v1}, Lcom/jianghe/dkjfsl/c/a;->a(Lcom/jianghe/dkjfsl/c/a;)Lcom/jianghe/dkjfsl/d/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jianghe/dkjfsl/d/e;->a(Ljava/util/List;)V

    return-void
.end method
