.class public Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher$1;,
        Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher$AppWebViewClient;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field handlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field isWebViewShown:Z

.field layout:Landroid/widget/LinearLayout;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->activity:Landroid/app/Activity;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->handlers:Ljava/util/HashMap;

    .line 54
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->layout:Landroid/widget/LinearLayout;

    .line 55
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->layout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->isWebViewShown:Z

    .line 59
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->showWebView()V

    .line 60
    return-void
.end method

.method public static getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->handlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public hideWebView()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->isWebViewShown:Z

    .line 121
    return-void
.end method

.method public isWebViewShown()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->isWebViewShown:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 136
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->webView:Landroid/webkit/WebView;

    const-string v1, "http://nada"

    const-string v3, "text/html"

    const-string v4, "utf8"

    const-string v5, ""

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public loadFile(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->webView:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public runHandler(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->handlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 82
    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/facebook/stream/Handler;

    .line 85
    invoke-virtual {v0, p0}, Lcom/doodlemobile/gamecenter/facebook/stream/Handler;->setDispatcher(Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;)V

    .line 86
    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Handler;->go()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 89
    :catch_1
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0
.end method

.method public showWebView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 99
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->isWebViewShown:Z

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 102
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->webView:Landroid/webkit/WebView;

    .line 103
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher$AppWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher$AppWebViewClient;-><init>(Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 104
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->webView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iput-boolean v4, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->isWebViewShown:Z

    goto :goto_0
.end method
