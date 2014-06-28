.class Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2$2;
.super Ljava/lang/Object;
.source "ChangeUserPictureDialog2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2$2;->this$0:Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2$2;->this$0:Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;->mActivity:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfile:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->changePicture()V

    .line 38
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2$2;->this$0:Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;->dismiss()V

    .line 39
    return-void
.end method
