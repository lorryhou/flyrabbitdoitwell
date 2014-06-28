.class public Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener;
.super Lcom/doodlemobile/gamecenter/facebook/BaseRequestListener;
.source "ProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FacebookRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/ProfileView;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/BaseRequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionStore;->clear(Landroid/content/Context;)V

    .line 386
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 387
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 388
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/ProfileView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 413
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-static {p1}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONObject;

    .line 393
    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionStore;->clear(Landroid/content/Context;)V

    .line 396
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 397
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 398
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/ProfileView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 411
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 401
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    new-instance v1, Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener$1;

    invoke-direct {v1, p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener$1;-><init>(Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
