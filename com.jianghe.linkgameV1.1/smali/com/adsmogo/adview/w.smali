.class final Lcom/adsmogo/adview/w;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/AdsMogoWebView;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/AdsMogoWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/w;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/w;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoWebView;->b:Lcom/adsmogo/adview/y;

    invoke-virtual {v0, p2}, Lcom/adsmogo/adview/y;->a(I)V

    const/16 v0, 0x64

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/w;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    iget-boolean v0, v0, Lcom/adsmogo/adview/AdsMogoWebView;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/w;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoWebView;->e(Lcom/adsmogo/adview/AdsMogoWebView;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adview/w;->a:Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-static {v0}, Lcom/adsmogo/adview/AdsMogoWebView;->d(Lcom/adsmogo/adview/AdsMogoWebView;)V

    goto :goto_0
.end method
