.class Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$2;
.super Lcom/doodlemobile/gamecenter/facebook/stream/AsyncRequestListener;
.source "StreamJsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->like(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;

.field final synthetic val$post_id:Ljava/lang/String;

.field final synthetic val$val:Z


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$2;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;

    iput-object p2, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$2;->val$post_id:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$2;->val$val:Z

    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/AsyncRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$2;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:onLike(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$2;->val$post_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler$2;->val$val:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->callJs(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;->access$100(Lcom/doodlemobile/gamecenter/facebook/stream/StreamJsHandler;Ljava/lang/String;)V

    .line 136
    return-void
.end method
