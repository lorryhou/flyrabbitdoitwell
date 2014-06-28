.class public Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;
.super Lcom/doodlemobile/gamecenter/facebook/stream/Handler;
.source "StreamHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler$StreamRequestListener;
    }
.end annotation


# static fields
.field private static final CACHE_FILE:Ljava/lang/String; = "cache.txt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/Handler;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method public go()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;->dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;-><init>(Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;)V

    const-string v2, "app"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "cache.txt"

    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/FileIO;->read(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    .line 57
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;->dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->render(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->loadData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->restore(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/facebook/stream/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->getFb()Lcom/facebook/android/Facebook;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/facebook/android/AsyncFacebookRunner;

    invoke-direct {v1, v0}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    const-string v0, "me/home"

    new-instance v2, Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler$StreamRequestListener;

    invoke-direct {v2, p0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler$StreamRequestListener;-><init>(Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;)V

    invoke-virtual {v1, v0, v2}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 69
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 62
    :catch_1
    move-exception v0

    .line 63
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
