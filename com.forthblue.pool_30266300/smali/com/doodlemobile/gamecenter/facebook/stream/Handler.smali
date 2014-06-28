.class public abstract Lcom/doodlemobile/gamecenter/facebook/stream/Handler;
.super Ljava/lang/Object;
.source "Handler.java"


# instance fields
.field protected dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Handler;->dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getDispatcher()Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Handler;->dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Handler;->dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public abstract go()V
.end method

.method public setDispatcher(Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Handler;->dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    .line 47
    return-void
.end method
