.class public Lcom/Wuzla/game/Block_AD/C_BlockMemory;
.super Ljava/lang/Object;
.source "C_BlockMemory.java"


# static fields
.field public static mMusicStatus:Z

.field public static mSoundStatus:Z


# instance fields
.field public BLOCK_A_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_A;

.field public BLOCK_B_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_B;

.field public BLOCK_MENU_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_MENU;

.field public BLOCK_OTHER_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;

.field public mBlockAttribBuff:[I

.field public mBlockCtrl:I

.field public mBlockDifficultyLevel:I

.field public mBlockDispX:I

.field public mBlockDispY:I

.field public mBlockEvaluateCount:I

.field public mBlockEvaluateFlag:I

.field public mBlockExit:Z

.field public mBlockFlag:I

.field public mBlockGameRunCtrl:I

.field public mBlockHitCtrlFlag:I

.field public mBlockHitEndFlag:I

.field public mBlockHitOneFlag:I

.field public mBlockLevel:I

.field public mBlockLevelBak:I

.field public mBlockLevelMax:I

.field public mBlockMoves:I

.field public mBlockPauseFlag:Z

.field public mBlockRunTime:I

.field public mBlockSetMusicFlag:I

.field public mBlockStar:I

.field public mBlockStarBak:I

.field public mBlockTouchX:I

.field public mBlockTouchY:I

.field public mBlockWorld:I

.field public mBlockWorldOneStar:I

.field public mBlockWorldTwoStar:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v3, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockExit:Z

    .line 43
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockCtrl:I

    .line 44
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockFlag:I

    .line 45
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockLevel:I

    .line 46
    const/16 v0, 0x23

    iput v0, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockLevelMax:I

    .line 47
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockLevelBak:I

    .line 48
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockMoves:I

    .line 49
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockStar:I

    .line 50
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockStarBak:I

    .line 51
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockRunTime:I

    .line 52
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockGameRunCtrl:I

    .line 53
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockDifficultyLevel:I

    .line 54
    iput-boolean v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockPauseFlag:Z

    .line 55
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockDispX:I

    .line 56
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockDispY:I

    .line 57
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockTouchX:I

    .line 58
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockTouchY:I

    .line 59
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockHitOneFlag:I

    .line 60
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockHitEndFlag:I

    .line 61
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockHitCtrlFlag:I

    .line 62
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockWorld:I

    .line 63
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockEvaluateFlag:I

    .line 64
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockEvaluateCount:I

    .line 65
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockWorldOneStar:I

    .line 66
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockWorldTwoStar:I

    .line 67
    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockSetMusicFlag:I

    .line 68
    sput-boolean v3, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mSoundStatus:Z

    .line 69
    sput-boolean v3, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mMusicStatus:Z

    .line 70
    const/16 v0, 0x70

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockAttribBuff:[I

    .line 71
    iput-object v2, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->BLOCK_A_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_A;

    .line 72
    iput-object v2, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->BLOCK_B_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_B;

    .line 73
    iput-object v2, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_MENU;

    .line 74
    iput-object v2, p0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;

    .line 76
    return-void
.end method
