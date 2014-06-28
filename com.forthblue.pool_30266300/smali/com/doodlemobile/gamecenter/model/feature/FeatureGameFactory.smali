.class public Lcom/doodlemobile/gamecenter/model/feature/FeatureGameFactory;
.super Ljava/lang/Object;
.source "FeatureGameFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse([B)V
    .locals 7

    .prologue
    .line 12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/simple/JSONArray;

    .line 14
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->setAllInvalid()V

    .line 15
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/simple/JSONArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 16
    invoke-virtual {p0, v6}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONObject;

    .line 18
    const-string v1, "gamename"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 19
    const-string v1, "companyname"

    invoke-virtual {v0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 20
    const-string v3, "marketuri"

    invoke-virtual {v0, v3}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 21
    const-string v4, "featureuri"

    invoke-virtual {v0, v4}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->addFeatureGame(Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;)V

    .line 15
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method
