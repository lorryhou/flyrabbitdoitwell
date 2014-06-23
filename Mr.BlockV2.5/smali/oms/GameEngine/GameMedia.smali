.class public Loms/GameEngine/GameMedia;
.super Ljava/lang/Object;
.source "GameMedia.java"


# static fields
.field public static final PLAY_LOOP:I = 0x1

.field public static final PLAY_ONCE:I


# instance fields
.field private SOUNDCHANNEL:I

.field private gameMediaMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadStreamNum:I

.field private mContext:Landroid/content/Context;

.field private mPlayChannel:[I

.field private mSavePlayPos:[I

.field private maxStream:I

.field private mediaPlayer:[Landroid/media/MediaPlayer;

.field public volume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "StreamNum"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v4, p0, Loms/GameEngine/GameMedia;->SOUNDCHANNEL:I

    .line 25
    iput-object p1, p0, Loms/GameEngine/GameMedia;->mContext:Landroid/content/Context;

    .line 26
    iput p2, p0, Loms/GameEngine/GameMedia;->maxStream:I

    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    .line 28
    iget v1, p0, Loms/GameEngine/GameMedia;->maxStream:I

    iget v2, p0, Loms/GameEngine/GameMedia;->SOUNDCHANNEL:I

    add-int/2addr v1, v2

    new-array v1, v1, [Landroid/media/MediaPlayer;

    iput-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    .line 29
    iget v1, p0, Loms/GameEngine/GameMedia;->maxStream:I

    iget v2, p0, Loms/GameEngine/GameMedia;->SOUNDCHANNEL:I

    add-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    .line 30
    iget v1, p0, Loms/GameEngine/GameMedia;->maxStream:I

    iget v2, p0, Loms/GameEngine/GameMedia;->SOUNDCHANNEL:I

    add-int/2addr v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Loms/GameEngine/GameMedia;->mSavePlayPos:[I

    .line 31
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Loms/GameEngine/GameMedia;->maxStream:I

    iget v2, p0, Loms/GameEngine/GameMedia;->SOUNDCHANNEL:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 37
    iput v4, p0, Loms/GameEngine/GameMedia;->loadStreamNum:I

    .line 38
    const/high16 v1, 0x3f800000

    iput v1, p0, Loms/GameEngine/GameMedia;->volume:F

    .line 39
    return-void

    .line 33
    :cond_0
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    aput-object v2, v1, v0

    .line 34
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mSavePlayPos:[I

    aput v3, v1, v0

    .line 35
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    aput v3, v1, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public CH_Pause(I)V
    .locals 2
    .param p1, "Channel"    # I

    .prologue
    .line 246
    iget v0, p0, Loms/GameEngine/GameMedia;->maxStream:I

    if-lt p1, v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v0, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Loms/GameEngine/GameMedia;->pause(I)V

    goto :goto_0
.end method

.method public CH_Play(IIZ)V
    .locals 1
    .param p1, "Channel"    # I
    .param p2, "StreamID"    # I
    .param p3, "loop"    # Z

    .prologue
    .line 226
    iget v0, p0, Loms/GameEngine/GameMedia;->maxStream:I

    if-lt p1, v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p0, p1}, Loms/GameEngine/GameMedia;->CH_Stop(I)V

    .line 232
    invoke-virtual {p0, p2, p3}, Loms/GameEngine/GameMedia;->play(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    aput p2, v0, p1

    goto :goto_0
.end method

.method public CH_Release(I)V
    .locals 2
    .param p1, "Channel"    # I

    .prologue
    const/4 v1, -0x1

    .line 260
    iget v0, p0, Loms/GameEngine/GameMedia;->maxStream:I

    if-lt p1, v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    aget v0, v0, p1

    if-eq v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Loms/GameEngine/GameMedia;->release(I)V

    .line 264
    iget-object v0, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    aput v1, v0, p1

    goto :goto_0
.end method

.method public CH_Resume(I)V
    .locals 2
    .param p1, "Channel"    # I

    .prologue
    .line 253
    iget v0, p0, Loms/GameEngine/GameMedia;->maxStream:I

    if-lt p1, v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Loms/GameEngine/GameMedia;->resume(I)V

    goto :goto_0
.end method

.method public CH_SetLoop(IZ)V
    .locals 2
    .param p1, "Channel"    # I
    .param p2, "loop"    # Z

    .prologue
    .line 219
    iget v0, p0, Loms/GameEngine/GameMedia;->maxStream:I

    if-lt p1, v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0, p2}, Loms/GameEngine/GameMedia;->setLoop(IZ)V

    goto :goto_0
.end method

.method public CH_Stop(I)V
    .locals 2
    .param p1, "Channel"    # I

    .prologue
    const/4 v1, -0x1

    .line 237
    iget v0, p0, Loms/GameEngine/GameMedia;->maxStream:I

    if-lt p1, v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    aget v0, v0, p1

    if-eq v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Loms/GameEngine/GameMedia;->stop(I)V

    .line 241
    iget-object v0, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    aput v1, v0, p1

    goto :goto_0
.end method

.method public CH_isPlaying(I)Z
    .locals 3
    .param p1, "Channel"    # I

    .prologue
    const/4 v0, 0x0

    .line 210
    iget v1, p0, Loms/GameEngine/GameMedia;->maxStream:I

    if-lt p1, v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    aget v1, v1, p1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 213
    iget-object v0, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Loms/GameEngine/GameMedia;->isPlaying(I)Z

    move-result v0

    goto :goto_0
.end method

.method public clearMediaMap()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Loms/GameEngine/GameMedia;->loadStreamNum:I

    .line 159
    return-void
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Loms/GameEngine/GameMedia;->volume:F

    return v0
.end method

.method public isPlaying(I)Z
    .locals 4
    .param p1, "StreamID"    # I

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 93
    :goto_0
    return v1

    .line 88
    :cond_0
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 89
    .local v0, "ID":I
    iget v1, p0, Loms/GameEngine/GameMedia;->maxStream:I

    if-lt v0, v1, :cond_1

    move v1, v2

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    if-eqz v0, :cond_2

    .line 92
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 93
    goto :goto_0
.end method

.method public load(I)Z
    .locals 8
    .param p1, "StreamID"    # I

    .prologue
    const/4 v0, 0x0

    .line 42
    iget v1, p0, Loms/GameEngine/GameMedia;->loadStreamNum:I

    iget v2, p0, Loms/GameEngine/GameMedia;->maxStream:I

    if-lt v1, v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 45
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 48
    :try_start_0
    iget-object v0, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    iget v1, p0, Loms/GameEngine/GameMedia;->loadStreamNum:I

    aget-object v0, v0, v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 60
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 66
    :goto_2
    :try_start_2
    iget-object v0, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    iget v1, p0, Loms/GameEngine/GameMedia;->loadStreamNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 74
    :goto_3
    iget-object v0, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Loms/GameEngine/GameMedia;->loadStreamNum:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget v0, p0, Loms/GameEngine/GameMedia;->loadStreamNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Loms/GameEngine/GameMedia;->loadStreamNum:I

    .line 76
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v7

    .line 51
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 52
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 54
    .local v7, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 55
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v7

    .line 57
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 61
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 63
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 67
    .end local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 69
    .local v7, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3

    .line 70
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v7

    .line 72
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 163
    iget-object v2, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 164
    .local v0, "Count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 172
    return-void

    .line 165
    :cond_0
    iget-object v2, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    .line 168
    iget-object v2, p0, Loms/GameEngine/GameMedia;->mSavePlayPos:[I

    iget-object v3, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    aput v3, v2, v1

    .line 164
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public pause(I)V
    .locals 5
    .param p1, "StreamID"    # I

    .prologue
    .line 188
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 191
    .local v0, "ID":I
    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 193
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mSavePlayPos:[I

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    aput v3, v1, v2

    goto :goto_0
.end method

.method public play(IZ)Z
    .locals 4
    .param p1, "StreamID"    # I
    .param p2, "loop"    # Z

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-virtual {p0, p1}, Loms/GameEngine/GameMedia;->load(I)Z

    .line 110
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 122
    :goto_0
    return v1

    .line 112
    :cond_0
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 113
    .local v0, "ID":I
    iget v1, p0, Loms/GameEngine/GameMedia;->maxStream:I

    if-lt v0, v1, :cond_1

    move v1, v2

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    if-eqz v0, :cond_2

    .line 116
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    add-int/lit8 v3, v0, -0x1

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 117
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 118
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 119
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    iget v2, p0, Loms/GameEngine/GameMedia;->volume:F

    iget v3, p0, Loms/GameEngine/GameMedia;->volume:F

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 120
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 122
    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 285
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Loms/GameEngine/GameMedia;->maxStream:I

    iget v2, p0, Loms/GameEngine/GameMedia;->SOUNDCHANNEL:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 290
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 291
    const/4 v1, 0x0

    iput v1, p0, Loms/GameEngine/GameMedia;->loadStreamNum:I

    .line 292
    return-void

    .line 286
    :cond_0
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 287
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 288
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mPlayChannel:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public release(I)V
    .locals 3
    .param p1, "StreamID"    # I

    .prologue
    .line 269
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 272
    .local v0, "ID":I
    if-eqz v0, :cond_0

    .line 273
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 274
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 276
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget v1, p0, Loms/GameEngine/GameMedia;->loadStreamNum:I

    if-lez v1, :cond_0

    .line 278
    iget v1, p0, Loms/GameEngine/GameMedia;->loadStreamNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Loms/GameEngine/GameMedia;->loadStreamNum:I

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 176
    iget-object v2, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 177
    .local v0, "Count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 185
    return-void

    .line 178
    :cond_0
    iget-object v2, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Loms/GameEngine/GameMedia;->mSavePlayPos:[I

    aget v2, v2, v1

    if-eq v2, v3, :cond_1

    .line 180
    iget-object v2, p0, Loms/GameEngine/GameMedia;->mSavePlayPos:[I

    aput v3, v2, v1

    .line 181
    iget-object v2, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 177
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resume(I)V
    .locals 4
    .param p1, "StreamID"    # I

    .prologue
    const/4 v3, -0x1

    .line 197
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 200
    .local v0, "ID":I
    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 202
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mSavePlayPos:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-eq v1, v3, :cond_0

    .line 203
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mSavePlayPos:[I

    add-int/lit8 v2, v0, -0x1

    aput v3, v1, v2

    .line 204
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public setAllMediaVolume(F)V
    .locals 1
    .param p1, "Volume"    # F

    .prologue
    .line 310
    const/high16 v0, 0x3f800000

    iput v0, p0, Loms/GameEngine/GameMedia;->volume:F

    .line 323
    return-void
.end method

.method public setAudioStreamType(II)V
    .locals 3
    .param p1, "StreamID"    # I
    .param p2, "streamtype"    # I

    .prologue
    .line 80
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 81
    .local v0, "ID":I
    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 83
    :cond_0
    return-void
.end method

.method public setLoop(IZ)V
    .locals 3
    .param p1, "StreamID"    # I
    .param p2, "loop"    # Z

    .prologue
    .line 98
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 101
    .local v0, "ID":I
    iget v1, p0, Loms/GameEngine/GameMedia;->maxStream:I

    if-ge v0, v1, :cond_0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0
.end method

.method public setMediaVolume(IF)V
    .locals 1
    .param p1, "StreamID"    # I
    .param p2, "Volume"    # F

    .prologue
    .line 295
    const/high16 v0, 0x3f800000

    iput v0, p0, Loms/GameEngine/GameMedia;->volume:F

    .line 307
    return-void
.end method

.method public stop(I)V
    .locals 4
    .param p1, "StreamID"    # I

    .prologue
    .line 126
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 129
    .local v0, "ID":I
    iget v1, p0, Loms/GameEngine/GameMedia;->maxStream:I

    if-ge v0, v1, :cond_0

    .line 131
    if-eqz v0, :cond_2

    .line 132
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 133
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mSavePlayPos:[I

    add-int/lit8 v2, v0, -0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 134
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 135
    iget-object v1, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    add-int/lit8 v2, v0, -0x1

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    aput-object v3, v1, v2

    .line 136
    iget v1, p0, Loms/GameEngine/GameMedia;->loadStreamNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Loms/GameEngine/GameMedia;->loadStreamNum:I

    .line 138
    :cond_2
    iget-object v1, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public stopAll()V
    .locals 4

    .prologue
    .line 142
    iget-object v2, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v2, p0, Loms/GameEngine/GameMedia;->gameMediaMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 147
    .local v0, "Count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 153
    invoke-virtual {p0}, Loms/GameEngine/GameMedia;->clearMediaMap()V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v2, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    .line 149
    iget-object v2, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 150
    iget-object v2, p0, Loms/GameEngine/GameMedia;->mediaPlayer:[Landroid/media/MediaPlayer;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    aput-object v3, v2, v1

    .line 151
    iget-object v2, p0, Loms/GameEngine/GameMedia;->mSavePlayPos:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
