.class Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;
.super Ljava/lang/Object;
.source "LoginLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->init(Landroid/app/Activity;Lcom/facebook/android/Facebook;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

.field final synthetic val$fb:Lcom/facebook/android/Facebook;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;Lcom/facebook/android/Facebook;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;->this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    iput-object p2, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;->val$fb:Lcom/facebook/android/Facebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 72
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;->this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    # getter for: Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mFb:Lcom/facebook/android/Facebook;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->access$100(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;)Lcom/facebook/android/Facebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->onLogoutBegin()V

    .line 74
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;->val$fb:Lcom/facebook/android/Facebook;

    invoke-direct {v0, v1}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    .line 75
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;->this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LogoutRequestListener;

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;->this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    invoke-direct {v2, v3, v5}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LogoutRequestListener;-><init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/android/AsyncFacebookRunner;->logout(Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;->this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    # getter for: Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mFb:Lcom/facebook/android/Facebook;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->access$100(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;)Lcom/facebook/android/Facebook;

    move-result-object v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;->this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    # getter for: Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->access$300(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;->this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    # getter for: Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->mPermissions:[Ljava/lang/String;
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->access$400(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LoginDialogListener;

    iget-object v4, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;->this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    invoke-direct {v3, v4, v5}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LoginDialogListener;-><init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    goto :goto_0
.end method
