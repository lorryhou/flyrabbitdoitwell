.class Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1;
.super Lcom/doodlemobile/gamecenter/facebook/stream/AsyncRequestListener;
.source "LoginHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;->onComplete(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1;->this$2:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;

    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/AsyncRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 102
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    new-instance v2, Lcom/doodlemobile/gamecenter/facebook/stream/Session;

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1;->this$2:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;

    # getter for: Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;->fb:Lcom/facebook/android/Facebook;
    invoke-static {v3}, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;->access$200(Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;)Lcom/facebook/android/Facebook;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/Session;-><init>(Lcom/facebook/android/Facebook;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1;->this$2:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;->this$1:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->save(Landroid/content/Context;)Z

    .line 107
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1;->this$2:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;->this$1:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1$1;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1$1;-><init>(Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method
