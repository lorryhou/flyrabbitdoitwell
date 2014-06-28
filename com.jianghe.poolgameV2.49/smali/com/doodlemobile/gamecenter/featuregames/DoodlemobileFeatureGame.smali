.class public Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;
.super Ljava/lang/Object;
.source "DoodlemobileFeatureGame.java"


# instance fields
.field public mCompanyName:Ljava/lang/String;

.field public mGameName:Ljava/lang/String;

.field public mImage:[B

.field public mImageuri:Ljava/lang/String;

.field public mMarketUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mImage:[B

    .line 12
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mCompanyName:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mGameName:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mMarketUri:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mImageuri:Ljava/lang/String;

    .line 16
    iput-object p5, p0, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mImage:[B

    .line 17
    return-void
.end method
