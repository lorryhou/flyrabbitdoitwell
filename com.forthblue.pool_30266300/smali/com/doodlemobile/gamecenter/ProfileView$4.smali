.class Lcom/doodlemobile/gamecenter/ProfileView$4;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/ProfileView;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/ProfileView;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView$4;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 214
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$4;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mLoginButton:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$4;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFacebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getFacebookID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$4;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    const-string v1, "facebook_logout_title"

    const-string v2, "facebook_logout_text"

    # invokes: Lcom/doodlemobile/gamecenter/ProfileView;->showMissionDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/doodlemobile/gamecenter/ProfileView;->access$000(Lcom/doodlemobile/gamecenter/ProfileView;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->onLogoutBegin()V

    .line 221
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$4;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView$4;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/doodlemobile/gamecenter/ProfileView$LogoutRequestListener;

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/ProfileView$4;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {v2, v3, v5}, Lcom/doodlemobile/gamecenter/ProfileView$LogoutRequestListener;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/android/AsyncFacebookRunner;->logout(Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 234
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView$4;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFacebook:Lcom/facebook/android/Facebook;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView$4;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/ProfileView$4;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFacebookPermissions:[Ljava/lang/String;

    new-instance v3, Lcom/doodlemobile/gamecenter/ProfileView$LoginDialogListener;

    iget-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView$4;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {v3, v4, v5}, Lcom/doodlemobile/gamecenter/ProfileView$LoginDialogListener;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    goto :goto_0
.end method
