.class Lcom/doodlemobile/gamecenter/ProfileView$SessionListener;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/facebook/SessionEvents$AuthListener;
.implements Lcom/doodlemobile/gamecenter/facebook/SessionEvents$LogoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/ProfileView;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView$SessionListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$SessionListener;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;)V

    return-void
.end method


# virtual methods
.method public onAuthFail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public onAuthSucceed()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SessionListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFacebook:Lcom/facebook/android/Facebook;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView$SessionListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/SessionStore;->save(Lcom/facebook/android/Facebook;Landroid/content/Context;)Z

    .line 290
    return-void
.end method

.method public onLogoutBegin()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public onLogoutFinish()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$SessionListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionStore;->clear(Landroid/content/Context;)V

    .line 302
    return-void
.end method
