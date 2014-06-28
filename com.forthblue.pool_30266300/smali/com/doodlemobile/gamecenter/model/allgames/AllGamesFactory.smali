.class public Lcom/doodlemobile/gamecenter/model/allgames/AllGamesFactory;
.super Ljava/lang/Object;
.source "AllGamesFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse([B)Lcom/doodlemobile/gamecenter/model/allgames/AllGames;
    .locals 6

    .prologue
    .line 11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lorg/json/simple/JSONValue;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/simple/JSONArray;

    .line 12
    invoke-virtual {p0}, Lorg/json/simple/JSONArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 13
    new-instance v4, Lcom/doodlemobile/gamecenter/model/allgames/AllGames;

    invoke-direct {v4}, Lcom/doodlemobile/gamecenter/model/allgames/AllGames;-><init>()V

    .line 14
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/simple/JSONObject;

    .line 17
    const-string v0, "gamename"

    invoke-virtual {p0, v0}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 18
    const-string v1, "companyname"

    invoke-virtual {p0, v1}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 19
    const-string v2, "marketuri"

    invoke-virtual {p0, v2}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 20
    const-string v5, "iconuri"

    invoke-virtual {p0, v5}, Lorg/json/simple/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 21
    new-instance v5, Lcom/doodlemobile/gamecenter/model/allgames/Game;

    invoke-direct {v5, v1, v0, v2, p0}, Lcom/doodlemobile/gamecenter/model/allgames/Game;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v4, v5}, Lcom/doodlemobile/gamecenter/model/allgames/AllGames;->addGame(Lcom/doodlemobile/gamecenter/model/allgames/Game;)V

    goto :goto_0

    .line 27
    :cond_0
    return-object v4
.end method
