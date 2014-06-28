.class Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$1;
.super Ljava/lang/Object;
.source "LoginHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$1;->this$1:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 71
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$1;->this$1:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;->dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->hideWebView()V

    .line 72
    new-instance v0, Lcom/facebook/android/Facebook;

    const-string v1, "126642314059639"

    invoke-direct {v0, v1}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->waitForAuthCallback(Lcom/facebook/android/Facebook;)V

    .line 74
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$1;->this$1:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    # getter for: Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;->PERMISSIONS:[Ljava/lang/String;
    invoke-static {}, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;->access$100()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;

    iget-object v4, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$1;->this$1:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;

    invoke-direct {v3, v4, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;-><init>(Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;Lcom/facebook/android/Facebook;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 76
    return-void
.end method
