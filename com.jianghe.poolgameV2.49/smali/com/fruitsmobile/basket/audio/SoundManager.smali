.class public Lcom/fruitsmobile/basket/audio/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"


# static fields
.field public static final MAX_SOUND_COUNT:I = 0x40

.field private static bgm:Landroid/media/MediaPlayer;

.field private static musicOn:Z

.field private static paused:Z

.field private static soundOn:Z

.field private static soundpool:Landroid/media/SoundPool;

.field private static sounds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 14
    sput-boolean v0, Lcom/fruitsmobile/basket/audio/SoundManager;->soundOn:Z

    .line 15
    sput-boolean v0, Lcom/fruitsmobile/basket/audio/SoundManager;->musicOn:Z

    .line 16
    sput-boolean v3, Lcom/fruitsmobile/basket/audio/SoundManager;->paused:Z

    .line 18
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/fruitsmobile/basket/audio/SoundManager;->soundpool:Landroid/media/SoundPool;

    .line 19
    const/16 v0, 0x40

    new-array v0, v0, [I

    sput-object v0, Lcom/fruitsmobile/basket/audio/SoundManager;->sounds:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkMusic()V
    .locals 2

    .prologue
    .line 55
    sget-object v1, Lcom/fruitsmobile/basket/audio/SoundManager;->bgm:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 56
    sget-boolean v1, Lcom/fruitsmobile/basket/audio/SoundManager;->musicOn:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/fruitsmobile/basket/audio/SoundManager;->paused:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 57
    .local v0, "musicShouldOn":Z
    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/fruitsmobile/basket/audio/SoundManager;->bgm:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    sget-object v1, Lcom/fruitsmobile/basket/audio/SoundManager;->bgm:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 63
    .end local v0    # "musicShouldOn":Z
    :cond_0
    :goto_1
    return-void

    .line 56
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 59
    .restart local v0    # "musicShouldOn":Z
    :cond_2
    if-nez v0, :cond_0

    sget-object v1, Lcom/fruitsmobile/basket/audio/SoundManager;->bgm:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Lcom/fruitsmobile/basket/audio/SoundManager;->bgm:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_1
.end method

.method public static isMusicOn()Z
    .locals 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/fruitsmobile/basket/audio/SoundManager;->musicOn:Z

    return v0
.end method

.method public static isSoundOn()Z
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/fruitsmobile/basket/audio/SoundManager;->soundOn:Z

    return v0
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fruitsmobile/basket/audio/SoundManager;->paused:Z

    .line 46
    invoke-static {}, Lcom/fruitsmobile/basket/audio/SoundManager;->checkMusic()V

    .line 47
    return-void
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fruitsmobile/basket/audio/SoundManager;->paused:Z

    .line 51
    invoke-static {}, Lcom/fruitsmobile/basket/audio/SoundManager;->checkMusic()V

    .line 52
    return-void
.end method

.method public static playSound(I)V
    .locals 7
    .param p0, "soundid"    # I

    .prologue
    const/high16 v2, 0x3f800000

    .line 90
    sget-boolean v0, Lcom/fruitsmobile/basket/audio/SoundManager;->soundOn:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/fruitsmobile/basket/audio/SoundManager;->paused:Z

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcom/fruitsmobile/basket/audio/SoundManager;->soundpool:Landroid/media/SoundPool;

    sget-object v1, Lcom/fruitsmobile/basket/audio/SoundManager;->sounds:[I

    aget v1, v1, p0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 93
    :cond_0
    return-void
.end method

.method public static playSound(IF)V
    .locals 7
    .param p0, "soundid"    # I
    .param p1, "volume"    # F

    .prologue
    .line 96
    sget-boolean v0, Lcom/fruitsmobile/basket/audio/SoundManager;->soundOn:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/fruitsmobile/basket/audio/SoundManager;->paused:Z

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lcom/fruitsmobile/basket/audio/SoundManager;->soundpool:Landroid/media/SoundPool;

    sget-object v1, Lcom/fruitsmobile/basket/audio/SoundManager;->sounds:[I

    aget v1, v1, p0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    move v2, p1

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 99
    :cond_0
    return-void
.end method

.method public static prepareSound(ILandroid/content/Context;I)V
    .locals 3
    .param p0, "soundid"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    .line 86
    sget-object v0, Lcom/fruitsmobile/basket/audio/SoundManager;->sounds:[I

    sget-object v1, Lcom/fruitsmobile/basket/audio/SoundManager;->soundpool:Landroid/media/SoundPool;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, p0

    .line 87
    return-void
.end method

.method public static setBgMusic(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 82
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {v0}, Lcom/fruitsmobile/basket/audio/SoundManager;->setBgMusic(Landroid/media/MediaPlayer;)V

    .line 83
    return-void
.end method

.method public static setBgMusic(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p0, "bgm"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x1

    .line 66
    sget-boolean v1, Lcom/fruitsmobile/basket/audio/SoundManager;->musicOn:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/fruitsmobile/basket/audio/SoundManager;->paused:Z

    if-nez v1, :cond_2

    move v0, v2

    .line 67
    .local v0, "musicShouldOn":Z
    :goto_0
    sget-object v1, Lcom/fruitsmobile/basket/audio/SoundManager;->bgm:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 68
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    sget-object v1, Lcom/fruitsmobile/basket/audio/SoundManager;->bgm:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 72
    :cond_0
    sput-object p0, Lcom/fruitsmobile/basket/audio/SoundManager;->bgm:Landroid/media/MediaPlayer;

    .line 73
    if-eqz p0, :cond_1

    .line 74
    invoke-virtual {p0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 75
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    .line 79
    :cond_1
    return-void

    .line 66
    .end local v0    # "musicShouldOn":Z
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static setMusicOn(Z)V
    .locals 0
    .param p0, "isOn"    # Z

    .prologue
    .line 40
    sput-boolean p0, Lcom/fruitsmobile/basket/audio/SoundManager;->musicOn:Z

    .line 41
    invoke-static {}, Lcom/fruitsmobile/basket/audio/SoundManager;->checkMusic()V

    .line 42
    return-void
.end method

.method public static setMusicVolume(F)V
    .locals 1
    .param p0, "volume"    # F

    .prologue
    .line 34
    sget-object v0, Lcom/fruitsmobile/basket/audio/SoundManager;->bgm:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/fruitsmobile/basket/audio/SoundManager;->bgm:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0, p0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 37
    :cond_0
    return-void
.end method

.method public static setSoundOn(Z)V
    .locals 0
    .param p0, "isOn"    # Z

    .prologue
    .line 26
    sput-boolean p0, Lcom/fruitsmobile/basket/audio/SoundManager;->soundOn:Z

    .line 27
    return-void
.end method
