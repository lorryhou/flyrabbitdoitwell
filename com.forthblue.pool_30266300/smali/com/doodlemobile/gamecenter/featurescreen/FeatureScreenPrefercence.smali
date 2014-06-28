.class public Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenPrefercence;
.super Ljava/lang/Object;
.source "FeatureScreenPrefercence.java"


# static fields
.field private static NeedToDownloadPic:Z = false

.field public static final settingFile:Ljava/lang/String; = "gamecenter_Featurescreen_settings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenPrefercence;->NeedToDownloadPic:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFeatureScreenGame(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 128
    .line 133
    :try_start_0
    const-string v0, "gamecenter_Featurescreen_settings"

    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 135
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 148
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 149
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    move-object v0, p0

    .line 153
    :goto_1
    return-object v0

    .line 150
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    .line 142
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 148
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 149
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_3
    move-object v0, v3

    .line 153
    goto :goto_1

    .line 150
    :catch_2
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 147
    :catchall_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    .line 148
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 149
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 153
    :goto_5
    throw v0

    .line 150
    :catch_3
    move-exception v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 147
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    .line 140
    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_2
.end method

.method public static isNeedDownloadPic()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenPrefercence;->NeedToDownloadPic:Z

    return v0
.end method

.method public static setFeatureScreenGame(Landroid/content/Context;Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "gamecenter_Featurescreen_settings"

    .line 50
    .line 55
    :try_start_0
    const-string v0, "gamecenter_Featurescreen_settings"

    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 57
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 59
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 68
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 69
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 78
    :goto_0
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->imageuri:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->imageuri:Ljava/lang/String;

    iget-object v2, p1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->imageuri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->mMarketUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->mMarketUri:Ljava/lang/String;

    iget-object v1, p1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->mMarketUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sput-boolean v4, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenPrefercence;->NeedToDownloadPic:Z

    .line 124
    :goto_1
    return-void

    .line 70
    :catch_0
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    .line 63
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 68
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 69
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object v0, v3

    .line 73
    goto :goto_0

    .line 70
    :catch_2
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    .line 75
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    .line 68
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 69
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 73
    :goto_4
    throw v0

    .line 70
    :catch_3
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 87
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->imageuri:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->mMarketUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->imageuri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->mMarketUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 90
    :cond_1
    sput-boolean v4, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenPrefercence;->NeedToDownloadPic:Z

    goto :goto_1

    .line 99
    :cond_2
    :try_start_7
    const-string v0, "gamecenter_Featurescreen_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v0

    .line 101
    :try_start_8
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 103
    :try_start_9
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 107
    const/4 v2, 0x1

    sput-boolean v2, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenPrefercence;->NeedToDownloadPic:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 116
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 117
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_1

    .line 118
    :catch_4
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 110
    :catch_5
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    .line 112
    :goto_5
    const/4 v3, 0x0

    :try_start_b
    sput-boolean v3, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenPrefercence;->NeedToDownloadPic:Z

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 116
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 117
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_1

    .line 118
    :catch_6
    move-exception v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 115
    :catchall_1
    move-exception v0

    move-object v1, v3

    move-object v2, v3

    .line 116
    :goto_6
    :try_start_d
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 117
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 121
    :goto_7
    throw v0

    .line 118
    :catch_7
    move-exception v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 115
    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_6

    :catchall_3
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_6

    :catchall_4
    move-exception v0

    goto :goto_6

    .line 110
    :catch_8
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_5

    :catch_9
    move-exception v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_5

    .line 67
    :catchall_5
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_3

    :catchall_6
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto/16 :goto_3

    :catchall_7
    move-exception v0

    goto/16 :goto_3

    .line 61
    :catch_a
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_2

    :catch_b
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto/16 :goto_2
.end method

.method public static setNeedDownloadPic(Z)V
    .locals 0

    .prologue
    .line 24
    sput-boolean p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenPrefercence;->NeedToDownloadPic:Z

    .line 25
    return-void
.end method
