.class public Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;
.super Ljava/lang/Object;
.source "LeaderScore.java"


# instance fields
.field public hasAvatar:Z

.field public mFacebookID:Ljava/lang/String;

.field public mNickName:Ljava/lang/String;

.field public mRank:J

.field public mScore:J

.field public mUserID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;->mNickName:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;->mUserID:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;->mFacebookID:Ljava/lang/String;

    .line 15
    iput-wide p4, p0, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;->mScore:J

    .line 16
    iput-wide p6, p0, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;->mRank:J

    .line 17
    iput-boolean p8, p0, Lcom/doodlemobile/gamecenter/model/LeaderScore/LeaderScore;->hasAvatar:Z

    .line 18
    return-void
.end method
