.class public abstract Lcom/doodlemobile/gamecenter/facebook/BaseDialogListener;
.super Ljava/lang/Object;
.source "BaseDialogListener.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 0

    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->printStackTrace()V

    .line 20
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 0

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->printStackTrace()V

    .line 16
    return-void
.end method
