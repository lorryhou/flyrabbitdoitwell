.class final Lcom/adsmogo/mriad/view/b;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;


# direct methods
.method constructor <init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/mriad/view/b;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RMWebView onLoadResource:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/mriad/view/b;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    iget-object v1, p0, Lcom/adsmogo/mriad/view/b;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/adsmogo/mriad/view/b;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-static {v2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->b(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;I)V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/b;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    iget-object v1, p0, Lcom/adsmogo/mriad/view/b;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/adsmogo/mriad/view/b;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-static {v2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->b(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->b(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;I)V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/b;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-static {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->c(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/mriad/view/b;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-static {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->b(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)F

    move-result v1

    iget-object v2, p0, Lcom/adsmogo/mriad/view/b;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-static {v2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->d(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;->init(FLjava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/b;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->onRmAndAdRead(Z)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RMWebview onReceivedError"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/b;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-static {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/mriad/view/b;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-static {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;->onAdFailure()V

    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/mriad/view/b;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v4

    :cond_0
    const-string v1, "mailto:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/mriad/view/b;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adsmogo/mriad/view/b;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/mriad/view/b;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
