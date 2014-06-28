.class public Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;
.super Landroid/app/Dialog;
.source "ChangeUserPictureDialog.java"


# instance fields
.field mActivity:Lcom/doodlemobile/gamecenter/GameCenterActivity;

.field mEditText:Landroid/widget/EditText;

.field mTextCurrentName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;->mTextCurrentName:Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;->mEditText:Landroid/widget/EditText;

    .line 16
    check-cast p1, Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;->mActivity:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    .line 18
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const-string v3, "id"

    .line 24
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 27
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "layout"

    const-string v2, "dm_nophoto_choose_dialog"

    invoke-static {v0, v1, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;->setContentView(I)V

    .line 29
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "take_picture"

    invoke-static {v0, v3, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog$1;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog$1;-><init>(Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "addPicture"

    invoke-static {v0, v3, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog$2;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog$2;-><init>(Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method
