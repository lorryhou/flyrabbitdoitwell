.class public Lcom/doodlemobile/gamecenter/model/allgames/Game;
.super Ljava/lang/Object;
.source "Game.java"


# instance fields
.field public imageuri:Ljava/lang/String;

.field public mCompanyName:Ljava/lang/String;

.field public mGameName:Ljava/lang/String;

.field public mMarketUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/model/allgames/Game;->mCompanyName:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/model/allgames/Game;->mGameName:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/model/allgames/Game;->mMarketUri:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/doodlemobile/gamecenter/model/allgames/Game;->imageuri:Ljava/lang/String;

    .line 14
    return-void
.end method
