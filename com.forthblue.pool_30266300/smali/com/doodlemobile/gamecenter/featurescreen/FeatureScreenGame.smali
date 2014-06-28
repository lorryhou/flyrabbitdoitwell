.class public Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;
.super Ljava/lang/Object;
.source "FeatureScreenGame.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public imageuri:Ljava/lang/String;

.field public mMarketUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->imageuri:Ljava/lang/String;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->imageuri:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->mMarketUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->mMarketUri:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->mMarketUri:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->imageuri:Ljava/lang/String;

    .line 14
    return-void
.end method
