.class public Lcom/doodlemobile/gamecenter/model/DataCenter;
.super Ljava/lang/Object;
.source "DataCenter.java"


# static fields
.field static mContext:Landroid/content/Context;

.field static mNowAllGameTimeStamp:J

.field public static mNowFeatrueGameTimeStamp:J

.field static mNowHeadIconTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/model/DataCenter;->mContext:Landroid/content/Context;

    .line 30
    sput-wide v1, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowFeatrueGameTimeStamp:J

    .line 31
    sput-wide v1, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowAllGameTimeStamp:J

    .line 32
    sput-wide v1, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowHeadIconTimeStamp:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sput-object p1, Lcom/doodlemobile/gamecenter/model/DataCenter;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getFetureTimeStamp()J

    move-result-wide v0

    sput-wide v0, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowFeatrueGameTimeStamp:J

    .line 37
    sget-wide v0, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowFeatrueGameTimeStamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 38
    sput-wide v2, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowFeatrueGameTimeStamp:J

    .line 40
    :cond_0
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getAllGameTimeStamp()J

    move-result-wide v0

    sput-wide v0, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowAllGameTimeStamp:J

    .line 41
    sget-wide v0, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowAllGameTimeStamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 42
    sput-wide v2, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowAllGameTimeStamp:J

    .line 44
    :cond_1
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getHeadIconTimeStamp()J

    move-result-wide v0

    sput-wide v0, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowHeadIconTimeStamp:J

    .line 45
    sget-wide v0, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowHeadIconTimeStamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 46
    sput-wide v2, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowHeadIconTimeStamp:J

    .line 48
    :cond_2
    return-void
.end method

.method public static getFeatureImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getFeatureFileName()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/Versionurl;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    return-object v0
.end method

.method public static requestFeatrueFile(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const-string v0, "featureimage"

    const-string v6, "start parse feature file"

    const-string v5, "get feature game name: "

    .line 109
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getFetureTimeStamp()J

    move-result-wide v0

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFeatrueFile: oldtime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nowtime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowFeatrueGameTimeStamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 112
    sget-wide v2, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowFeatrueGameTimeStamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get feature file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/DataCenter;->getFeatureImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from internet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/DataCenter;->getFeatureImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/net/FetchManager;->getImageFromNet(Ljava/lang/String;)[B

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    sget-object v1, Lcom/doodlemobile/gamecenter/model/DataCenter;->mContext:Landroid/content/Context;

    const-string v2, "featureimage"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 120
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 121
    sget-wide v1, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowFeatrueGameTimeStamp:J

    invoke-static {v1, v2}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setFetureTimeStamp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    const-string v1, "start parse feature file"

    invoke-static {v6}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 128
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/model/feature/FeatureGameFactory;->parse([B)V

    .line 129
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->getOneFeatureGame(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get feature game name: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;->mGameName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 150
    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    const-wide/16 v2, -0x1

    :try_start_1
    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setFetureTimeStamp(J)V

    .line 125
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    const-string v1, "start parse feature file"

    invoke-static {v6}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 128
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/model/feature/FeatureGameFactory;->parse([B)V

    .line 129
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->getOneFeatureGame(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get feature game name: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;->mGameName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v1

    const-string v1, "start parse feature file"

    invoke-static {v6}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 128
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/model/feature/FeatureGameFactory;->parse([B)V

    .line 129
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->getOneFeatureGame(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get feature game name: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;->mGameName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/doodlemobile/gamecenter/model/DataCenter;->getFeatureImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    move-object v0, v7

    .line 135
    goto :goto_0

    .line 138
    :cond_1
    const-string v0, "get feature image from filesystem"

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 140
    :try_start_2
    sget-object v0, Lcom/doodlemobile/gamecenter/model/DataCenter;->mContext:Landroid/content/Context;

    const-string v1, "featureimage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 142
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 143
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 145
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/model/feature/FeatureGameFactory;->parse([B)V

    .line 146
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/model/feature/FeatureGames;->getOneFeatureGame(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/model/feature/FeatureGame;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 147
    :catch_1
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    invoke-static {v8, v9}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setFetureTimeStamp(J)V

    move-object v0, v7

    .line 150
    goto/16 :goto_0
.end method

.method public static requestFeatrueImage(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 156
    if-nez p0, :cond_0

    .line 157
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    .line 160
    :cond_0
    invoke-static {}, Lcom/doodlemobile/gamecenter/utils/SDCardUtils;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    invoke-static {}, Lcom/doodlemobile/gamecenter/utils/SDCardUtils;->createDIR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/utils/Base64;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 164
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/SDCardUtils;->checkFileExits(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    :try_start_0
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/SDCardUtils;->getFile(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/net/FetchManager;->getImageFromNet(Ljava/lang/String;)[B

    move-result-object v1

    .line 173
    :try_start_1
    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/utils/SDCardUtils;->saveFile(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v0, v1

    .line 178
    goto :goto_0

    .line 174
    :catch_1
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 181
    :cond_1
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/net/FetchManager;->getImageFromNet(Ljava/lang/String;)[B

    move-result-object v1

    .line 184
    :try_start_2
    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/utils/SDCardUtils;->saveFile(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    move-object v0, v1

    .line 190
    goto :goto_0

    .line 185
    :catch_2
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 193
    :cond_2
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/net/FetchManager;->getImageFromNet(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_3
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/net/FetchManager;->getImageFromNet(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static requestHeadIconImage(Ljava/lang/String;)[B
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const-string v0, "headicon"

    .line 63
    if-nez p0, :cond_0

    move-object v0, v7

    .line 103
    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-static {}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->getHeadIconTimeStamp()J

    move-result-wide v0

    .line 68
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/utils/DMUtils;->getHeadIconImageUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    sget-wide v3, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowHeadIconTimeStamp:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    move-object v0, v7

    .line 70
    goto :goto_0

    .line 72
    :cond_1
    sget-wide v3, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowHeadIconTimeStamp:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_3

    .line 73
    const-string v0, "get head icon image from internet"

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 74
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/net/FetchManager;->getImageFromNet(Ljava/lang/String;)[B

    move-result-object v0

    .line 75
    if-eqz v0, :cond_2

    .line 77
    :try_start_0
    sget-object v1, Lcom/doodlemobile/gamecenter/model/DataCenter;->mContext:Landroid/content/Context;

    const-string v2, "headicon"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 80
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 81
    sget-wide v1, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowHeadIconTimeStamp:J

    invoke-static {v1, v2}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setHeadIconTimeStamp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    const-wide/16 v2, -0x1

    :try_start_1
    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setHeadIconTimeStamp(J)V

    .line 85
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_2
    move-object v0, v7

    .line 90
    goto :goto_0

    .line 93
    :cond_3
    const-string v0, "get feature image from filesystem"

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/utils/Debug;->warn(Ljava/lang/String;)V

    .line 95
    :try_start_2
    sget-object v0, Lcom/doodlemobile/gamecenter/model/DataCenter;->mContext:Landroid/content/Context;

    const-string v1, "headicon"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 97
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 98
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    .line 99
    goto :goto_0

    .line 100
    :catch_1
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    invoke-static {v8, v9}, Lcom/doodlemobile/gamecenter/model/GameCenterPrefences;->setHeadIconTimeStamp(J)V

    move-object v0, v7

    .line 103
    goto :goto_0
.end method

.method public static setAllGameTimeStamp(J)V
    .locals 0

    .prologue
    .line 51
    sput-wide p0, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowAllGameTimeStamp:J

    .line 52
    return-void
.end method

.method public static setFeatureGameTimeStamp(J)V
    .locals 0

    .prologue
    .line 55
    sput-wide p0, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowFeatrueGameTimeStamp:J

    .line 56
    return-void
.end method

.method public static setHeadIconTimeStamp(J)V
    .locals 0

    .prologue
    .line 59
    sput-wide p0, Lcom/doodlemobile/gamecenter/model/DataCenter;->mNowHeadIconTimeStamp:J

    .line 60
    return-void
.end method
