.class public Loms/GameEngine/SoundMeter;
.super Ljava/lang/Object;
.source "SoundMeter.java"


# static fields
.field private static final EMA_FILTER:D = 0.6

.field private static final FILE_W:Z = true


# instance fields
.field private mEMA:D

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mStrFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Loms/GameEngine/SoundMeter;->mStrFilePath:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Loms/GameEngine/SoundMeter;->mRecorder:Landroid/media/MediaRecorder;

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loms/GameEngine/SoundMeter;->mEMA:D

    .line 11
    return-void
.end method


# virtual methods
.method public getAmplitude()D
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Loms/GameEngine/SoundMeter;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Loms/GameEngine/SoundMeter;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    int-to-double v0, v0

    .line 76
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getAmplitudeEMA()D
    .locals 8

    .prologue
    .line 80
    invoke-virtual {p0}, Loms/GameEngine/SoundMeter;->getAmplitude()D

    move-result-wide v0

    .line 81
    .local v0, "amp":D
    const-wide v2, 0x3fe3333333333333L

    mul-double/2addr v2, v0

    const-wide v4, 0x3fd999999999999aL

    iget-wide v6, p0, Loms/GameEngine/SoundMeter;->mEMA:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Loms/GameEngine/SoundMeter;->mEMA:D

    .line 82
    iget-wide v2, p0, Loms/GameEngine/SoundMeter;->mEMA:D

    return-wide v2
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Loms/GameEngine/SoundMeter;->stop()V

    .line 70
    invoke-virtual {p0}, Loms/GameEngine/SoundMeter;->start()V

    .line 71
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 19
    iget-object v3, p0, Loms/GameEngine/SoundMeter;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v3, :cond_0

    .line 20
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v3, p0, Loms/GameEngine/SoundMeter;->mRecorder:Landroid/media/MediaRecorder;

    .line 21
    iget-object v3, p0, Loms/GameEngine/SoundMeter;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 22
    iget-object v3, p0, Loms/GameEngine/SoundMeter;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 23
    iget-object v3, p0, Loms/GameEngine/SoundMeter;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 25
    const/4 v0, 0x0

    .line 27
    .local v0, "audiofile":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 30
    .local v2, "sampleDir":Ljava/io/File;
    :try_start_0
    const-string v3, "temp"

    const-string v4, ".3gp"

    invoke-static {v3, v4, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Loms/GameEngine/SoundMeter;->mStrFilePath:Ljava/lang/String;

    .line 38
    iget-object v3, p0, Loms/GameEngine/SoundMeter;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Loms/GameEngine/SoundMeter;->mStrFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 41
    :try_start_1
    iget-object v3, p0, Loms/GameEngine/SoundMeter;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    .line 42
    iget-object v3, p0, Loms/GameEngine/SoundMeter;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 50
    :goto_0
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Loms/GameEngine/SoundMeter;->mEMA:D

    .line 52
    .end local v0    # "audiofile":Ljava/io/File;
    .end local v2    # "sampleDir":Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 32
    .restart local v0    # "audiofile":Ljava/io/File;
    .restart local v2    # "sampleDir":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    .line 43
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v1

    .line 48
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v1, p0, Loms/GameEngine/SoundMeter;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Loms/GameEngine/SoundMeter;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 57
    iget-object v1, p0, Loms/GameEngine/SoundMeter;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 58
    iput-object v2, p0, Loms/GameEngine/SoundMeter;->mRecorder:Landroid/media/MediaRecorder;

    .line 60
    iget-object v1, p0, Loms/GameEngine/SoundMeter;->mStrFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 61
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Loms/GameEngine/SoundMeter;->mStrFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "audiofile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 64
    .end local v0    # "audiofile":Ljava/io/File;
    :cond_0
    iput-object v2, p0, Loms/GameEngine/SoundMeter;->mStrFilePath:Ljava/lang/String;

    .line 67
    :cond_1
    return-void
.end method
