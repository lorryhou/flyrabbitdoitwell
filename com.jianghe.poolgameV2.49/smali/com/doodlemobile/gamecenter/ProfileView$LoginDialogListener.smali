.class final Lcom/doodlemobile/gamecenter/ProfileView$LoginDialogListener;
.super Ljava/lang/Object;
.source "ProfileView.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/ProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoginDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/ProfileView;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView$LoginDialogListener;->this$0:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/ProfileView$LoginDialogListener;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 319
    const-string v0, "Action Canceled"

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->onLoginError(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 307
    invoke-static {}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->onLoginSuccess()V

    .line 308
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->onLoginError(Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->onLoginError(Ljava/lang/String;)V

    .line 312
    return-void
.end method
