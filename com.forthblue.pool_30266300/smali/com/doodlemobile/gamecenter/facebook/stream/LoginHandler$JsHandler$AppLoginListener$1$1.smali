.class Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1$1;
.super Ljava/lang/Object;
.source "LoginHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1;->onComplete(Lorg/json/JSONObject;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1$1;->this$3:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1$1;->this$3:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1;->this$2:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;->this$1:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;->dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->showWebView()V

    .line 110
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1$1;->this$3:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1;->this$2:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;->this$1:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;->dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->runHandler(Ljava/lang/String;)V

    .line 111
    return-void
.end method
