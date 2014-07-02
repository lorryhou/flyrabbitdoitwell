.class Lcom/jianghe/dkjfsl/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/jianghe/dkjfsl/a/c;


# direct methods
.method constructor <init>(Lcom/jianghe/dkjfsl/a/c;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/dkjfsl/a/d;->d:Lcom/jianghe/dkjfsl/a/c;

    iput-object p2, p0, Lcom/jianghe/dkjfsl/a/d;->a:Ljava/lang/String;

    iput p3, p0, Lcom/jianghe/dkjfsl/a/d;->b:I

    iput-object p4, p0, Lcom/jianghe/dkjfsl/a/d;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/jianghe/dkjfsl/a/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/jianghe/dkjfsl/c/t;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jianghe/dkjfsl/a/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/jianghe/dkjfsl/c/t;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-wide/16 v0, 0x7d0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/jianghe/dkjfsl/a/d;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/dkjfsl/a/d;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :cond_1
    :try_start_2
    iget v1, p0, Lcom/jianghe/dkjfsl/a/d;->b:I

    invoke-static {v1, v0}, Lcom/jianghe/dkjfsl/c/t;->a(ILandroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
