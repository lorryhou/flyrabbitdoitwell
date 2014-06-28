.class Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$3;
.super Lcom/doodlemobile/gamecenter/facebook/stream/AsyncRequestListener;
.source "StreamJsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->postComment(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$post_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$3;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;

    iput-object p2, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$3;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$3;->val$post_id:Ljava/lang/String;

    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/AsyncRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$3;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$3;->val$message:Ljava/lang/String;

    # invokes: Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->renderComment(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->access$200(Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    const-string v1, "\'"

    const-string v2, "\\\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$3;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onComment(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$3;->val$post_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

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

    .line 158
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
