.class Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher$AppWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher$AppWebViewClient;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher$1;)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher$AppWebViewClient;-><init>(Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 183
    const-string v0, "app://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher$AppWebViewClient;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    invoke-virtual {v1, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->runHandler(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x1

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
