.class public Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;
.super Ljava/lang/Object;
.source "GameCenterPrefences.java"


# static fields
.field private static mAllGameTimeStamp:Ljava/lang/Long; = null

.field private static final mAllGameTimeStampString:Ljava/lang/String; = "allgame_timestamp"

.field private static mCompanyName:Ljava/lang/String; = null

.field private static final mCompanyNameString:Ljava/lang/String; = "companyname"

.field private static mContext:Landroid/content/Context; = null

.field private static mFacebookID:Ljava/lang/String; = null

.field private static final mFacebookIDString:Ljava/lang/String; = "facebook_id"

.field private static mFeatureFileName:Ljava/lang/String; = null

.field private static final mFeatureFileNameString:Ljava/lang/String; = "featurefilename"

.field private static final mFeatureTimeStampString:Ljava/lang/String; = "feature_timestamp"

.field private static mFetureTimeStamp:Ljava/lang/Long; = null

.field private static mGameName:Ljava/lang/String; = null

.field private static final mGameNameString:Ljava/lang/String; = "gamename"

.field private static mGlobalRank:Ljava/lang/Integer; = null

.field private static final mGlobalRankString:Ljava/lang/String; = "global_rank"

.field private static mHeadIconTimeStamp:Ljava/lang/Long; = null

.field private static final mHeadIconTimeStampString:Ljava/lang/String; = "headicon_timestamp"

.field private static mImageuri:Ljava/lang/String; = null

.field private static final mImageuriString:Ljava/lang/String; = "imageuri"

.field private static mIsFirstOpen:Z = false

.field private static final mIsFirstOpenString:Ljava/lang/String; = "isfirstopen"

.field private static mLastPromoteDialog:J = 0x0L

.field private static final mLastPromoteDialogString:Ljava/lang/String; = "lastpromotedialog"

.field private static mLevel:J = 0x0L

.field private static final mLevelString:Ljava/lang/String; = "level"

.field private static mMarketuri:Ljava/lang/String; = null

.field private static final mMarketuriString:Ljava/lang/String; = "marketuri"

.field private static mMaxScore:J = 0x0L

.field private static final mMaxScoreString:Ljava/lang/String; = "max_score"

.field private static mMeListStartRank:Ljava/lang/Integer; = null

.field private static final mMeListStartRankString:Ljava/lang/String; = "beg_rank"

.field private static mMeThisScore:Ljava/lang/Long; = null

.field private static final mMeThisScoreString:Ljava/lang/String; = "me_this_score"

.field private static mMeTopScore:Ljava/lang/Long; = null

.field private static final mMeTopScoreString:Ljava/lang/String; = "me_top_score"

.field private static mNextXP:J = 0x0L

.field private static final mNextXPString:Ljava/lang/String; = "next_xp"

.field private static mNickName:Ljava/lang/String; = null

.field private static final mNickNameString:Ljava/lang/String; = "nickname"

.field private static mOnlineTime:J = 0x0L

.field private static final mOnlineTimeString:Ljava/lang/String; = "onlinetime"

.field private static mTotalXP:J = 0x0L

.field private static final mTotalXPString:Ljava/lang/String; = "total_xp"

.field private static mUserID:Ljava/lang/String; = null

.field private static final mUserIDString:Ljava/lang/String; = "user_id"

.field private static mXP:J = 0x0L

.field private static final mXPString:Ljava/lang/String; = "xp"

.field private static final settingFile:Ljava/lang/String; = "gamecenter_settings"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mIsFirstOpen:Z

    .line 40
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mFetureTimeStamp:Ljava/lang/Long;

    .line 41
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mAllGameTimeStamp:Ljava/lang/Long;

    .line 42
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mHeadIconTimeStamp:Ljava/lang/Long;

    .line 43
    sput-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mUserID:Ljava/lang/String;

    .line 44
    sput-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mNickName:Ljava/lang/String;

    .line 45
    sput-wide v3, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMaxScore:J

    .line 46
    sput-wide v3, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mOnlineTime:J

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mGlobalRank:Ljava/lang/Integer;

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMeListStartRank:Ljava/lang/Integer;

    .line 49
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMeTopScore:Ljava/lang/Long;

    .line 50
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMeThisScore:Ljava/lang/Long;

    .line 51
    const-string v0, "https://s3.amazonaws.com/dm-games/feature1"

    sput-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mFeatureFileName:Ljava/lang/String;

    .line 61
    sput-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mGameName:Ljava/lang/String;

    .line 62
    sput-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mCompanyName:Ljava/lang/String;

    .line 63
    sput-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mImageuri:Ljava/lang/String;

    .line 64
    sput-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMarketuri:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sput-object p1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    .line 69
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    const-string v1, "isfirstopen"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mIsFirstOpen:Z

    .line 74
    const-string v1, "feature_timestamp"

    invoke-interface {v0, v1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mFetureTimeStamp:Ljava/lang/Long;

    .line 75
    const-string v1, "allgame_timestamp"

    invoke-interface {v0, v1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mAllGameTimeStamp:Ljava/lang/Long;

    .line 76
    const-string v1, "headicon_timestamp"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mHeadIconTimeStamp:Ljava/lang/Long;

    .line 78
    const-string v1, "user_id"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mUserID:Ljava/lang/String;

    .line 79
    const-string v1, "nickname"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mNickName:Ljava/lang/String;

    .line 80
    const-string v1, "max_score"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMaxScore:J

    .line 81
    const-string v1, "onlinetime"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mOnlineTime:J

    .line 82
    const-string v1, "global_rank"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mGlobalRank:Ljava/lang/Integer;

    .line 83
    const-string v1, "beg_rank"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMeListStartRank:Ljava/lang/Integer;

    .line 84
    const-string v1, "me_top_score"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMeTopScore:Ljava/lang/Long;

    .line 86
    const-string v1, "me_this_score"

    invoke-interface {v0, v1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMeThisScore:Ljava/lang/Long;

    .line 87
    const-string v1, "featurefilename"

    const-string v2, "https://s3.amazonaws.com/dm-games/feature1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/Versionurl;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mFeatureFileName:Ljava/lang/String;

    .line 90
    const-string v1, "facebook_id"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mFacebookID:Ljava/lang/String;

    .line 92
    const-string v1, "gamename"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mGameName:Ljava/lang/String;

    .line 93
    const-string v1, "companyname"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mCompanyName:Ljava/lang/String;

    .line 94
    const-string v1, "imageuri"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mImageuri:Ljava/lang/String;

    .line 95
    const-string v1, "marketuri"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMarketuri:Ljava/lang/String;

    .line 97
    const-string v1, "lastpromotedialog"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mLastPromoteDialog:J

    .line 98
    return-void
.end method

.method public static getAllGameTimeStamp()J
    .locals 2

    .prologue
    .line 146
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mAllGameTimeStamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getFacebookID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    const-class v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mFacebookID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getFeatureFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mFeatureFileName:Ljava/lang/String;

    return-object v0
.end method

.method public static getFetureTimeStamp()J
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mFetureTimeStamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGameName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mGameName:Ljava/lang/String;

    return-object v0
.end method

.method public static getGlobalRank()I
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mGlobalRank:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getHeadIconTimeStamp()J
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mHeadIconTimeStamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getImageuri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mImageuri:Ljava/lang/String;

    return-object v0
.end method

.method public static getIsFirstOpen()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mIsFirstOpen:Z

    return v0
.end method

.method public static getLastPromoteDialog()J
    .locals 2

    .prologue
    .line 374
    sget-wide v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mLastPromoteDialog:J

    return-wide v0
.end method

.method public static getLevel()J
    .locals 2

    .prologue
    .line 276
    sget-wide v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mLevel:J

    return-wide v0
.end method

.method public static getMarketuri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMarketuri:Ljava/lang/String;

    return-object v0
.end method

.method public static getMeThisScore()J
    .locals 2

    .prologue
    .line 242
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMeThisScore:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMeTopScore()J
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMeTopScore:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNextXP()J
    .locals 2

    .prologue
    .line 310
    sget-wide v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mNextXP:J

    return-wide v0
.end method

.method public static getNikename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mNickName:Ljava/lang/String;

    return-object v0
.end method

.method public static getOnlineTime()J
    .locals 2

    .prologue
    .line 197
    sget-wide v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mOnlineTime:J

    return-wide v0
.end method

.method public static getTotalXP()J
    .locals 2

    .prologue
    .line 299
    sget-wide v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mTotalXP:J

    return-wide v0
.end method

.method public static getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mUserID:Ljava/lang/String;

    return-object v0
.end method

.method public static getXP()J
    .locals 2

    .prologue
    .line 288
    sget-wide v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mXP:J

    return-wide v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 381
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 384
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 386
    if-nez v0, :cond_0

    .line 387
    const/4 v0, 0x0

    .line 389
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setAllGameTimeStamp(J)V
    .locals 4

    .prologue
    .line 138
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mAllGameTimeStamp:Ljava/lang/Long;

    .line 141
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "allgame_timestamp"

    sget-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mAllGameTimeStamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    return-void
.end method

.method public static setCompanyName(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 337
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 339
    sput-object p0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mCompanyName:Ljava/lang/String;

    .line 340
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "companyname"

    sget-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mCompanyName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    return-void
.end method

.method public static declared-synchronized setFacebookID(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const-string v0, "facebook_id"

    .line 253
    const-class v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v2, "gamecenter_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 255
    if-eqz p0, :cond_0

    const-string v2, "null"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    sput-object p0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mFacebookID:Ljava/lang/String;

    .line 257
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "facebook_id"

    sget-object v3, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mFacebookID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :goto_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 260
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    sput-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mFacebookID:Ljava/lang/String;

    .line 261
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "facebook_id"

    sget-object v3, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mFacebookID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setFeatureFileName(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 166
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    sput-object p0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mFeatureFileName:Ljava/lang/String;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "featurefilename"

    sget-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mFeatureFileName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return-void
.end method

.method public static setFetureTimeStamp(J)V
    .locals 4

    .prologue
    .line 113
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mFetureTimeStamp:Ljava/lang/Long;

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "feature_timestamp"

    sget-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mFetureTimeStamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 118
    return-void
.end method

.method public static setGameName(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 326
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 328
    sput-object p0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mGameName:Ljava/lang/String;

    .line 329
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gamename"

    sget-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mGameName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 330
    return-void
.end method

.method public static setGlobalRank(I)V
    .locals 3

    .prologue
    .line 212
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 214
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mGlobalRank:Ljava/lang/Integer;

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "global_rank"

    sget-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mGlobalRank:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    return-void
.end method

.method public static setHeadIconTimeStamp(J)V
    .locals 4

    .prologue
    .line 125
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 127
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mHeadIconTimeStamp:Ljava/lang/Long;

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "headicon_timestamp"

    sget-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mHeadIconTimeStamp:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    return-void
.end method

.method public static setImageuri(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 348
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 350
    sput-object p0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mImageuri:Ljava/lang/String;

    .line 351
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "imageuri"

    sget-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mImageuri:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 352
    return-void
.end method

.method public static setIsFirstOpen(Z)V
    .locals 3

    .prologue
    .line 101
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 103
    sput-boolean p0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mIsFirstOpen:Z

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isfirstopen"

    sget-boolean v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mIsFirstOpen:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    return-void
.end method

.method public static setLastPromoteDialog(J)V
    .locals 4

    .prologue
    .line 366
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 368
    sput-wide p0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mLastPromoteDialog:J

    .line 369
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastpromotedialog"

    sget-wide v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mLastPromoteDialog:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 371
    return-void
.end method

.method public static setLevel(J)V
    .locals 4

    .prologue
    .line 280
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 282
    sput-wide p0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mLevel:J

    .line 283
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "level"

    sget-wide v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mLevel:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 284
    return-void
.end method

.method public static setMarketuri(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 359
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 361
    sput-object p0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMarketuri:Ljava/lang/String;

    .line 362
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "marketuri"

    sget-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMarketuri:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 363
    return-void
.end method

.method public static setMeThisScore(J)V
    .locals 4

    .prologue
    .line 246
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 248
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMeThisScore:Ljava/lang/Long;

    .line 249
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "me_this_score"

    sget-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMeThisScore:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    return-void
.end method

.method public static setMeTopScore(J)V
    .locals 4

    .prologue
    .line 235
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 237
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMeTopScore:Ljava/lang/Long;

    .line 238
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "me_top_score"

    sget-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mMeTopScore:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    return-void
.end method

.method public static setNextXP(J)V
    .locals 3

    .prologue
    .line 314
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 316
    sput-wide p0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mNextXP:J

    .line 317
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "next_xp"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 318
    return-void
.end method

.method public static setNickname(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 177
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 179
    sput-object p0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mNickName:Ljava/lang/String;

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nickname"

    sget-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mNickName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    return-void
.end method

.method public static setOnlineTime(J)V
    .locals 4

    .prologue
    .line 201
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 203
    sput-wide p0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mOnlineTime:J

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "onlinetime"

    sget-wide v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mOnlineTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    return-void
.end method

.method public static setTotalXP(J)V
    .locals 3

    .prologue
    .line 303
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 305
    sput-wide p0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mTotalXP:J

    .line 306
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "total_xp"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 307
    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 155
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 157
    sput-object p0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mUserID:Ljava/lang/String;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_id"

    sget-object v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mUserID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void
.end method

.method public static setXP(J)V
    .locals 4

    .prologue
    .line 292
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    const-string v1, "gamecenter_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 294
    sput-wide p0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mXP:J

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "xp"

    sget-wide v2, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mXP:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    return-void
.end method

.method public static shouldPopPromoteDialog(JZ)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 396
    if-eqz p2, :cond_0

    move v0, v4

    .line 411
    :goto_0
    return v0

    .line 403
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-wide v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mLastPromoteDialog:J

    sub-long v0, p0, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    sget-wide v0, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->mLastPromoteDialog:J

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 407
    :cond_1
    invoke-static {p0, p1}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setLastPromoteDialog(J)V

    move v0, v4

    .line 408
    goto :goto_0

    .line 411
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
