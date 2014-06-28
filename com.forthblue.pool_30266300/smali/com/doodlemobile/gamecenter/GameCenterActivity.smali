.class public Lcom/doodlemobile/gamecenter/GameCenterActivity;
.super Landroid/app/Activity;
.source "GameCenterActivity.java"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "144524028929909"

.field public static final DIALOG_CHANGE_USER_HEADICON:I = 0x186a2

.field public static final DIALOG_CHANGE_USER_NAME:I = 0x186a1

.field public static final PHOTO_PICKED_WITH_CAMERA:I = 0x2714

.field public static final PHOTO_PICKED_WITH_DATA:I = 0x2713

.field public static final SCENE_FRIENDS:I = 0x3

.field public static final SCENE_INTRODUCTION:I = 0x5

.field public static final SCENE_LEADBOARDS:I = 0x1

.field public static final SCENE_PROFILE:I = 0x2

.field public static final SCENE_USERINFO:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GameCenterActivity"


# instance fields
.field public mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

.field mBackButton:Landroid/widget/Button;

.field mCenterLayout:Landroid/widget/RelativeLayout;

.field public mFacebook:Lcom/facebook/android/Facebook;

.field mFacebookPermissions:[Ljava/lang/String;

.field mFriends:Lcom/doodlemobile/gamecenter/FriendsView;

.field mFriendsView:Landroid/widget/RelativeLayout;

.field mHandler:Landroid/os/Handler;

.field mIntroductionView:Lcom/doodlemobile/gamecenter/IntroductionView;

.field mLeaderBoards:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

.field mLeaderBoardsView:Landroid/widget/RelativeLayout;

.field mProfile:Lcom/doodlemobile/gamecenter/ProfileView;

.field mProfileView:Landroid/widget/RelativeLayout;

.field public mScene:Lcom/doodlemobile/gamecenter/Scene;

.field mTitleView:Landroid/widget/TextView;

.field mUserInfoView:Lcom/doodlemobile/gamecenter/UserInfoView;

.field mViewStacks:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mCenterLayout:Landroid/widget/RelativeLayout;

    .line 45
    new-instance v0, Lcom/facebook/android/Facebook;

    const-string v1, "144524028929909"

    invoke-direct {v0, v1}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFacebook:Lcom/facebook/android/Facebook;

    .line 50
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mLeaderBoardsView:Landroid/widget/RelativeLayout;

    .line 51
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfileView:Landroid/widget/RelativeLayout;

    .line 52
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFriendsView:Landroid/widget/RelativeLayout;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mTitleView:Landroid/widget/TextView;

    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "offline_access"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "read_stream"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "publish_stream"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "user_photos"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "friends_education_history"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "friends_photos"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "create_event"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFacebookPermissions:[Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mViewStacks:Ljava/util/Stack;

    return-void
.end method

.method private handlerViewStack(I)V
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mViewStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mViewStacks:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mViewStacks:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    .line 221
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mViewStacks:Ljava/util/Stack;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :goto_1
    return-void

    .line 218
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mViewStacks:Ljava/util/Stack;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private resetBottomBackground()V
    .locals 6

    .prologue
    const-string v5, "dm_tab_unselected"

    const-string v4, "dm_tab_press"

    const-string v3, "drawable"

    .line 272
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mScene:Lcom/doodlemobile/gamecenter/Scene;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mLeaderBoards:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    if-ne v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mLeaderBoardsView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v2, "dm_tab_press"

    invoke-static {v1, v3, v4}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mScene:Lcom/doodlemobile/gamecenter/Scene;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfile:Lcom/doodlemobile/gamecenter/ProfileView;

    if-ne v0, v1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfileView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v2, "dm_tab_press"

    invoke-static {v1, v3, v4}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 296
    :goto_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mScene:Lcom/doodlemobile/gamecenter/Scene;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFriends:Lcom/doodlemobile/gamecenter/FriendsView;

    if-ne v0, v1, :cond_2

    .line 297
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFriendsView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v2, "dm_tab_press"

    invoke-static {v1, v3, v4}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 307
    :goto_2
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mLeaderBoardsView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v2, "dm_tab_unselected"

    invoke-static {v1, v3, v5}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfileView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v2, "dm_tab_unselected"

    invoke-static {v1, v3, v5}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFriendsView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "drawable"

    const-string v2, "dm_tab_unselected"

    invoke-static {v1, v3, v5}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_2
.end method


# virtual methods
.method public back()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mViewStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mViewStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mViewStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->finish()V

    move v0, v1

    .line 259
    :goto_0
    return v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mViewStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->setScene(I)V

    .line 255
    const/4 v0, 0x1

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->finish()V

    move v0, v1

    .line 259
    goto :goto_0
.end method

.method public handlerIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const-string v3, "classname"

    .line 149
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "com.doodlemobile.gamecenter.LeaderBoardActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->setScene(I)V

    .line 166
    :goto_0
    return-void

    .line 153
    :cond_0
    const-string v1, "com.doodlemobile.gamecenter.ProfileActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {p0, v2}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->setScene(I)V

    goto :goto_0

    .line 156
    :cond_1
    const-string v1, "com.doodlemobile.gamecenter.FriendsActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->setScene(I)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p0, v2}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->setScene(I)V

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {p0, v2}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->setScene(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .prologue
    const/16 v6, 0x2713

    const/16 v5, 0x48

    const/4 v3, 0x1

    const-string v4, "data"

    .line 333
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 338
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFacebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/android/Facebook;->authorizeCallback(IILandroid/content/Intent;)V

    .line 340
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 341
    if-ne p1, v6, :cond_2

    .line 342
    if-eqz p3, :cond_0

    const-string v0, "data"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfile:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-virtual {v0, p3}, Lcom/doodlemobile/gamecenter/ProfileView;->setHead(Landroid/content/Intent;)V

    goto :goto_0

    .line 349
    :cond_2
    const/16 v0, 0x2714

    if-ne p1, v0, :cond_0

    .line 350
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 352
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 356
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 359
    const-string v1, "data"

    const-string v1, "data"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 363
    invoke-virtual {p0, v0, v6}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v5, "id"

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 70
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "layout"

    const-string v4, "dm_gamecenter_activity"

    invoke-static {v0, v3, v4}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "id"

    const-string v3, "center"

    invoke-static {v0, v5, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mCenterLayout:Landroid/widget/RelativeLayout;

    .line 80
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "id"

    const-string v3, "leaderboards"

    invoke-static {v0, v5, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mLeaderBoardsView:Landroid/widget/RelativeLayout;

    .line 85
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mLeaderBoardsView:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/doodlemobile/gamecenter/GameCenterActivity$1;

    invoke-direct {v3, p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity$1;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "id"

    const-string v3, "profile"

    invoke-static {v0, v5, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfileView:Landroid/widget/RelativeLayout;

    .line 97
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfileView:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/doodlemobile/gamecenter/GameCenterActivity$2;

    invoke-direct {v3, p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity$2;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "id"

    const-string v3, "title"

    invoke-static {v0, v5, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mTitleView:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "id"

    const-string v3, "friends"

    invoke-static {v0, v5, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFriendsView:Landroid/widget/RelativeLayout;

    .line 114
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFriendsView:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/doodlemobile/gamecenter/GameCenterActivity$3;

    invoke-direct {v3, p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity$3;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->handlerIntent(Landroid/content/Intent;)V

    .line 123
    new-instance v0, Lcom/doodlemobile/gamecenter/UserInfoView;

    invoke-direct {v0, p0, v6}, Lcom/doodlemobile/gamecenter/UserInfoView;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mUserInfoView:Lcom/doodlemobile/gamecenter/UserInfoView;

    .line 124
    new-instance v0, Lcom/doodlemobile/gamecenter/IntroductionView;

    invoke-direct {v0, p0, v6}, Lcom/doodlemobile/gamecenter/IntroductionView;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mIntroductionView:Lcom/doodlemobile/gamecenter/IntroductionView;

    .line 126
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "id"

    const-string v3, "back"

    invoke-static {v0, v5, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mBackButton:Landroid/widget/Button;

    .line 131
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mBackButton:Landroid/widget/Button;

    new-instance v3, Lcom/doodlemobile/gamecenter/GameCenterActivity$4;

    invoke-direct {v3, p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity$4;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const-string v0, "GameCenterActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on create duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 311
    const v0, 0x186a1

    if-ne v0, p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfile:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->onCreateChangeNameDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 316
    :goto_0
    return-object v0

    .line 313
    :cond_0
    const v0, 0x186a2

    if-ne v0, p1, :cond_1

    .line 314
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfile:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->createPhotoDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 316
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->back()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 244
    :goto_0
    return v0

    .line 240
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 145
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->handlerIntent(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    .prologue
    .line 321
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 322
    const v0, 0x186a1

    if-ne v0, p1, :cond_1

    .line 323
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfile:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->onCreateChangeNameDialog()Landroid/app/Dialog;

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    const v0, 0x186a2

    if-ne v0, p1, :cond_0

    .line 325
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfile:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->createPhotoDialog()Landroid/app/Dialog;

    goto :goto_0
.end method

.method public refresh(I)V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFriends:Lcom/doodlemobile/gamecenter/FriendsView;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFriends:Lcom/doodlemobile/gamecenter/FriendsView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/FriendsView;->refresh()V

    .line 269
    :cond_0
    return-void
.end method

.method public setScene(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 170
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mLeaderBoards:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mLeaderBoards:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mCenterLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 175
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mCenterLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mLeaderBoards:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 176
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mLeaderBoards:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/LeaderBoardsView;->onSetScene()V

    .line 178
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mLeaderBoards:Lcom/doodlemobile/gamecenter/LeaderBoardsView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mScene:Lcom/doodlemobile/gamecenter/Scene;

    .line 213
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->handlerViewStack(I)V

    .line 214
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->resetBottomBackground()V

    .line 215
    return-void

    .line 179
    :cond_2
    const/4 v0, 0x2

    if-ne v0, p1, :cond_4

    .line 180
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfile:Lcom/doodlemobile/gamecenter/ProfileView;

    if-nez v0, :cond_3

    .line 181
    new-instance v0, Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/ProfileView;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfile:Lcom/doodlemobile/gamecenter/ProfileView;

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mCenterLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 184
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mCenterLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfile:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfile:Lcom/doodlemobile/gamecenter/ProfileView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/ProfileView;->onSetScene()V

    .line 187
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mProfile:Lcom/doodlemobile/gamecenter/ProfileView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mScene:Lcom/doodlemobile/gamecenter/Scene;

    goto :goto_0

    .line 188
    :cond_4
    const/4 v0, 0x3

    if-ne v0, p1, :cond_6

    .line 189
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFriends:Lcom/doodlemobile/gamecenter/FriendsView;

    if-nez v0, :cond_5

    .line 190
    new-instance v0, Lcom/doodlemobile/gamecenter/FriendsView;

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/FriendsView;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFriends:Lcom/doodlemobile/gamecenter/FriendsView;

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mCenterLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 193
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mCenterLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFriends:Lcom/doodlemobile/gamecenter/FriendsView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFriends:Lcom/doodlemobile/gamecenter/FriendsView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/FriendsView;->onSetScene()V

    .line 196
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFriends:Lcom/doodlemobile/gamecenter/FriendsView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mScene:Lcom/doodlemobile/gamecenter/Scene;

    goto :goto_0

    .line 197
    :cond_6
    const/4 v0, 0x4

    if-ne v0, p1, :cond_7

    .line 198
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mCenterLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 199
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mCenterLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mUserInfoView:Lcom/doodlemobile/gamecenter/UserInfoView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mUserInfoView:Lcom/doodlemobile/gamecenter/UserInfoView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/UserInfoView;->onSetScene()V

    .line 202
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mUserInfoView:Lcom/doodlemobile/gamecenter/UserInfoView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mScene:Lcom/doodlemobile/gamecenter/Scene;

    goto :goto_0

    .line 203
    :cond_7
    const/4 v0, 0x5

    if-ne v0, p1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mCenterLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 205
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mCenterLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mIntroductionView:Lcom/doodlemobile/gamecenter/IntroductionView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 206
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mIntroductionView:Lcom/doodlemobile/gamecenter/IntroductionView;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/IntroductionView;->onSetScene()V

    .line 208
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mIntroductionView:Lcom/doodlemobile/gamecenter/IntroductionView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mScene:Lcom/doodlemobile/gamecenter/Scene;

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    return-void
.end method
