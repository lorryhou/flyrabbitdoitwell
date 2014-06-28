.class public Lcom/doodlemobile/gamecenter/UserInfoView;
.super Lcom/doodlemobile/gamecenter/Scene;
.source "UserInfoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;,
        Lcom/doodlemobile/gamecenter/UserInfoView$PhotoInfo;,
        Lcom/doodlemobile/gamecenter/UserInfoView$RemoveFriendTask;,
        Lcom/doodlemobile/gamecenter/UserInfoView$AddFriendTask;,
        Lcom/doodlemobile/gamecenter/UserInfoView$QueryUserInfoTask;
    }
.end annotation


# static fields
.field public static final HANDLER_RESET_SCREEN:I = 0x3e9

.field public static final TAG:Ljava/lang/String; = "UserInfoView"

.field public static final USER_TYPE_FRIEND:I = 0x1

.field public static final USER_TYPE_FRIEND_TITLE:I = 0x2

.field public static final USER_TYPE_GAME:I = 0x0

.field public static final USER_TYPE_GAME_TITLE:I = 0x3

.field private static sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field private mAdapter:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

.field mAddFriendButton:Landroid/widget/Button;

.field mAddFriendViewWrap:Landroid/widget/RelativeLayout;

.field private mDialog:Landroid/app/ProgressDialog;

.field mHasHeadIcon:Z

.field mID:Ljava/lang/String;

.field mInitDialog:Landroid/app/ProgressDialog;

.field mIsFriend:Z

.field mLevelView:Landroid/widget/TextView;

.field mProgress:Landroid/widget/ProgressBar;

.field mRefresh:Z

.field mRemoveFriendButton:Landroid/widget/Button;

.field private mScrollState:I

.field mTime:Ljava/lang/Long;

.field mUserInfo:Lcom/doodlemobile/gamecenter/model/User;

.field mUserInfoView:Landroid/widget/ListView;

.field mUserInfoViewWrap:Landroid/widget/RelativeLayout;

.field mUserInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/doodlemobile/gamecenter/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUserNameView:Landroid/widget/TextView;

.field mView:Landroid/widget/RelativeLayout;

.field mXPView:Landroid/widget/TextView;

.field mfootView:Landroid/view/View;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v5, "layout"

    const-string v4, "id"

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/doodlemobile/gamecenter/Scene;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V

    .line 55
    iput-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mID:Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mRefresh:Z

    .line 57
    iput-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfo:Lcom/doodlemobile/gamecenter/model/User;

    .line 58
    iput-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mTime:Ljava/lang/Long;

    .line 59
    iput-boolean v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mIsFriend:Z

    .line 61
    iput-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mInitDialog:Landroid/app/ProgressDialog;

    .line 63
    iput-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserNameView:Landroid/widget/TextView;

    .line 64
    iput-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mXPView:Landroid/widget/TextView;

    .line 65
    iput-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mLevelView:Landroid/widget/TextView;

    .line 66
    iput-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mView:Landroid/widget/RelativeLayout;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfos:Ljava/util/ArrayList;

    .line 69
    iput-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mAddFriendButton:Landroid/widget/Button;

    .line 70
    iput-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mRemoveFriendButton:Landroid/widget/Button;

    .line 567
    iput-boolean v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mHasHeadIcon:Z

    .line 583
    iput-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mAdapter:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    .line 1005
    new-instance v0, Lcom/doodlemobile/gamecenter/UserInfoView$3;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/UserInfoView$3;-><init>(Lcom/doodlemobile/gamecenter/UserInfoView;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 91
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    .line 93
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->inflater:Landroid/view/LayoutInflater;

    .line 96
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/UserInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    const-string v2, "dm_userinfo_view"

    invoke-static {v1, v5, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mView:Landroid/widget/RelativeLayout;

    .line 101
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "username_text"

    invoke-static {v1, v4, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserNameView:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "xp_text"

    invoke-static {v1, v4, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mXPView:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "level_text"

    invoke-static {v1, v4, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mLevelView:Landroid/widget/TextView;

    .line 124
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "level_progressbar"

    invoke-static {v1, v4, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mProgress:Landroid/widget/ProgressBar;

    .line 130
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "userinfo_list"

    invoke-static {v1, v4, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfoView:Landroid/widget/ListView;

    .line 136
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->inflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    const-string v2, "dm_userinfo_view_listview_foot"

    invoke-static {v1, v5, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mfootView:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfoView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mfootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mfootView:Landroid/view/View;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "remove_friend"

    invoke-static {v1, v4, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mRemoveFriendButton:Landroid/widget/Button;

    .line 146
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mRemoveFriendButton:Landroid/widget/Button;

    new-instance v1, Lcom/doodlemobile/gamecenter/UserInfoView$1;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/UserInfoView$1;-><init>(Lcom/doodlemobile/gamecenter/UserInfoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "add_friend"

    invoke-static {v1, v4, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mAddFriendButton:Landroid/widget/Button;

    .line 166
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mAddFriendButton:Landroid/widget/Button;

    new-instance v1, Lcom/doodlemobile/gamecenter/UserInfoView$2;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/UserInfoView$2;-><init>(Lcom/doodlemobile/gamecenter/UserInfoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "add_friend_warp"

    invoke-static {v1, v4, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mAddFriendViewWrap:Landroid/widget/RelativeLayout;

    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/doodlemobile/gamecenter/Scene;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;I)V

    .line 55
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mID:Ljava/lang/String;

    .line 56
    iput-boolean v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mRefresh:Z

    .line 57
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfo:Lcom/doodlemobile/gamecenter/model/User;

    .line 58
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mTime:Ljava/lang/Long;

    .line 59
    iput-boolean v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mIsFriend:Z

    .line 61
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mInitDialog:Landroid/app/ProgressDialog;

    .line 63
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserNameView:Landroid/widget/TextView;

    .line 64
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mXPView:Landroid/widget/TextView;

    .line 65
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mLevelView:Landroid/widget/TextView;

    .line 66
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mView:Landroid/widget/RelativeLayout;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfos:Ljava/util/ArrayList;

    .line 69
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mAddFriendButton:Landroid/widget/Button;

    .line 70
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mRemoveFriendButton:Landroid/widget/Button;

    .line 567
    iput-boolean v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mHasHeadIcon:Z

    .line 583
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mAdapter:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    .line 1005
    new-instance v0, Lcom/doodlemobile/gamecenter/UserInfoView$3;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/UserInfoView$3;-><init>(Lcom/doodlemobile/gamecenter/UserInfoView;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 86
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/doodlemobile/gamecenter/UserInfoView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/doodlemobile/gamecenter/UserInfoView;->showMissionDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/doodlemobile/gamecenter/UserInfoView;)Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mAdapter:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/doodlemobile/gamecenter/UserInfoView;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/UserInfoView;->resetScreen()V

    return-void
.end method

.method static synthetic access$500(Lcom/doodlemobile/gamecenter/UserInfoView;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/doodlemobile/gamecenter/UserInfoView;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mScrollState:I

    return v0
.end method

.method static synthetic access$702(Lcom/doodlemobile/gamecenter/UserInfoView;I)I
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mScrollState:I

    return p1
.end method

.method static synthetic access$800()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/doodlemobile/gamecenter/UserInfoView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$802(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .prologue
    .line 51
    sput-object p0, Lcom/doodlemobile/gamecenter/UserInfoView;->sImageFetchThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private resetScreen()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 485
    const-string v0, "reset screen "

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfo:Lcom/doodlemobile/gamecenter/model/User;

    if-nez v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 491
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset screen size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfo:Lcom/doodlemobile/gamecenter/model/User;

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/model/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mXPView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfo:Lcom/doodlemobile/gamecenter/model/User;

    invoke-virtual {v2}, Lcom/doodlemobile/gamecenter/model/User;->getXp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mLevelView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LV "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfo:Lcom/doodlemobile/gamecenter/model/User;

    invoke-virtual {v2}, Lcom/doodlemobile/gamecenter/model/User;->getLevel()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iput-boolean v4, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mRefresh:Z

    .line 499
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfoView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 501
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mIsFriend:Z

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mAddFriendViewWrap:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mfootView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mRemoveFriendButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 517
    :goto_1
    new-instance v0, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "layout"

    const-string v4, "dm_moregame_listitem"

    invoke-static {v2, v3, v4}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfos:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;-><init>(Lcom/doodlemobile/gamecenter/UserInfoView;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mAdapter:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    .line 521
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfoView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mAdapter:Lcom/doodlemobile/gamecenter/UserInfoView$UserInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 523
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfo:Lcom/doodlemobile/gamecenter/model/User;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/model/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/UserInfoView;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mAddFriendViewWrap:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mfootView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mAddFriendButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method private showMissionDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-string v5, "string"

    .line 529
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/UserInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v3, "string"

    invoke-static {v2, v5, p1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/UserInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

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

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mDialog:Landroid/app/ProgressDialog;

    .line 537
    return-void
.end method


# virtual methods
.method doSomethingInTask(Lcom/doodlemobile/gamecenter/api/ConnectAPI;)Ljava/lang/Integer;
    .locals 7

    .prologue
    const-string v6, "  duration: "

    .line 540
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mTime:Ljava/lang/Long;

    .line 542
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

    .line 545
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mTime:Ljava/lang/Long;

    .line 547
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-static {v0, p1}, Lcom/doodlemobile/gamecenter/net/Client;->connect(Landroid/content/Context;Lcom/doodlemobile/gamecenter/api/ConnectAPI;)I

    move-result v0

    .line 548
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    if-eq v0, v1, :cond_2

    .line 549
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    if-ne v1, v0, :cond_1

    .line 552
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 564
    :goto_0
    return-object v0

    .line 554
    :cond_1
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mTime:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 558
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mTime:Ljava/lang/Long;

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserInfo Activity network done time: "

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

    .line 563
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mTime:Ljava/lang/Long;

    .line 564
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public onInflate()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public onSetScene()V
    .locals 0

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/UserInfoView;->refresh()V

    .line 196
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/UserInfoView;->resume()V

    .line 197
    return-void
.end method

.method parseUserInfo(Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 431
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseUserInfo user info: start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 436
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/simple/JSONObject;

    .line 439
    const-string v2, "parseFriends query friends: friends-play-the-same-game"

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 442
    const-string v2, "is-friend"

    invoke-virtual {v1, v2}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mIsFriend:Z

    .line 444
    const-string v2, "friends"

    invoke-virtual {v1, v2}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/simple/JSONArray;

    .line 446
    const-string v3, "playedgame"

    invoke-virtual {v1, v3}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/json/simple/JSONArray;

    move-object v8, v0

    .line 449
    new-instance v1, Lcom/doodlemobile/gamecenter/UserInfo;

    invoke-direct {v1}, Lcom/doodlemobile/gamecenter/UserInfo;-><init>()V

    .line 450
    const/4 v3, 0x2

    iput v3, v1, Lcom/doodlemobile/gamecenter/UserInfo;->type:I

    .line 451
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseFriends query friends: friends_play_the_game "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/simple/JSONArray;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    move v5, v10

    .line 455
    :goto_0
    invoke-virtual {v2}, Lorg/json/simple/JSONArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_0

    .line 456
    invoke-virtual {v2, v5}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/simple/JSONObject;

    .line 457
    new-instance v6, Lcom/doodlemobile/gamecenter/UserInfo;

    const/4 v7, 0x1

    const-string v3, "friendid"

    invoke-virtual {v1, v3}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "friendname"

    invoke-virtual {v1, v4}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v9, "friendhavavatar"

    invoke-virtual {v1, v9}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-direct {v6, v7, v3, v4, v1}, Lcom/doodlemobile/gamecenter/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 460
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 463
    :cond_0
    new-instance v1, Lcom/doodlemobile/gamecenter/UserInfo;

    invoke-direct {v1}, Lcom/doodlemobile/gamecenter/UserInfo;-><init>()V

    .line 464
    const/4 v2, 0x3

    iput v2, v1, Lcom/doodlemobile/gamecenter/UserInfo;->type:I

    .line 465
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseFriends query game: friends_play_the_game "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lorg/json/simple/JSONArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    move v9, v10

    .line 469
    :goto_1
    invoke-virtual {v8}, Lorg/json/simple/JSONArray;->size()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 470
    invoke-virtual {v8, v9}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/json/simple/JSONObject;

    move-object v7, v0

    .line 471
    new-instance v1, Lcom/doodlemobile/gamecenter/UserInfo;

    const/4 v2, 0x0

    const-string v3, "appid"

    invoke-virtual {v7, v3}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "gamename"

    invoke-virtual {v7, v4}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "companyname"

    invoke-virtual {v7, v5}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "marketuri"

    invoke-virtual {v7, v6}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v10, "imageuri"

    invoke-virtual {v7, v10}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/doodlemobile/gamecenter/UserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mUserInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_1

    .line 477
    :catch_0
    move-exception v1

    .line 478
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    :cond_1
    return-void
.end method

.method public queryuserinfo()V
    .locals 4

    .prologue
    .line 223
    new-instance v0, Lcom/doodlemobile/gamecenter/UserInfoView$QueryUserInfoTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/UserInfoView$QueryUserInfoTask;-><init>(Lcom/doodlemobile/gamecenter/UserInfoView;Lcom/doodlemobile/gamecenter/UserInfoView$1;)V

    .line 224
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mID:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/UserInfoView$QueryUserInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 225
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mRefresh:Z

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/UserInfoView;->queryuserinfo()V

    .line 209
    :cond_0
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 212
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mID:Ljava/lang/String;

    if-eq p1, v0, :cond_0

    .line 213
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mID:Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/UserInfoView;->mRefresh:Z

    .line 216
    :cond_0
    return-void
.end method
