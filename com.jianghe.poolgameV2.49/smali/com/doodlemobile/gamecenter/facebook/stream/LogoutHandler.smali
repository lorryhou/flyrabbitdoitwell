.class public Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;
.super Lcom/doodlemobile/gamecenter/facebook/stream/Handler;
.source "LogoutHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public go()V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->restore(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/facebook/stream/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->getFb()Lcom/facebook/android/Facebook;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->clearSavedSession(Landroid/content/Context;)V

    .line 47
    new-instance v1, Lcom/facebook/android/AsyncFacebookRunner;

    invoke-direct {v1, v0}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler$1;

    invoke-direct {v2, p0}, Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler$1;-><init>(Lcom/doodlemobile/gamecenter/facebook/stream/LogoutHandler;)V

    invoke-virtual {v1, v0, v2}, Lcom/facebook/android/AsyncFacebookRunner;->logout(Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 77
    return-void
.end method
