.class final Lcom/adsmogo/adapters/api/I;
.super Lcom/adsmogo/controller/AdsMogoCore;


# instance fields
.field private synthetic h:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Lcom/adsmogo/adview/AdsMogoLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/I;->h:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-direct {p0, p2}, Lcom/adsmogo/controller/AdsMogoCore;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/adsmogo/controller/count/AdsCount;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->f:Lcom/adsmogo/controller/count/AdsCount;

    return-object v0
.end method

.method public final a(Lcom/adsmogo/controller/listener/AdsMogoListener;)V
    .locals 0

    return-void
.end method

.method protected final a(Lcom/adsmogo/model/obj/Ration;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    const-string v0, "AdsMOGO SDK"

    const-string v2, "s2s bulidAndRequestAdapter"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->f:Lcom/adsmogo/controller/count/AdsCount;

    if-nez v0, :cond_0

    new-instance v2, Lcom/adsmogo/controller/count/AdsCount;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/adsmogo/controller/count/AdsCount;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/adsmogo/adapters/api/I;->f:Lcom/adsmogo/controller/count/AdsCount;

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-static {v0, p1, v6}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;Z)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v0, "s2s request sdkad info: \nkey: %s\ntype: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    aput-object v5, v3, v4

    iget v4, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "AdsMOGO SDK"

    invoke-static {v3, v0}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->f:Lcom/adsmogo/controller/count/AdsCount;

    invoke-virtual {v0}, Lcom/adsmogo/controller/count/AdsCount;->getNidAndType()Ljava/util/HashMap;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    add-int/lit16 v4, v4, 0x7d0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    add-int/lit16 v5, v5, 0x7d0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/adsmogo/adapters/api/I;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->finish()V

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/adapters/api/I;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/I;->a:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/adsmogo/adapters/api/I;->a:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/adsmogo/adapters/api/I;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v2, p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setAdsMogoCoreListener(Lcom/adsmogo/controller/listener/AdsMogoCoreListener;)V

    invoke-virtual {v2, p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setAdsMogoCore(Lcom/adsmogo/controller/AdsMogoCore;)V

    invoke-virtual {v2}, Lcom/adsmogo/adapters/AdsMogoAdapter;->handle()V

    :goto_1
    return-void

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/adsmogo/adapters/api/I;->requestAdFail(Landroid/view/ViewGroup;)V

    goto :goto_1
.end method

.method public final adwoPuseRotate()V
    .locals 0

    return-void
.end method

.method public final b()Lcom/adsmogo/adapters/AdsMogoAdapter;
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->a:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/I;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/adsmogo/adapters/AdsMogoAdapter;
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->a:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/I;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final countClick(Lcom/adsmogo/model/obj/Ration;)V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->h:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/adsmogo/controller/AdsMogoCore;->countClick(Lcom/adsmogo/model/obj/Ration;)V

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()Lcom/adsmogo/controller/listener/AdsMogoListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final requestAdFail(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "S2sAdapterCore (requestAdFail)"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsmogo/adapters/api/K;

    invoke-direct {v1, p0, p1}, Lcom/adsmogo/adapters/api/K;-><init>(Lcom/adsmogo/adapters/api/I;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->a:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/I;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/I;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adsmogo/adapters/api/I;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adsmogo/adapters/api/J;

    invoke-direct {v2, p0, v0}, Lcom/adsmogo/adapters/api/J;-><init>(Lcom/adsmogo/adapters/api/I;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsmogo/adapters/api/L;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/I;->h:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-direct {v1, v2}, Lcom/adsmogo/adapters/api/L;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final requestAdSuccess(Landroid/view/ViewGroup;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->h:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/I;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->h:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    add-int/lit16 v1, p2, 0x7d0

    iput v1, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->h:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-virtual {v0, v2, p1, v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;Z)V

    return-void
.end method

.method public final requestAdSuccess(Landroid/view/ViewGroup;III)V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->h:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/adsmogo/adapters/api/I;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->h:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    add-int/lit16 v1, p2, 0x7d0

    iput v1, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-object v0, p0, Lcom/adsmogo/adapters/api/I;->h:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p3, p4}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;II)V

    return-void
.end method

.method public final startRotate(Z)V
    .locals 0

    return-void
.end method
