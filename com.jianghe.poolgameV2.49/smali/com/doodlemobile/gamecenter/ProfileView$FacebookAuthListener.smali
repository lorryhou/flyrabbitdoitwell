.class public Lcom/doodlemobile/gamecenter/ProfileView$FacebookAuthListener;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/facebook/SessionEvents$AuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FacebookAuthListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/ProfileView;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookAuthListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFail(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookAuthListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionStore;->clear(Landroid/content/Context;)V

    .line 353
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 354
    const/16 v1, 0x3e9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 355
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookAuthListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/ProfileView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    return-void
.end method

.method public onAuthSucceed()V
    .locals 4

    .prologue
    .line 340
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 341
    const/16 v1, 0x3f2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 342
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookAuthListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/ProfileView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 346
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookAuthListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const-string v1, "me"

    new-instance v2, Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener;

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookAuthListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {v2, v3}, Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 347
    return-void
.end method
