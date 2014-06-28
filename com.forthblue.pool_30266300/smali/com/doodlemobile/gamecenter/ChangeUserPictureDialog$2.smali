.class Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog$2;
.super Ljava/lang/Object;
.source "ChangeUserPictureDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog$2;->this$0:Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog$2;->this$0:Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;->mActivity:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfile:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->addPicture()V

    .line 47
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog$2;->this$0:Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;->dismiss()V

    .line 48
    return-void
.end method
