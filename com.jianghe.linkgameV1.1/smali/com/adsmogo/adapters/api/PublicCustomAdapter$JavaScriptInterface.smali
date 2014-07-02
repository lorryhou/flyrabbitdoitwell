.class public final Lcom/adsmogo/adapters/api/PublicCustomAdapter$JavaScriptInterface;
.super Ljava/lang/Object;


# instance fields
.field final synthetic this$0:Lcom/adsmogo/adapters/api/PublicCustomAdapter;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter$JavaScriptInterface;->this$0:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adsmogoImageOnError()V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter$JavaScriptInterface;->this$0:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Z)V

    const-string v0, "AdsMOGO SDK"

    const-string v1, "image err"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter$JavaScriptInterface;->this$0:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter$JavaScriptInterface;->this$0:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->j(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method public final adsmogoImageOnload()V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter$JavaScriptInterface;->this$0:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;Z)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter$JavaScriptInterface;->this$0:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->i(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/adsmogo/adapters/api/aE;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/PublicCustomAdapter$JavaScriptInterface;->this$0:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-direct {v1, v2}, Lcom/adsmogo/adapters/api/aE;-><init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
