.class Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory$GetGamelist;
.super Landroid/os/AsyncTask;
.source "FeatureGamesFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GetGamelist"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->build(Landroid/content/Context;)Z

    move-result v0

    .line 490
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 485
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory$GetGamelist;->doInBackground([Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 498
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 500
    # getter for: Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mFeatureViews:Ljava/util/ArrayList;
    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 501
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 502
    # getter for: Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->mFeatureViews:Ljava/util/ArrayList;
    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/doodlemobile/gamecenter/FeatureView;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 508
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 485
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory$GetGamelist;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
