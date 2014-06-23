.class Loms/GameEngine/GameSound$CSoundPlay;
.super Ljava/lang/Object;
.source "GameSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loms/GameEngine/GameSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CSoundPlay"
.end annotation


# instance fields
.field public nLoadedID:I

.field public nLoop:Z

.field public nPlayStart:J

.field public nPlayedTime:I

.field public nPlaying:Z

.field public nResID:I

.field public nSteamID:I

.field final synthetic this$0:Loms/GameEngine/GameSound;


# direct methods
.method public constructor <init>(Loms/GameEngine/GameSound;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Loms/GameEngine/GameSound$CSoundPlay;->this$0:Loms/GameEngine/GameSound;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0}, Loms/GameEngine/GameSound$CSoundPlay;->Reset()V

    return-void
.end method


# virtual methods
.method public GetPlayedTime()I
    .locals 4

    .prologue
    .line 76
    iget v2, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlayedTime:I

    if-nez v2, :cond_1

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 79
    .local v0, "curTime":J
    iget-wide v2, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlayStart:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 80
    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    .line 81
    :cond_0
    iget-wide v2, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlayStart:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 84
    .end local v0    # "curTime":J
    :goto_0
    return v2

    :cond_1
    iget v2, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlayedTime:I

    goto :goto_0
.end method

.method public Pause()V
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    .local v0, "curTime":J
    iget-wide v2, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlayStart:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 59
    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    .line 60
    :cond_0
    iget-wide v2, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlayStart:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    iput v2, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlayedTime:I

    .line 61
    return-void
.end method

.method public Reset()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Loms/GameEngine/GameSound$CSoundPlay;->nResID:I

    .line 33
    iput v2, p0, Loms/GameEngine/GameSound$CSoundPlay;->nSteamID:I

    .line 34
    iput v2, p0, Loms/GameEngine/GameSound$CSoundPlay;->nLoadedID:I

    .line 35
    iput-boolean v1, p0, Loms/GameEngine/GameSound$CSoundPlay;->nLoop:Z

    .line 36
    iput-boolean v1, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlaying:Z

    .line 38
    iput v1, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlayedTime:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlayStart:J

    .line 40
    return-void
.end method

.method public Resume()V
    .locals 4

    .prologue
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 67
    .local v0, "curTime":J
    iget v2, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlayedTime:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 68
    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    .line 69
    :cond_0
    iget v2, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlayedTime:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    iput-wide v2, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlayStart:J

    .line 70
    const/4 v2, 0x0

    iput v2, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlayedTime:I

    .line 71
    return-void
.end method

.method public Start()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlayStart:J

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlayedTime:I

    .line 46
    return-void
.end method

.method public Stop()V
    .locals 2

    .prologue
    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlayStart:J

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Loms/GameEngine/GameSound$CSoundPlay;->nPlayedTime:I

    .line 52
    return-void
.end method
