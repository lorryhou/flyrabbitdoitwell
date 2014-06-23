.class public Lcom/jianghe/blockgame/C_BlockMenu;
.super Ljava/lang/Object;
.source "C_BlockMenu.java"


# static fields
.field public static final BlockGameRunNumberACTA:[I

.field public static final BlockGameRunNumberACTB:[I

.field public static final BlockSelectNumberACTA:[I

.field public static final BlockSelectNumberACTB:[I

.field public static cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

.field public static final m_random:Ljava/util/Random;


# instance fields
.field private cBlockRecordData:Lcom/jianghe/blockgame/C_BlockRecordData;

.field private cLib:Loms/GameEngine/C_Lib;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 18
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->m_random:Ljava/util/Random;

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTA:[I

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTB:[I

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->BlockSelectNumberACTA:[I

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->BlockSelectNumberACTB:[I

    .line 16
    return-void

    .line 29
    :array_0
    .array-data 4
        0x7f020059
        0x7f02005a
        0x7f02005b
        0x7f02005c
        0x7f02005d
        0x7f02005e
        0x7f02005f
        0x7f020060
        0x7f020061
        0x7f020062
    .end array-data

    .line 34
    :array_1
    .array-data 4
        0x7f020066
        0x7f020067
        0x7f020068
        0x7f020069
        0x7f02006a
        0x7f02006b
        0x7f02006c
        0x7f02006d
        0x7f02006e
        0x7f02006f
    .end array-data

    .line 39
    :array_2
    .array-data 4
        0x7f02003b
        0x7f02003c
        0x7f02003d
        0x7f02003e
        0x7f02003f
        0x7f020040
        0x7f020041
        0x7f020042
        0x7f020043
        0x7f020044
    .end array-data

    .line 44
    :array_3
    .array-data 4
        0x7f020045
        0x7f020046
        0x7f020047
        0x7f020048
        0x7f020049
        0x7f02004a
        0x7f02004b
        0x7f02004c
        0x7f02004d
        0x7f02004e
    .end array-data
.end method

.method public constructor <init>(Loms/GameEngine/C_Lib;)V
    .locals 1
    .param p1, "clib"    # Loms/GameEngine/C_Lib;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    .line 25
    new-instance v0, Lcom/jianghe/blockgame/C_BlockMemory;

    invoke-direct {v0}, Lcom/jianghe/blockgame/C_BlockMemory;-><init>()V

    sput-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    .line 26
    new-instance v0, Lcom/jianghe/blockgame/C_BlockRecordData;

    invoke-direct {v0, p1}, Lcom/jianghe/blockgame/C_BlockRecordData;-><init>(Loms/GameEngine/C_Lib;)V

    iput-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockRecordData:Lcom/jianghe/blockgame/C_BlockRecordData;

    .line 27
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->InitEVENT()V

    .line 28
    return-void
.end method

.method private BlockGameInit()V
    .locals 6

    .prologue
    const/16 v5, 0x3c

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 184
    iget-object v1, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v1}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v1

    const v2, 0x7f020156

    invoke-virtual {v1, v2, v3, v3}, Loms/GameEngine/GameCanvas;->LoadText(III)V

    .line 185
    iget-object v1, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v1, v5}, Loms/GameEngine/C_Lib;->ViewOpen(I)V

    .line 188
    sget-object v1, Lcom/jianghe/blockgame/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v1}, Loms/GameEngine/C_Lib;->GetActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/MoreGames/API/CCHomeAds;->loadHomeAds(Landroid/app/Activity;)V

    .line 191
    iget-object v1, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v1}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v1

    const v2, 0x7f040009

    invoke-virtual {v1, v4, v2}, Loms/GameEngine/GameCanvas;->InitACT(II)V

    .line 192
    const/16 v0, 0x3c

    .line 195
    .local v0, "RunTime":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 196
    if-nez v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v1, v5}, Loms/GameEngine/C_Lib;->ViewDark(I)V

    .line 201
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v4, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockCtrl:I

    .line 202
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v3, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockSetMusicFlag:I

    .line 203
    iget-object v1, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v1}, Loms/GameEngine/C_Lib;->getMediaManager()Loms/GameEngine/MediaManager;

    move-result-object v1

    const/high16 v2, 0x7f040000

    invoke-virtual {v1, v2, v4}, Loms/GameEngine/MediaManager;->mediaPlay(IZ)V

    .line 205
    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v1}, Loms/GameEngine/C_Lib;->WaitBLK()V

    goto :goto_0
.end method

.method private BlockGameRun()V
    .locals 9

    .prologue
    const/16 v8, 0x3c

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 438
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorld:I

    if-nez v2, :cond_2

    .line 439
    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v2

    const v3, 0x7f020153

    invoke-virtual {v2, v3, v4, v4}, Loms/GameEngine/GameCanvas;->LoadText(III)V

    .line 444
    :goto_0
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v5, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockFlag:I

    .line 445
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v4, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitCtrlFlag:I

    .line 446
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    const v3, 0xffff

    iput v3, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    .line 447
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput-boolean v4, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockPauseFlag:Z

    .line 448
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v4, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    .line 449
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v4, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStar:I

    .line 450
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v4, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStarBak:I

    .line 451
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v4, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockGameRunCtrl:I

    .line 452
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    iput v3, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevelBak:I

    .line 453
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunWriteBottom()V

    .line 454
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunWriteAct()V

    .line 455
    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2, v8}, Loms/GameEngine/C_Lib;->ViewOpen(I)V

    .line 456
    const/4 v0, 0x0

    .line 459
    .local v0, "gcTime":I
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunBlockInitFun()V

    .line 460
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunBlockPropInitFun()V

    .line 461
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunPauseInitFun()V

    .line 462
    invoke-direct {p0, v4}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunOtherInitFun(I)V

    .line 463
    invoke-direct {p0, v5}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunOtherInitFun(I)V

    .line 464
    invoke-direct {p0, v7}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunOtherInitFun(I)V

    .line 465
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorld:I

    if-nez v2, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunHelpLeveInitFun()V

    .line 467
    :cond_0
    sget-boolean v2, Lcom/jianghe/blockgame/BlockPro;->adScreenStatus:Z

    if-nez v2, :cond_3

    .line 468
    invoke-static {v4}, Lcom/jianghe/blockgame/C_OPhoneApp;->setAdVisibility(Z)V

    .line 471
    :goto_1
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    const/16 v4, 0x49

    aget v3, v3, v4

    iput v3, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockEvaluateFlag:I

    .line 472
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    const/16 v4, 0x4a

    aget v3, v3, v4

    iput v3, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockEvaluateCount:I

    .line 476
    :cond_1
    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->ClearACT()V

    .line 477
    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v2

    invoke-virtual {v2}, Loms/GameEngine/InputInterface;->ReadTouch()V

    .line 478
    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v2

    invoke-virtual {v2}, Loms/GameEngine/InputInterface;->ReadKeyBoard()V

    .line 479
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "gcTime":I
    .local v1, "gcTime":I
    const/16 v2, 0x190

    if-le v0, v2, :cond_6

    .line 481
    const/4 v0, 0x0

    .line 482
    .end local v1    # "gcTime":I
    .restart local v0    # "gcTime":I
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 484
    :goto_2
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRun()V

    .line 485
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunWriteBottom()V

    .line 498
    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->WaitBLK()V

    .line 499
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockFlag:I

    if-nez v2, :cond_4

    .line 518
    :goto_3
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->ExitEVENT()V

    .line 520
    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2, v8}, Loms/GameEngine/C_Lib;->ViewDark(I)V

    .line 521
    sget-object v2, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    const/16 v3, 0x49

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockEvaluateFlag:I

    aput v4, v2, v3

    .line 522
    sget-object v2, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    const/16 v3, 0x4a

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockEvaluateCount:I

    aput v4, v2, v3

    .line 523
    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockRecordData:Lcom/jianghe/blockgame/C_BlockRecordData;

    invoke-virtual {v2}, Lcom/jianghe/blockgame/C_BlockRecordData;->UpdataRecord()V

    .line 524
    return-void

    .line 441
    .end local v0    # "gcTime":I
    :cond_2
    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v2

    const v3, 0x7f020154

    invoke-virtual {v2, v3, v4, v4}, Loms/GameEngine/GameCanvas;->LoadText(III)V

    goto/16 :goto_0

    .line 470
    .restart local v0    # "gcTime":I
    :cond_3
    invoke-static {v5}, Lcom/jianghe/blockgame/C_OPhoneApp;->setAdVisibility(Z)V

    goto :goto_1

    .line 501
    :cond_4
    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v2

    invoke-virtual {v2, v6}, Loms/GameEngine/InputInterface;->CHKUpKey(I)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockGameRunCtrl:I

    if-nez v2, :cond_5

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-boolean v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockPauseFlag:Z

    if-nez v2, :cond_5

    .line 503
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput-boolean v5, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockPauseFlag:Z

    .line 504
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/jianghe/blockgame/C_BlockMenu;->GameStartRunMenuInitFun(I)V

    .line 505
    invoke-direct {p0, v6}, Lcom/jianghe/blockgame/C_BlockMenu;->GameStartRunMenuInitFun(I)V

    .line 506
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/jianghe/blockgame/C_BlockMenu;->GameStartRunMenuInitFun(I)V

    .line 507
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->MenuInitSound01Fun()V

    .line 508
    sget-boolean v2, Lcom/jianghe/blockgame/BlockPro;->adScreenStatus:Z

    if-nez v2, :cond_5

    .line 509
    invoke-static {v5}, Lcom/jianghe/blockgame/C_OPhoneApp;->setAdVisibility(Z)V

    .line 511
    :cond_5
    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v2

    invoke-virtual {v2, v6}, Loms/GameEngine/InputInterface;->CHKUpKey(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-boolean v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockPauseFlag:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockGameRunCtrl:I

    if-ge v2, v6, :cond_1

    .line 513
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v7, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockCtrl:I

    .line 514
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v5, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockSetMusicFlag:I

    goto/16 :goto_3

    .end local v0    # "gcTime":I
    .restart local v1    # "gcTime":I
    :cond_6
    move v0, v1

    .end local v1    # "gcTime":I
    .restart local v0    # "gcTime":I
    goto/16 :goto_2
.end method

.method private BlockGameSelect()V
    .locals 7

    .prologue
    const/16 v6, 0x3c

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 286
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f020152

    invoke-virtual {v0, v1, v2, v2}, Loms/GameEngine/GameCanvas;->LoadText(III)V

    .line 289
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0, v6}, Loms/GameEngine/C_Lib;->ViewOpen(I)V

    .line 290
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput-boolean v2, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockPauseFlag:Z

    .line 291
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v2, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockGameRunCtrl:I

    .line 292
    invoke-direct {p0, v5}, Lcom/jianghe/blockgame/C_BlockMenu;->GameStartRunMenuInitFun(I)V

    .line 293
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameSelectDifficultyInitFun()V

    .line 294
    invoke-direct {p0, v2}, Lcom/jianghe/blockgame/C_BlockMenu;->GameSelectLevelInitFun(I)V

    .line 295
    invoke-direct {p0, v4}, Lcom/jianghe/blockgame/C_BlockMenu;->GameSelectLevelInitFun(I)V

    .line 296
    invoke-direct {p0, v5}, Lcom/jianghe/blockgame/C_BlockMenu;->GameSelectLevelInitFun(I)V

    .line 297
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameSelectLevelInitFun(I)V

    .line 298
    invoke-direct {p0, v3}, Lcom/jianghe/blockgame/C_BlockMenu;->GameSelectLevelInitFun(I)V

    .line 299
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameSelectLevelInitFun(I)V

    .line 300
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameSelectLevelInitFun(I)V

    .line 301
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameSelectLevelInitFun(I)V

    .line 302
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameSelectLevelInitFun(I)V

    .line 303
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v4, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockFlag:I

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->ClearACT()V

    .line 306
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0}, Loms/GameEngine/InputInterface;->ReadTouch()V

    .line 307
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0}, Loms/GameEngine/InputInterface;->ReadKeyBoard()V

    .line 308
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameSelectRun()V

    .line 309
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->WaitBLK()V

    .line 310
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockFlag:I

    if-nez v0, :cond_1

    .line 320
    :goto_0
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->ExitEVENT()V

    .line 323
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0, v6}, Loms/GameEngine/C_Lib;->ViewDark(I)V

    .line 324
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0, v3}, Loms/GameEngine/InputInterface;->CHKUpKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v3, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockCtrl:I

    goto :goto_0
.end method

.method private BlockGameStart()V
    .locals 6

    .prologue
    const/16 v5, 0x3c

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f020151

    invoke-virtual {v0, v1, v2, v2}, Loms/GameEngine/GameCanvas;->LoadText(III)V

    .line 211
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0, v5}, Loms/GameEngine/C_Lib;->ViewOpen(I)V

    .line 212
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v3, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockFlag:I

    .line 213
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v2, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockDifficultyLevel:I

    .line 214
    invoke-direct {p0, v2}, Lcom/jianghe/blockgame/C_BlockMenu;->GameStartRunMenuInitFun(I)V

    .line 215
    invoke-direct {p0, v3}, Lcom/jianghe/blockgame/C_BlockMenu;->GameStartRunMenuInitFun(I)V

    .line 216
    invoke-direct {p0, v4}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunOtherInitFun(I)V

    .line 217
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunOtherInitFun(I)V

    .line 218
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameStartRunInitSoundFun()V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->ClearACT()V

    .line 221
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0}, Loms/GameEngine/InputInterface;->ReadTouch()V

    .line 222
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0}, Loms/GameEngine/InputInterface;->ReadKeyBoard()V

    .line 223
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameStartRun()V

    .line 224
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->WaitBLK()V

    .line 225
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockFlag:I

    if-nez v0, :cond_1

    .line 237
    :goto_0
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->ExitEVENT()V

    .line 239
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0, v5}, Loms/GameEngine/C_Lib;->ViewDark(I)V

    .line 240
    invoke-static {}, Lcom/jianghe/blockgame/C_BlockRecordData;->SaveRecord()V

    .line 242
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0, v4}, Loms/GameEngine/InputInterface;->CHKUpKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput-boolean v2, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockExit:Z

    goto :goto_0
.end method

.method private BlockGameWorld()V
    .locals 7

    .prologue
    const/16 v6, 0x48

    const/16 v5, 0x3c

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1406
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f020152

    invoke-virtual {v0, v1, v3, v3}, Loms/GameEngine/GameCanvas;->LoadText(III)V

    .line 1408
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0, v5}, Loms/GameEngine/C_Lib;->ViewOpen(I)V

    .line 1409
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameWorldGetStar()V

    .line 1410
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v4, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockFlag:I

    .line 1411
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v3, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockDifficultyLevel:I

    .line 1412
    sget-object v0, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    const/16 v1, 0x23

    aget v0, v0, v1

    const/16 v1, 0x100

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldOneStar:I

    if-lt v0, v5, :cond_1

    .line 1413
    :cond_0
    sget-object v0, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    aput v4, v0, v6

    .line 1414
    sget-object v0, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    const/16 v1, 0x24

    aget v2, v0, v1

    or-int/lit16 v2, v2, 0x100

    aput v2, v0, v1

    .line 1415
    sget-object v0, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    const/16 v1, 0x25

    aget v2, v0, v1

    or-int/lit16 v2, v2, 0x100

    aput v2, v0, v1

    .line 1416
    sget-object v0, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    const/16 v1, 0x26

    aget v2, v0, v1

    or-int/lit16 v2, v2, 0x100

    aput v2, v0, v1

    .line 1418
    :cond_1
    invoke-direct {p0, v3}, Lcom/jianghe/blockgame/C_BlockMenu;->GameWorldRunWorldInitFun(I)V

    .line 1419
    sget-object v0, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    aget v0, v0, v6

    if-ne v0, v4, :cond_3

    .line 1420
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameWorldRunWorldInitFun(I)V

    .line 1423
    :goto_0
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameStartRunMenuInitFun(I)V

    .line 1425
    :cond_2
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->ClearACT()V

    .line 1426
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0}, Loms/GameEngine/InputInterface;->ReadTouch()V

    .line 1427
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0}, Loms/GameEngine/InputInterface;->ReadKeyBoard()V

    .line 1428
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameWorldRun()V

    .line 1429
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameWorldWriteACT()V

    .line 1430
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->WaitBLK()V

    .line 1431
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockFlag:I

    if-nez v0, :cond_4

    .line 1440
    :goto_1
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->ExitEVENT()V

    .line 1441
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0, v5}, Loms/GameEngine/C_Lib;->ViewDark(I)V

    .line 1443
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v3, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockSetMusicFlag:I

    .line 1444
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockRecordData:Lcom/jianghe/blockgame/C_BlockRecordData;

    invoke-virtual {v0}, Lcom/jianghe/blockgame/C_BlockRecordData;->UpdataRecord()V

    .line 1445
    return-void

    .line 1422
    :cond_3
    invoke-direct {p0, v4}, Lcom/jianghe/blockgame/C_BlockMenu;->GameWorldRunWorldInitFun(I)V

    goto :goto_0

    .line 1433
    :cond_4
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Loms/GameEngine/InputInterface;->CHKUpKey(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1436
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v4, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockCtrl:I

    goto :goto_1
.end method

.method private BlockGameWorldGetStar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1490
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v3, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldOneStar:I

    .line 1491
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v3, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldTwoStar:I

    .line 1492
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x24

    if-lt v1, v2, :cond_0

    .line 1496
    const/16 v1, 0x24

    :goto_1
    const/16 v2, 0x48

    if-lt v1, v2, :cond_1

    .line 1500
    return-void

    .line 1493
    :cond_0
    sget-object v2, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    aget v2, v2, v1

    and-int/lit16 v0, v2, 0xff

    .line 1494
    .local v0, "Star":I
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldOneStar:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldOneStar:I

    .line 1492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1497
    .end local v0    # "Star":I
    :cond_1
    sget-object v2, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    aget v2, v2, v1

    and-int/lit16 v0, v2, 0xff

    .line 1498
    .restart local v0    # "Star":I
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldTwoStar:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldTwoStar:I

    .line 1496
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private BlockGameWorldWriteACT()V
    .locals 6

    .prologue
    const/16 v5, 0x10e

    const/4 v3, 0x6

    const/16 v4, 0x9

    .line 1504
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f0200b0

    const/16 v2, 0x92

    invoke-virtual {v0, v1, v5, v2, v3}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1505
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f0200b1

    const/16 v2, 0x15a

    invoke-virtual {v0, v1, v5, v2, v3}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1506
    sget-object v0, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    const/16 v1, 0x48

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1507
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameWorldWriteOneStar()V

    .line 1508
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameWorldWriteTwoStar()V

    .line 1516
    :goto_0
    return-void

    .line 1511
    :cond_0
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameWorldWriteOneStar()V

    .line 1512
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f0200af

    const/16 v2, 0x66

    const/16 v3, 0x14c

    invoke-virtual {v0, v1, v2, v3, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1513
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f0200b2

    const/16 v2, 0x68

    const/16 v3, 0x1aa

    invoke-virtual {v0, v1, v2, v3, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1514
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f0200be

    const/16 v2, 0xba

    const/16 v3, 0x158

    invoke-virtual {v0, v1, v2, v3, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto :goto_0
.end method

.method private BlockGameWorldWriteOneStar()V
    .locals 7

    .prologue
    const/16 v6, 0x60

    const/16 v2, 0xa

    const/16 v3, 0x70

    const/16 v5, 0x68

    const/16 v4, 0x9

    .line 1521
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldOneStar:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 1522
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockCode;->BlockGameWorldNumACT:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldOneStar:I

    rem-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x64

    aget v1, v1, v2

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v5, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1523
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockCode;->BlockGameWorldNumACT:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldOneStar:I

    rem-int/lit8 v2, v2, 0x64

    div-int/lit8 v2, v2, 0xa

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5, v6, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1524
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockCode;->BlockGameWorldNumACT:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldOneStar:I

    rem-int/lit8 v2, v2, 0xa

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5, v3, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1533
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f0200bd

    const/16 v2, 0x66

    const/16 v3, 0x7e

    invoke-virtual {v0, v1, v2, v3, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1534
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f0200b4

    const/16 v2, 0x8c

    invoke-virtual {v0, v1, v5, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1535
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f0200bb

    const/16 v2, 0x9c

    invoke-virtual {v0, v1, v5, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1536
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f0200b3

    const/16 v2, 0xac

    invoke-virtual {v0, v1, v5, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1537
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f0200b2

    const/16 v2, 0xc0

    invoke-virtual {v0, v1, v5, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1539
    return-void

    .line 1526
    :cond_1
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldOneStar:I

    if-lt v0, v2, :cond_2

    .line 1527
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockCode;->BlockGameWorldNumACT:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldOneStar:I

    rem-int/lit8 v2, v2, 0x64

    div-int/lit8 v2, v2, 0xa

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5, v6, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1528
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockCode;->BlockGameWorldNumACT:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldOneStar:I

    rem-int/lit8 v2, v2, 0xa

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5, v3, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto :goto_0

    .line 1530
    :cond_2
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldOneStar:I

    if-ge v0, v2, :cond_0

    .line 1531
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockCode;->BlockGameWorldNumACT:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldOneStar:I

    rem-int/lit8 v2, v2, 0xa

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5, v3, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto/16 :goto_0
.end method

.method private BlockGameWorldWriteTwoStar()V
    .locals 7

    .prologue
    const/16 v6, 0x12c

    const/16 v2, 0xa

    const/16 v3, 0x13c

    const/16 v5, 0x68

    const/16 v4, 0x9

    .line 1544
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldTwoStar:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 1545
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockCode;->BlockGameWorldNumACT:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldTwoStar:I

    rem-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x64

    aget v1, v1, v2

    const/16 v2, 0x11c

    invoke-virtual {v0, v1, v5, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1546
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockCode;->BlockGameWorldNumACT:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldTwoStar:I

    rem-int/lit8 v2, v2, 0x64

    div-int/lit8 v2, v2, 0xa

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5, v6, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1547
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockCode;->BlockGameWorldNumACT:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldTwoStar:I

    rem-int/lit8 v2, v2, 0xa

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5, v3, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1556
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f0200bd

    const/16 v2, 0x66

    const/16 v3, 0x14a

    invoke-virtual {v0, v1, v2, v3, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1557
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f0200b4

    const/16 v2, 0x158

    invoke-virtual {v0, v1, v5, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1558
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f0200bb

    const/16 v2, 0x168

    invoke-virtual {v0, v1, v5, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1559
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f0200b3

    const/16 v2, 0x178

    invoke-virtual {v0, v1, v5, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1560
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f0200b2

    const/16 v2, 0x18c

    invoke-virtual {v0, v1, v5, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1562
    return-void

    .line 1549
    :cond_1
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldTwoStar:I

    if-lt v0, v2, :cond_2

    .line 1550
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockCode;->BlockGameWorldNumACT:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldTwoStar:I

    rem-int/lit8 v2, v2, 0x64

    div-int/lit8 v2, v2, 0xa

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5, v6, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 1551
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockCode;->BlockGameWorldNumACT:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldTwoStar:I

    rem-int/lit8 v2, v2, 0xa

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5, v3, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto :goto_0

    .line 1553
    :cond_2
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldTwoStar:I

    if-ge v0, v2, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockCode;->BlockGameWorldNumACT:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorldTwoStar:I

    rem-int/lit8 v2, v2, 0xa

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5, v3, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto/16 :goto_0
.end method

.method private ExecEVENT()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 128
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockGameRunCtrl:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockGameRunCtrl:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 129
    :cond_0
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-boolean v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockPauseFlag:Z

    if-nez v1, :cond_1

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x70

    if-lt v0, v1, :cond_2

    .line 136
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_4

    .line 142
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v3, :cond_6

    .line 150
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    const/16 v1, 0xa

    if-lt v0, v1, :cond_8

    .line 156
    return-void

    .line 131
    :cond_2
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v1, :cond_3

    .line 132
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jianghe/blockgame/C_BLOCK_A;->ExecEVT(Loms/GameEngine/GameCanvas;)V

    .line 133
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jianghe/blockgame/C_BLOCK_A;->ExecRUN(Loms/GameEngine/GameCanvas;)V

    .line 130
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_4
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v1, :cond_5

    .line 138
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jianghe/blockgame/C_BLOCK_B;->ExecEVT(Loms/GameEngine/GameCanvas;)V

    .line 139
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jianghe/blockgame/C_BLOCK_B;->ExecRUN(Loms/GameEngine/GameCanvas;)V

    .line 136
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_6
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v1, :cond_7

    .line 144
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->ExecEVT(Loms/GameEngine/GameCanvas;)V

    .line 145
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->ExecRUN(Loms/GameEngine/GameCanvas;)V

    .line 142
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 151
    :cond_8
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v1, :cond_9

    .line 152
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jianghe/blockgame/C_BLOCK_MENU;->ExecEVT(Loms/GameEngine/GameCanvas;)V

    .line 153
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jianghe/blockgame/C_BLOCK_MENU;->ExecRUN(Loms/GameEngine/GameCanvas;)V

    .line 150
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method private ExecTouch()V
    .locals 10

    .prologue
    const/16 v9, 0x100

    .line 1143
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    if-eqz v0, :cond_0

    .line 1145
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v0, 0x70

    if-lt v7, v0, :cond_1

    .line 1159
    .end local v7    # "i":I
    :cond_0
    return-void

    .line 1146
    .restart local v7    # "i":I
    :cond_1
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v0, v0, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-nez v0, :cond_3

    .line 1145
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1147
    :cond_3
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    and-int/lit16 v0, v0, 0x100

    if-ne v0, v9, :cond_2

    .line 1148
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    const/16 v0, 0x14

    if-ge v8, v0, :cond_2

    .line 1149
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v0, v0, v8

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v0, v0, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-nez v0, :cond_5

    .line 1148
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1150
    :cond_5
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v0, v0, v8

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    and-int/lit16 v0, v0, 0x100

    if-ne v0, v9, :cond_4

    .line 1151
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v1, Loms/GameEngine/GameEvent$EventDEF;->ACTIdx:I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v2, Loms/GameEngine/GameEvent$EventDEF;->XVal:I

    shr-int/lit8 v2, v2, 0x10

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v3, v3, Loms/GameEngine/GameEvent$EventDEF;->YVal:I

    shr-int/lit8 v3, v3, 0x10

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v4, v4, Loms/GameEngine/GameEvent$EventDEF;->ACTIdx:I

    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v5, v5, v8

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v5, v5, Loms/GameEngine/GameEvent$EventDEF;->XVal:I

    shr-int/lit8 v5, v5, 0x10

    sget-object v6, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v6, v6, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v6, v6, v8

    iget-object v6, v6, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v6, v6, Loms/GameEngine/GameEvent$EventDEF;->YVal:I

    shr-int/lit8 v6, v6, 0x10

    invoke-virtual/range {v0 .. v6}, Loms/GameEngine/GameCanvas;->CHKACTTouch(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1153
    invoke-direct {p0, v7, v8}, Lcom/jianghe/blockgame/C_BlockMenu;->ExecTouchTypeFun(II)V

    goto :goto_2
.end method

.method private ExecTouchTypeFun(II)V
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x2

    const v7, 0xffff

    const/4 v6, 0x0

    .line 1162
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    iget v0, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockType:I

    .line 1163
    .local v0, "BlockType":I
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, p2

    iget v2, v4, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropType:I

    .line 1164
    .local v2, "PropType":I
    packed-switch v2, :pswitch_data_0

    .line 1367
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1166
    :pswitch_1
    if-nez v0, :cond_0

    .line 1167
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockIndex:I

    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockPlace:I

    invoke-direct {p0, v4, v5}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunBlockFindEvtPlace01Fun(II)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 1168
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/jianghe/blockgame/C_BLOCK_B;->EVTCLR()V

    .line 1169
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    invoke-virtual {v4, v8, v6}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 1170
    invoke-static {v9}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    .line 1172
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    if-ne v4, p1, :cond_0

    .line 1173
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v7, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    goto :goto_0

    .line 1178
    :pswitch_2
    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 1179
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockIndex:I

    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockPlace:I

    invoke-direct {p0, v4, v5}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunBlockFindEvtPlace01Fun(II)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 1180
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/jianghe/blockgame/C_BLOCK_B;->EVTCLR()V

    .line 1181
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    invoke-virtual {v4, v8, v6}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 1182
    invoke-static {v9}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    .line 1184
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    if-ne v4, p1, :cond_0

    .line 1185
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v7, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    goto :goto_0

    .line 1190
    :pswitch_3
    if-ne v0, v8, :cond_0

    .line 1191
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockIndex:I

    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockPlace:I

    invoke-direct {p0, v4, v5}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunBlockFindEvtPlace01Fun(II)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 1192
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/jianghe/blockgame/C_BLOCK_B;->EVTCLR()V

    .line 1193
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    invoke-virtual {v4, v8, v6}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 1194
    invoke-static {v9}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    .line 1196
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    if-ne v4, p1, :cond_0

    .line 1197
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v7, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    goto/16 :goto_0

    .line 1203
    :pswitch_4
    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    .line 1204
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockIndex:I

    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockPlace:I

    invoke-direct {p0, v4, v5}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunBlockFindEvtPlace01Fun(II)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 1205
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/jianghe/blockgame/C_BLOCK_B;->EVTCLR()V

    .line 1206
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    invoke-virtual {v4, v8, v6}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 1207
    invoke-static {v9}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    .line 1209
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    if-ne v4, p1, :cond_0

    .line 1210
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v7, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    goto/16 :goto_0

    .line 1215
    :pswitch_5
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/jianghe/blockgame/C_BLOCK_B;->EVTCLR()V

    .line 1216
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    iput v6, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockChangeType:I

    .line 1217
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    const/16 v5, 0x8

    invoke-virtual {v4, v5, v6}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 1218
    invoke-static {v10}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    goto/16 :goto_0

    .line 1222
    :pswitch_6
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/jianghe/blockgame/C_BLOCK_B;->EVTCLR()V

    .line 1223
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    const/4 v5, 0x1

    iput v5, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockChangeType:I

    .line 1224
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    const/16 v5, 0x8

    invoke-virtual {v4, v5, v6}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 1225
    invoke-static {v10}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    goto/16 :goto_0

    .line 1229
    :pswitch_7
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/jianghe/blockgame/C_BLOCK_B;->EVTCLR()V

    .line 1230
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    iput v8, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockChangeType:I

    .line 1231
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    const/16 v5, 0x8

    invoke-virtual {v4, v5, v6}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 1232
    invoke-static {v10}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    goto/16 :goto_0

    .line 1236
    :pswitch_8
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, p2

    invoke-virtual {v4}, Lcom/jianghe/blockgame/C_BLOCK_B;->EVTCLR()V

    .line 1237
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    const/4 v5, 0x3

    iput v5, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockChangeType:I

    .line 1238
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    const/16 v5, 0x8

    invoke-virtual {v4, v5, v6}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 1239
    invoke-static {v10}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    goto/16 :goto_0

    .line 1243
    :pswitch_9
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, p2

    iget v1, v4, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropAttrib:I

    .line 1244
    .local v1, "PropAttrib":I
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    iput p2, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockSendStart:I

    .line 1245
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v4, 0x14

    if-lt v3, v4, :cond_1

    .line 1255
    :goto_2
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v6}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 1256
    const/4 v4, 0x7

    invoke-static {v4}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    goto/16 :goto_0

    .line 1246
    :cond_1
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v4, v4, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v4, :cond_2

    .line 1247
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropType:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    .line 1248
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropAttrib:I

    if-ne v4, v1, :cond_2

    .line 1249
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    iput v3, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockSendEnd:I

    goto :goto_2

    .line 1245
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1284
    .end local v1    # "PropAttrib":I
    .end local v3    # "i":I
    :pswitch_a
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, p2

    iget v1, v4, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropAttrib:I

    .line 1285
    .restart local v1    # "PropAttrib":I
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    iput p2, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockSendStart:I

    .line 1286
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    const/16 v4, 0x14

    if-lt v3, v4, :cond_3

    .line 1296
    :goto_4
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v6}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 1297
    const/4 v4, 0x7

    invoke-static {v4}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    goto/16 :goto_0

    .line 1287
    :cond_3
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v4, v4, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v4, :cond_4

    .line 1288
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropType:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_4

    .line 1289
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropAttrib:I

    if-ne v4, v1, :cond_4

    .line 1290
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    iput v3, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockSendEnd:I

    goto :goto_4

    .line 1286
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1325
    .end local v1    # "PropAttrib":I
    .end local v3    # "i":I
    :pswitch_b
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, p2

    iget v1, v4, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropAttrib:I

    .line 1326
    .restart local v1    # "PropAttrib":I
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    iput p2, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockSendStart:I

    .line 1327
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    const/16 v4, 0x14

    if-lt v3, v4, :cond_5

    .line 1337
    :goto_6
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    const/16 v5, 0x9

    invoke-virtual {v4, v5, v6}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 1338
    const/4 v4, 0x7

    invoke-static {v4}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    goto/16 :goto_0

    .line 1328
    :cond_5
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v4, v4, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v4, :cond_6

    .line 1329
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropType:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_6

    .line 1330
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v4, v4, v3

    iget v4, v4, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropAttrib:I

    if-ne v4, v1, :cond_6

    .line 1331
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, p1

    iput v3, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockSendEnd:I

    goto :goto_6

    .line 1327
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private ExitEVENT()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    .line 110
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    if-eqz v1, :cond_0

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x70

    if-lt v0, v1, :cond_4

    .line 114
    .end local v0    # "i":I
    :cond_0
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    if-eqz v1, :cond_1

    .line 115
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-lt v0, v2, :cond_5

    .line 118
    .end local v0    # "i":I
    :cond_1
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    if-eqz v1, :cond_2

    .line 119
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_6

    .line 122
    .end local v0    # "i":I
    :cond_2
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    if-eqz v1, :cond_3

    .line 123
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-lt v0, v2, :cond_7

    .line 126
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 112
    .restart local v0    # "i":I
    :cond_4
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jianghe/blockgame/C_BLOCK_A;->EVTCLR()V

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_5
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jianghe/blockgame/C_BLOCK_B;->EVTCLR()V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_6
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVTCLR()V

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 124
    :cond_7
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVTCLR()V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private GameRun()V
    .locals 5

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->ExecEVENT()V

    .line 527
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->ShowEVENT()V

    .line 528
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->ExecTouch()V

    .line 529
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunTouch()V

    .line 530
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunWriteAct()V

    .line 531
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunWriteStarMoves()V

    .line 532
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-boolean v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockPauseFlag:Z

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f020051

    const/16 v2, 0xa0

    const/16 v3, 0xf0

    const/16 v4, 0x9

    invoke-virtual {v0, v1, v2, v3, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 534
    :cond_0
    return-void
.end method

.method private GameRun00()V
    .locals 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 618
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockRunTime:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockRunTime:I

    .line 619
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockRunTime:I

    if-nez v1, :cond_1

    .line 620
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v4, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockGameRunCtrl:I

    .line 621
    invoke-direct {p0, v8}, Lcom/jianghe/blockgame/C_BlockMenu;->GameStartRunMenuInitFun(I)V

    .line 622
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/jianghe/blockgame/C_BlockMenu;->GameStartRunMenuInitFun(I)V

    .line 623
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/jianghe/blockgame/C_BlockMenu;->GameStartRunMenuInitFun(I)V

    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, "mMoves":I
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorld:I

    if-nez v1, :cond_2

    .line 626
    sget-object v1, Lcom/jianghe/blockgame/C_BlockData;->BlockGameRunStarNum:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    aget v0, v1, v2

    .line 627
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    .line 628
    sget-object v1, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    const/16 v2, 0x48

    aput v5, v1, v2

    .line 629
    sget-object v1, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    const/16 v2, 0x24

    aget v3, v1, v2

    or-int/lit16 v3, v3, 0x100

    aput v3, v1, v2

    .line 634
    :cond_0
    :goto_0
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    if-ge v1, v0, :cond_3

    .line 635
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v7, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStarBak:I

    .line 653
    .end local v0    # "mMoves":I
    :cond_1
    :goto_1
    return-void

    .line 633
    .restart local v0    # "mMoves":I
    :cond_2
    sget-object v1, Lcom/jianghe/blockgame/C_BlockData;->BlockGameRunStarNumA:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    aget v0, v1, v2

    goto :goto_0

    .line 639
    :cond_3
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    sub-int v0, v1, v0

    .line 640
    if-ge v0, v4, :cond_4

    .line 641
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v7, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStarBak:I

    goto :goto_1

    .line 642
    :cond_4
    if-ge v0, v6, :cond_5

    .line 643
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v6, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStarBak:I

    goto :goto_1

    .line 644
    :cond_5
    if-ge v0, v8, :cond_6

    .line 645
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    const/4 v2, 0x3

    iput v2, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStarBak:I

    goto :goto_1

    .line 646
    :cond_6
    const/16 v1, 0x8

    if-ge v0, v1, :cond_7

    .line 647
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v4, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStarBak:I

    goto :goto_1

    .line 649
    :cond_7
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v5, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStarBak:I

    goto :goto_1
.end method

.method private GameRun01()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 656
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockRunTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockRunTime:I

    .line 657
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockRunTime:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 658
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    const/4 v2, 0x0

    iput v2, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockRunTime:I

    .line 659
    :cond_0
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockRunTime:I

    if-nez v1, :cond_2

    .line 660
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStar:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStar:I

    .line 661
    invoke-static {v5}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    .line 662
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStar:I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStarBak:I

    if-lt v1, v2, :cond_2

    .line 663
    sget-object v1, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorld:I

    mul-int/lit8 v2, v2, 0x24

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    add-int/2addr v2, v3

    aget v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 664
    .local v0, "mStar":I
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStar:I

    if-lt v1, v0, :cond_1

    .line 665
    sget-object v1, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorld:I

    mul-int/lit8 v2, v2, 0x24

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    add-int/2addr v2, v3

    aget v3, v1, v2

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStar:I

    or-int/2addr v3, v4

    aput v3, v1, v2

    .line 666
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevelMax:I

    if-ge v1, v2, :cond_1

    .line 667
    sget-object v1, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorld:I

    mul-int/lit8 v2, v2, 0x24

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    aget v3, v1, v2

    or-int/lit16 v3, v3, 0x100

    aput v3, v1, v2

    .line 669
    :cond_1
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v5, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockGameRunCtrl:I

    .line 672
    .end local v0    # "mStar":I
    :cond_2
    return-void
.end method

.method private GameRun02()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x5

    .line 674
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v1, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockRunTime:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockRunTime:I

    .line 675
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockRunTime:I

    if-nez v0, :cond_0

    .line 676
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockEvaluateFlag:I

    if-nez v0, :cond_2

    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevelBak:I

    if-lt v0, v2, :cond_2

    .line 677
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v1, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockEvaluateCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockEvaluateCount:I

    .line 678
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockEvaluateCount:I

    if-lt v0, v2, :cond_1

    .line 679
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockEvaluateCount:I

    .line 680
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameStartRunMenuInitFun(I)V

    .line 681
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameStartRunMenuInitFun(I)V

    .line 682
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameStartRunMenuInitFun(I)V

    .line 683
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v2, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockGameRunCtrl:I

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v4, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockRunTime:I

    .line 686
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v3, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockGameRunCtrl:I

    goto :goto_0

    .line 689
    :cond_2
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v4, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockRunTime:I

    .line 690
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v3, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockGameRunCtrl:I

    goto :goto_0
.end method

.method private GameRunBlockFindEvtPlace01Fun(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "Place"    # I

    .prologue
    .line 933
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x70

    if-lt v0, v1, :cond_0

    .line 941
    const v0, 0xffff

    .end local v0    # "i":I
    :goto_1
    return v0

    .line 934
    .restart local v0    # "i":I
    :cond_0
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v1, :cond_1

    .line 935
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockDepth:I

    if-nez v1, :cond_2

    .line 933
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 936
    :cond_2
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockIndex:I

    if-eq v1, p1, :cond_1

    .line 937
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockPlace:I

    if-ne v1, p2, :cond_1

    goto :goto_1
.end method

.method private GameRunBlockFindEvtPlaceFun(I)I
    .locals 2
    .param p1, "Place"    # I

    .prologue
    .line 892
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x70

    if-lt v0, v1, :cond_0

    .line 899
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    .line 906
    const v1, 0xffff

    :goto_2
    return v1

    .line 893
    :cond_0
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v1, :cond_1

    .line 894
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    if-ne v1, v0, :cond_2

    .line 892
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 895
    :cond_2
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockPlace:I

    if-ne v1, p1, :cond_1

    move v1, v0

    .line 896
    goto :goto_2

    .line 900
    :cond_3
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v1, :cond_4

    .line 901
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropPlace:I

    if-ne v1, p1, :cond_4

    move v1, v0

    .line 902
    goto :goto_2

    .line 899
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private GameRunBlockGetPlaceHitIndexFun(I)V
    .locals 5
    .param p1, "Place"    # I

    .prologue
    const v4, 0xffff

    .line 910
    const v1, 0xffff

    .line 911
    .local v1, "mIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x70

    if-lt v0, v2, :cond_1

    .line 926
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v1, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitOneFlag:I

    .line 927
    if-eq v1, v4, :cond_0

    .line 928
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitOneFlag:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v3, v3, Loms/GameEngine/GameEvent$EventDEF;->XVal:I

    shr-int/lit8 v3, v3, 0x10

    iput v3, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockDispX:I

    .line 929
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitOneFlag:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v3, v3, Loms/GameEngine/GameEvent$EventDEF;->YVal:I

    shr-int/lit8 v3, v3, 0x10

    iput v3, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockDispY:I

    .line 931
    :cond_0
    return-void

    .line 912
    :cond_1
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v2, v2, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v2, :cond_2

    .line 913
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockDepth:I

    if-nez v2, :cond_3

    .line 911
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 914
    :cond_3
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v2, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_2

    .line 915
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockPlace:I

    if-ne v2, p1, :cond_2

    .line 916
    if-eq v1, v4, :cond_4

    .line 917
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockDepth:I

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockDepth:I

    if-gt v2, v3, :cond_2

    .line 918
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v2, v2, v0

    iget v1, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockIndex:I

    goto :goto_1

    .line 922
    :cond_4
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v2, v2, v0

    iget v1, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockIndex:I

    goto :goto_1
.end method

.method private GameRunBlockGetTouchDownPlaceFun(II)I
    .locals 8
    .param p1, "TouchX"    # I
    .param p2, "TouchY"    # I

    .prologue
    const/16 v7, 0x70

    const/16 v6, 0x58

    const/16 v5, 0x50

    const/16 v4, 0x30

    const v2, 0xffff

    .line 945
    const v0, 0xffff

    .line 946
    .local v0, "PlaceX":I
    const v1, 0xffff

    .line 947
    .local v1, "PlaceY":I
    const/16 v3, 0x38

    if-lt p1, v3, :cond_0

    if-ge p1, v6, :cond_0

    .line 948
    const/16 v0, 0x62

    .line 949
    :cond_0
    if-lt p1, v6, :cond_1

    const/16 v3, 0x78

    if-ge p1, v3, :cond_1

    .line 950
    const/16 v0, 0x54

    .line 951
    :cond_1
    const/16 v3, 0x78

    if-lt p1, v3, :cond_2

    const/16 v3, 0x98

    if-ge p1, v3, :cond_2

    .line 952
    const/16 v0, 0x46

    .line 953
    :cond_2
    const/16 v3, 0x98

    if-lt p1, v3, :cond_3

    const/16 v3, 0xb8

    if-ge p1, v3, :cond_3

    .line 954
    const/16 v0, 0x38

    .line 955
    :cond_3
    const/16 v3, 0xb8

    if-lt p1, v3, :cond_4

    const/16 v3, 0xd8

    if-ge p1, v3, :cond_4

    .line 956
    const/16 v0, 0x2a

    .line 957
    :cond_4
    const/16 v3, 0xd8

    if-lt p1, v3, :cond_5

    const/16 v3, 0xf8

    if-ge p1, v3, :cond_5

    .line 958
    const/16 v0, 0x1c

    .line 959
    :cond_5
    const/16 v3, 0xf8

    if-lt p1, v3, :cond_6

    const/16 v3, 0x118

    if-ge p1, v3, :cond_6

    .line 960
    const/16 v0, 0xe

    .line 961
    :cond_6
    const/16 v3, 0x118

    if-lt p1, v3, :cond_7

    const/16 v3, 0x138

    if-ge p1, v3, :cond_7

    .line 962
    const/4 v0, 0x0

    .line 964
    :cond_7
    const/16 v3, 0x10

    if-lt p2, v3, :cond_8

    if-ge p2, v4, :cond_8

    .line 965
    const/4 v1, 0x0

    .line 966
    :cond_8
    if-lt p2, v4, :cond_9

    if-ge p2, v5, :cond_9

    .line 967
    const/4 v1, 0x1

    .line 968
    :cond_9
    if-lt p2, v5, :cond_a

    if-ge p2, v7, :cond_a

    .line 969
    const/4 v1, 0x2

    .line 970
    :cond_a
    if-lt p2, v7, :cond_b

    const/16 v3, 0x90

    if-ge p2, v3, :cond_b

    .line 971
    const/4 v1, 0x3

    .line 972
    :cond_b
    const/16 v3, 0x90

    if-lt p2, v3, :cond_c

    const/16 v3, 0xb0

    if-ge p2, v3, :cond_c

    .line 973
    const/4 v1, 0x4

    .line 974
    :cond_c
    const/16 v3, 0xb0

    if-lt p2, v3, :cond_d

    const/16 v3, 0xd0

    if-ge p2, v3, :cond_d

    .line 975
    const/4 v1, 0x5

    .line 976
    :cond_d
    const/16 v3, 0xd0

    if-lt p2, v3, :cond_e

    const/16 v3, 0xf0

    if-ge p2, v3, :cond_e

    .line 977
    const/4 v1, 0x6

    .line 978
    :cond_e
    const/16 v3, 0xf0

    if-lt p2, v3, :cond_f

    const/16 v3, 0x110

    if-ge p2, v3, :cond_f

    .line 979
    const/4 v1, 0x7

    .line 980
    :cond_f
    const/16 v3, 0x110

    if-lt p2, v3, :cond_10

    const/16 v3, 0x130

    if-ge p2, v3, :cond_10

    .line 981
    const/16 v1, 0x8

    .line 982
    :cond_10
    const/16 v3, 0x130

    if-lt p2, v3, :cond_11

    const/16 v3, 0x150

    if-ge p2, v3, :cond_11

    .line 983
    const/16 v1, 0x9

    .line 984
    :cond_11
    const/16 v3, 0x150

    if-lt p2, v3, :cond_12

    const/16 v3, 0x170

    if-ge p2, v3, :cond_12

    .line 985
    const/16 v1, 0xa

    .line 986
    :cond_12
    const/16 v3, 0x170

    if-lt p2, v3, :cond_13

    const/16 v3, 0x190

    if-ge p2, v3, :cond_13

    .line 987
    const/16 v1, 0xb

    .line 988
    :cond_13
    const/16 v3, 0x190

    if-lt p2, v3, :cond_14

    const/16 v3, 0x1b0

    if-ge p2, v3, :cond_14

    .line 989
    const/16 v1, 0xc

    .line 990
    :cond_14
    const/16 v3, 0x1b0

    if-lt p2, v3, :cond_15

    const/16 v3, 0x1d0

    if-ge p2, v3, :cond_15

    .line 991
    const/16 v1, 0xd

    .line 992
    :cond_15
    if-eq v0, v2, :cond_16

    if-eq v0, v2, :cond_16

    .line 993
    add-int v2, v0, v1

    .line 995
    :cond_16
    return v2
.end method

.method private GameRunBlockInitFun()V
    .locals 10

    .prologue
    const/16 v9, 0x70

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 999
    const/4 v1, 0x0

    .line 1000
    .local v1, "BlockType":I
    const/4 v0, 0x0

    .line 1001
    .local v0, "BlockDepth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v9, :cond_0

    .line 1036
    const/4 v0, 0x0

    .line 1037
    return-void

    .line 1002
    :cond_0
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorld:I

    if-nez v4, :cond_1

    .line 1003
    sget-object v4, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_INT_EVTATTRIB:[[I

    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    aget-object v4, v4, v5

    aget v4, v4, v2

    shr-int/lit8 v4, v4, 0xc

    and-int/lit8 v1, v4, 0xf

    .line 1004
    sget-object v4, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_INT_EVTATTRIB:[[I

    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    aget-object v4, v4, v5

    aget v4, v4, v2

    and-int/lit8 v0, v4, 0xf

    .line 1006
    :cond_1
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorld:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1007
    sget-object v4, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_INT_EVTATTRIBA:[[I

    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    aget-object v4, v4, v5

    aget v4, v4, v2

    shr-int/lit8 v4, v4, 0xc

    and-int/lit8 v1, v4, 0xf

    .line 1008
    sget-object v4, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_INT_EVTATTRIBA:[[I

    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    aget-object v4, v4, v5

    aget v4, v4, v2

    and-int/lit8 v0, v4, 0xf

    .line 1010
    :cond_2
    if-ge v1, v8, :cond_4

    .line 1011
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockAttribBuff:[I

    aput v1, v4, v2

    .line 1014
    :goto_1
    if-lt v1, v8, :cond_5

    .line 1001
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1013
    :cond_4
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockAttribBuff:[I

    aput v8, v4, v2

    goto :goto_1

    .line 1016
    :cond_5
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    if-ge v3, v9, :cond_3

    .line 1017
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v4, v4, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-nez v4, :cond_6

    .line 1018
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, v3

    div-int/lit8 v5, v2, 0xe

    mul-int/lit8 v5, v5, 0x20

    rsub-int v5, v5, 0x128

    rem-int/lit8 v6, v2, 0xe

    mul-int/lit8 v6, v6, 0x20

    add-int/lit8 v6, v6, 0x20

    invoke-virtual {v4, v5, v6, v7}, Lcom/jianghe/blockgame/C_BLOCK_A;->MakeEVENT(III)Z

    .line 1019
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v5, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_A_Ctrl:[I

    aget v5, v5, v1

    iput v5, v4, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 1020
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, v3

    sget-object v5, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_A_Type:[I

    aget v5, v5, v1

    iput v5, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockType:I

    .line 1021
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, v3

    iput v2, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockPlace:I

    .line 1022
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, v3

    iput v3, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockIndex:I

    .line 1023
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, v3

    iput v0, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockDepth:I

    .line 1024
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, v3

    iput v7, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockTouchCtrl:I

    .line 1025
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, v3

    iput v7, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockAngle:I

    .line 1026
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, v3

    iput v7, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockChangeType:I

    .line 1027
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, v3

    iput v7, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockCtrl:I

    .line 1028
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, v3

    const/high16 v5, 0x3f800000

    iput v5, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockScale:F

    .line 1029
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->m_random:Ljava/util/Random;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iput v5, v4, Loms/GameEngine/GameEvent$EventDEF;->CurFRM:I

    .line 1030
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v5, v4, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    or-int/lit16 v5, v5, 0x2480

    iput v5, v4, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 1031
    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v5, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_A_Depth:[I

    aget v5, v5, v0

    iput v5, v4, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    goto/16 :goto_2

    .line 1016
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3
.end method

.method private GameRunBlockPropInitFun()V
    .locals 9

    .prologue
    .line 1040
    const/4 v0, 0x0

    .line 1041
    .local v0, "BlockType":I
    const/4 v2, 0x0

    .line 1042
    .local v2, "PropType":I
    const/4 v1, 0x0

    .line 1043
    .local v1, "PropAttrib":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v5, 0x70

    if-lt v3, v5, :cond_0

    .line 1070
    return-void

    .line 1044
    :cond_0
    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorld:I

    if-nez v5, :cond_1

    .line 1045
    sget-object v5, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_INT_EVTATTRIB:[[I

    sget-object v6, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v6, v6, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v3

    shr-int/lit8 v5, v5, 0xc

    and-int/lit8 v0, v5, 0xf

    .line 1046
    sget-object v5, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_INT_EVTATTRIB:[[I

    sget-object v6, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v6, v6, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v3

    shr-int/lit8 v5, v5, 0x8

    and-int/lit8 v2, v5, 0xf

    .line 1047
    sget-object v5, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_INT_EVTATTRIB:[[I

    sget-object v6, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v6, v6, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v3

    and-int/lit8 v1, v5, 0xf

    .line 1049
    :cond_1
    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorld:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1050
    sget-object v5, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_INT_EVTATTRIBA:[[I

    sget-object v6, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v6, v6, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v3

    shr-int/lit8 v5, v5, 0xc

    and-int/lit8 v0, v5, 0xf

    .line 1051
    sget-object v5, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_INT_EVTATTRIBA:[[I

    sget-object v6, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v6, v6, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v3

    shr-int/lit8 v5, v5, 0x8

    and-int/lit8 v2, v5, 0xf

    .line 1052
    sget-object v5, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_INT_EVTATTRIBA:[[I

    sget-object v6, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v6, v6, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    aget-object v5, v5, v6

    aget v5, v5, v3

    and-int/lit8 v1, v5, 0xf

    .line 1054
    :cond_2
    const/16 v5, 0x9

    if-ge v0, v5, :cond_4

    .line 1043
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1055
    :cond_4
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    const/16 v5, 0x14

    if-ge v4, v5, :cond_3

    .line 1056
    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v5, v5, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-nez v5, :cond_5

    .line 1057
    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v5, v5, v4

    div-int/lit8 v6, v3, 0xe

    mul-int/lit8 v6, v6, 0x20

    rsub-int v6, v6, 0x128

    rem-int/lit8 v7, v3, 0xe

    mul-int/lit8 v7, v7, 0x20

    add-int/lit8 v7, v7, 0x20

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/jianghe/blockgame/C_BLOCK_B;->MakeEVENT(III)Z

    .line 1058
    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v6, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_B_Ctrl:[I

    aget v6, v6, v2

    iput v6, v5, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 1059
    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v5, v5, v4

    sget-object v6, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_B_Type:[I

    aget v6, v6, v2

    iput v6, v5, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropType:I

    .line 1060
    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v5, v5, v4

    iput v3, v5, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropPlace:I

    .line 1061
    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v5, v5, v4

    iput v4, v5, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropIndex:I

    .line 1062
    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v5, v5, v4

    iput v1, v5, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropAttrib:I

    .line 1063
    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v6, Lcom/jianghe/blockgame/C_BlockMenu;->m_random:Ljava/util/Random;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iput v6, v5, Loms/GameEngine/GameEvent$EventDEF;->CurFRM:I

    .line 1064
    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v6, v5, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    or-int/lit16 v6, v6, 0x2480

    iput v6, v5, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 1065
    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v5, v5, v4

    iget-object v5, v5, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v6, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_B_Depth:[I

    aget v6, v6, v2

    iput v6, v5, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    goto/16 :goto_1

    .line 1055
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2
.end method

.method private GameRunBlockTouch()V
    .locals 9

    .prologue
    const/16 v8, 0xb

    const v7, 0xffff

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 762
    const/4 v1, 0x0

    .line 763
    .local v1, "mTouchX":I
    const/4 v2, 0x0

    .line 764
    .local v2, "mTouchY":I
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v7, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitOneFlag:I

    .line 765
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v3

    invoke-virtual {v3}, Loms/GameEngine/InputInterface;->CHKTouchDown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 766
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v3

    invoke-virtual {v3}, Loms/GameEngine/InputInterface;->GetTouchDownX()I

    move-result v1

    .line 767
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v3

    invoke-virtual {v3}, Loms/GameEngine/InputInterface;->GetTouchDownY()I

    move-result v2

    .line 768
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v1, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockTouchX:I

    .line 769
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v2, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockTouchY:I

    .line 770
    invoke-direct {p0, v1, v2}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunBlockGetTouchDownPlaceFun(II)I

    move-result v0

    .line 771
    .local v0, "BlockPlace":I
    invoke-direct {p0, v0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunBlockGetPlaceHitIndexFun(I)V

    .line 772
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v6, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitCtrlFlag:I

    .line 774
    .end local v0    # "BlockPlace":I
    :cond_0
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitOneFlag:I

    if-eq v3, v7, :cond_1

    .line 776
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    if-ne v3, v7, :cond_2

    .line 777
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitOneFlag:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v5}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 778
    invoke-static {v5}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    .line 779
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitOneFlag:I

    aget-object v3, v3, v4

    iput v5, v3, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockTouchCtrl:I

    .line 780
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitOneFlag:I

    aget-object v3, v3, v4

    iput v6, v3, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockCtrl:I

    .line 781
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitOneFlag:I

    iput v4, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    .line 808
    :cond_1
    :goto_0
    return-void

    .line 785
    :cond_2
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitOneFlag:I

    if-ne v3, v4, :cond_3

    .line 786
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitOneFlag:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v6, v5}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 787
    invoke-static {v6}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    .line 788
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitOneFlag:I

    aget-object v3, v3, v4

    iput v5, v3, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockTouchCtrl:I

    .line 789
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitOneFlag:I

    aget-object v3, v3, v4

    iput v6, v3, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockCtrl:I

    .line 790
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v7, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    goto :goto_0

    .line 794
    :cond_3
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v3, v3, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 795
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v6, v5}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 796
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v3, v3, v4

    iput v5, v3, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockTouchCtrl:I

    .line 797
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v3, v3, v4

    iput v5, v3, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockCtrl:I

    .line 798
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitOneFlag:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v8, v5}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 799
    invoke-static {v5}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    .line 800
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitOneFlag:I

    aget-object v3, v3, v4

    iput v5, v3, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockTouchCtrl:I

    .line 801
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitOneFlag:I

    aget-object v3, v3, v4

    iput v6, v3, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockCtrl:I

    .line 802
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v4, v4, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitOneFlag:I

    iput v4, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    goto/16 :goto_0
.end method

.method private GameRunGetDownTypeFun(II)I
    .locals 6
    .param p1, "Place"    # I
    .param p2, "Type"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x70

    const v1, 0xffff

    .line 1370
    if-lt p1, v5, :cond_1

    .line 1401
    :cond_0
    :goto_0
    return v1

    .line 1372
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v5, :cond_3

    .line 1391
    :cond_2
    :goto_2
    if-ne v0, v5, :cond_5

    move v1, v2

    .line 1392
    goto :goto_0

    .line 1373
    :cond_3
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v3, v3, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v3, :cond_4

    .line 1374
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockPlace:I

    if-ne v3, p1, :cond_4

    .line 1375
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 1379
    :pswitch_0
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockAttribBuff:[I

    aget v3, v3, p1

    if-eqz v3, :cond_0

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockAttribBuff:[I

    aget v3, v3, p1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 1383
    :pswitch_1
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockAttribBuff:[I

    aget v3, v3, p1

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 1372
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1393
    :cond_5
    const/4 v0, 0x0

    :goto_3
    const/16 v3, 0x14

    if-lt v0, v3, :cond_6

    move v1, v2

    .line 1401
    goto :goto_0

    .line 1394
    :cond_6
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v3, v3, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v3, :cond_7

    .line 1395
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropPlace:I

    if-ne v3, p1, :cond_7

    .line 1396
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropType:I

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 1393
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private GameRunHelpInitFun(I)V
    .locals 6
    .param p1, "MenuType"    # I

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 1112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 1124
    :goto_1
    return-void

    .line 1113
    :cond_0
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-nez v1, :cond_1

    .line 1114
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    const/16 v2, 0xa0

    const/16 v3, 0xf0

    invoke-virtual {v1, v2, v3, v4}, Lcom/jianghe/blockgame/C_BLOCK_MENU;->MakeEVENT(III)Z

    .line 1115
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v2, 0x4

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 1116
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iput p1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->m_MenuType:I

    .line 1117
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iput v4, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->m_MenuHitCtrl:I

    .line 1118
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    const v2, 0x3dcccccd

    iput v2, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->m_MenuScale:F

    .line 1119
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    or-int/lit16 v2, v2, 0x2400

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 1120
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v5, v1, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    goto :goto_1

    .line 1112
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private GameRunHelpLeveInitFun()V
    .locals 1

    .prologue
    .line 1096
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevel:I

    sparse-switch v0, :sswitch_data_0

    .line 1110
    :goto_0
    return-void

    .line 1098
    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunHelpInitFun(I)V

    goto :goto_0

    .line 1101
    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunHelpInitFun(I)V

    goto :goto_0

    .line 1104
    :sswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunHelpInitFun(I)V

    goto :goto_0

    .line 1107
    :sswitch_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunHelpInitFun(I)V

    goto :goto_0

    .line 1096
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0xb -> :sswitch_2
        0x13 -> :sswitch_3
    .end sparse-switch
.end method

.method private GameRunOtherInitBlastFun(I)V
    .locals 6
    .param p1, "mBlockCur"    # I

    .prologue
    const/4 v5, 0x0

    .line 1127
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    .line 1140
    :goto_1
    return-void

    .line 1128
    :cond_0
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v3, v3, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-nez v3, :cond_1

    .line 1129
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v3, v3, Loms/GameEngine/GameEvent$EventDEF;->XVal:I

    shr-int/lit8 v0, v3, 0x10

    .line 1130
    .local v0, "CurXVal":I
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v3, v3, Loms/GameEngine/GameEvent$EventDEF;->YVal:I

    shr-int/lit8 v1, v3, 0x10

    .line 1131
    .local v1, "CurYVal":I
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1, v5}, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->MakeEVENT(III)Z

    .line 1132
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v4, 0x1

    iput v4, v3, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 1133
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v3, v3, v2

    iput v5, v3, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->m_BlockControlType:I

    .line 1134
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v3, v3, v2

    iput v5, v3, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 1135
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v4, v3, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    or-int/lit16 v4, v4, 0x2400

    iput v4, v3, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 1136
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/16 v4, 0x8

    iput v4, v3, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    goto :goto_1

    .line 1127
    .end local v0    # "CurXVal":I
    .end local v1    # "CurYVal":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private GameRunOtherInitFun(I)V
    .locals 6
    .param p1, "OtherType"    # I

    .prologue
    const/4 v5, 0x0

    .line 1072
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 1083
    :goto_1
    return-void

    .line 1073
    :cond_0
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-nez v1, :cond_1

    .line 1074
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    sget-object v2, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_OTHER_INT_EVTVal:[I

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_OTHER_INT_EVTVal:[I

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3, v5}, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->MakeEVENT(III)Z

    .line 1075
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v2, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_OTHER_Ctrl:[I

    aget v2, v2, p1

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 1076
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    sget-object v2, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_OTHER_Type:[I

    aget v2, v2, p1

    iput v2, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->m_BlockControlType:I

    .line 1077
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iput v5, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 1078
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    or-int/lit16 v2, v2, 0x2400

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 1079
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v2, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_OTHER_Depth:[I

    aget v2, v2, p1

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    goto :goto_1

    .line 1072
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private GameRunOtherTouch()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 812
    const/4 v1, 0x0

    .line 813
    .local v1, "mTouchX":I
    const/4 v2, 0x0

    .line 814
    .local v2, "mTouchY":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/16 v0, 0x14

    if-lt v10, v0, :cond_0

    .line 837
    return-void

    .line 815
    :cond_0
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v0, v0, v10

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v0, v0, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v0, :cond_1

    .line 816
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v0, v0, v10

    iget v0, v0, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    if-nez v0, :cond_1

    .line 817
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0}, Loms/GameEngine/InputInterface;->CHKTouchDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0}, Loms/GameEngine/InputInterface;->GetTouchDownX()I

    move-result v1

    .line 819
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0}, Loms/GameEngine/InputInterface;->GetTouchDownY()I

    move-result v2

    .line 820
    sget-object v0, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_OTHER_Hit:[I

    sget-object v7, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v7, v7, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v7, v7, v10

    iget v7, v7, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->m_BlockControlType:I

    mul-int/lit8 v7, v7, 0x2

    aget v3, v0, v7

    .line 821
    .local v3, "mTouchL":I
    sget-object v0, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_OTHER_Hit:[I

    sget-object v7, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v7, v7, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v7, v7, v10

    iget v7, v7, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->m_BlockControlType:I

    mul-int/lit8 v7, v7, 0x2

    aget v4, v0, v7

    .line 822
    .local v4, "mTouchR":I
    sget-object v0, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_OTHER_Hit:[I

    sget-object v7, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v7, v7, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v7, v7, v10

    iget v7, v7, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->m_BlockControlType:I

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v5, v0, v7

    .line 823
    .local v5, "mTouchU":I
    sget-object v0, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_OTHER_Hit:[I

    sget-object v7, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v7, v7, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v7, v7, v10

    iget v7, v7, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->m_BlockControlType:I

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v6, v0, v7

    .line 824
    .local v6, "mTouchD":I
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v0, v0, v10

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v0, Loms/GameEngine/GameEvent$EventDEF;->XVal:I

    shr-int/lit8 v8, v0, 0x10

    .line 825
    .local v8, "CurXVal":I
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v0, v0, v10

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v0, Loms/GameEngine/GameEvent$EventDEF;->YVal:I

    shr-int/lit8 v9, v0, 0x10

    .line 826
    .local v9, "CurYVal":I
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v7, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v7, v7, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v7, v7, v10

    iget-object v7, v7, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v7, v7, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    invoke-virtual/range {v0 .. v9}, Loms/GameEngine/GameCanvas;->CHKACTTouch(IIIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v0, v0, v10

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v11, v0, Loms/GameEngine/GameEvent$EventDEF;->CurCNT:I

    .line 828
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v0, v0, v10

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v11, v0, Loms/GameEngine/GameEvent$EventDEF;->CurFRM:I

    .line 829
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v0, v0, v10

    const/4 v7, 0x1

    iput v7, v0, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 830
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v0, v0, v10

    iget v0, v0, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->m_BlockControlType:I

    invoke-direct {p0, v0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunOtherTouchFun(I)V

    .line 814
    .end local v3    # "mTouchL":I
    .end local v4    # "mTouchR":I
    .end local v5    # "mTouchU":I
    .end local v6    # "mTouchD":I
    .end local v8    # "CurXVal":I
    .end local v9    # "CurYVal":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0
.end method

.method private GameRunOtherTouchFun(I)V
    .locals 9
    .param p1, "Type"    # I

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const v4, 0xffff

    .line 840
    packed-switch p1, :pswitch_data_0

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 843
    :pswitch_0
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    if-eq v2, v4, :cond_0

    .line 844
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v2, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    if-ne v2, v8, :cond_0

    .line 845
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    iget v0, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockPlace:I

    .line 846
    .local v0, "BlockPlace":I
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    iget v1, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockType:I

    .line 847
    .local v1, "BlockType":I
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockPlace:I

    rem-int/lit8 v2, v2, 0xe

    if-eqz v2, :cond_0

    .line 848
    add-int/lit8 v2, v0, -0x1

    invoke-direct {p0, v2, v1}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunGetDownTypeFun(II)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 849
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/high16 v3, -0x80000

    iput v3, v2, Loms/GameEngine/GameEvent$EventDEF;->YInc:I

    .line 850
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v5, v2, Loms/GameEngine/GameEvent$EventDEF;->XInc:I

    .line 851
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    const/16 v3, 0x400

    invoke-virtual {v2, v7, v3}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 852
    invoke-static {v6}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    .line 853
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    goto :goto_0

    .line 858
    .end local v0    # "BlockPlace":I
    .end local v1    # "BlockType":I
    :pswitch_1
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    if-eq v2, v4, :cond_0

    .line 859
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v2, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    if-ne v2, v8, :cond_0

    .line 860
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    iget v0, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockPlace:I

    .line 861
    .restart local v0    # "BlockPlace":I
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    iget v1, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockType:I

    .line 862
    .restart local v1    # "BlockType":I
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockPlace:I

    rem-int/lit8 v2, v2, 0xe

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    .line 863
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2, v1}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunGetDownTypeFun(II)I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 864
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/high16 v3, 0x80000

    iput v3, v2, Loms/GameEngine/GameEvent$EventDEF;->YInc:I

    .line 865
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v5, v2, Loms/GameEngine/GameEvent$EventDEF;->XInc:I

    .line 866
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x400

    invoke-virtual {v2, v3, v4}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 867
    invoke-static {v6}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    .line 868
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    goto/16 :goto_0

    .line 873
    .end local v0    # "BlockPlace":I
    .end local v1    # "BlockType":I
    :pswitch_2
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    if-eq v2, v4, :cond_0

    .line 874
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v2, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    if-ne v2, v8, :cond_0

    .line 875
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockType:I

    if-eq v2, v7, :cond_0

    .line 876
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/jianghe/blockgame/C_BLOCK_A;->m_BlockPlace:I

    invoke-direct {p0, v2}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunBlockFindEvtPlaceFun(I)I

    move-result v0

    .line 877
    .restart local v0    # "BlockPlace":I
    if-ne v0, v4, :cond_0

    .line 878
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/jianghe/blockgame/C_BlockMedia;->PlaySound(I)V

    .line 879
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    aget-object v2, v2, v3

    invoke-virtual {v2, v6, v5}, Lcom/jianghe/blockgame/C_BLOCK_A;->SetEVTCtrl(II)V

    .line 880
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v4, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockHitEndFlag:I

    goto/16 :goto_0

    .line 886
    .end local v0    # "BlockPlace":I
    :pswitch_3
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v5, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockFlag:I

    .line 887
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iput v7, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockCtrl:I

    goto/16 :goto_0

    .line 840
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private GameRunPauseInitFun()V
    .locals 5

    .prologue
    .line 1085
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 1094
    :goto_1
    return-void

    .line 1086
    :cond_0
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-nez v1, :cond_1

    .line 1087
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    const/16 v2, 0x12c

    const/16 v3, 0x1cc

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/jianghe/blockgame/C_BLOCK_MENU;->MakeEVENT(III)Z

    .line 1088
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v2, 0x3

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 1089
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    or-int/lit16 v2, v2, 0x2400

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 1090
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/16 v2, 0x9

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    goto :goto_1

    .line 1085
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private GameRunTouch()V
    .locals 1

    .prologue
    .line 536
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockGameRunCtrl:I

    if-nez v0, :cond_0

    .line 537
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-boolean v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockPauseFlag:Z

    if-nez v0, :cond_0

    .line 538
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunBlockTouch()V

    .line 539
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunOtherTouch()V

    .line 542
    :cond_0
    return-void
.end method

.method private GameRunWriteAct()V
    .locals 13

    .prologue
    const/16 v12, 0x14c

    const/16 v11, 0x130

    const/16 v10, 0xa

    const/16 v9, 0x134

    const/16 v8, 0x9

    .line 696
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevelBak:I

    add-int/lit8 v1, v3, 0x1

    .line 697
    .local v1, "mLevel":I
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    .line 698
    .local v2, "mMoves":I
    sget v3, Lcom/jianghe/blockgame/C_OPhoneApp;->mADFlag:I

    if-nez v3, :cond_3

    .line 699
    const/4 v0, 0x0

    .line 702
    .local v0, "mADYVal":I
    :goto_0
    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorld:I

    if-nez v3, :cond_4

    .line 703
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v3

    const v4, 0x7f020063

    const/16 v5, 0x124

    const/16 v6, 0xf0

    const/16 v7, 0x8

    invoke-virtual {v3, v4, v5, v6, v7}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 706
    :goto_1
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v3

    const v4, 0x7f020065

    add-int/lit8 v5, v0, 0x3c

    invoke-virtual {v3, v4, v11, v5, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 707
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v3

    const v4, 0x7f020064

    const/16 v5, 0xf0

    invoke-virtual {v3, v4, v11, v5, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 708
    if-lt v1, v10, :cond_0

    .line 709
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v3

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTA:[I

    rem-int/lit8 v5, v1, 0x64

    div-int/lit8 v5, v5, 0xa

    aget v4, v4, v5

    add-int/lit8 v5, v0, 0x6e

    invoke-virtual {v3, v4, v9, v5, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 710
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v3

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTA:[I

    rem-int/lit8 v5, v1, 0xa

    aget v4, v4, v5

    add-int/lit8 v5, v0, 0x7c

    invoke-virtual {v3, v4, v9, v5, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 712
    :cond_0
    if-ge v1, v10, :cond_1

    .line 713
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v3

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTA:[I

    rem-int/lit8 v5, v1, 0xa

    aget v4, v4, v5

    add-int/lit8 v5, v0, 0x7c

    invoke-virtual {v3, v4, v9, v5, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 715
    :cond_1
    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_5

    .line 716
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v3

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTA:[I

    rem-int/lit16 v5, v2, 0x2710

    div-int/lit16 v5, v5, 0x3e8

    aget v4, v4, v5

    const/16 v5, 0x122

    invoke-virtual {v3, v4, v9, v5, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 717
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v3

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTA:[I

    rem-int/lit16 v5, v2, 0x3e8

    div-int/lit8 v5, v5, 0x64

    aget v4, v4, v5

    invoke-virtual {v3, v4, v9, v11, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 718
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v3

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTA:[I

    rem-int/lit8 v5, v2, 0x64

    div-int/lit8 v5, v5, 0xa

    aget v4, v4, v5

    const/16 v5, 0x13e

    invoke-virtual {v3, v4, v9, v5, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 719
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v3

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTA:[I

    rem-int/lit8 v5, v2, 0xa

    aget v4, v4, v5

    invoke-virtual {v3, v4, v9, v12, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 734
    :cond_2
    :goto_2
    return-void

    .line 701
    .end local v0    # "mADYVal":I
    :cond_3
    const/16 v0, 0x1e

    .restart local v0    # "mADYVal":I
    goto/16 :goto_0

    .line 705
    :cond_4
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v3

    const v4, 0x7f020097

    const/16 v5, 0x124

    const/16 v6, 0xf0

    const/16 v7, 0x8

    invoke-virtual {v3, v4, v5, v6, v7}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto/16 :goto_1

    .line 721
    :cond_5
    const/16 v3, 0x64

    if-lt v2, v3, :cond_6

    .line 722
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v3

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTA:[I

    rem-int/lit16 v5, v2, 0x3e8

    div-int/lit8 v5, v5, 0x64

    aget v4, v4, v5

    invoke-virtual {v3, v4, v9, v11, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 723
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v3

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTA:[I

    rem-int/lit8 v5, v2, 0x64

    div-int/lit8 v5, v5, 0xa

    aget v4, v4, v5

    const/16 v5, 0x13e

    invoke-virtual {v3, v4, v9, v5, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 724
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v3

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTA:[I

    rem-int/lit8 v5, v2, 0xa

    aget v4, v4, v5

    invoke-virtual {v3, v4, v9, v12, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto :goto_2

    .line 726
    :cond_6
    if-lt v2, v10, :cond_7

    .line 727
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v3

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTA:[I

    rem-int/lit8 v5, v2, 0x64

    div-int/lit8 v5, v5, 0xa

    aget v4, v4, v5

    const/16 v5, 0x13e

    invoke-virtual {v3, v4, v9, v5, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 728
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v3

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTA:[I

    rem-int/lit8 v5, v2, 0xa

    aget v4, v4, v5

    invoke-virtual {v3, v4, v9, v12, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto :goto_2

    .line 730
    :cond_7
    if-ge v2, v10, :cond_2

    .line 731
    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v3}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v3

    sget-object v4, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTA:[I

    rem-int/lit8 v5, v2, 0xa

    aget v4, v4, v5

    invoke-virtual {v3, v4, v9, v12, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto/16 :goto_2
.end method

.method private GameRunWriteBottom()V
    .locals 9

    .prologue
    const v8, 0x8000

    const/16 v7, 0x96

    const/4 v6, 0x0

    .line 1455
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorld:I

    if-nez v2, :cond_0

    .line 1456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v7, :cond_2

    .line 1463
    .end local v0    # "i":I
    :cond_0
    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorld:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1464
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-lt v0, v7, :cond_4

    .line 1471
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 1457
    .restart local v0    # "i":I
    :cond_2
    sget-object v2, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_INT_EVTPLACE:[[I

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevelBak:I

    aget-object v2, v2, v3

    aget v1, v2, v0

    .line 1458
    .local v1, "mType":I
    if-ne v1, v8, :cond_3

    .line 1456
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1460
    :cond_3
    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v2

    sget-object v3, Lcom/jianghe/blockgame/C_BlockCode;->BlockGameRunBlockACT:[I

    aget v3, v3, v1

    div-int/lit8 v4, v0, 0xf

    mul-int/lit8 v4, v4, 0x20

    rsub-int v4, v4, 0x148

    rem-int/lit8 v5, v0, 0xf

    mul-int/lit8 v5, v5, 0x20

    add-int/lit8 v5, v5, 0x20

    invoke-virtual {v2, v3, v4, v5, v6}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto :goto_2

    .line 1465
    .end local v1    # "mType":I
    :cond_4
    sget-object v2, Lcom/jianghe/blockgame/C_BlockCode;->BLOCK_INT_EVTPLACEA:[[I

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockLevelBak:I

    aget-object v2, v2, v3

    aget v1, v2, v0

    .line 1466
    .restart local v1    # "mType":I
    if-ne v1, v8, :cond_5

    .line 1464
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1468
    :cond_5
    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v2

    sget-object v3, Lcom/jianghe/blockgame/C_BlockCode;->BlockGameRunBlockAACT:[I

    aget v3, v3, v1

    div-int/lit8 v4, v0, 0xf

    mul-int/lit8 v4, v4, 0x20

    rsub-int v4, v4, 0x148

    rem-int/lit8 v5, v0, 0xf

    mul-int/lit8 v5, v5, 0x20

    add-int/lit8 v5, v5, 0x20

    invoke-virtual {v2, v3, v4, v5, v6}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto :goto_3
.end method

.method private GameRunWriteMoves()V
    .locals 9

    .prologue
    const/16 v8, 0xba

    const/16 v7, 0xd8

    const v6, 0x7f020073

    const/16 v5, 0x9c

    const/16 v4, 0x9

    .line 569
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f020051

    const/16 v2, 0xa0

    const/16 v3, 0xf0

    invoke-virtual {v0, v1, v2, v3, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 570
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f020074

    const/16 v2, 0xb4

    const/16 v3, 0xf0

    invoke-virtual {v0, v1, v2, v3, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 571
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_6

    .line 572
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTB:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    rem-int/lit16 v2, v2, 0x2710

    div-int/lit16 v2, v2, 0x3e8

    aget v1, v1, v2

    const/16 v2, 0x112

    invoke-virtual {v0, v1, v7, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 573
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTB:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    rem-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x64

    aget v1, v1, v2

    const/16 v2, 0x122

    invoke-virtual {v0, v1, v7, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 574
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTB:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    rem-int/lit8 v2, v2, 0x64

    div-int/lit8 v2, v2, 0xa

    aget v1, v1, v2

    const/16 v2, 0x132

    invoke-virtual {v0, v1, v7, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 575
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTB:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    rem-int/lit8 v2, v2, 0xa

    aget v1, v1, v2

    const/16 v2, 0x142

    invoke-virtual {v0, v1, v7, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 589
    :cond_0
    :goto_0
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStar:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 590
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v8, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 591
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const/16 v1, 0xd3

    invoke-virtual {v0, v6, v5, v1, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 592
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const/16 v1, 0xec

    invoke-virtual {v0, v6, v5, v1, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 593
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const/16 v1, 0x104

    invoke-virtual {v0, v6, v5, v1, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 594
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const/16 v1, 0x11c

    invoke-virtual {v0, v6, v5, v1, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 596
    :cond_1
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStar:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 597
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v8, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 598
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const/16 v1, 0xd3

    invoke-virtual {v0, v6, v5, v1, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 599
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const/16 v1, 0xec

    invoke-virtual {v0, v6, v5, v1, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 600
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const/16 v1, 0x104

    invoke-virtual {v0, v6, v5, v1, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 602
    :cond_2
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStar:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 603
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v8, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 604
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const/16 v1, 0xd3

    invoke-virtual {v0, v6, v5, v1, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 605
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const/16 v1, 0xec

    invoke-virtual {v0, v6, v5, v1, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 607
    :cond_3
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStar:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 608
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v8, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 609
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const/16 v1, 0xd3

    invoke-virtual {v0, v6, v5, v1, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 611
    :cond_4
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockStar:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 612
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    invoke-virtual {v0, v6, v5, v8, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 615
    :cond_5
    return-void

    .line 577
    :cond_6
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_7

    .line 578
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTB:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    rem-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x64

    aget v1, v1, v2

    const/16 v2, 0x11a

    invoke-virtual {v0, v1, v7, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 579
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTB:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    rem-int/lit8 v2, v2, 0x64

    div-int/lit8 v2, v2, 0xa

    aget v1, v1, v2

    const/16 v2, 0x12a

    invoke-virtual {v0, v1, v7, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 580
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTB:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    rem-int/lit8 v2, v2, 0xa

    aget v1, v1, v2

    const/16 v2, 0x13a

    invoke-virtual {v0, v1, v7, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto/16 :goto_0

    .line 582
    :cond_7
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_8

    .line 583
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTB:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    rem-int/lit8 v2, v2, 0x64

    div-int/lit8 v2, v2, 0xa

    aget v1, v1, v2

    const/16 v2, 0x122

    invoke-virtual {v0, v1, v7, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 584
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTB:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    rem-int/lit8 v2, v2, 0xa

    aget v1, v1, v2

    const/16 v2, 0x132

    invoke-virtual {v0, v1, v7, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto/16 :goto_0

    .line 586
    :cond_8
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 587
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRunNumberACTB:[I

    sget-object v2, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v2, v2, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockMoves:I

    rem-int/lit8 v2, v2, 0xa

    aget v1, v1, v2

    const/16 v2, 0x128

    invoke-virtual {v0, v1, v7, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto/16 :goto_0
.end method

.method private GameRunWriteStarMoves()V
    .locals 5

    .prologue
    const v3, 0x7f020051

    const/16 v2, 0xf0

    const/16 v1, 0xa0

    const/16 v4, 0x9

    .line 544
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockGameRunCtrl:I

    packed-switch v0, :pswitch_data_0

    .line 567
    :goto_0
    :pswitch_0
    return-void

    .line 548
    :pswitch_1
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRun00()V

    .line 549
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto :goto_0

    .line 552
    :pswitch_2
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRun01()V

    .line 553
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunWriteMoves()V

    goto :goto_0

    .line 556
    :pswitch_3
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRunWriteMoves()V

    goto :goto_0

    .line 559
    :pswitch_4
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameRun02()V

    .line 560
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto :goto_0

    .line 563
    :pswitch_5
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 564
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f020092

    const/16 v2, 0xb4

    const/16 v3, 0xfa

    invoke-virtual {v0, v1, v2, v3, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto :goto_0

    .line 544
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private GameSelectDifficultyInitFun()V
    .locals 5

    .prologue
    .line 337
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 349
    :cond_0
    return-void

    .line 338
    :cond_1
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-nez v1, :cond_2

    .line 339
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    sget-object v2, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_Difficulty_INT_EVTVal:[I

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_Difficulty_INT_EVTVal:[I

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->MakeEVENT(III)Z

    .line 340
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v2, 0x4

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 341
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iput v0, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->m_BlockControlType:I

    .line 342
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    sget-object v2, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_Difficulty_INT_EVTCtrl:[[I

    sget-object v3, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v3, v3, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockDifficultyLevel:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    iput v2, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 343
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    or-int/lit16 v2, v2, 0x2400

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 344
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v2, 0x5

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    .line 345
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 337
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private GameSelectLevelInitFun(I)V
    .locals 6
    .param p1, "Type"    # I

    .prologue
    const/4 v5, 0x0

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 362
    :goto_1
    return-void

    .line 352
    :cond_0
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-nez v1, :cond_1

    .line 353
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    sget-object v2, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_Level_INT_EVTVal:[I

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_Level_INT_EVTVal:[I

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3, v5}, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->MakeEVENT(III)Z

    .line 354
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v2, 0x5

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 355
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    sget-object v2, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_Level_INT_EVTType:[I

    aget v2, v2, p1

    iput v2, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->m_BlockControlType:I

    .line 356
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iput v5, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 357
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    or-int/lit16 v2, v2, 0x2400

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 358
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v2, 0x4

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    goto :goto_1

    .line 351
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private GameSelectRun()V
    .locals 7

    .prologue
    const/16 v6, 0x12c

    const/4 v5, 0x6

    const/16 v4, 0xf0

    .line 326
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->ExecEVENT()V

    .line 327
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->ShowEVENT()V

    .line 328
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameSelectRunWriteLevel()V

    .line 329
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->GameSelectRunWriteStar()V

    .line 330
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f02003a

    const/16 v2, 0xaa

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v4, v3}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 331
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorld:I

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f0200b0

    invoke-virtual {v0, v1, v6, v4, v5}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 335
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1, v6, v4, v5}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto :goto_0
.end method

.method private GameSelectRunWriteLevel()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    .line 365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v6, 0x9

    if-lt v0, v6, :cond_0

    .line 388
    return-void

    .line 366
    :cond_0
    sget-object v6, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    sget-object v7, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v7, v7, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorld:I

    mul-int/lit8 v7, v7, 0x24

    sget-object v8, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v8, v8, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockDifficultyLevel:I

    mul-int/lit8 v8, v8, 0x9

    add-int/2addr v7, v8

    add-int/2addr v7, v0

    aget v6, v6, v7

    shr-int/lit8 v2, v6, 0x8

    .line 367
    .local v2, "mLevelFlag":I
    sget-object v6, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v6, v6, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockDifficultyLevel:I

    mul-int/lit8 v6, v6, 0x9

    add-int/lit8 v6, v6, 0x1

    add-int v1, v6, v0

    .line 368
    .local v1, "mLevel":I
    sget-object v6, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_SelectLevel_INT_ValType:[I

    mul-int/lit8 v7, v1, 0x3

    aget v4, v6, v7

    .line 369
    .local v4, "mLevelx":I
    sget-object v6, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_SelectLevel_INT_ValType:[I

    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v7, v7, 0x1

    aget v5, v6, v7

    .line 370
    .local v5, "mLevely":I
    sget-object v6, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_SelectLevel_INT_ValType:[I

    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v7, v7, 0x2

    aget v3, v6, v7

    .line 371
    .local v3, "mLevelType":I
    if-nez v2, :cond_1

    .line 372
    if-nez v3, :cond_3

    .line 373
    iget-object v6, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v6}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v6

    sget-object v7, Lcom/jianghe/blockgame/C_BlockMenu;->BlockSelectNumberACTA:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7, v4, v5, v9}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 379
    :cond_1
    :goto_1
    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    .line 380
    if-nez v3, :cond_4

    .line 381
    iget-object v6, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v6}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v6

    sget-object v7, Lcom/jianghe/blockgame/C_BlockMenu;->BlockSelectNumberACTB:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7, v4, v5, v9}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 365
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_3
    iget-object v6, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v6}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v6

    sget-object v7, Lcom/jianghe/blockgame/C_BlockMenu;->BlockSelectNumberACTA:[I

    rem-int/lit8 v8, v1, 0x64

    div-int/lit8 v8, v8, 0xa

    aget v7, v7, v8

    invoke-virtual {v6, v7, v4, v5, v9}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 376
    iget-object v6, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v6}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v6

    sget-object v7, Lcom/jianghe/blockgame/C_BlockMenu;->BlockSelectNumberACTA:[I

    rem-int/lit8 v8, v1, 0xa

    aget v7, v7, v8

    add-int/lit8 v8, v5, 0xa

    invoke-virtual {v6, v7, v4, v8, v9}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto :goto_1

    .line 383
    :cond_4
    iget-object v6, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v6}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v6

    sget-object v7, Lcom/jianghe/blockgame/C_BlockMenu;->BlockSelectNumberACTB:[I

    rem-int/lit8 v8, v1, 0x64

    div-int/lit8 v8, v8, 0xa

    aget v7, v7, v8

    invoke-virtual {v6, v7, v4, v5, v9}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 384
    iget-object v6, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v6}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v6

    sget-object v7, Lcom/jianghe/blockgame/C_BlockMenu;->BlockSelectNumberACTB:[I

    rem-int/lit8 v8, v1, 0xa

    aget v7, v7, v8

    add-int/lit8 v8, v5, 0xa

    invoke-virtual {v6, v7, v4, v8, v9}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto :goto_2
.end method

.method private GameSelectRunWriteStar()V
    .locals 10

    .prologue
    const v9, 0x7f020050

    const/4 v8, 0x5

    .line 391
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v5, 0x9

    if-lt v0, v5, :cond_0

    .line 434
    return-void

    .line 392
    :cond_0
    sget-object v5, Lcom/jianghe/blockgame/C_BlockRecordData;->mUserScore:[I

    sget-object v6, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v6, v6, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockWorld:I

    mul-int/lit8 v6, v6, 0x24

    sget-object v7, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v7, v7, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockDifficultyLevel:I

    mul-int/lit8 v7, v7, 0x9

    add-int/2addr v6, v7

    add-int/2addr v6, v0

    aget v5, v5, v6

    and-int/lit16 v2, v5, 0xff

    .line 393
    .local v2, "mLevelType":I
    sget-object v5, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v5, v5, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockDifficultyLevel:I

    mul-int/lit8 v5, v5, 0x9

    add-int/lit8 v5, v5, 0x1

    add-int v1, v5, v0

    .line 394
    .local v1, "mLevel":I
    sget-object v5, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_SelectStar_INT_Val:[I

    mul-int/lit8 v6, v1, 0x2

    aget v3, v5, v6

    .line 395
    .local v3, "mLevelx":I
    sget-object v5, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_SelectStar_INT_Val:[I

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v4, v5, v6

    .line 396
    .local v4, "mLevely":I
    packed-switch v2, :pswitch_data_0

    .line 425
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    invoke-virtual {v5, v9, v3, v4, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 426
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    add-int/lit8 v6, v4, 0x11

    invoke-virtual {v5, v9, v3, v6, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 427
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    add-int/lit8 v6, v4, 0x22

    invoke-virtual {v5, v9, v3, v6, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 428
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    add-int/lit8 v6, v4, 0x33

    invoke-virtual {v5, v9, v3, v6, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 429
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    add-int/lit8 v6, v4, 0x44

    invoke-virtual {v5, v9, v3, v6, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 391
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :pswitch_1
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    invoke-virtual {v5, v9, v3, v4, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto :goto_1

    .line 403
    :pswitch_2
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    invoke-virtual {v5, v9, v3, v4, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 404
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    add-int/lit8 v6, v4, 0x11

    invoke-virtual {v5, v9, v3, v6, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto :goto_1

    .line 407
    :pswitch_3
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    invoke-virtual {v5, v9, v3, v4, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 408
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    add-int/lit8 v6, v4, 0x11

    invoke-virtual {v5, v9, v3, v6, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 409
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    add-int/lit8 v6, v4, 0x22

    invoke-virtual {v5, v9, v3, v6, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto :goto_1

    .line 412
    :pswitch_4
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    invoke-virtual {v5, v9, v3, v4, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 413
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    add-int/lit8 v6, v4, 0x11

    invoke-virtual {v5, v9, v3, v6, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 414
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    add-int/lit8 v6, v4, 0x22

    invoke-virtual {v5, v9, v3, v6, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 415
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    add-int/lit8 v6, v4, 0x33

    invoke-virtual {v5, v9, v3, v6, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto :goto_1

    .line 418
    :pswitch_5
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    invoke-virtual {v5, v9, v3, v4, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 419
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    add-int/lit8 v6, v4, 0x11

    invoke-virtual {v5, v9, v3, v6, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 420
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    add-int/lit8 v6, v4, 0x22

    invoke-virtual {v5, v9, v3, v6, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 421
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    add-int/lit8 v6, v4, 0x33

    invoke-virtual {v5, v9, v3, v6, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 422
    iget-object v5, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v5}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v5

    add-int/lit8 v6, v4, 0x44

    invoke-virtual {v5, v9, v3, v6, v8}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    goto/16 :goto_1

    .line 396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private GameStartRun()V
    .locals 5

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->ExecEVENT()V

    .line 245
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->ShowEVENT()V

    .line 246
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    const v1, 0x7f02002f

    const/16 v2, 0x28

    const/16 v3, 0xf0

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v3, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 247
    return-void
.end method

.method private GameStartRunInitSoundFun()V
    .locals 8

    .prologue
    const/16 v7, 0xa0

    const/16 v6, 0xa

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 272
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v6, :cond_2

    .line 282
    :goto_3
    return-void

    .line 263
    :cond_0
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-nez v1, :cond_1

    .line 264
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    const/16 v2, 0x184

    invoke-virtual {v1, v7, v2, v3}, Lcom/jianghe/blockgame/C_BLOCK_MENU;->MakeEVENT(III)Z

    .line 265
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v4, v1, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 266
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iput v3, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->m_MenuType:I

    .line 267
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    or-int/lit16 v2, v2, 0x2400

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 268
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v5, v1, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    goto :goto_1

    .line 262
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_2
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-nez v1, :cond_3

    .line 274
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    const/16 v2, 0x1c0

    invoke-virtual {v1, v7, v2, v3}, Lcom/jianghe/blockgame/C_BLOCK_MENU;->MakeEVENT(III)Z

    .line 275
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v4, v1, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 276
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput v2, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->m_MenuType:I

    .line 277
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    or-int/lit16 v2, v2, 0x2400

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 278
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v5, v1, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    goto/16 :goto_3

    .line 272
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method private GameStartRunMenuInitFun(I)V
    .locals 5
    .param p1, "MenuType"    # I

    .prologue
    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 259
    :goto_1
    return-void

    .line 250
    :cond_0
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-nez v1, :cond_1

    .line 251
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    sget-object v2, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_MENU_INT_EVTVal:[I

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_MENU_INT_EVTVal:[I

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/jianghe/blockgame/C_BLOCK_MENU;->MakeEVENT(III)Z

    .line 252
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v2, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_MENU_Ctrl:[I

    aget v2, v2, p1

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 253
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    sget-object v2, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_MENU_Type:[I

    aget v2, v2, p1

    iput v2, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->m_MenuType:I

    .line 254
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    or-int/lit16 v2, v2, 0x2400

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 255
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v2, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_MENU_Depth:[I

    aget v2, v2, p1

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    goto :goto_1

    .line 249
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private GameWorldRun()V
    .locals 0

    .prologue
    .line 1447
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->ExecEVENT()V

    .line 1448
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->ShowEVENT()V

    .line 1449
    return-void
.end method

.method private GameWorldRunWorldInitFun(I)V
    .locals 5
    .param p1, "WorldType"    # I

    .prologue
    .line 1475
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 1485
    :goto_1
    return-void

    .line 1476
    :cond_0
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-nez v1, :cond_1

    .line 1477
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    sget-object v2, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_WORLD_INT_EVTVal:[I

    mul-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_WORLD_INT_EVTVal:[I

    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/jianghe/blockgame/C_BLOCK_MENU;->MakeEVENT(III)Z

    .line 1478
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v2, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_WORLD_Ctrl:[I

    aget v2, v2, p1

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 1479
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    sget-object v2, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_WORLD_Type:[I

    aget v2, v2, p1

    iput v2, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->m_MenuType:I

    .line 1480
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    or-int/lit16 v2, v2, 0x2400

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 1481
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v2, Lcom/jianghe/blockgame/C_BlockData;->BLOCK_WORLD_Depth:[I

    aget v2, v2, p1

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    goto :goto_1

    .line 1475
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private InitEVENT()V
    .locals 7

    .prologue
    const/16 v6, 0x70

    const/16 v5, 0xa

    const/16 v4, 0x14

    .line 84
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    if-nez v1, :cond_0

    .line 85
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    new-array v2, v6, [Lcom/jianghe/blockgame/C_BLOCK_A;

    iput-object v2, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_4

    .line 90
    .end local v0    # "i":I
    :cond_0
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    if-nez v1, :cond_1

    .line 91
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    new-array v2, v4, [Lcom/jianghe/blockgame/C_BLOCK_B;

    iput-object v2, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    .line 92
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-lt v0, v4, :cond_5

    .line 96
    .end local v0    # "i":I
    :cond_1
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    if-nez v1, :cond_2

    .line 97
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    new-array v2, v5, [Lcom/jianghe/blockgame/C_BLOCK_MENU;

    iput-object v2, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    .line 98
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v5, :cond_6

    .line 102
    .end local v0    # "i":I
    :cond_2
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    if-nez v1, :cond_3

    .line 103
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    new-array v2, v4, [Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    iput-object v2, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    .line 104
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-lt v0, v4, :cond_7

    .line 108
    .end local v0    # "i":I
    :cond_3
    return-void

    .line 87
    .restart local v0    # "i":I
    :cond_4
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    new-instance v2, Lcom/jianghe/blockgame/C_BLOCK_A;

    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-direct {v2, v3}, Lcom/jianghe/blockgame/C_BLOCK_A;-><init>(Loms/GameEngine/C_Lib;)V

    aput-object v2, v1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_5
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    new-instance v2, Lcom/jianghe/blockgame/C_BLOCK_B;

    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-direct {v2, v3}, Lcom/jianghe/blockgame/C_BLOCK_B;-><init>(Loms/GameEngine/C_Lib;)V

    aput-object v2, v1, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_6
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    new-instance v2, Lcom/jianghe/blockgame/C_BLOCK_MENU;

    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-direct {v2, v3}, Lcom/jianghe/blockgame/C_BLOCK_MENU;-><init>(Loms/GameEngine/C_Lib;)V

    aput-object v2, v1, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 105
    :cond_7
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    new-instance v2, Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    iget-object v3, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-direct {v2, v3}, Lcom/jianghe/blockgame/C_BLOCK_OTHER;-><init>(Loms/GameEngine/C_Lib;)V

    aput-object v2, v1, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private MenuInitSound01Fun()V
    .locals 7

    .prologue
    const/16 v6, 0x5e

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/16 v3, 0xa

    .line 737
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 747
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v3, :cond_2

    .line 757
    :goto_3
    return-void

    .line 738
    :cond_0
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-nez v1, :cond_1

    .line 739
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    const/16 v2, 0xd2

    invoke-virtual {v1, v6, v2, v4}, Lcom/jianghe/blockgame/C_BLOCK_MENU;->MakeEVENT(III)Z

    .line 740
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v5, v1, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 741
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iput v4, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->m_MenuType:I

    .line 742
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    or-int/lit16 v2, v2, 0x2400

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 743
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v3, v1, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    goto :goto_1

    .line 737
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 748
    :cond_2
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-nez v1, :cond_3

    .line 749
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    const/16 v2, 0x10e

    invoke-virtual {v1, v6, v2, v4}, Lcom/jianghe/blockgame/C_BLOCK_MENU;->MakeEVENT(III)Z

    .line 750
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v5, v1, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 751
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput v2, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->m_MenuType:I

    .line 752
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    or-int/lit16 v2, v2, 0x2400

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 753
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v3, v1, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    goto/16 :goto_3

    .line 747
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method private ShowEVENT()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x70

    if-lt v0, v1, :cond_0

    .line 164
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_2

    .line 169
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_4

    .line 174
    const/4 v0, 0x0

    :goto_3
    if-lt v0, v3, :cond_6

    .line 179
    return-void

    .line 160
    :cond_0
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_A;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v1, :cond_1

    .line 161
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_A_EVT:[Lcom/jianghe/blockgame/C_BLOCK_A;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jianghe/blockgame/C_BLOCK_A;->ShowEVENT(Loms/GameEngine/GameCanvas;)V

    .line 159
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_2
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v1, :cond_3

    .line 166
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_B_EVT:[Lcom/jianghe/blockgame/C_BLOCK_B;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jianghe/blockgame/C_BLOCK_B;->ShowEVENT(Loms/GameEngine/GameCanvas;)V

    .line 164
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    :cond_4
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_MENU;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v1, :cond_5

    .line 171
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_MENU_EVT:[Lcom/jianghe/blockgame/C_BLOCK_MENU;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jianghe/blockgame/C_BLOCK_MENU;->ShowEVENT(Loms/GameEngine/GameCanvas;)V

    .line 169
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 175
    :cond_6
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v1, :cond_7

    .line 176
    sget-object v1, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-object v1, v1, Lcom/jianghe/blockgame/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/jianghe/blockgame/C_BLOCK_OTHER;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jianghe/blockgame/C_BLOCK_OTHER;->ShowEVENT(Loms/GameEngine/GameCanvas;)V

    .line 174
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public GameLoop()V
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    const/4 v1, 0x0

    iput v1, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockCtrl:I

    .line 51
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockExit:Z

    .line 52
    invoke-static {}, Lcom/jianghe/blockgame/C_BlockMedia;->Initialize()V

    .line 53
    :goto_0
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget-boolean v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockExit:Z

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->release()V

    .line 75
    return-void

    .line 55
    :cond_0
    sget-object v0, Lcom/jianghe/blockgame/C_BlockMenu;->cBlockMemory:Lcom/jianghe/blockgame/C_BlockMemory;

    iget v0, v0, Lcom/jianghe/blockgame/C_BlockMemory;->mBlockCtrl:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 58
    :pswitch_0
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameInit()V

    goto :goto_0

    .line 61
    :pswitch_1
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameStart()V

    goto :goto_0

    .line 64
    :pswitch_2
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameSelect()V

    goto :goto_0

    .line 67
    :pswitch_3
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameRun()V

    goto :goto_0

    .line 70
    :pswitch_4
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->BlockGameWorld()V

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/jianghe/blockgame/C_BlockMenu;->ExitEVENT()V

    .line 80
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BlockMenu;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getMediaManager()Loms/GameEngine/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Loms/GameEngine/MediaManager;->release()V

    .line 82
    return-void
.end method
