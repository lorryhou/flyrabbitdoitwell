.class final Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LoginDialogListener;
.super Ljava/lang/Object;
.source "LoginLayout.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/facebook/LoginLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoginDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LoginDialogListener;->this$0:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;Lcom/doodlemobile/gamecenter/facebook/LoginLayout$1;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout$LoginDialogListener;-><init>(Lcom/doodlemobile/gamecenter/facebook/LoginLayout;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "Action Canceled"

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->onLoginError(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 85
    invoke-static {}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->onLoginSuccess()V

    .line 86
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->onLoginError(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->onLoginError(Ljava/lang/String;)V

    .line 90
    return-void
.end method
