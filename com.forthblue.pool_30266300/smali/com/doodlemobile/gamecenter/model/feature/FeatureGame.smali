.class public Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;
.super Ljava/lang/Object;
.source "FeatureGame.java"


# instance fields
.field public image:[B

.field public mCompanyName:Ljava/lang/String;

.field public mFeatureUri:Ljava/lang/String;

.field public mGameName:Ljava/lang/String;

.field public mIsValid:Z

.field public mMarketUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;->image:[B

    .line 19
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;->mCompanyName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;->mGameName:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;->mMarketUri:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;->mFeatureUri:Ljava/lang/String;

    .line 23
    iput-boolean p5, p0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;->mIsValid:Z

    .line 25
    return-void
.end method


# virtual methods
.method public getFeatureImage(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;->image:[B

    if-eqz v0, :cond_0

    .line 33
    :cond_0
    return-void
.end method
