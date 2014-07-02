.class final Lcom/adsmogo/controller/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/controller/AdsMogoCore;

.field private final synthetic b:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/adsmogo/controller/AdsMogoCore;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/b;->a:Lcom/adsmogo/controller/AdsMogoCore;

    iput-object p2, p0, Lcom/adsmogo/controller/b;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/controller/b;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/b;->a:Lcom/adsmogo/controller/AdsMogoCore;

    iget-object v0, v0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/b;->a:Lcom/adsmogo/controller/AdsMogoCore;

    iget-object v0, v0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsmogo/controller/d;

    iget-object v2, p0, Lcom/adsmogo/controller/b;->a:Lcom/adsmogo/controller/AdsMogoCore;

    iget-object v3, p0, Lcom/adsmogo/controller/b;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2, v3}, Lcom/adsmogo/controller/d;-><init>(Lcom/adsmogo/controller/AdsMogoCore;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
