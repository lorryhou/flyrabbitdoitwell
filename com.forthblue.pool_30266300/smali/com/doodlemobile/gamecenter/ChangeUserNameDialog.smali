.class public Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;
.super Landroid/app/Dialog;
.source "ChangeUserNameDialog.java"


# instance fields
.field mActivity:Lcom/doodlemobile/gamecenter/GameCenterActivity;

.field mContext:Landroid/content/Context;

.field mEditText:Landroid/widget/EditText;

.field mNickName:Ljava/lang/String;

.field mTextCurrentName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->mNickName:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->mTextCurrentName:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->mEditText:Landroid/widget/EditText;

    .line 19
    check-cast p1, Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->mActivity:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    .line 20
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->mNickName:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const-string v3, "id"

    .line 27
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 31
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "layout"

    const-string v2, "dm_alert_dialog_text_entry"

    invoke-static {v0, v1, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "current_username"

    invoke-static {v0, v3, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->mTextCurrentName:Landroid/widget/TextView;

    .line 39
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "username_edit"

    invoke-static {v0, v3, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->mEditText:Landroid/widget/EditText;

    .line 42
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "ok"

    invoke-static {v0, v3, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 44
    new-instance v1, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog$1;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog$1;-><init>(Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "cancel"

    invoke-static {v0, v3, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    new-instance v1, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog$2;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog$2;-><init>(Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->mTextCurrentName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;->mNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method
