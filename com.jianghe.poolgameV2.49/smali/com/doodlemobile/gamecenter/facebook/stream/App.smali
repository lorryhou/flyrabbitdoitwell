.class public Lcom/doodlemobile/gamecenter/facebook/stream/App;
.super Landroid/app/Activity;
.source "App.java"


# static fields
.field public static final FB_APP_ID:Ljava/lang/String; = "126642314059639"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->wakeupForAuthCallback()Lcom/facebook/android/Facebook;

    move-result-object v0

    .line 68
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/android/Facebook;->authorizeCallback(IILandroid/content/Intent;)V

    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const-string v4, "stream"

    const-string v3, "login"

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-string v0, "126642314059639"

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    const-string v1, "Warning"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 44
    const-string v1, "A Facebook Applicaton ID must be specified before running this example: see App.java"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 46
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 50
    :cond_0
    new-instance v0, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;-><init>(Landroid/app/Activity;)V

    .line 51
    const-string v1, "login"

    const-class v1, Lcom/doodlemobile/gamecenter/facebook/stream/LoginHandler;

    invoke-virtual {v0, v3, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->addHandler(Ljava/lang/String;Ljava/lang/Class;)V

    .line 52
    const-string v1, "stream"

    const-class v1, Lcom/doodlemobile/gamecenter/facebook/stream/StreamHandler;

    invoke-virtual {v0, v4, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->addHandler(Ljava/lang/String;Ljava/lang/Class;)V

    .line 53
    const-string v1, "logout"

    const-class v2, Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;

    invoke-virtual {v0, v1, v2}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->addHandler(Ljava/lang/String;Ljava/lang/Class;)V

    .line 57
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->restore(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/facebook/stream/Session;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    const-string v1, "stream"

    invoke-virtual {v0, v4}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->runHandler(Ljava/lang/String;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v1, "login"

    invoke-virtual {v0, v3}, Lcom/doodlemobile/gamecenter/facebook/stream/Dispatcher;->runHandler(Ljava/lang/String;)V

    goto :goto_0
.end method
