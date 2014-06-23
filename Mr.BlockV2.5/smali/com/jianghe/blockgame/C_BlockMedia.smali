.class public Lcom/jianghe/blockgame/C_BlockMedia;
.super Ljava/lang/Object;
.source "C_BlockMedia.java"


# static fields
.field public static final FIX_BLACK:I = 0x5

.field public static final FIX_CHANGE:I = 0x6

.field public static final FIX_CLICK:I = 0x4

.field public static final FIX_HIT:I = 0x1

.field public static final FIX_MOVE:I = 0x2

.field public static final FIX_PRISEA:I = 0x3

.field public static final FIX_SEND:I = 0x7

.field public static final FIX_SHAKE:I

.field public static final SoundPlayChannel:[I

.field public static final SoundPlayMode:[Z

.field public static final SoundResIDTBL:[I

.field public static m_FIXControl:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/16 v5, 0xe

    const/4 v4, 0x1

    const/16 v3, 0xc

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/jianghe/blockgame/C_BlockMedia;->m_FIXControl:I

    .line 34
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jianghe/blockgame/C_BlockMedia;->SoundResIDTBL:[I

    .line 40
    const/16 v0, 0x19

    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jianghe/blockgame/C_BlockMedia;->SoundPlayMode:[Z

    .line 50
    const/16 v0, 0x19

    new-array v0, v0, [I

    .line 51
    aput v4, v0, v4

    aput v1, v0, v1

    aput v2, v0, v2

    const/4 v1, 0x4

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 52
    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    .line 54
    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v4, v0, v1

    aput v3, v0, v3

    const/16 v1, 0xd

    aput v1, v0, v5

    const/16 v1, 0xf

    .line 55
    aput v5, v0, v1

    const/16 v1, 0x10

    aput v3, v0, v1

    const/16 v1, 0x11

    aput v3, v0, v1

    const/16 v1, 0x12

    aput v3, v0, v1

    const/16 v1, 0x13

    aput v3, v0, v1

    const/16 v1, 0x14

    .line 57
    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x15

    aput v5, v0, v1

    .line 50
    sput-object v0, Lcom/jianghe/blockgame/C_BlockMedia;->SoundPlayChannel:[I

    .line 9
    return-void

    .line 34
    nop

    :array_0
    .array-data 4
        0x7f040008
        0x7f040004
        0x7f040005
        0x7f040006
        0x7f040003
        0x7f040001
        0x7f040002
        0x7f040007
        0x7f040006
        0x7f040003
        0xffff
    .end array-data

    .line 40
    :array_1
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Loms/GameEngine/C_Lib;)V
    .locals 0
    .param p1, "clib"    # Loms/GameEngine/C_Lib;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static Initialize()V
    .locals 4

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMedia;->SoundResIDTBL:[I

    aget v2, v2, v0

    const v3, 0xffff

    if-ne v2, v3, :cond_0

    .line 70
    return-void

    .line 68
    :cond_0
    sget-object v2, Lcom/jianghe/blockgame/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getMediaManager()Loms/GameEngine/MediaManager;

    move-result-object v2

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMedia;->SoundResIDTBL:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget v3, v3, v0

    invoke-virtual {v2, v3}, Loms/GameEngine/MediaManager;->addSound(I)V

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method public static PlaySound(I)V
    .locals 3
    .param p0, "SoundResID"    # I

    .prologue
    .line 74
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMedia;->SoundPlayMode:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/jianghe/blockgame/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getMediaManager()Loms/GameEngine/MediaManager;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockMedia;->SoundPlayChannel:[I

    aget v1, v1, p0

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMedia;->SoundResIDTBL:[I

    aget v2, v2, p0

    invoke-virtual {v0, v1, v2}, Loms/GameEngine/MediaManager;->CH_SoundPlay(II)V

    .line 76
    :cond_0
    return-void
.end method

.method public static PlaySoundLoop(I)V
    .locals 3
    .param p0, "SoundResID"    # I

    .prologue
    .line 86
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMedia;->SoundPlayMode:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/jianghe/blockgame/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getMediaManager()Loms/GameEngine/MediaManager;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockMedia;->SoundPlayChannel:[I

    aget v1, v1, p0

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMedia;->SoundResIDTBL:[I

    aget v2, v2, p0

    invoke-virtual {v0, v1, v2}, Loms/GameEngine/MediaManager;->CH_SoundPlayLoop(II)V

    .line 88
    :cond_0
    return-void
.end method

.method public static StopSound(I)V
    .locals 2
    .param p0, "SoundResID"    # I

    .prologue
    .line 80
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMedia;->SoundPlayMode:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/jianghe/blockgame/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getMediaManager()Loms/GameEngine/MediaManager;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockMedia;->SoundPlayChannel:[I

    aget v1, v1, p0

    invoke-virtual {v0, v1}, Loms/GameEngine/MediaManager;->CH_SoundStop(I)V

    .line 82
    :cond_0
    return-void
.end method
