.class public Lcom/doodlemobile/gamecenter/model/allgames/AllGames;
.super Ljava/lang/Object;
.source "AllGames.java"


# instance fields
.field private mGames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/doodlemobile/gamecenter/model/allgames/Game;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/model/allgames/AllGames;->mGames:Ljava/util/ArrayList;

    .line 9
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/allgames/AllGames;->mGames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10
    return-void
.end method


# virtual methods
.method public addGame(Lcom/doodlemobile/gamecenter/model/allgames/Game;)V
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/allgames/AllGames;->mGames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public getGame(I)Lcom/doodlemobile/gamecenter/model/allgames/Game;
    .locals 1

    .prologue
    .line 21
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/allgames/AllGames;->mGames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/allgames/AllGames;->mGames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/doodlemobile/gamecenter/model/allgames/Game;

    move-object v0, p0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/doodlemobile/gamecenter/model/allgames/Game;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/model/allgames/AllGames;->mGames:Ljava/util/ArrayList;

    return-object v0
.end method
