.class final Lcom/adsmogo/adapters/api/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/x;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleRequest(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s Rm mogo handleRequest"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final onAdFailure()V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s Rm mogo onAdFailure"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/x;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adsmogo/adapters/api/x;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->m(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method public final onAdStart()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s Rm mogo onAdStart"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/x;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->n(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/AdsMogoCore;->startRotate(Z)V

    :cond_0
    return-void
.end method

.method public final onAdStop()V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s Rm mogo onAdStop"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/x;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->n(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/controller/AdsMogoCore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adsmogo/controller/AdsMogoCore;->adwoPuseRotate()V

    :cond_0
    return-void
.end method

.method public final onAdSucceed()V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s Rm mogo onAdSucceed"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/x;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adsmogo/adapters/api/x;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->m(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method public final onExpand()Z
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s Rm mogo onExpand"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final onExpandClose()Z
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s Rm mogo onExpandClose"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final onResize()Z
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s Rm mogo onResize"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final onResizeClose()Z
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s Rm mogo onResizeClose"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method
