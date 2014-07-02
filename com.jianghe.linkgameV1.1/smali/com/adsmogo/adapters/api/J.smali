.class final Lcom/adsmogo/adapters/api/J;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/I;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p2, p0, Lcom/adsmogo/adapters/api/J;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/J;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/J;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->finish()V

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->clearCache()V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/J;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_1
    return-void
.end method
