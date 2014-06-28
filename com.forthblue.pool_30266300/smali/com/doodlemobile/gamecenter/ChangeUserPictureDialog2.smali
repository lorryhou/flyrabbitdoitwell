.class public Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;
.super Landroid/app/Dialog;
.source "ChangeUserPictureDialog2.java"


# instance fields
.field mActivity:Lcom/doodlemobile/gamecenter/GameCenterActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 14
    check-cast p1, Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;->mActivity:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    .line 16
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const-string v3, "id"

    .line 19
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 22
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "layout"

    const-string v2, "dm_hasphoto_choose_dialog"

    invoke-static {v0, v1, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "usePicture"

    invoke-static {v0, v3, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2$1;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2$1;-><init>(Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "changePicture"

    invoke-static {v0, v3, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2$2;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2$2;-><init>(Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method
