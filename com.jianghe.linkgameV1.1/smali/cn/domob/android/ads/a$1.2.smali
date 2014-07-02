.class final Lcn/domob/android/ads/a$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcn/domob/android/ads/a;->a()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "onPageFinished"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    invoke-static {v0}, Lcn/domob/android/ads/a;->a(Lcn/domob/android/ads/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    invoke-static {v0}, Lcn/domob/android/ads/a;->b(Lcn/domob/android/ads/a;)V

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/a;->a(Lcn/domob/android/ads/a;Z)Z

    .line 85
    iget-object v0, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    invoke-static {v0}, Lcn/domob/android/ads/a;->c(Lcn/domob/android/ads/a;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 74
    invoke-static {}, Lcn/domob/android/ads/a;->a()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "onPageStarted"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcn/domob/android/ads/a;->a()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "onReceivedError"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/a;->b(Lcn/domob/android/ads/a;Z)Z

    .line 94
    iget-object v0, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    invoke-static {v0}, Lcn/domob/android/ads/a;->b(Lcn/domob/android/ads/a;)V

    .line 95
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {}, Lcn/domob/android/ads/a;->a()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "WebView url:%s"

    invoke-virtual {v0, v1, p2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    iget-object v0, v0, Lcn/domob/android/ads/a;->a:Lcn/domob/android/ads/a$a;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcn/domob/android/ads/a$1;->a:Lcn/domob/android/ads/a;

    iget-object v0, v0, Lcn/domob/android/ads/a;->a:Lcn/domob/android/ads/a$a;

    check-cast p1, Lcn/domob/android/ads/a;

    .end local p1    # "view":Landroid/webkit/WebView;
    invoke-interface {v0, p1, p2}, Lcn/domob/android/ads/a$a;->a(Lcn/domob/android/ads/a;Ljava/lang/String;)V

    .line 103
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
