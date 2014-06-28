.class Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler$StreamRequestListener$1;
.super Ljava/lang/Object;
.source "StreamHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler$StreamRequestListener;->onComplete(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler$StreamRequestListener;

.field final synthetic val$html:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler$StreamRequestListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler$StreamRequestListener$1;->this$1:Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler$StreamRequestListener;

    iput-object p2, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler$StreamRequestListener$1;->val$html:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler$StreamRequestListener$1;->this$1:Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler$StreamRequestListener;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler$StreamRequestListener;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;->dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler$StreamRequestListener$1;->val$html:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->loadData(Ljava/lang/String;)V

    .line 89
    return-void
.end method
