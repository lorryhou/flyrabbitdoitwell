.class final Lcom/adsmogo/mriad/view/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsmogo/mriad/util/AdsMogoPlayerListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;


# direct methods
.method constructor <init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/mriad/view/g;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/mriad/view/g;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/mriad/view/g;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/g;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onError()V
    .locals 0

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/g;->onComplete()V

    return-void
.end method

.method public final onPrepared()V
    .locals 0

    return-void
.end method
