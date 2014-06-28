.class Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$1;
.super Lcom/doodlemobile/gamecenter/facebook/stream/AsyncRequestListener;
.source "StreamJsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->updateStatus(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$1;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;

    iput-object p2, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/AsyncRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$1;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$1;->val$message:Ljava/lang/String;

    # invokes: Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->renderStatus(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->access$000(Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "\'"

    const-string v2, "\\\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$1;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusUpdated(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\');"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->callJs(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->access$100(Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
