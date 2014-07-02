.class final Lcom/adsmogo/adapters/api/aI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

.field private b:Ljava/lang/String;

.field private synthetic c:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/aI;->c:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/adsmogo/adapters/api/aI;->a:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    iput-object p3, p0, Lcom/adsmogo/adapters/api/aI;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/aI;->c:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;->b(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/adsmogo/adapters/api/aH;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/aI;->c:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/aI;->a:Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;

    iget-object v4, p0, Lcom/adsmogo/adapters/api/aI;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/adsmogo/adapters/api/aH;-><init>(Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;Lcom/adsmogo/adapters/api/SXmXaXaXtXoAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
