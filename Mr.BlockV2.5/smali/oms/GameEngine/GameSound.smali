.class public Loms/GameEngine/GameSound;
.super Ljava/lang/Object;
.source "GameSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loms/GameEngine/GameSound$CSoundPlay;
    }
.end annotation


# static fields
.field public static final PLAY_LOOP:I = 0x1

.field public static final PLAY_ONCE:I


# instance fields
.field public SoundStopEn:Z

.field public cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

.field public mChannelMax:I

.field public mContext:Landroid/content/Context;

.field public mCurLoadSoundNum:I

.field public mPlayChannel:[I

.field public soundPool:Landroid/media/SoundPool;

.field public volume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/high16 v1, 0x3f800000

    iput v1, p0, Loms/GameEngine/GameSound;->volume:F

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Loms/GameEngine/GameSound;->SoundStopEn:Z

    .line 108
    iput-object p1, p0, Loms/GameEngine/GameSound;->mContext:Landroid/content/Context;

    .line 110
    new-instance v1, Landroid/media/SoundPool;

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    .line 111
    iput p2, p0, Loms/GameEngine/GameSound;->mChannelMax:I

    .line 112
    new-array v1, p2, [I

    iput-object v1, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    .line 113
    new-array v1, p2, [Loms/GameEngine/GameSound$CSoundPlay;

    iput-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 119
    iput v4, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    .line 123
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 117
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    new-instance v2, Loms/GameEngine/GameSound$CSoundPlay;

    invoke-direct {v2, p0}, Loms/GameEngine/GameSound$CSoundPlay;-><init>(Loms/GameEngine/GameSound;)V

    aput-object v2, v1, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private GetMapIdx(I)I
    .locals 2
    .param p1, "resID"    # I

    .prologue
    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Loms/GameEngine/GameSound;->mChannelMax:I

    if-lt v0, v1, :cond_1

    .line 158
    const/4 v0, -0x1

    .end local v0    # "i":I
    :cond_0
    return v0

    .line 155
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nResID:I

    if-eq v1, p1, :cond_0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public CH_GetPlayedTime(I)I
    .locals 2
    .param p1, "Channel"    # I

    .prologue
    .line 496
    iget-object v1, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Loms/GameEngine/GameSound;->GetMapIdx(I)I

    move-result v0

    .line 497
    .local v0, "MapIdx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 498
    const/4 v1, 0x0

    .line 499
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Loms/GameEngine/GameSound$CSoundPlay;->GetPlayedTime()I

    move-result v1

    goto :goto_0
.end method

.method public CH_Pause(I)V
    .locals 2
    .param p1, "Channel"    # I

    .prologue
    .line 458
    iget v0, p0, Loms/GameEngine/GameSound;->mChannelMax:I

    if-le p1, v0, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 461
    iget-object v0, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Loms/GameEngine/GameSound;->pause(I)V

    goto :goto_0
.end method

.method public CH_Play(II)V
    .locals 10
    .param p1, "Channel"    # I
    .param p2, "Resid"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 393
    iget v0, p0, Loms/GameEngine/GameSound;->mChannelMax:I

    if-le p1, v0, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-direct {p0, p2}, Loms/GameEngine/GameSound;->GetMapIdx(I)I

    move-result v8

    .line 396
    .local v8, "MapIdx":I
    if-eq v8, v2, :cond_0

    .line 398
    iget-object v0, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aget v0, v0, p1

    if-eq v0, v2, :cond_2

    .line 401
    iget-object v0, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Loms/GameEngine/GameSound;->GetMapIdx(I)I

    move-result v7

    .line 402
    .local v7, "LastMapIdx":I
    iget-boolean v0, p0, Loms/GameEngine/GameSound;->SoundStopEn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v7

    iget v0, v0, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    if-eq v0, v2, :cond_2

    .line 404
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v7

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 405
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v7

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v0, v1, v3, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 406
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v7

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->setLoop(II)V

    .line 407
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v7

    iput-boolean v4, v0, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    .line 411
    .end local v7    # "LastMapIdx":I
    :cond_2
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v8

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nLoadedID:I

    iget v2, p0, Loms/GameEngine/GameSound;->volume:F

    iget v3, p0, Loms/GameEngine/GameSound;->volume:F

    const/high16 v6, 0x3f800000

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v9

    .line 412
    .local v9, "streamID":I
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v8

    iput v9, v0, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    .line 413
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v8

    iput-boolean v4, v0, Loms/GameEngine/GameSound$CSoundPlay;->nLoop:Z

    .line 414
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v8

    const/4 v1, 0x1

    iput-boolean v1, v0, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    .line 415
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Loms/GameEngine/GameSound$CSoundPlay;->Start()V

    .line 416
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, v9, v4}, Landroid/media/SoundPool;->setLoop(II)V

    .line 417
    iget-object v0, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aput p2, v0, p1

    goto :goto_0
.end method

.method public CH_PlayLoop(II)V
    .locals 11
    .param p1, "Channel"    # I
    .param p2, "Resid"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 421
    iget v0, p0, Loms/GameEngine/GameSound;->mChannelMax:I

    if-le p1, v0, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-direct {p0, p2}, Loms/GameEngine/GameSound;->GetMapIdx(I)I

    move-result v8

    .line 424
    .local v8, "MapIdx":I
    if-eq v8, v5, :cond_0

    .line 426
    iget-object v0, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aget v0, v0, p1

    if-eq v0, v5, :cond_2

    .line 429
    iget-object v0, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Loms/GameEngine/GameSound;->GetMapIdx(I)I

    move-result v7

    .line 430
    .local v7, "LastMapIdx":I
    iget-boolean v0, p0, Loms/GameEngine/GameSound;->SoundStopEn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v7

    iget v0, v0, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    if-eq v0, v5, :cond_2

    .line 432
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v7

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 433
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v7

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 434
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v7

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v0, v1, v5}, Landroid/media/SoundPool;->setLoop(II)V

    .line 435
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v7

    iput-boolean v4, v0, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    .line 439
    .end local v7    # "LastMapIdx":I
    :cond_2
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v8

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nLoadedID:I

    iget v2, p0, Loms/GameEngine/GameSound;->volume:F

    iget v3, p0, Loms/GameEngine/GameSound;->volume:F

    const/high16 v6, 0x3f800000

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v9

    .line 440
    .local v9, "streamID":I
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v8

    iput v9, v0, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    .line 441
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v8

    iput-boolean v10, v0, Loms/GameEngine/GameSound$CSoundPlay;->nLoop:Z

    .line 442
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v8

    iput-boolean v10, v0, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    .line 443
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Loms/GameEngine/GameSound$CSoundPlay;->Start()V

    .line 444
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, v9, v5}, Landroid/media/SoundPool;->setLoop(II)V

    .line 445
    iget-object v0, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aput p2, v0, p1

    goto :goto_0
.end method

.method public CH_Resume(I)V
    .locals 2
    .param p1, "Channel"    # I

    .prologue
    .line 466
    iget v0, p0, Loms/GameEngine/GameSound;->mChannelMax:I

    if-le p1, v0, :cond_1

    .line 472
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 470
    iget-object v0, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Loms/GameEngine/GameSound;->resume(I)V

    goto :goto_0
.end method

.method public CH_SetRate(IF)V
    .locals 2
    .param p1, "Channel"    # I
    .param p2, "Rate"    # F

    .prologue
    .line 475
    iget v0, p0, Loms/GameEngine/GameSound;->mChannelMax:I

    if-le p1, v0, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 478
    iget-object v0, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0, p2}, Loms/GameEngine/GameSound;->setRate(IF)V

    goto :goto_0
.end method

.method public CH_Stop(I)V
    .locals 2
    .param p1, "Channel"    # I

    .prologue
    const/4 v1, -0x1

    .line 449
    iget v0, p0, Loms/GameEngine/GameSound;->mChannelMax:I

    if-le p1, v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aget v0, v0, p1

    if-eq v0, v1, :cond_0

    .line 452
    iget-object v0, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Loms/GameEngine/GameSound;->stop(I)V

    .line 453
    iget-object v0, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aput v1, v0, p1

    goto :goto_0
.end method

.method public GetPlayedTime(I)I
    .locals 2
    .param p1, "resID"    # I

    .prologue
    .line 505
    invoke-direct {p0, p1}, Loms/GameEngine/GameSound;->GetMapIdx(I)I

    move-result v0

    .line 506
    .local v0, "MapIdx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 507
    const/4 v1, 0x0

    .line 508
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Loms/GameEngine/GameSound$CSoundPlay;->GetPlayedTime()I

    move-result v1

    goto :goto_0
.end method

.method public SetSoundStopEn(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Loms/GameEngine/GameSound;->SoundStopEn:Z

    .line 150
    return-void
.end method

.method public addLoopSound(I)V
    .locals 5
    .param p1, "resid"    # I

    .prologue
    const/4 v4, 0x1

    .line 182
    iget v1, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    iget v2, p0, Loms/GameEngine/GameSound;->mChannelMax:I

    if-lt v1, v2, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-direct {p0, p1}, Loms/GameEngine/GameSound;->GetMapIdx(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 186
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 188
    .local v0, "soundId":I
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    iget v2, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    aget-object v1, v1, v2

    iput p1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nResID:I

    .line 189
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    iget v2, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    aget-object v1, v1, v2

    iput v0, v1, Loms/GameEngine/GameSound$CSoundPlay;->nLoadedID:I

    .line 190
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    iget v2, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    aget-object v1, v1, v2

    iput-boolean v4, v1, Loms/GameEngine/GameSound$CSoundPlay;->nLoop:Z

    goto :goto_0
.end method

.method public addSound(I)V
    .locals 4
    .param p1, "resid"    # I

    .prologue
    .line 171
    iget v1, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    iget v2, p0, Loms/GameEngine/GameSound;->mChannelMax:I

    if-lt v1, v2, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-direct {p0, p1}, Loms/GameEngine/GameSound;->GetMapIdx(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 175
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 176
    .local v0, "soundId":I
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    iget v2, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    aget-object v1, v1, v2

    iput p1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nResID:I

    .line 177
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    iget v2, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    aget-object v1, v1, v2

    iput v0, v1, Loms/GameEngine/GameSound$CSoundPlay;->nLoadedID:I

    .line 178
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    iget v2, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput-boolean v2, v1, Loms/GameEngine/GameSound$CSoundPlay;->nLoop:Z

    goto :goto_0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Loms/GameEngine/GameSound;->volume:F

    return v0
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 297
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    if-lt v0, v2, :cond_0

    .line 310
    return-void

    .line 299
    :cond_0
    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 303
    iget-object v2, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v3, v3, v0

    iget v3, v3, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v2, v3, v4}, Landroid/media/SoundPool;->setLoop(II)V

    .line 304
    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iput-boolean v4, v2, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    .line 305
    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Loms/GameEngine/GameSound$CSoundPlay;->Pause()V

    .line 306
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v2, 0x32

    if-lt v1, v2, :cond_2

    .line 297
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    .restart local v1    # "j":I
    :cond_2
    iget-object v2, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v3, v3, v0

    iget v3, v3, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->pause(I)V

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public pause(I)V
    .locals 4
    .param p1, "resid"    # I

    .prologue
    const/4 v3, 0x0

    .line 340
    invoke-direct {p0, p1}, Loms/GameEngine/GameSound;->GetMapIdx(I)I

    move-result v0

    .line 341
    .local v0, "MapIdx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->setLoop(II)V

    .line 346
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iput-boolean v3, v1, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    .line 347
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->pause(I)V

    .line 348
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Loms/GameEngine/GameSound$CSoundPlay;->Pause()V

    goto :goto_0
.end method

.method public play(I)V
    .locals 9
    .param p1, "resid"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 235
    invoke-direct {p0, p1}, Loms/GameEngine/GameSound;->GetMapIdx(I)I

    move-result v7

    .line 236
    .local v7, "MapIdx":I
    if-ne v7, v2, :cond_0

    .line 256
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-boolean v0, p0, Loms/GameEngine/GameSound;->SoundStopEn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v7

    iget v0, v0, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    if-eq v0, v2, :cond_1

    .line 243
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v7

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 244
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v7

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v0, v1, v3, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 245
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v7

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->setLoop(II)V

    .line 246
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v7

    iput-boolean v4, v0, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    .line 249
    :cond_1
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v7

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nLoadedID:I

    iget v2, p0, Loms/GameEngine/GameSound;->volume:F

    iget v3, p0, Loms/GameEngine/GameSound;->volume:F

    const/high16 v6, 0x3f800000

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 250
    .local v8, "streamID":I
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v7

    iput v8, v0, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    .line 251
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v7

    iput-boolean v4, v0, Loms/GameEngine/GameSound$CSoundPlay;->nLoop:Z

    .line 252
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v7

    const/4 v1, 0x1

    iput-boolean v1, v0, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    .line 253
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Loms/GameEngine/GameSound$CSoundPlay;->Start()V

    .line 254
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, v8, v4}, Landroid/media/SoundPool;->setLoop(II)V

    .line 255
    const-string v0, "SoundPool"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cur Stream ID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playLoop(I)V
    .locals 10
    .param p1, "resid"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 259
    invoke-direct {p0, p1}, Loms/GameEngine/GameSound;->GetMapIdx(I)I

    move-result v7

    .line 260
    .local v7, "MapIdx":I
    if-ne v7, v5, :cond_0

    .line 279
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-boolean v0, p0, Loms/GameEngine/GameSound;->SoundStopEn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v7

    iget v0, v0, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    if-eq v0, v5, :cond_1

    .line 267
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v7

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 268
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v7

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 269
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v7

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v0, v1, v5}, Landroid/media/SoundPool;->setLoop(II)V

    .line 270
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v7

    iput-boolean v4, v0, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    .line 273
    :cond_1
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v7

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nLoadedID:I

    iget v2, p0, Loms/GameEngine/GameSound;->volume:F

    iget v3, p0, Loms/GameEngine/GameSound;->volume:F

    const/high16 v6, 0x3f800000

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 274
    .local v8, "streamID":I
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v7

    iput v8, v0, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    .line 275
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v7

    iput-boolean v9, v0, Loms/GameEngine/GameSound$CSoundPlay;->nLoop:Z

    .line 276
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v7

    iput-boolean v9, v0, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    .line 277
    iget-object v0, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Loms/GameEngine/GameSound$CSoundPlay;->Start()V

    .line 278
    iget-object v0, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, v8, v5}, Landroid/media/SoundPool;->setLoop(II)V

    goto :goto_0
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Loms/GameEngine/GameSound;->mChannelMax:I

    if-lt v0, v1, :cond_0

    .line 143
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 144
    const/4 v1, 0x0

    iput-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    .line 145
    iput v4, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    .line 146
    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nLoop:Z

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 134
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v1, v2, v4}, Landroid/media/SoundPool;->setLoop(II)V

    .line 135
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 136
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iput-boolean v4, v1, Loms/GameEngine/GameSound$CSoundPlay;->nLoop:Z

    .line 138
    :cond_1
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iput v3, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    .line 139
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iput v3, v1, Loms/GameEngine/GameSound$CSoundPlay;->nResID:I

    .line 140
    iget-object v1, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aput v3, v1, v0

    .line 141
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iput-boolean v4, v1, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeAll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Loms/GameEngine/GameSound;->mChannelMax:I

    if-lt v0, v1, :cond_0

    .line 231
    iput v4, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    .line 232
    return-void

    .line 219
    :cond_0
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nLoop:Z

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 222
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v1, v2, v4}, Landroid/media/SoundPool;->setLoop(II)V

    .line 223
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 224
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iput-boolean v4, v1, Loms/GameEngine/GameSound$CSoundPlay;->nLoop:Z

    .line 226
    :cond_1
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iput v3, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    .line 227
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iput v3, v1, Loms/GameEngine/GameSound$CSoundPlay;->nResID:I

    .line 228
    iget-object v1, p0, Loms/GameEngine/GameSound;->mPlayChannel:[I

    aput v3, v1, v0

    .line 229
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iput-boolean v4, v1, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeSound(I)V
    .locals 5
    .param p1, "resid"    # I

    .prologue
    const/4 v4, -0x1

    .line 195
    invoke-direct {p0, p1}, Loms/GameEngine/GameSound;->GetMapIdx(I)I

    move-result v0

    .line 196
    .local v0, "MapIdx":I
    if-ne v0, v4, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v1, v2, Loms/GameEngine/GameSound$CSoundPlay;->nLoadedID:I

    .line 199
    .local v1, "loadId":I
    if-eq v1, v4, :cond_0

    .line 201
    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nLoop:Z

    if-eqz v2, :cond_2

    .line 202
    iget-object v2, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v3, v3, v0

    iget v3, v3, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    .line 203
    :cond_2
    iget-object v2, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 204
    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iput v4, v2, Loms/GameEngine/GameSound$CSoundPlay;->nLoadedID:I

    .line 205
    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iput v4, v2, Loms/GameEngine/GameSound$CSoundPlay;->nResID:I

    .line 206
    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Loms/GameEngine/GameSound$CSoundPlay;->nLoop:Z

    .line 207
    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iput v4, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    .line 208
    iget v2, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    if-lez v2, :cond_0

    .line 209
    iget v2, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Loms/GameEngine/GameSound;->mCurLoadSoundNum:I

    if-lt v0, v1, :cond_0

    .line 337
    return-void

    .line 318
    :cond_0
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nLoop:Z

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->setLoop(II)V

    .line 321
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->resume(I)V

    .line 322
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iput-boolean v4, v1, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    .line 323
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Loms/GameEngine/GameSound$CSoundPlay;->Resume()V

    .line 313
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_2
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Loms/GameEngine/GameSound$CSoundPlay;->GetPlayedTime()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_1

    .line 328
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    if-eq v1, v3, :cond_1

    .line 330
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->resume(I)V

    .line 331
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Loms/GameEngine/GameSound$CSoundPlay;->Resume()V

    .line 332
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iput-boolean v4, v1, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    goto :goto_1
.end method

.method public resume(I)V
    .locals 4
    .param p1, "resid"    # I

    .prologue
    const/4 v3, -0x1

    .line 352
    invoke-direct {p0, p1}, Loms/GameEngine/GameSound;->GetMapIdx(I)I

    move-result v0

    .line 353
    .local v0, "MapIdx":I
    if-ne v0, v3, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iget v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    if-eq v1, v3, :cond_0

    .line 357
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    if-nez v1, :cond_0

    .line 359
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Loms/GameEngine/GameSound$CSoundPlay;->nLoop:Z

    if-eqz v1, :cond_2

    .line 360
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->setLoop(II)V

    .line 361
    :cond_2
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->resume(I)V

    .line 362
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Loms/GameEngine/GameSound$CSoundPlay;->Resume()V

    .line 363
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    goto :goto_0
.end method

.method public setAllSoundVolume(F)V
    .locals 0
    .param p1, "Volume"    # F

    .prologue
    .line 385
    iput p1, p0, Loms/GameEngine/GameSound;->volume:F

    .line 386
    return-void
.end method

.method public setRate(IF)V
    .locals 5
    .param p1, "streamID"    # I
    .param p2, "rate"    # F

    .prologue
    .line 367
    invoke-direct {p0, p1}, Loms/GameEngine/GameSound;->GetMapIdx(I)I

    move-result v0

    .line 368
    .local v0, "MapIdx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 375
    :goto_0
    return-void

    .line 370
    :cond_0
    float-to-double v1, p2

    const-wide/high16 v3, 0x3fe0000000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    .line 371
    const/high16 p2, 0x3f000000

    .line 374
    :cond_1
    :goto_1
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v1, v2, p2}, Landroid/media/SoundPool;->setRate(IF)V

    goto :goto_0

    .line 372
    :cond_2
    float-to-double v1, p2

    const-wide/high16 v3, 0x4000000000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 373
    const/high16 p2, 0x40000000

    goto :goto_1
.end method

.method public setSoundVolume(IF)V
    .locals 0
    .param p1, "resid"    # I
    .param p2, "Volume"    # F

    .prologue
    .line 380
    iput p2, p0, Loms/GameEngine/GameSound;->volume:F

    .line 381
    return-void
.end method

.method public stop(I)V
    .locals 5
    .param p1, "resid"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 282
    iget-boolean v1, p0, Loms/GameEngine/GameSound;->SoundStopEn:Z

    if-nez v1, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-direct {p0, p1}, Loms/GameEngine/GameSound;->GetMapIdx(I)I

    move-result v0

    .line 285
    .local v0, "MapIdx":I
    if-eq v0, v4, :cond_0

    .line 288
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->setLoop(II)V

    .line 289
    iget-object v1, p0, Loms/GameEngine/GameSound;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 290
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iput v4, v1, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    .line 291
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iput-boolean v3, v1, Loms/GameEngine/GameSound$CSoundPlay;->nLoop:Z

    .line 292
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    iput-boolean v3, v1, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    .line 293
    iget-object v1, p0, Loms/GameEngine/GameSound;->cSoundPlay:[Loms/GameEngine/GameSound$CSoundPlay;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Loms/GameEngine/GameSound$CSoundPlay;->Stop()V

    goto :goto_0
.end method
