.class Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler$1;
.super Ljava/lang/Object;
.source "LogoutHandler.java"

# interfaces
.implements Lcom/facebook/android/AsyncFacebookRunner$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;->go()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler$1;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler$1;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;->dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    const-string v1, "login"

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->runHandler(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 73
    const-string v0, "app"

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler$1;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;->dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    const-string v1, "login"

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->runHandler(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 56
    const-string v0, "app"

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler$1;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;->dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    const-string v1, "login"

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->runHandler(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 61
    const-string v0, "app"

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler$1;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;->dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    const-string v1, "login"

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->runHandler(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 67
    const-string v0, "app"

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler$1;->this$0:Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;->dispatcher:Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    const-string v1, "login"

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->runHandler(Ljava/lang/String;)V

    .line 69
    return-void
.end method
