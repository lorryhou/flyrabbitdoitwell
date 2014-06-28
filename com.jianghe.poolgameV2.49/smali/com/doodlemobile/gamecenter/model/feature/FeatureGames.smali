.class public Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;
.super Ljava/lang/Object;
.source "FeatureGames.java"


# static fields
.field private static featureGameIndex:I

.field private static mFeatureGames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;",
            ">;"
        }
    .end annotation
.end field

.field private static random:Ljava/util/Random;

.field private static validIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->random:Ljava/util/Random;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->mFeatureGames:Ljava/util/ArrayList;

    .line 14
    sput v1, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->featureGameIndex:I

    .line 15
    sput v1, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->validIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFeatureGame(Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;)V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->mFeatureGames:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method public static getFeatureGameSize()I
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->mFeatureGames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getOneFeatureGame(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    .line 83
    sget-object v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->mFeatureGames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 84
    const/4 v0, 0x0

    .line 103
    :goto_0
    return-object v0

    .line 100
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 86
    :goto_1
    sget-object v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->mFeatureGames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 87
    sget v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->featureGameIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->featureGameIndex:I

    .line 88
    sget v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->featureGameIndex:I

    sget-object v2, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->mFeatureGames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 89
    sput v3, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->featureGameIndex:I

    .line 91
    :cond_1
    sget-object v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->mFeatureGames:Ljava/util/ArrayList;

    sget v2, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->featureGameIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;->mMarketUri:Ljava/lang/String;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 94
    invoke-static {p0, v0}, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->isPackageUnInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->mFeatureGames:Ljava/util/ArrayList;

    sget v1, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->featureGameIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;

    move-object v0, p0

    goto :goto_0

    .line 103
    :cond_2
    sget-object v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->mFeatureGames:Ljava/util/ArrayList;

    sget v1, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->featureGameIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;

    move-object v0, p0

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method public static isPackageUnInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 52
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setAllInvalid()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    sget-object v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->mFeatureGames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sput v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->validIndex:I

    move v1, v2

    .line 108
    :goto_0
    sget-object v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->mFeatureGames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 109
    sget-object v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->mFeatureGames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;

    iput-boolean v2, v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;->mIsValid:Z

    .line 108
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method
