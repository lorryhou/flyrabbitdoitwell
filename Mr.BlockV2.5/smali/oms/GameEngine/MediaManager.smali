.class public Loms/GameEngine/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"


# static fields
.field public static MaxVolume:F = 0.0f

.field public static SoundVolume:F = 0.0f

.field public static final VOLUMEDOWN:I = 0x1

.field public static final VOLUMEUP:I

.field public static VolumeInc:F

.field public static _GameMedia:Loms/GameEngine/GameMedia;

.field public static _GameSound:Loms/GameEngine/GameSound;

.field public static mMediaEnable:Z

.field public static mSoundEnable:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Loms/GameEngine/MediaManager;->mContext:Landroid/content/Context;

    .line 31
    sput-object v2, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    .line 32
    sput-object v2, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    .line 33
    sput-boolean v1, Loms/GameEngine/MediaManager;->mSoundEnable:Z

    .line 34
    sput-boolean v1, Loms/GameEngine/MediaManager;->mMediaEnable:Z

    .line 36
    iget-object v1, p0, Loms/GameEngine/MediaManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 37
    .local v0, "mgr":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Loms/GameEngine/MediaManager;->SoundVolume:F

    .line 39
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Loms/GameEngine/MediaManager;->MaxVolume:F

    .line 40
    sget v1, Loms/GameEngine/MediaManager;->MaxVolume:F

    const/high16 v2, 0x41a00000

    div-float/2addr v1, v2

    sput v1, Loms/GameEngine/MediaManager;->VolumeInc:F

    .line 44
    return-void
.end method


# virtual methods
.method public CH_GetPlayedTime(I)I
    .locals 1
    .param p1, "Channel"    # I

    .prologue
    .line 373
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameSound;->CH_GetPlayedTime(I)I

    move-result v0

    return v0
.end method

.method public CH_MediaIsPlaying(I)Z
    .locals 1
    .param p1, "Channel"    # I

    .prologue
    .line 290
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameMedia;->CH_isPlaying(I)Z

    move-result v0

    return v0
.end method

.method public CH_MediaPause(I)V
    .locals 1
    .param p1, "Channel"    # I

    .prologue
    .line 312
    sget-boolean v0, Loms/GameEngine/MediaManager;->mMediaEnable:Z

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 314
    :cond_0
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameMedia;->CH_Pause(I)V

    goto :goto_0
.end method

.method public CH_MediaPlay(IIZ)V
    .locals 1
    .param p1, "Channel"    # I
    .param p2, "StreamID"    # I
    .param p3, "loop"    # Z

    .prologue
    .line 300
    sget-boolean v0, Loms/GameEngine/MediaManager;->mMediaEnable:Z

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_0
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0, p1, p2, p3}, Loms/GameEngine/GameMedia;->CH_Play(IIZ)V

    goto :goto_0
.end method

.method public CH_MediaRelease(I)V
    .locals 1
    .param p1, "Channel"    # I

    .prologue
    .line 324
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameMedia;->CH_Release(I)V

    .line 325
    return-void
.end method

.method public CH_MediaResume(I)V
    .locals 1
    .param p1, "Channel"    # I

    .prologue
    .line 318
    sget-boolean v0, Loms/GameEngine/MediaManager;->mMediaEnable:Z

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 320
    :cond_0
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameMedia;->CH_Resume(I)V

    goto :goto_0
.end method

.method public CH_MediaSetLoop(IZ)V
    .locals 1
    .param p1, "Channel"    # I
    .param p2, "loop"    # Z

    .prologue
    .line 294
    sget-boolean v0, Loms/GameEngine/MediaManager;->mMediaEnable:Z

    if-nez v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 296
    :cond_0
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0, p1, p2}, Loms/GameEngine/GameMedia;->CH_SetLoop(IZ)V

    goto :goto_0
.end method

.method public CH_MediaStop(I)V
    .locals 1
    .param p1, "Channel"    # I

    .prologue
    .line 306
    sget-boolean v0, Loms/GameEngine/MediaManager;->mMediaEnable:Z

    if-nez v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 308
    :cond_0
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameMedia;->CH_Stop(I)V

    goto :goto_0
.end method

.method public CH_SoundPause(I)V
    .locals 1
    .param p1, "Channel"    # I

    .prologue
    .line 347
    sget-boolean v0, Loms/GameEngine/MediaManager;->mSoundEnable:Z

    if-nez v0, :cond_0

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_0
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameSound;->CH_Pause(I)V

    goto :goto_0
.end method

.method public CH_SoundPlay(II)V
    .locals 3
    .param p1, "Channel"    # I
    .param p2, "Resid"    # I

    .prologue
    .line 328
    sget-boolean v0, Loms/GameEngine/MediaManager;->mSoundEnable:Z

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    sget v1, Loms/GameEngine/MediaManager;->SoundVolume:F

    sget v2, Loms/GameEngine/MediaManager;->MaxVolume:F

    div-float/2addr v1, v2

    iput v1, v0, Loms/GameEngine/GameSound;->volume:F

    .line 331
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1, p2}, Loms/GameEngine/GameSound;->CH_Play(II)V

    goto :goto_0
.end method

.method public CH_SoundPlayLoop(II)V
    .locals 1
    .param p1, "Channel"    # I
    .param p2, "Resid"    # I

    .prologue
    .line 335
    sget-boolean v0, Loms/GameEngine/MediaManager;->mSoundEnable:Z

    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 337
    :cond_0
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1, p2}, Loms/GameEngine/GameSound;->CH_PlayLoop(II)V

    goto :goto_0
.end method

.method public CH_SoundResume(I)V
    .locals 1
    .param p1, "Channel"    # I

    .prologue
    .line 353
    sget-boolean v0, Loms/GameEngine/MediaManager;->mSoundEnable:Z

    if-nez v0, :cond_0

    .line 356
    :goto_0
    return-void

    .line 355
    :cond_0
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameSound;->CH_Resume(I)V

    goto :goto_0
.end method

.method public CH_SoundSetRate(IF)V
    .locals 1
    .param p1, "Channel"    # I
    .param p2, "Rate"    # F

    .prologue
    .line 359
    sget-boolean v0, Loms/GameEngine/MediaManager;->mSoundEnable:Z

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 361
    :cond_0
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1, p2}, Loms/GameEngine/GameSound;->CH_SetRate(IF)V

    goto :goto_0
.end method

.method public CH_SoundStop(I)V
    .locals 1
    .param p1, "Channel"    # I

    .prologue
    .line 341
    sget-boolean v0, Loms/GameEngine/MediaManager;->mSoundEnable:Z

    if-nez v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 343
    :cond_0
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameSound;->CH_Stop(I)V

    goto :goto_0
.end method

.method public GetMediaStatus()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Loms/GameEngine/MediaManager;->mMediaEnable:Z

    return v0
.end method

.method public GetPlayedTime(I)I
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 378
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameSound;->GetPlayedTime(I)I

    move-result v0

    return v0
.end method

.method public GetSoundStatus()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Loms/GameEngine/MediaManager;->mSoundEnable:Z

    return v0
.end method

.method public Init(II)V
    .locals 3
    .param p1, "soundNum"    # I
    .param p2, "mediaNum"    # I

    .prologue
    .line 55
    new-instance v0, Loms/GameEngine/GameMedia;

    iget-object v1, p0, Loms/GameEngine/MediaManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Loms/GameEngine/GameMedia;-><init>(Landroid/content/Context;I)V

    sput-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    .line 56
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    sget v1, Loms/GameEngine/MediaManager;->SoundVolume:F

    sget v2, Loms/GameEngine/MediaManager;->MaxVolume:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Loms/GameEngine/GameMedia;->setAllMediaVolume(F)V

    .line 57
    new-instance v0, Loms/GameEngine/GameSound;

    iget-object v1, p0, Loms/GameEngine/MediaManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Loms/GameEngine/GameSound;-><init>(Landroid/content/Context;I)V

    sput-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    .line 58
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    sget v1, Loms/GameEngine/MediaManager;->SoundVolume:F

    sget v2, Loms/GameEngine/MediaManager;->MaxVolume:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Loms/GameEngine/GameSound;->setAllSoundVolume(F)V

    .line 59
    return-void
.end method

.method public RemoveAll()V
    .locals 1

    .prologue
    .line 383
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    if-eqz v0, :cond_0

    .line 384
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0}, Loms/GameEngine/GameMedia;->stopAll()V

    .line 385
    :cond_0
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    if-eqz v0, :cond_1

    .line 386
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0}, Loms/GameEngine/GameSound;->removeAll()V

    .line 387
    :cond_1
    return-void
.end method

.method public SetMediaEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 112
    sput-boolean p1, Loms/GameEngine/MediaManager;->mMediaEnable:Z

    .line 113
    return-void
.end method

.method public SetSoundEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 104
    sput-boolean p1, Loms/GameEngine/MediaManager;->mSoundEnable:Z

    .line 105
    return-void
.end method

.method public SetSoundStopEn(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 126
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameSound;->SetSoundStopEn(Z)V

    .line 129
    :cond_0
    return-void
.end method

.method public SetSystemVolume(I)V
    .locals 3
    .param p1, "Type"    # I

    .prologue
    const/4 v2, 0x0

    .line 63
    if-nez p1, :cond_1

    .line 64
    sget v0, Loms/GameEngine/MediaManager;->SoundVolume:F

    sget v1, Loms/GameEngine/MediaManager;->VolumeInc:F

    add-float/2addr v0, v1

    sput v0, Loms/GameEngine/MediaManager;->SoundVolume:F

    .line 65
    sget v0, Loms/GameEngine/MediaManager;->SoundVolume:F

    sget v1, Loms/GameEngine/MediaManager;->MaxVolume:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 66
    sget v0, Loms/GameEngine/MediaManager;->MaxVolume:F

    sput v0, Loms/GameEngine/MediaManager;->SoundVolume:F

    .line 73
    :cond_0
    :goto_0
    sget v0, Loms/GameEngine/MediaManager;->SoundVolume:F

    invoke-virtual {p0, v0}, Loms/GameEngine/MediaManager;->setAllSoundVolume(F)V

    .line 74
    sget v0, Loms/GameEngine/MediaManager;->SoundVolume:F

    invoke-virtual {p0, v0}, Loms/GameEngine/MediaManager;->setAllMediaVolume(F)V

    .line 87
    return-void

    .line 69
    :cond_1
    sget v0, Loms/GameEngine/MediaManager;->SoundVolume:F

    sget v1, Loms/GameEngine/MediaManager;->VolumeInc:F

    sub-float/2addr v0, v1

    sput v0, Loms/GameEngine/MediaManager;->SoundVolume:F

    .line 70
    sget v0, Loms/GameEngine/MediaManager;->SoundVolume:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    .line 71
    sput v2, Loms/GameEngine/MediaManager;->SoundVolume:F

    goto :goto_0
.end method

.method public addLoopSound(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 137
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameSound;->addLoopSound(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public addSound(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 132
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameSound;->addSound(I)V

    .line 134
    :cond_0
    return-void
.end method

.method public clearMediaMap()V
    .locals 1

    .prologue
    .line 251
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    if-eqz v0, :cond_0

    .line 252
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0}, Loms/GameEngine/GameMedia;->clearMediaMap()V

    .line 253
    :cond_0
    return-void
.end method

.method public clearSoundPlayMap()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public getMediaVolume()F
    .locals 1

    .prologue
    .line 286
    sget v0, Loms/GameEngine/MediaManager;->SoundVolume:F

    return v0
.end method

.method public getSoundVolume()F
    .locals 1

    .prologue
    .line 282
    sget v0, Loms/GameEngine/MediaManager;->SoundVolume:F

    return v0
.end method

.method public isMediaPlaying(I)Z
    .locals 2
    .param p1, "StreamID"    # I

    .prologue
    const/4 v0, 0x0

    .line 216
    sget-boolean v1, Loms/GameEngine/MediaManager;->mMediaEnable:Z

    if-nez v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    sget-object v1, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    if-eqz v1, :cond_0

    .line 219
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameMedia;->isPlaying(I)Z

    move-result v0

    goto :goto_0
.end method

.method public mediaLoad(I)Z
    .locals 1
    .param p1, "StreamID"    # I

    .prologue
    .line 204
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameMedia;->load(I)Z

    move-result v0

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mediaPause(I)V
    .locals 1
    .param p1, "StreamID"    # I

    .prologue
    .line 256
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    if-eqz v0, :cond_0

    sget-boolean v0, Loms/GameEngine/MediaManager;->mMediaEnable:Z

    if-eqz v0, :cond_0

    .line 257
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameMedia;->pause(I)V

    .line 258
    :cond_0
    return-void
.end method

.method public mediaPlay(IZ)V
    .locals 1
    .param p1, "StreamID"    # I
    .param p2, "loop"    # Z

    .prologue
    .line 232
    sget-boolean v0, Loms/GameEngine/MediaManager;->mMediaEnable:Z

    if-nez v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0, p1, p2}, Loms/GameEngine/GameMedia;->play(IZ)Z

    goto :goto_0
.end method

.method public mediaResume(I)V
    .locals 1
    .param p1, "StreamID"    # I

    .prologue
    .line 260
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    if-eqz v0, :cond_0

    sget-boolean v0, Loms/GameEngine/MediaManager;->mMediaEnable:Z

    if-eqz v0, :cond_0

    .line 261
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameMedia;->resume(I)V

    .line 262
    :cond_0
    return-void
.end method

.method public mediaStop(I)V
    .locals 1
    .param p1, "StreamID"    # I

    .prologue
    .line 239
    sget-boolean v0, Loms/GameEngine/MediaManager;->mMediaEnable:Z

    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    if-eqz v0, :cond_0

    .line 242
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameMedia;->stop(I)V

    goto :goto_0
.end method

.method public mediaStopAll()V
    .locals 1

    .prologue
    .line 246
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0}, Loms/GameEngine/GameMedia;->stopAll()V

    .line 248
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 90
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0}, Loms/GameEngine/GameMedia;->pause()V

    .line 92
    :cond_0
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0}, Loms/GameEngine/GameSound;->pause()V

    .line 94
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 97
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    if-eqz v0, :cond_0

    sget-boolean v0, Loms/GameEngine/MediaManager;->mMediaEnable:Z

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0}, Loms/GameEngine/GameMedia;->resume()V

    .line 99
    :cond_0
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    if-eqz v0, :cond_1

    sget-boolean v0, Loms/GameEngine/MediaManager;->mSoundEnable:Z

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0}, Loms/GameEngine/GameSound;->resume()V

    .line 101
    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0}, Loms/GameEngine/GameMedia;->release()V

    .line 50
    :cond_0
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    if-eqz v0, :cond_1

    .line 51
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0}, Loms/GameEngine/GameSound;->release()V

    .line 52
    :cond_1
    return-void
.end method

.method public removeSound(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 142
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameSound;->removeSound(I)V

    .line 144
    :cond_0
    return-void
.end method

.method public setAllMediaVolume(F)V
    .locals 4
    .param p1, "Volume"    # F

    .prologue
    .line 271
    sget v1, Loms/GameEngine/MediaManager;->MaxVolume:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 272
    sget p1, Loms/GameEngine/MediaManager;->MaxVolume:F

    .line 273
    :cond_0
    sput p1, Loms/GameEngine/MediaManager;->SoundVolume:F

    .line 274
    iget-object v1, p0, Loms/GameEngine/MediaManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 275
    .local v0, "mgr":Landroid/media/AudioManager;
    const/4 v1, 0x3

    float-to-int v2, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 276
    sget-object v1, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    if-eqz v1, :cond_1

    .line 277
    sget-object v1, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    sget v2, Loms/GameEngine/MediaManager;->MaxVolume:F

    div-float v2, p1, v2

    invoke-virtual {v1, v2}, Loms/GameEngine/GameMedia;->setAllMediaVolume(F)V

    .line 279
    :cond_1
    return-void
.end method

.method public setAllSoundVolume(F)V
    .locals 4
    .param p1, "Volume"    # F

    .prologue
    .line 189
    sget v1, Loms/GameEngine/MediaManager;->MaxVolume:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 190
    sget p1, Loms/GameEngine/MediaManager;->MaxVolume:F

    .line 191
    :cond_0
    sput p1, Loms/GameEngine/MediaManager;->SoundVolume:F

    .line 192
    iget-object v1, p0, Loms/GameEngine/MediaManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 193
    .local v0, "mgr":Landroid/media/AudioManager;
    const/4 v1, 0x3

    float-to-int v2, p1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 194
    sget-object v1, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    if-eqz v1, :cond_1

    .line 195
    sget-object v1, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    sget v2, Loms/GameEngine/MediaManager;->MaxVolume:F

    div-float v2, p1, v2

    invoke-virtual {v1, v2}, Loms/GameEngine/GameSound;->setAllSoundVolume(F)V

    .line 196
    :cond_1
    return-void
.end method

.method public setAudioStreamType(II)V
    .locals 1
    .param p1, "StreamID"    # I
    .param p2, "streamtype"    # I

    .prologue
    .line 211
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0, p1, p2}, Loms/GameEngine/GameMedia;->setAudioStreamType(II)V

    .line 213
    :cond_0
    return-void
.end method

.method public setMediaLoop(IZ)V
    .locals 1
    .param p1, "StreamID"    # I
    .param p2, "loop"    # Z

    .prologue
    .line 225
    sget-boolean v0, Loms/GameEngine/MediaManager;->mMediaEnable:Z

    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    invoke-virtual {v0, p1, p2}, Loms/GameEngine/GameMedia;->setLoop(IZ)V

    goto :goto_0
.end method

.method public setMediaVolume(IF)V
    .locals 2
    .param p1, "StreamID"    # I
    .param p2, "Volume"    # F

    .prologue
    .line 265
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Loms/GameEngine/MediaManager;->_GameMedia:Loms/GameEngine/GameMedia;

    sget v1, Loms/GameEngine/MediaManager;->SoundVolume:F

    invoke-virtual {v0, p1, v1}, Loms/GameEngine/GameMedia;->setMediaVolume(IF)V

    .line 268
    :cond_0
    return-void
.end method

.method public setRate(IF)V
    .locals 1
    .param p1, "streamID"    # I
    .param p2, "rate"    # F

    .prologue
    .line 121
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1, p2}, Loms/GameEngine/GameSound;->setRate(IF)V

    .line 123
    :cond_0
    return-void
.end method

.method public setSoundVolume(IF)V
    .locals 1
    .param p1, "resid"    # I
    .param p2, "Volume"    # F

    .prologue
    .line 182
    sput p2, Loms/GameEngine/MediaManager;->SoundVolume:F

    .line 183
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1, p2}, Loms/GameEngine/GameSound;->setSoundVolume(IF)V

    .line 185
    :cond_0
    return-void
.end method

.method public soundPause(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 172
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    if-eqz v0, :cond_0

    sget-boolean v0, Loms/GameEngine/MediaManager;->mSoundEnable:Z

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameSound;->pause(I)V

    .line 174
    :cond_0
    return-void
.end method

.method public soundPlay(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 147
    sget-boolean v0, Loms/GameEngine/MediaManager;->mSoundEnable:Z

    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    sget v1, Loms/GameEngine/MediaManager;->SoundVolume:F

    sget v2, Loms/GameEngine/MediaManager;->MaxVolume:F

    div-float/2addr v1, v2

    iput v1, v0, Loms/GameEngine/GameSound;->volume:F

    .line 151
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameSound;->play(I)V

    goto :goto_0
.end method

.method public soundPlayLoop(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 156
    sget-boolean v0, Loms/GameEngine/MediaManager;->mSoundEnable:Z

    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    sget v1, Loms/GameEngine/MediaManager;->SoundVolume:F

    sget v2, Loms/GameEngine/MediaManager;->MaxVolume:F

    div-float/2addr v1, v2

    iput v1, v0, Loms/GameEngine/GameSound;->volume:F

    .line 160
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameSound;->playLoop(I)V

    goto :goto_0
.end method

.method public soundResume(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 177
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    if-eqz v0, :cond_0

    sget-boolean v0, Loms/GameEngine/MediaManager;->mSoundEnable:Z

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameSound;->resume(I)V

    .line 179
    :cond_0
    return-void
.end method

.method public soundStop(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 165
    sget-boolean v0, Loms/GameEngine/MediaManager;->mSoundEnable:Z

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Loms/GameEngine/MediaManager;->_GameSound:Loms/GameEngine/GameSound;

    invoke-virtual {v0, p1}, Loms/GameEngine/GameSound;->stop(I)V

    goto :goto_0
.end method
