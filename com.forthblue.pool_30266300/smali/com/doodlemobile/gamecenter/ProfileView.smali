.class public Lcom/doodlemobile/gamecenter/ProfileView;
.super Lcom/doodlemobile/gamecenter/Scene;
.source "ProfileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;,
        Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserIconTask;,
        Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;,
        Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;,
        Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserNameTask;,
        Lcom/doodlemobile/gamecenter/ProfileView$QueryIDTask;,
        Lcom/doodlemobile/gamecenter/ProfileView$FirstQueryIDTask;,
        Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutTask;,
        Lcom/doodlemobile/gamecenter/ProfileView$FriendsRequestListener;,
        Lcom/doodlemobile/gamecenter/ProfileView$FacebookRequestListener;,
        Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutListener;,
        Lcom/doodlemobile/gamecenter/ProfileView$FacebookAuthListener;,
        Lcom/doodlemobile/gamecenter/ProfileView$LogoutRequestListener;,
        Lcom/doodlemobile/gamecenter/ProfileView$LoginDialogListener;,
        Lcom/doodlemobile/gamecenter/ProfileView$SessionListener;
    }
.end annotation


# static fields
.field private static final FACEBOOK_FRIEND:I = 0x1

.field public static final HANDLER_FIRST_QUERY:I = 0x3ea

.field public static final HANDLER_RESET_SCREEN:I = 0x3e9

.field public static final HANDLER_RESET_SCREEN1:I = 0x3f2


# instance fields
.field changeNameTask:Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserNameTask;

.field changeUserHeadIconTask:Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserIconTask;

.field importFriendsTask:Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;

.field insertFacebookIdTask:Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;

.field mButtonChangeUserIcon:Landroid/widget/RelativeLayout;

.field mButtonChangeUserName:Landroid/widget/RelativeLayout;

.field mButtonDm:Landroid/widget/RelativeLayout;

.field mChangeUsernameDesc:Landroid/widget/TextView;

.field private mDialog:Landroid/app/ProgressDialog;

.field mFirstQueryIDTask:Lcom/doodlemobile/gamecenter/ProfileView$FirstQueryIDTask;

.field mHandler:Landroid/os/Handler;

.field mHasHeadIcon:Z

.field mHeadIcon:Landroid/widget/ImageView;

.field mHeadIconImage:Landroid/graphics/Bitmap;

.field mLevelProgress:Landroid/widget/ProgressBar;

.field mLevelTextView:Landroid/widget/TextView;

.field public mLoginButton:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

.field mQueryIDTask:Lcom/doodlemobile/gamecenter/ProfileView$QueryIDTask;

.field private mSessionListener:Lcom/doodlemobile/gamecenter/ProfileView$SessionListener;

.field mSubmitImage:Landroid/graphics/Bitmap;

.field mTime:Ljava/lang/Long;

.field mUserName:Landroid/widget/TextView;

.field mView:Landroid/widget/RelativeLayout;

.field mXpTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string v5, "id"

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/doodlemobile/gamecenter/Scene;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V

    .line 62
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mTime:Ljava/lang/Long;

    .line 64
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mQueryIDTask:Lcom/doodlemobile/gamecenter/ProfileView$QueryIDTask;

    .line 65
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mFirstQueryIDTask:Lcom/doodlemobile/gamecenter/ProfileView$FirstQueryIDTask;

    .line 67
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIconImage:Landroid/graphics/Bitmap;

    .line 68
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mSubmitImage:Landroid/graphics/Bitmap;

    .line 69
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIcon:Landroid/widget/ImageView;

    .line 70
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mUserName:Landroid/widget/TextView;

    .line 71
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mChangeUsernameDesc:Landroid/widget/TextView;

    .line 73
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mButtonChangeUserName:Landroid/widget/RelativeLayout;

    .line 74
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mButtonChangeUserIcon:Landroid/widget/RelativeLayout;

    .line 75
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mButtonDm:Landroid/widget/RelativeLayout;

    .line 81
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mLevelTextView:Landroid/widget/TextView;

    .line 82
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mXpTextView:Landroid/widget/TextView;

    .line 83
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mLevelProgress:Landroid/widget/ProgressBar;

    .line 282
    new-instance v0, Lcom/doodlemobile/gamecenter/ProfileView$SessionListener;

    invoke-direct {v0, p0, v4}, Lcom/doodlemobile/gamecenter/ProfileView$SessionListener;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mSessionListener:Lcom/doodlemobile/gamecenter/ProfileView$SessionListener;

    .line 811
    new-instance v0, Lcom/doodlemobile/gamecenter/ProfileView$5;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/ProfileView$5;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mHandler:Landroid/os/Handler;

    .line 908
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->changeNameTask:Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserNameTask;

    .line 909
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->changeUserHeadIconTask:Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserIconTask;

    .line 910
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->insertFacebookIdTask:Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;

    .line 911
    iput-object v4, p0, Lcom/doodlemobile/gamecenter/ProfileView;->importFriendsTask:Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;

    .line 994
    iput-boolean v6, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mHasHeadIcon:Z

    .line 100
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    .line 102
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 105
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    const-string v3, "dm_profile_view"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mView:Landroid/widget/RelativeLayout;

    .line 111
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "username_text"

    invoke-static {v1, v5, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mUserName:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "change_username"

    invoke-static {v1, v5, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mButtonChangeUserName:Landroid/widget/RelativeLayout;

    .line 119
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mButtonChangeUserName:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/doodlemobile/gamecenter/ProfileView$1;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/ProfileView$1;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v0, "144524028929909"

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "Warning"

    const-string v2, "Facebook Applicaton ID must be specified before running this example: see Example.java"

    invoke-static {v0, v1, v2}, Lcom/facebook/android/Util;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "facebook_friend"

    invoke-static {v1, v5, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mLoginButton:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    .line 141
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "change_usericon"

    invoke-static {v1, v5, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mButtonChangeUserIcon:Landroid/widget/RelativeLayout;

    .line 145
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mButtonChangeUserIcon:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/doodlemobile/gamecenter/ProfileView$2;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/ProfileView$2;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "my_headimage"

    invoke-static {v1, v5, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIcon:Landroid/widget/ImageView;

    .line 156
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "change_username_desc"

    invoke-static {v1, v5, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mChangeUsernameDesc:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "about_dm"

    invoke-static {v1, v5, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mButtonDm:Landroid/widget/RelativeLayout;

    .line 166
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mButtonDm:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/doodlemobile/gamecenter/ProfileView$3;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/ProfileView$3;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "level_text"

    invoke-static {v1, v5, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mLevelTextView:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "xp_text"

    invoke-static {v1, v5, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mXpTextView:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "level_progressbar"

    invoke-static {v1, v5, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mLevelProgress:Landroid/widget/ProgressBar;

    .line 200
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    new-instance v1, Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFacebook:Lcom/facebook/android/Facebook;

    invoke-direct {v1, v2}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    iput-object v1, v0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 202
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFacebook:Lcom/facebook/android/Facebook;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/SessionStore;->restore(Lcom/facebook/android/Facebook;Landroid/content/Context;)Z

    .line 206
    new-instance v0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookAuthListener;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/ProfileView$FacebookAuthListener;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;)V

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->addAuthListener(Lcom/doodlemobile/gamecenter/facebook/SessionEvents$AuthListener;)V

    .line 207
    new-instance v0, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutListener;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/ProfileView$FacebookLogoutListener;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;)V

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->addLogoutListener(Lcom/doodlemobile/gamecenter/facebook/SessionEvents$LogoutListener;)V

    .line 208
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mSessionListener:Lcom/doodlemobile/gamecenter/ProfileView$SessionListener;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->addAuthListener(Lcom/doodlemobile/gamecenter/facebook/SessionEvents$AuthListener;)V

    .line 209
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mSessionListener:Lcom/doodlemobile/gamecenter/ProfileView$SessionListener;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/facebook/SessionEvents;->addLogoutListener(Lcom/doodlemobile/gamecenter/facebook/SessionEvents$LogoutListener;)V

    .line 211
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mLoginButton:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    new-instance v1, Lcom/doodlemobile/gamecenter/ProfileView$4;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/ProfileView$4;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;)V

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/ProfileView;->resetScreen()V

    .line 239
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getIsFirstOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    const-string v0, "dm_first_open_title"

    const-string v1, "dm_first_open_text"

    invoke-direct {p0, v0, v1}, Lcom/doodlemobile/gamecenter/ProfileView;->showMissionDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v0, Lcom/doodlemobile/gamecenter/ProfileView$FirstQueryIDTask;

    invoke-direct {v0, p0, v4}, Lcom/doodlemobile/gamecenter/ProfileView$FirstQueryIDTask;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mFirstQueryIDTask:Lcom/doodlemobile/gamecenter/ProfileView$FirstQueryIDTask;

    .line 244
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mFirstQueryIDTask:Lcom/doodlemobile/gamecenter/ProfileView$FirstQueryIDTask;

    new-array v1, v6, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/ProfileView$FirstQueryIDTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "dm_profileIconLabel"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ProfileView;->setTitle(Ljava/lang/String;)V

    .line 255
    return-void

    .line 247
    :cond_1
    new-instance v0, Lcom/doodlemobile/gamecenter/ProfileView$QueryIDTask;

    invoke-direct {v0, p0, v4}, Lcom/doodlemobile/gamecenter/ProfileView$QueryIDTask;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mQueryIDTask:Lcom/doodlemobile/gamecenter/ProfileView$QueryIDTask;

    .line 248
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mQueryIDTask:Lcom/doodlemobile/gamecenter/ProfileView$QueryIDTask;

    new-array v1, v6, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/ProfileView$QueryIDTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/doodlemobile/gamecenter/Scene;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;I)V

    .line 62
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mTime:Ljava/lang/Long;

    .line 64
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mQueryIDTask:Lcom/doodlemobile/gamecenter/ProfileView$QueryIDTask;

    .line 65
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mFirstQueryIDTask:Lcom/doodlemobile/gamecenter/ProfileView$FirstQueryIDTask;

    .line 67
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIconImage:Landroid/graphics/Bitmap;

    .line 68
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mSubmitImage:Landroid/graphics/Bitmap;

    .line 69
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIcon:Landroid/widget/ImageView;

    .line 70
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mUserName:Landroid/widget/TextView;

    .line 71
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mChangeUsernameDesc:Landroid/widget/TextView;

    .line 73
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mButtonChangeUserName:Landroid/widget/RelativeLayout;

    .line 74
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mButtonChangeUserIcon:Landroid/widget/RelativeLayout;

    .line 75
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mButtonDm:Landroid/widget/RelativeLayout;

    .line 81
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mLevelTextView:Landroid/widget/TextView;

    .line 82
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mXpTextView:Landroid/widget/TextView;

    .line 83
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mLevelProgress:Landroid/widget/ProgressBar;

    .line 282
    new-instance v0, Lcom/doodlemobile/gamecenter/ProfileView$SessionListener;

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/ProfileView$SessionListener;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mSessionListener:Lcom/doodlemobile/gamecenter/ProfileView$SessionListener;

    .line 811
    new-instance v0, Lcom/doodlemobile/gamecenter/ProfileView$5;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/ProfileView$5;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mHandler:Landroid/os/Handler;

    .line 908
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->changeNameTask:Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserNameTask;

    .line 909
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->changeUserHeadIconTask:Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserIconTask;

    .line 910
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->insertFacebookIdTask:Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;

    .line 911
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->importFriendsTask:Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;

    .line 994
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mHasHeadIcon:Z

    .line 95
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/doodlemobile/gamecenter/ProfileView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/doodlemobile/gamecenter/ProfileView;->showMissionDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/doodlemobile/gamecenter/ProfileView;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/ProfileView;->resetScreen()V

    return-void
.end method

.method static synthetic access$800(Lcom/doodlemobile/gamecenter/ProfileView;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private doPickPhotoAction()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1061
    :try_start_0
    invoke-static {}, Lcom/doodlemobile/gamecenter/ProfileView;->getPhotoPickGalleryIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1062
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const/16 v2, 0x2713

    invoke-virtual {v1, v0, v2}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :goto_0
    return v4

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "dm_photoPickerNotFoundText"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static getPhotoPickCameraIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1089
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1097
    return-object v0
.end method

.method public static getPhotoPickGalleryIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/16 v4, 0x48

    const/4 v3, 0x1

    .line 1077
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1078
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1079
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1081
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1082
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1083
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1084
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1085
    return-object v0
.end method

.method private resetScreen()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 835
    :cond_0
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/ProfileView;->resetScreen1()V

    .line 836
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/ProfileView;->resetScreen2()V

    .line 837
    return-void
.end method

.method private resetScreen1()V
    .locals 5

    .prologue
    const-string v4, "string"

    const-string v3, "dm_username"

    .line 872
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getUserID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 891
    :goto_0
    return-void

    .line 876
    :cond_0
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getNikename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 877
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mUserName:Landroid/widget/TextView;

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getNikename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mChangeUsernameDesc:Landroid/widget/TextView;

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getNikename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    :goto_1
    new-instance v0, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V

    .line 890
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/ProfileView$SetUserIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 881
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mUserName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "string"

    const-string v2, "dm_username"

    invoke-static {v1, v4, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 884
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mChangeUsernameDesc:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "string"

    const-string v2, "dm_username"

    invoke-static {v1, v4, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private resetScreen2()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 840
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mLevelTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LV "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getLevel()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 841
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mXpTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getXP()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getNextXP()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mLevelProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 845
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getNextXP()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mLevelProgress:Landroid/widget/ProgressBar;

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getXP()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getNextXP()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 857
    :goto_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFacebook:Lcom/facebook/android/Facebook;

    if-eqz v0, :cond_2

    .line 858
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/GameCenterActivity;->mFacebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getFacebookID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mLoginButton:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->setVisibility(I)V

    .line 869
    :goto_1
    return-void

    .line 850
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mLevelProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mLoginButton:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    invoke-virtual {v0, v4}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->setVisibility(I)V

    goto :goto_1

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mLoginButton:Lcom/doodlemobile/gamecenter/facebook/LoginLayout;

    invoke-virtual {v0, v4}, Lcom/doodlemobile/gamecenter/facebook/LoginLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private showMissionDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-string v5, "string"

    .line 916
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "string"

    invoke-static {v2, v5, p1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v3

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v4, "string"

    invoke-static {v3, v5, p2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mDialog:Landroid/app/ProgressDialog;

    .line 931
    return-void
.end method


# virtual methods
.method public addPicture()V
    .locals 4

    .prologue
    .line 1034
    :try_start_0
    invoke-static {}, Lcom/doodlemobile/gamecenter/ProfileView;->getPhotoPickGalleryIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1035
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const/16 v2, 0x2713

    invoke-virtual {v1, v0, v2}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    :goto_0
    return-void

    .line 1037
    :catch_0
    move-exception v0

    .line 1038
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1040
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "dm_noIntentHandleGallery"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public changePicture()V
    .locals 2

    .prologue
    .line 1054
    new-instance v0, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-direct {v0, v1}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;-><init>(Landroid/content/Context;)V

    .line 1055
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1056
    return-void
.end method

.method public changeUserIcon()V
    .locals 1

    .prologue
    .line 904
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ProfileView;->createPhotoDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 906
    return-void
.end method

.method public createPhotoDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 997
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    .line 1000
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x103000c

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1004
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mHeadIconImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 1005
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mHasHeadIcon:Z

    .line 1006
    new-instance v0, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-direct {v0, v1}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog;-><init>(Landroid/content/Context;)V

    .line 1010
    :goto_0
    return-object v0

    .line 1009
    :cond_0
    new-instance v0, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-direct {v0, v1}, Lcom/doodlemobile/gamecenter/ChangeUserPictureDialog2;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method doSomethingInTask(Lcom/doodlemobile/gamecenter/api/ConnectAPI;)I
    .locals 7

    .prologue
    const-string v6, "  duration: "

    .line 967
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mTime:Ljava/lang/Long;

    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile Activity network begin time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  duration: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 972
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mTime:Ljava/lang/Long;

    .line 974
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v0, p1}, Lcom/doodlemobile/gamecenter/net/Client;->connect(Landroid/content/Context;Lcom/doodlemobile/gamecenter/api/ConnectAPI;)I

    move-result v0

    .line 975
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    if-eq v0, v1, :cond_2

    .line 976
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    if-ne v1, v0, :cond_1

    .line 979
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    .line 991
    :goto_0
    return v0

    .line 981
    :cond_1
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    goto :goto_0

    .line 984
    :cond_2
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mTime:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 985
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mTime:Ljava/lang/Long;

    .line 987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile Activity network done time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  duration: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 990
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mTime:Ljava/lang/Long;

    .line 991
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    goto :goto_0
.end method

.method public importFacebookFriends(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 943
    new-instance v0, Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->importFriendsTask:Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;

    .line 944
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->importFriendsTask:Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/ProfileView$ImportFriendsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 945
    return-void
.end method

.method public onCreateChangeNameDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 895
    new-instance v0, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getNikename()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/doodlemobile/gamecenter/ChangeUserNameDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 899
    return-object v0
.end method

.method public onInflate()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public onSetScene()V
    .locals 4

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/ProfileView;->resetScreen2()V

    .line 270
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "dm_profileIconLabel"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ProfileView;->setTitle(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/ProfileView;->resume()V

    .line 275
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 828
    return-void
.end method

.method public removePicture()V
    .locals 0

    .prologue
    .line 1051
    return-void
.end method

.method public setHead(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1102
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1104
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mSubmitImage:Landroid/graphics/Bitmap;

    .line 1106
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mSubmitImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mSubmitImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 1107
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1108
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mSubmitImage:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1109
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/ProfileView;->submitHeadIcon([B)V

    .line 1110
    return-void
.end method

.method public submitFacebookId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 936
    new-instance v0, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->insertFacebookIdTask:Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;

    .line 937
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->insertFacebookIdTask:Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/ProfileView$InsertFacebookIdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 938
    return-void
.end method

.method submitHeadIcon([B)V
    .locals 3

    .prologue
    .line 961
    const-string v0, "dm_change_headicon_title"

    const-string v1, "dm_change_headicon_text"

    invoke-direct {p0, v0, v1}, Lcom/doodlemobile/gamecenter/ProfileView;->showMissionDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    new-instance v0, Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserIconTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserIconTask;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->changeUserHeadIconTask:Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserIconTask;

    .line 963
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->changeUserHeadIconTask:Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserIconTask;

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 964
    return-void
.end method

.method public submitUsername(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 948
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const-string v1, "Change Username failed: input is null"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 958
    :goto_0
    return-void

    .line 952
    :cond_1
    const-string v0, "dm_change_username_title"

    const-string v1, "dm_change_username_text"

    invoke-direct {p0, v0, v1}, Lcom/doodlemobile/gamecenter/ProfileView;->showMissionDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    new-instance v0, Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserNameTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserNameTask;-><init>(Lcom/doodlemobile/gamecenter/ProfileView;Lcom/doodlemobile/gamecenter/ProfileView$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->changeNameTask:Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserNameTask;

    .line 955
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->changeNameTask:Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserNameTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/ProfileView$ChaneUserNameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public takePicture()V
    .locals 4

    .prologue
    .line 1017
    :try_start_0
    invoke-static {}, Lcom/doodlemobile/gamecenter/ProfileView;->getPhotoPickCameraIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1018
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const/16 v2, 0x2714

    invoke-virtual {v1, v0, v2}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    :goto_0
    return-void

    .line 1020
    :catch_0
    move-exception v0

    .line 1021
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1023
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ProfileView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "dm_noIntentHandleCamera"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
