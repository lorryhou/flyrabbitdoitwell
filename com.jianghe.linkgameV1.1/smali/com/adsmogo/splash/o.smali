.class final Lcom/adsmogo/splash/o;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/splash/AdsMogoSplashWebView;


# direct methods
.method constructor <init>(Lcom/adsmogo/splash/AdsMogoSplashWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/splash/o;->a:Lcom/adsmogo/splash/AdsMogoSplashWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/adsmogo/splash/o;->a:Lcom/adsmogo/splash/AdsMogoSplashWebView;

    iget-object v0, v0, Lcom/adsmogo/splash/AdsMogoSplashWebView;->b:Lcom/adsmogo/adview/y;

    invoke-virtual {v0, p2}, Lcom/adsmogo/adview/y;->a(I)V

    const/16 v0, 0x64

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/splash/o;->a:Lcom/adsmogo/splash/AdsMogoSplashWebView;

    iget-boolean v0, v0, Lcom/adsmogo/splash/AdsMogoSplashWebView;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/splash/o;->a:Lcom/adsmogo/splash/AdsMogoSplashWebView;

    invoke-static {v0}, Lcom/adsmogo/splash/AdsMogoSplashWebView;->f(Lcom/adsmogo/splash/AdsMogoSplashWebView;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/splash/o;->a:Lcom/adsmogo/splash/AdsMogoSplashWebView;

    invoke-static {v0}, Lcom/adsmogo/splash/AdsMogoSplashWebView;->d(Lcom/adsmogo/splash/AdsMogoSplashWebView;)V

    goto :goto_0
.end method
