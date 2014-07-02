.class final Lcom/adsmogo/splash/p;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/splash/AdsMogoSplashWebView;


# direct methods
.method constructor <init>(Lcom/adsmogo/splash/AdsMogoSplashWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/splash/p;->a:Lcom/adsmogo/splash/AdsMogoSplashWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/splash/p;->a:Lcom/adsmogo/splash/AdsMogoSplashWebView;

    invoke-static {v0}, Lcom/adsmogo/splash/AdsMogoSplashWebView;->g(Lcom/adsmogo/splash/AdsMogoSplashWebView;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/adsmogo/splash/p;->a:Lcom/adsmogo/splash/AdsMogoSplashWebView;

    invoke-static {v1, p2}, Lcom/adsmogo/splash/AdsMogoSplashWebView;->a(Lcom/adsmogo/splash/AdsMogoSplashWebView;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
