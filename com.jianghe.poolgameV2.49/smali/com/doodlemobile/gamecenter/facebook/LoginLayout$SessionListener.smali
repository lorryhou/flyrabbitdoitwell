.class Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;
.super Ljava/lang/Object;
.source "LoginLayout.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/facebook/SessionEvents$AuthListener;
.implements Lcom/doodlemobile/gamecenter/facebook/SessionEvents$LogoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/facebook/LoginLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;->this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;-><init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;)V

    return-void
.end method


# virtual methods
.method public onAuthFail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onAuthSucceed()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;->this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    # getter for: Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mFb:Lcom/facebook/android/Facebook;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->access$100(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;)Lcom/facebook/android/Facebook;

    move-result-object v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;->this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/SessionStore;->save(Lcom/facebook/android/Facebook;Landroid/content/Context;)Z

    .line 118
    return-void
.end method

.method public onLogoutBegin()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onLogoutFinish()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$SessionListener;->this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionStore;->clear(Landroid/content/Context;)V

    .line 129
    return-void
.end method
