.class public Lcom/doodlemobile/gamecenter/PromoteDialog;
.super Landroid/app/Dialog;
.source "PromoteDialog.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mFeatureView:Lcom/doodlemobile/gamecenter/FeatureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 17
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/PromoteDialog;->mContext:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/PromoteDialog;->mFeatureView:Lcom/doodlemobile/gamecenter/FeatureView;

    .line 21
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/PromoteDialog;->mContext:Landroid/content/Context;

    .line 22
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
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "layout"

    const-string v2, "dm_promote_dialog"

    invoke-static {v0, v1, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "featureview"

    invoke-static {v0, v3, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/FeatureView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/PromoteDialog;->mFeatureView:Lcom/doodlemobile/gamecenter/FeatureView;

    .line 39
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/PromoteDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "dm_dialog_ok"

    invoke-static {v0, v3, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/PromoteDialog$1;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/PromoteDialog$1;-><init>(Lcom/doodlemobile/gamecenter/PromoteDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "dm_dialog_cancel"

    invoke-static {v0, v3, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/PromoteDialog$2;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/PromoteDialog$2;-><init>(Lcom/doodlemobile/gamecenter/PromoteDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->getmGameList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/PromoteDialog;->mFeatureView:Lcom/doodlemobile/gamecenter/FeatureView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/FeatureView;->getFeatureGame()Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    move-result-object v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->dismiss()V

    .line 132
    :cond_1
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    const-string v3, "FeatureDialog"

    .line 92
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 94
    const-string v0, "feature dialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->getmGameList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 98
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    const-string v0, "FeatureDialog"

    const-string v0, "No Suitble Game1 !"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->dismiss()V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->getmGameList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 103
    const-string v0, "FeatureDialog"

    const-string v0, "No Suitble Game2 !"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->dismiss()V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/PromoteDialog;->mFeatureView:Lcom/doodlemobile/gamecenter/FeatureView;

    invoke-virtual {v2}, Lcom/doodlemobile/gamecenter/FeatureView;->getFeatureGame()Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    move-result-object v2

    if-nez v2, :cond_3

    .line 107
    const-string v0, "FeatureDialog"

    const-string v0, "No Suitble Game3 !"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->dismiss()V

    goto :goto_0

    .line 110
    :cond_3
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->shouldPopPromoteDialog(JZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const-string v0, "FeatureDialog"

    const-string v0, "FeatureDialog has already shown today ! "

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/PromoteDialog;->dismiss()V

    goto :goto_0
.end method
