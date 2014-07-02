.class Lcom/jianghe/dkjfsl/d/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jianghe/dkjfsl/d/e;


# direct methods
.method constructor <init>(Lcom/jianghe/dkjfsl/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/dkjfsl/d/g;->a:Lcom/jianghe/dkjfsl/d/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/jianghe/dkjfsl/d/g;->a:Lcom/jianghe/dkjfsl/d/e;

    invoke-static {v0}, Lcom/jianghe/dkjfsl/d/e;->a(Lcom/jianghe/dkjfsl/d/e;)Lcom/jianghe/dkjfsl/d/h;

    move-result-object v0

    sget-object v1, Lcom/jianghe/dkjfsl/d/e;->c:Lcom/jianghe/dkjfsl/d/a;

    invoke-virtual {v0, v1}, Lcom/jianghe/dkjfsl/d/h;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
