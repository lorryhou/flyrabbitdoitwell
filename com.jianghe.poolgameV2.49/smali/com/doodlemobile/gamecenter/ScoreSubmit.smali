.class public Lcom/doodlemobile/gamecenter/ScoreSubmit;
.super Ljava/lang/Object;
.source "ScoreSubmit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/ScoreSubmit$1;,
        Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;,
        Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;
    }
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "144524028929909"


# instance fields
.field private isSubmitScore:Z

.field public mAsyncRunner:Lcom/facebook/android/AsyncFacebookRunner;

.field private mContext:Landroid/content/Context;

.field public mFacebook:Lcom/facebook/android/Facebook;

.field private mIsShowDialog:Z

.field private mScore:I

.field private mSubmitScoreListener:Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;

.field private mSubmitScoreTask:Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mIsShowDialog:Z

    .line 22
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mSubmitScoreTask:Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;

    .line 23
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mSubmitScoreListener:Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;

    .line 26
    new-instance v0, Lcom/facebook/android/Facebook;

    const-string v1, "144524028929909"

    invoke-direct {v0, v1}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mFacebook:Lcom/facebook/android/Facebook;

    .line 127
    return-void
.end method

.method static synthetic access$100(Lcom/doodlemobile/gamecenter/ScoreSubmit;)I
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/ScoreSubmit;->submitScoreIntenal()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/doodlemobile/gamecenter/ScoreSubmit;)Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mSubmitScoreListener:Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/doodlemobile/gamecenter/ScoreSubmit;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/doodlemobile/gamecenter/ScoreSubmit;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mScore:I

    return v0
.end method

.method static synthetic access$502(Lcom/doodlemobile/gamecenter/ScoreSubmit;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->isSubmitScore:Z

    return p1
.end method

.method private submitScore()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->isSubmitScore:Z

    .line 38
    new-instance v0, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;-><init>(Lcom/doodlemobile/gamecenter/ScoreSubmit;Lcom/doodlemobile/gamecenter/ScoreSubmit$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mSubmitScoreTask:Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;

    .line 39
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mSubmitScoreTask:Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/ScoreSubmit$SubmitScoreTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 40
    return-void
.end method

.method private submitScoreIntenal()I
    .locals 4

    .prologue
    .line 107
    new-instance v0, Lcom/doodlemobile/gamecenter/api/SubmitScore;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mScore:I

    int-to-long v2, v2

    invoke-direct {v0, v1, v2, v3}, Lcom/doodlemobile/gamecenter/api/SubmitScore;-><init>(Landroid/content/Context;J)V

    .line 109
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/doodlemobile/gamecenter/net/Client;->connect(Landroid/content/Context;Lcom/doodlemobile/gamecenter/api/ConnectAPI;)I

    move-result v0

    .line 110
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    if-eq v0, v1, :cond_1

    .line 111
    sget v1, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    if-ne v1, v0, :cond_0

    .line 112
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->NETWORK_UNREACHABLE:I

    .line 120
    :goto_0
    return v0

    .line 115
    :cond_0
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->ERROR:I

    goto :goto_0

    .line 120
    :cond_1
    sget v0, Lcom/doodlemobile/gamecenter/api/APICode;->SUCCESS:I

    goto :goto_0
.end method


# virtual methods
.method public setOnSubmitScoreListener(Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mSubmitScoreListener:Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;

    .line 125
    return-void
.end method

.method public submit(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mContext:Landroid/content/Context;

    .line 31
    iput p2, p0, Lcom/doodlemobile/gamecenter/ScoreSubmit;->mScore:I

    .line 32
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/ScoreSubmit;->submitScore()V

    .line 33
    return-void
.end method
