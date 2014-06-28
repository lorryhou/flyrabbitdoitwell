.class Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;
.super Ljava/lang/Object;
.source "LoginHandler.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppLoginListener"
.end annotation


# instance fields
.field private fb:Lcom/facebook/android/Facebook;

.field final synthetic this$1:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;Lcom/facebook/android/Facebook;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;->this$1:Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;->fb:Lcom/facebook/android/Facebook;

    .line 86
    return-void
.end method

.method static synthetic access$200(Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;)Lcom/facebook/android/Facebook;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;->fb:Lcom/facebook/android/Facebook;

    return-object v0
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "app"

    const-string v1, "login canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 98
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;->fb:Lcom/facebook/android/Facebook;

    invoke-direct {v0, v1}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    const-string v1, "/me"

    new-instance v2, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1;

    invoke-direct {v2, p0}, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener$1;-><init>(Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler$JsHandler$AppLoginListener;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 3

    .prologue
    .line 118
    const-string v0, "app"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 3

    .prologue
    .line 122
    const-string v0, "app"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "facebook error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method
