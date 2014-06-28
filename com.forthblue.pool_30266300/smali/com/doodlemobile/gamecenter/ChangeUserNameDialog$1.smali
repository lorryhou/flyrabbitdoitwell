.class Lcom/doodlemobile/gamecenter/ChangeUserNameDialog$1;
.super Ljava/lang/Object;
.source "ChangeUserNameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog$1;->this$0:Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog$1;->this$0:Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->mActivity:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfile:Lcom/doodlemobile/gamecenter/ProfileView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog$1;->this$0:Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/ProfileView;->submitUsername(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog$1;->this$0:Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->dismiss()V

    .line 51
    return-void
.end method
