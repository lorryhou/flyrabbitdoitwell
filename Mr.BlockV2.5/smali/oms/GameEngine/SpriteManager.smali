.class public Loms/GameEngine/SpriteManager;
.super Ljava/lang/Object;
.source "SpriteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loms/GameEngine/SpriteManager$SpriteACTFILE;,
        Loms/GameEngine/SpriteManager$SpriteRESACTINFO;
    }
.end annotation


# instance fields
.field private ACTStructInfo:Loms/GameEngine/ACTStruct;

.field private Sprite:[Loms/GameEngine/SpriteDEF;

.field private SpriteRes:[Loms/GameEngine/SpriteResDEF;

.field private SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

.field private bLoadingSpriteRes:Z

.field private cMatrix:Landroid/graphics/Matrix;

.field private cSpriteACTFile:Loms/GameEngine/SpriteManager$SpriteACTFILE;

.field private mACTLibBeg:I

.field private mContext:Landroid/content/Context;

.field private mIsLogOut:Z

.field private nCurBMPRamSize:J

.field private nCurFlushSpriteNum:I

.field private nCurSegLoadedSpriteNum:I

.field private nCurSpriteFileNum:I

.field private nMaxSpriteNum:I

.field private nMaxSpriteResNum:I

.field private nShowSpriteNum:I

.field private nViewRc:Landroid/graphics/Rect;

.field public pSpriteResSegInfo:[Loms/GameEngine/SpriteResSeg;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "SpriteResNum"    # I
    .param p3, "SpriteNum"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Loms/GameEngine/SpriteManager;->mIsLogOut:Z

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loms/GameEngine/SpriteManager;->nCurBMPRamSize:J

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Loms/GameEngine/SpriteManager;->mACTLibBeg:I

    .line 86
    iput-object p1, p0, Loms/GameEngine/SpriteManager;->mContext:Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Loms/GameEngine/SpriteManager;->Init()V

    .line 88
    invoke-virtual {p0, p2}, Loms/GameEngine/SpriteManager;->InitSpriteRes(I)V

    .line 89
    invoke-virtual {p0, p3}, Loms/GameEngine/SpriteManager;->InitSprite(I)V

    .line 90
    invoke-virtual {p0}, Loms/GameEngine/SpriteManager;->InitSpriteACTFile()V

    .line 91
    invoke-static {}, Loms/GameEngine/GameCanvas;->GetViewRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Loms/GameEngine/SpriteManager;->nViewRc:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Loms/GameEngine/SpriteManager;->cMatrix:Landroid/graphics/Matrix;

    .line 94
    return-void
.end method

.method private GetBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 149
    const/4 v0, 0x1

    .line 150
    .local v0, "bit":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    .line 152
    const/4 v0, 0x1

    .line 166
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x80

    return v1

    .line 154
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_2

    .line 156
    const/4 v0, 0x2

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_3

    .line 160
    const/4 v0, 0x2

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 164
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private GetFileHead(I)V
    .locals 8
    .param p1, "ACTLibId"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 553
    const/4 v2, 0x0

    .line 555
    .local v2, "nBuffBeg":I
    mul-int/lit8 v2, p1, 0x4

    .line 556
    iget-object v4, p0, Loms/GameEngine/SpriteManager;->cSpriteACTFile:Loms/GameEngine/SpriteManager$SpriteACTFILE;

    iget-object v0, v4, Loms/GameEngine/SpriteManager$SpriteACTFILE;->pACTBuff:[B

    .line 557
    .local v0, "buff":[B
    iget-object v4, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iput v6, v4, Loms/GameEngine/ACTStruct;->FileNum:I

    .line 558
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v7, :cond_0

    .line 564
    iget-object v4, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iput v6, v4, Loms/GameEngine/ACTStruct;->FileIndexAddr:I

    .line 565
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v7, :cond_1

    .line 570
    return-void

    .line 559
    :cond_0
    add-int v4, v2, v1

    aget-byte v4, v0, v4

    and-int/lit16 v3, v4, 0xff

    .line 560
    .local v3, "temp":I
    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    .line 561
    iget-object v4, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v5, v4, Loms/GameEngine/ACTStruct;->FileNum:I

    add-int/2addr v5, v3

    iput v5, v4, Loms/GameEngine/ACTStruct;->FileNum:I

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    .end local v3    # "temp":I
    :cond_1
    add-int/lit8 v4, v2, 0x2

    add-int/2addr v4, v1

    aget-byte v4, v0, v4

    and-int/lit16 v3, v4, 0xff

    .line 567
    .restart local v3    # "temp":I
    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    .line 568
    iget-object v4, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v5, v4, Loms/GameEngine/ACTStruct;->FileIndexAddr:I

    add-int/2addr v5, v3

    iput v5, v4, Loms/GameEngine/ACTStruct;->FileIndexAddr:I

    .line 565
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private GetFileHead(Loms/GameEngine/RESApp;I)V
    .locals 8
    .param p1, "rs"    # Loms/GameEngine/RESApp;
    .param p2, "ACTId"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 528
    const/4 v0, 0x4

    .line 529
    .local v0, "FileHeadSize":I
    new-array v1, v0, [B

    .line 530
    .local v1, "buff":[B
    mul-int v4, p2, v0

    invoke-virtual {p1, v1, v4, v0}, Loms/GameEngine/RESApp;->ResRead([BII)V

    .line 531
    iget-object v4, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iput v6, v4, Loms/GameEngine/ACTStruct;->FileNum:I

    .line 532
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v7, :cond_0

    .line 538
    iget-object v4, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iput v6, v4, Loms/GameEngine/ACTStruct;->FileIndexAddr:I

    .line 539
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v7, :cond_1

    .line 544
    return-void

    .line 533
    :cond_0
    aget-byte v4, v1, v2

    and-int/lit16 v3, v4, 0xff

    .line 534
    .local v3, "temp":I
    mul-int/lit8 v4, v2, 0x8

    shl-int/2addr v3, v4

    .line 535
    iget-object v4, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v5, v4, Loms/GameEngine/ACTStruct;->FileNum:I

    add-int/2addr v5, v3

    iput v5, v4, Loms/GameEngine/ACTStruct;->FileNum:I

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    .end local v3    # "temp":I
    :cond_1
    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v3, v4, 0xff

    .line 541
    .restart local v3    # "temp":I
    mul-int/lit8 v4, v2, 0x8

    shl-int/2addr v3, v4

    .line 542
    iget-object v4, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v5, v4, Loms/GameEngine/ACTStruct;->FileIndexAddr:I

    add-int/2addr v5, v3

    iput v5, v4, Loms/GameEngine/ACTStruct;->FileIndexAddr:I

    .line 539
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private GetSpriteHead(I)V
    .locals 8
    .param p1, "ACTLibId"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 579
    mul-int/lit8 v4, p1, 0x8

    iget-object v5, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v5, v5, Loms/GameEngine/ACTStruct;->FileIndexAddr:I

    add-int v2, v4, v5

    .line 581
    .local v2, "nBuffBeg":I
    iget-object v4, p0, Loms/GameEngine/SpriteManager;->cSpriteACTFile:Loms/GameEngine/SpriteManager$SpriteACTFILE;

    iget-object v0, v4, Loms/GameEngine/SpriteManager$SpriteACTFILE;->pACTBuff:[B

    .line 583
    .local v0, "buff":[B
    iget-object v4, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iput v6, v4, Loms/GameEngine/ACTStruct;->SpriteNum:I

    .line 584
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v7, :cond_0

    .line 589
    iget-object v4, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iput v6, v4, Loms/GameEngine/ACTStruct;->SpriteIndexAddr:I

    .line 590
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v7, :cond_1

    .line 595
    return-void

    .line 585
    :cond_0
    add-int v4, v2, v1

    aget-byte v4, v0, v4

    and-int/lit16 v3, v4, 0xff

    .line 586
    .local v3, "temp":I
    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    .line 587
    iget-object v4, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v5, v4, Loms/GameEngine/ACTStruct;->SpriteNum:I

    add-int/2addr v5, v3

    iput v5, v4, Loms/GameEngine/ACTStruct;->SpriteNum:I

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 591
    .end local v3    # "temp":I
    :cond_1
    add-int v4, v2, v1

    add-int/lit8 v4, v4, 0x4

    aget-byte v4, v0, v4

    and-int/lit16 v3, v4, 0xff

    .line 592
    .restart local v3    # "temp":I
    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    .line 593
    iget-object v4, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v5, v4, Loms/GameEngine/ACTStruct;->SpriteIndexAddr:I

    add-int/2addr v5, v3

    iput v5, v4, Loms/GameEngine/ACTStruct;->SpriteIndexAddr:I

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private GetSpriteResID(I)I
    .locals 7
    .param p1, "ACTFileId"    # I

    .prologue
    .line 600
    const/16 v1, 0x14

    .line 604
    .local v1, "SpriteInfoOffset":I
    iget-object v5, p0, Loms/GameEngine/SpriteManager;->cSpriteACTFile:Loms/GameEngine/SpriteManager$SpriteACTFILE;

    iget-object v2, v5, Loms/GameEngine/SpriteManager$SpriteACTFILE;->pACTBuff:[B

    .line 605
    .local v2, "buff":[B
    mul-int v5, p1, v1

    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v6, v6, Loms/GameEngine/ACTStruct;->SpriteIndexAddr:I

    add-int v1, v5, v6

    .line 607
    const/4 v0, 0x0

    .line 608
    .local v0, "ResID":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v5, 0x4

    if-lt v3, v5, :cond_0

    .line 613
    return v0

    .line 609
    :cond_0
    add-int v5, v1, v3

    aget-byte v5, v2, v5

    and-int/lit16 v4, v5, 0xff

    .line 610
    .local v4, "temp":I
    mul-int/lit8 v5, v3, 0x8

    shl-int/2addr v4, v5

    .line 611
    add-int/2addr v0, v4

    .line 608
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private Init()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 97
    iput-object v0, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    .line 98
    iput v2, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    .line 99
    iput-object v0, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    .line 100
    iput v2, p0, Loms/GameEngine/SpriteManager;->nCurSpriteFileNum:I

    .line 101
    iput-boolean v2, p0, Loms/GameEngine/SpriteManager;->bLoadingSpriteRes:Z

    .line 102
    iput-object v0, p0, Loms/GameEngine/SpriteManager;->pSpriteResSegInfo:[Loms/GameEngine/SpriteResSeg;

    .line 103
    iput v2, p0, Loms/GameEngine/SpriteManager;->nCurSegLoadedSpriteNum:I

    .line 104
    iput-object v0, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    .line 105
    iput-object v0, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    .line 106
    iput v2, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteNum:I

    .line 107
    iput v2, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    .line 108
    iput v2, p0, Loms/GameEngine/SpriteManager;->nCurFlushSpriteNum:I

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loms/GameEngine/SpriteManager;->nCurBMPRamSize:J

    .line 110
    iput v2, p0, Loms/GameEngine/SpriteManager;->mACTLibBeg:I

    .line 111
    return-void
.end method

.method private ReadSpriteResInfo(II)V
    .locals 12
    .param p1, "ACTFileId"    # I
    .param p2, "ACTLibId"    # I

    .prologue
    const/high16 v11, 0x10000

    const/4 v10, 0x2

    const/4 v9, 0x0

    const v8, 0x8000

    .line 617
    const/4 v1, 0x0

    .line 620
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const/16 v0, 0x14

    .line 624
    .local v0, "SpriteInfoOffset":I
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->cSpriteACTFile:Loms/GameEngine/SpriteManager$SpriteACTFILE;

    iget-object v2, v6, Loms/GameEngine/SpriteManager$SpriteACTFILE;->pACTBuff:[B

    .line 625
    .local v2, "buff":[B
    mul-int v6, p1, v0

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->SpriteIndexAddr:I

    add-int v0, v6, v7

    .line 627
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iput v9, v6, Loms/GameEngine/ACTStruct;->ResID:I

    .line 628
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v6, 0x4

    if-lt v3, v6, :cond_a

    .line 633
    add-int/lit8 v0, v0, 0x4

    .line 635
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iput v9, v6, Loms/GameEngine/ACTStruct;->CenterX:I

    .line 636
    const/4 v3, 0x0

    :goto_1
    if-lt v3, v10, :cond_b

    .line 641
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v6, v6, Loms/GameEngine/ACTStruct;->CenterX:I

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_0

    .line 642
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->CenterX:I

    sub-int v7, v11, v7

    neg-int v7, v7

    iput v7, v6, Loms/GameEngine/ACTStruct;->CenterX:I

    .line 643
    :cond_0
    add-int/lit8 v0, v0, 0x2

    .line 645
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iput v9, v6, Loms/GameEngine/ACTStruct;->CenterY:I

    .line 646
    const/4 v3, 0x0

    :goto_2
    if-lt v3, v10, :cond_c

    .line 651
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v6, v6, Loms/GameEngine/ACTStruct;->CenterY:I

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_1

    .line 652
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->CenterY:I

    sub-int v7, v11, v7

    neg-int v7, v7

    iput v7, v6, Loms/GameEngine/ACTStruct;->CenterY:I

    .line 653
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 655
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iput v9, v6, Loms/GameEngine/ACTStruct;->XHitL:I

    .line 656
    const/4 v3, 0x0

    :goto_3
    if-lt v3, v10, :cond_d

    .line 661
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v6, v6, Loms/GameEngine/ACTStruct;->XHitL:I

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_2

    .line 662
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->XHitL:I

    sub-int v7, v11, v7

    neg-int v7, v7

    iput v7, v6, Loms/GameEngine/ACTStruct;->XHitL:I

    .line 663
    :cond_2
    add-int/lit8 v0, v0, 0x2

    .line 666
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iput v9, v6, Loms/GameEngine/ACTStruct;->XHitR:I

    .line 667
    const/4 v3, 0x0

    :goto_4
    if-lt v3, v10, :cond_e

    .line 672
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v6, v6, Loms/GameEngine/ACTStruct;->XHitR:I

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_3

    .line 673
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->XHitR:I

    sub-int v7, v11, v7

    neg-int v7, v7

    iput v7, v6, Loms/GameEngine/ACTStruct;->XHitR:I

    .line 674
    :cond_3
    add-int/lit8 v0, v0, 0x2

    .line 677
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iput v9, v6, Loms/GameEngine/ACTStruct;->YHitU:I

    .line 678
    const/4 v3, 0x0

    :goto_5
    if-lt v3, v10, :cond_f

    .line 683
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v6, v6, Loms/GameEngine/ACTStruct;->YHitU:I

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_4

    .line 684
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->YHitU:I

    sub-int v7, v11, v7

    neg-int v7, v7

    iput v7, v6, Loms/GameEngine/ACTStruct;->YHitU:I

    .line 685
    :cond_4
    add-int/lit8 v0, v0, 0x2

    .line 687
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iput v9, v6, Loms/GameEngine/ACTStruct;->YHitD:I

    .line 688
    const/4 v3, 0x0

    :goto_6
    if-lt v3, v10, :cond_10

    .line 693
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v6, v6, Loms/GameEngine/ACTStruct;->YHitD:I

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_5

    .line 694
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->YHitD:I

    sub-int v7, v11, v7

    neg-int v7, v7

    iput v7, v6, Loms/GameEngine/ACTStruct;->YHitD:I

    .line 695
    :cond_5
    add-int/lit8 v0, v0, 0x2

    .line 697
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iput v9, v6, Loms/GameEngine/ACTStruct;->ZHitF:I

    .line 698
    const/4 v3, 0x0

    :goto_7
    if-lt v3, v10, :cond_11

    .line 703
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v6, v6, Loms/GameEngine/ACTStruct;->ZHitF:I

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_6

    .line 704
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->ZHitF:I

    sub-int v7, v11, v7

    neg-int v7, v7

    iput v7, v6, Loms/GameEngine/ACTStruct;->ZHitF:I

    .line 705
    :cond_6
    add-int/lit8 v0, v0, 0x2

    .line 707
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iput v9, v6, Loms/GameEngine/ACTStruct;->ZHitB:I

    .line 708
    const/4 v3, 0x0

    :goto_8
    if-lt v3, v10, :cond_12

    .line 713
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v6, v6, Loms/GameEngine/ACTStruct;->ZHitB:I

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_7

    .line 714
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->ZHitB:I

    sub-int v7, v11, v7

    neg-int v7, v7

    iput v7, v6, Loms/GameEngine/ACTStruct;->ZHitB:I

    .line 715
    :cond_7
    add-int/lit8 v0, v0, 0x2

    .line 717
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->ResID:I

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 718
    if-nez v1, :cond_8

    .line 719
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->ResID:I

    invoke-static {v6, v7}, Loms/GameEngine/PackageManager;->createBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 720
    :cond_8
    if-eqz v1, :cond_9

    .line 722
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v6, v6, Loms/GameEngine/ACTStruct;->ResID:I

    const v7, 0xffff

    and-int v4, v6, v7

    .line 723
    .local v4, "nResId":I
    iget v6, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    if-lt v4, v6, :cond_13

    .line 749
    .end local v4    # "nResId":I
    :cond_9
    :goto_9
    return-void

    .line 629
    :cond_a
    add-int v6, v0, v3

    aget-byte v6, v2, v6

    and-int/lit16 v5, v6, 0xff

    .line 630
    .local v5, "temp":I
    mul-int/lit8 v6, v3, 0x8

    shl-int/2addr v5, v6

    .line 631
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v6, Loms/GameEngine/ACTStruct;->ResID:I

    add-int/2addr v7, v5

    iput v7, v6, Loms/GameEngine/ACTStruct;->ResID:I

    .line 628
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 637
    .end local v5    # "temp":I
    :cond_b
    add-int v6, v0, v3

    aget-byte v6, v2, v6

    and-int/lit16 v5, v6, 0xff

    .line 638
    .restart local v5    # "temp":I
    mul-int/lit8 v6, v3, 0x8

    shl-int/2addr v5, v6

    .line 639
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v6, Loms/GameEngine/ACTStruct;->CenterX:I

    add-int/2addr v7, v5

    iput v7, v6, Loms/GameEngine/ACTStruct;->CenterX:I

    .line 636
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 647
    .end local v5    # "temp":I
    :cond_c
    add-int v6, v0, v3

    aget-byte v6, v2, v6

    and-int/lit16 v5, v6, 0xff

    .line 648
    .restart local v5    # "temp":I
    mul-int/lit8 v6, v3, 0x8

    shl-int/2addr v5, v6

    .line 649
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v6, Loms/GameEngine/ACTStruct;->CenterY:I

    add-int/2addr v7, v5

    iput v7, v6, Loms/GameEngine/ACTStruct;->CenterY:I

    .line 646
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 657
    .end local v5    # "temp":I
    :cond_d
    add-int v6, v0, v3

    aget-byte v6, v2, v6

    and-int/lit16 v5, v6, 0xff

    .line 658
    .restart local v5    # "temp":I
    mul-int/lit8 v6, v3, 0x8

    shl-int/2addr v5, v6

    .line 659
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v6, Loms/GameEngine/ACTStruct;->XHitL:I

    add-int/2addr v7, v5

    iput v7, v6, Loms/GameEngine/ACTStruct;->XHitL:I

    .line 656
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 668
    .end local v5    # "temp":I
    :cond_e
    add-int v6, v0, v3

    aget-byte v6, v2, v6

    and-int/lit16 v5, v6, 0xff

    .line 669
    .restart local v5    # "temp":I
    mul-int/lit8 v6, v3, 0x8

    shl-int/2addr v5, v6

    .line 670
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v6, Loms/GameEngine/ACTStruct;->XHitR:I

    add-int/2addr v7, v5

    iput v7, v6, Loms/GameEngine/ACTStruct;->XHitR:I

    .line 667
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 679
    .end local v5    # "temp":I
    :cond_f
    add-int v6, v0, v3

    aget-byte v6, v2, v6

    and-int/lit16 v5, v6, 0xff

    .line 680
    .restart local v5    # "temp":I
    mul-int/lit8 v6, v3, 0x8

    shl-int/2addr v5, v6

    .line 681
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v6, Loms/GameEngine/ACTStruct;->YHitU:I

    add-int/2addr v7, v5

    iput v7, v6, Loms/GameEngine/ACTStruct;->YHitU:I

    .line 678
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 689
    .end local v5    # "temp":I
    :cond_10
    add-int v6, v0, v3

    aget-byte v6, v2, v6

    and-int/lit16 v5, v6, 0xff

    .line 690
    .restart local v5    # "temp":I
    mul-int/lit8 v6, v3, 0x8

    shl-int/2addr v5, v6

    .line 691
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v6, Loms/GameEngine/ACTStruct;->YHitD:I

    add-int/2addr v7, v5

    iput v7, v6, Loms/GameEngine/ACTStruct;->YHitD:I

    .line 688
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 699
    .end local v5    # "temp":I
    :cond_11
    add-int v6, v0, v3

    aget-byte v6, v2, v6

    and-int/lit16 v5, v6, 0xff

    .line 700
    .restart local v5    # "temp":I
    mul-int/lit8 v6, v3, 0x8

    shl-int/2addr v5, v6

    .line 701
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v6, Loms/GameEngine/ACTStruct;->ZHitF:I

    add-int/2addr v7, v5

    iput v7, v6, Loms/GameEngine/ACTStruct;->ZHitF:I

    .line 698
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 709
    .end local v5    # "temp":I
    :cond_12
    add-int v6, v0, v3

    aget-byte v6, v2, v6

    and-int/lit16 v5, v6, 0xff

    .line 710
    .restart local v5    # "temp":I
    mul-int/lit8 v6, v3, 0x8

    shl-int/2addr v5, v6

    .line 711
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v6, Loms/GameEngine/ACTStruct;->ZHitB:I

    add-int/2addr v7, v5

    iput v7, v6, Loms/GameEngine/ACTStruct;->ZHitB:I

    .line 708
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    .line 725
    .end local v5    # "temp":I
    .restart local v4    # "nResId":I
    :cond_13
    iget-boolean v6, p0, Loms/GameEngine/SpriteManager;->mIsLogOut:Z

    if-eqz v6, :cond_14

    .line 726
    const-string v6, "GameEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ResID: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v8, v8, Loms/GameEngine/ACTStruct;->ResID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v6, "GameEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Width: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const-string v6, "GameEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Height: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string v6, "GameEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "OPtions: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v6, "GameEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Picture use RAM: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Loms/GameEngine/SpriteManager;->nCurBMPRamSize:J

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KBytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_14
    iget-wide v6, p0, Loms/GameEngine/SpriteManager;->nCurBMPRamSize:J

    invoke-direct {p0, v1}, Loms/GameEngine/SpriteManager;->GetBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Loms/GameEngine/SpriteManager;->nCurBMPRamSize:J

    .line 736
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v6, v6, v4

    iput-object v1, v6, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    .line 737
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v6, v6, v4

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->ResID:I

    iput v7, v6, Loms/GameEngine/SpriteResDEF;->SpriteResID:I

    .line 738
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v6, v6, v4

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->CenterX:I

    iput v7, v6, Loms/GameEngine/SpriteResDEF;->SpriteCenterX:I

    .line 739
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v6, v6, v4

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->CenterY:I

    iput v7, v6, Loms/GameEngine/SpriteResDEF;->SpriteCenterY:I

    .line 740
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v6, v6, v4

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->XHitL:I

    iput v7, v6, Loms/GameEngine/SpriteResDEF;->SpriteXHitL:I

    .line 741
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v6, v6, v4

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->XHitR:I

    iput v7, v6, Loms/GameEngine/SpriteResDEF;->SpriteXHitR:I

    .line 742
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v6, v6, v4

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->YHitU:I

    iput v7, v6, Loms/GameEngine/SpriteResDEF;->SpriteYHitU:I

    .line 743
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v6, v6, v4

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->YHitD:I

    iput v7, v6, Loms/GameEngine/SpriteResDEF;->SpriteYHitD:I

    .line 744
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v6, v6, v4

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->ZHitF:I

    iput v7, v6, Loms/GameEngine/SpriteResDEF;->SpriteZHitF:I

    .line 745
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v6, v6, v4

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v7, v7, Loms/GameEngine/ACTStruct;->ZHitB:I

    iput v7, v6, Loms/GameEngine/SpriteResDEF;->SpriteZHitB:I

    .line 746
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    aget-object v6, v6, v4

    int-to-short v7, p2

    iput-short v7, v6, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    .line 747
    iget-object v6, p0, Loms/GameEngine/SpriteManager;->pSpriteResSegInfo:[Loms/GameEngine/SpriteResSeg;

    aget-object v6, v6, p2

    iget v7, v6, Loms/GameEngine/SpriteResSeg;->SegSize:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x4

    add-int/lit16 v8, v8, 0x80

    add-int/2addr v7, v8

    iput v7, v6, Loms/GameEngine/SpriteResSeg;->SegSize:I

    goto/16 :goto_9
.end method


# virtual methods
.method public CHKACTTouch(IIIIII)Z
    .locals 13
    .param p1, "SACTName"    # I
    .param p2, "SXVal"    # I
    .param p3, "SYVal"    # I
    .param p4, "DACTName"    # I
    .param p5, "DXVal"    # I
    .param p6, "DYVal"    # I

    .prologue
    .line 1185
    invoke-virtual {p0, p1}, Loms/GameEngine/SpriteManager;->GetSpriteXHitL(I)I

    move-result v1

    .line 1186
    .local v1, "SXHitL":I
    invoke-virtual {p0, p1}, Loms/GameEngine/SpriteManager;->GetSpriteXHitR(I)I

    move-result v3

    .line 1187
    .local v3, "SXHitR":I
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Loms/GameEngine/SpriteManager;->GetSpriteXHitL(I)I

    move-result v4

    .line 1188
    .local v4, "DXHitL":I
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Loms/GameEngine/SpriteManager;->GetSpriteXHitR(I)I

    move-result v6

    .local v6, "DXHitR":I
    move v2, p2

    move/from16 v5, p5

    .line 1190
    invoke-static/range {v1 .. v6}, Loms/GameEngine/GameMath;->CHKTouch(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1191
    invoke-virtual {p0, p1}, Loms/GameEngine/SpriteManager;->GetSpriteYHitU(I)I

    move-result v7

    .line 1192
    .local v7, "SYHitU":I
    invoke-virtual {p0, p1}, Loms/GameEngine/SpriteManager;->GetSpriteYHitD(I)I

    move-result v9

    .line 1193
    .local v9, "SYHitD":I
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Loms/GameEngine/SpriteManager;->GetSpriteYHitU(I)I

    move-result v10

    .line 1194
    .local v10, "DYHitU":I
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Loms/GameEngine/SpriteManager;->GetSpriteYHitD(I)I

    move-result v12

    .local v12, "DYHitD":I
    move/from16 v8, p3

    move/from16 v11, p6

    .line 1195
    invoke-static/range {v7 .. v12}, Loms/GameEngine/GameMath;->CHKTouch(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1196
    const/4 v2, 0x1

    .line 1199
    .end local v7    # "SYHitU":I
    .end local v9    # "SYHitD":I
    .end local v10    # "DYHitU":I
    .end local v12    # "DYHitD":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public CHKACTTouch(IIIIIIIII)Z
    .locals 13
    .param p1, "SXVal"    # I
    .param p2, "SYVal"    # I
    .param p3, "SXHitL"    # I
    .param p4, "SXHitR"    # I
    .param p5, "SYHitU"    # I
    .param p6, "SYHitD"    # I
    .param p7, "DACTName"    # I
    .param p8, "DXVal"    # I
    .param p9, "DYVal"    # I

    .prologue
    .line 1215
    move/from16 v0, p7

    invoke-virtual {p0, v0}, Loms/GameEngine/SpriteManager;->GetSpriteXHitL(I)I

    move-result v4

    .line 1216
    .local v4, "DXHitL":I
    move/from16 v0, p7

    invoke-virtual {p0, v0}, Loms/GameEngine/SpriteManager;->GetSpriteXHitR(I)I

    move-result v6

    .local v6, "DXHitR":I
    move/from16 v1, p3

    move v2, p1

    move/from16 v3, p4

    move/from16 v5, p8

    .line 1217
    invoke-static/range {v1 .. v6}, Loms/GameEngine/GameMath;->CHKTouch(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1218
    move/from16 v0, p7

    invoke-virtual {p0, v0}, Loms/GameEngine/SpriteManager;->GetSpriteYHitU(I)I

    move-result v10

    .line 1219
    .local v10, "DYHitU":I
    move/from16 v0, p7

    invoke-virtual {p0, v0}, Loms/GameEngine/SpriteManager;->GetSpriteYHitD(I)I

    move-result v12

    .local v12, "DYHitD":I
    move/from16 v7, p5

    move v8, p2

    move/from16 v9, p6

    move/from16 v11, p9

    .line 1220
    invoke-static/range {v7 .. v12}, Loms/GameEngine/GameMath;->CHKTouch(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1221
    const/4 v1, 0x1

    .line 1224
    .end local v10    # "DYHitU":I
    .end local v12    # "DYHitD":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ClearACT()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000

    .line 828
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    if-lt v0, v1, :cond_0

    .line 836
    const/4 v1, 0x0

    iput v1, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    .line 837
    return-void

    .line 829
    :cond_0
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v1, v1, v0

    const/4 v2, -0x1

    iput-short v2, v1, Loms/GameEngine/SpriteDEF;->SpriteResID:S

    .line 831
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput v2, v1, Loms/GameEngine/SpriteDEF;->Rotate:F

    .line 832
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v1, v1, v0

    iput v3, v1, Loms/GameEngine/SpriteDEF;->ScaleX:F

    .line 833
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v1, v1, v0

    iput v3, v1, Loms/GameEngine/SpriteDEF;->ScaleY:F

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public CloseSpriteACTFile()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Loms/GameEngine/SpriteManager;->cSpriteACTFile:Loms/GameEngine/SpriteManager$SpriteACTFILE;

    invoke-virtual {v0}, Loms/GameEngine/SpriteManager$SpriteACTFILE;->release()V

    .line 406
    return-void
.end method

.method public FreeACT(I)V
    .locals 8
    .param p1, "ACTLibIdx"    # I

    .prologue
    const/4 v6, -0x1

    .line 771
    iget v2, p0, Loms/GameEngine/SpriteManager;->mACTLibBeg:I

    add-int/2addr p1, v2

    .line 772
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    if-lt v1, v2, :cond_1

    .line 786
    iget-boolean v2, p0, Loms/GameEngine/SpriteManager;->mIsLogOut:Z

    if-eqz v2, :cond_0

    .line 787
    const-string v2, "GameEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Picture use RAM: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Loms/GameEngine/SpriteManager;->nCurBMPRamSize:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " KBytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 790
    return-void

    .line 773
    :cond_1
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    aget-object v2, v2, v1

    iget-short v2, v2, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    if-ne v2, p1, :cond_3

    .line 774
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v2, v2, v1

    iget-object v2, v2, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 775
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v2, v2, v1

    iget-object v2, v2, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Loms/GameEngine/SpriteManager;->GetBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 776
    .local v0, "Size":I
    iget-wide v2, p0, Loms/GameEngine/SpriteManager;->nCurBMPRamSize:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Loms/GameEngine/SpriteManager;->nCurBMPRamSize:J

    .line 777
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->pSpriteResSegInfo:[Loms/GameEngine/SpriteResSeg;

    aget-object v2, v2, p1

    iget v3, v2, Loms/GameEngine/SpriteResSeg;->SegSize:I

    sub-int/2addr v3, v0

    iput v3, v2, Loms/GameEngine/SpriteResSeg;->SegSize:I

    .line 778
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->pSpriteResSegInfo:[Loms/GameEngine/SpriteResSeg;

    aget-object v2, v2, p1

    iput-short v6, v2, Loms/GameEngine/SpriteResSeg;->SegIdx:S

    .line 779
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v2, v2, v1

    iget-object v2, v2, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 781
    .end local v0    # "Size":I
    :cond_2
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    .line 782
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v2, v2, v1

    iput v6, v2, Loms/GameEngine/SpriteResDEF;->SpriteResID:I

    .line 783
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    aget-object v2, v2, v1

    iput-short v6, v2, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    .line 772
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public FreeACT(II)V
    .locals 7
    .param p1, "ACTLibId"    # I
    .param p2, "ACTFrameID"    # I

    .prologue
    const/4 v5, -0x1

    .line 795
    const/high16 v1, 0x7f020000

    if-ge p2, v1, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    iget v1, p0, Loms/GameEngine/SpriteManager;->mACTLibBeg:I

    add-int/2addr p1, v1

    .line 798
    const v1, 0xffff

    and-int/2addr p2, v1

    .line 799
    iget v1, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    if-ge p2, v1, :cond_3

    .line 800
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    aget-object v1, v1, p2

    iget-short v1, v1, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    if-eq v1, v5, :cond_3

    .line 801
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, p2

    iget-object v1, v1, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 802
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, p2

    iget-object v1, v1, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Loms/GameEngine/SpriteManager;->GetBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 803
    .local v0, "Size":I
    iget-wide v1, p0, Loms/GameEngine/SpriteManager;->nCurBMPRamSize:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Loms/GameEngine/SpriteManager;->nCurBMPRamSize:J

    .line 804
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->pSpriteResSegInfo:[Loms/GameEngine/SpriteResSeg;

    aget-object v1, v1, p1

    iget v2, v1, Loms/GameEngine/SpriteResSeg;->SegSize:I

    sub-int/2addr v2, v0

    iput v2, v1, Loms/GameEngine/SpriteResSeg;->SegSize:I

    .line 805
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, p2

    iget-object v1, v1, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 807
    .end local v0    # "Size":I
    :cond_2
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    iput-object v2, v1, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    .line 808
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, p2

    iput v5, v1, Loms/GameEngine/SpriteResDEF;->SpriteResID:I

    .line 809
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    aget-object v1, v1, p2

    iput-short v5, v1, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    .line 812
    :cond_3
    iget-boolean v1, p0, Loms/GameEngine/SpriteManager;->mIsLogOut:Z

    if-eqz v1, :cond_0

    .line 813
    const-string v1, "GameEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Picture use RAM: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Loms/GameEngine/SpriteManager;->nCurBMPRamSize:J

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " KBytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public FreeAllACT()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 753
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    if-lt v0, v1, :cond_0

    .line 763
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Loms/GameEngine/SpriteManager;->nCurBMPRamSize:J

    .line 764
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 765
    return-void

    .line 754
    :cond_0
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, v0

    iget-object v1, v1, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 755
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, v0

    iget-object v1, v1, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 756
    :cond_1
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    .line 757
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, v0

    iput v3, v1, Loms/GameEngine/SpriteResDEF;->SpriteResID:I

    .line 758
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    aget-object v1, v1, v0

    iput-short v3, v1, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    .line 759
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->pSpriteResSegInfo:[Loms/GameEngine/SpriteResSeg;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput v2, v1, Loms/GameEngine/SpriteResSeg;->SegSize:I

    .line 760
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->pSpriteResSegInfo:[Loms/GameEngine/SpriteResSeg;

    aget-object v1, v1, v0

    iput-short v3, v1, Loms/GameEngine/SpriteResSeg;->SegIdx:S

    .line 753
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public GetACTCount(II)I
    .locals 2
    .param p1, "ACTId"    # I
    .param p2, "ACTFileName"    # I

    .prologue
    .line 376
    iget v1, p0, Loms/GameEngine/SpriteManager;->mACTLibBeg:I

    add-int/2addr p1, v1

    .line 377
    new-instance v0, Loms/GameEngine/RESApp;

    iget-object v1, p0, Loms/GameEngine/SpriteManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Loms/GameEngine/RESApp;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, "rs":Loms/GameEngine/RESApp;
    invoke-virtual {v0, p2}, Loms/GameEngine/RESApp;->OpenRes(I)V

    .line 379
    invoke-direct {p0, v0, p1}, Loms/GameEngine/SpriteManager;->GetFileHead(Loms/GameEngine/RESApp;I)V

    .line 380
    invoke-virtual {v0}, Loms/GameEngine/RESApp;->CloseRes()V

    .line 381
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v1, v1, Loms/GameEngine/ACTStruct;->FileNum:I

    return v1
.end method

.method public GetBMPRamSize()J
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Loms/GameEngine/SpriteManager;->nCurBMPRamSize:J

    return-wide v0
.end method

.method public GetSpriteBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 819
    const/4 v0, -0x1

    .line 820
    .local v0, "SpriteIdx":I
    const/high16 v1, 0x7f020000

    if-ge p1, v1, :cond_0

    .line 821
    const/4 v1, 0x0

    .line 823
    :goto_0
    return-object v1

    .line 822
    :cond_0
    const v1, 0xffff

    and-int v0, p1, v1

    .line 823
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, v0

    iget-object v1, v1, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public GetSpriteSegSize(I)J
    .locals 2
    .param p1, "ACTLibIdx"    # I

    .prologue
    .line 1075
    iget v0, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    if-lt p1, v0, :cond_0

    .line 1076
    const-wide/16 v0, 0x0

    .line 1078
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Loms/GameEngine/SpriteManager;->pSpriteResSegInfo:[Loms/GameEngine/SpriteResSeg;

    aget-object v0, v0, p1

    iget v0, v0, Loms/GameEngine/SpriteResSeg;->SegSize:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public GetSpriteXHitL(I)I
    .locals 4
    .param p1, "SpriteID"    # I

    .prologue
    const v3, 0xffff

    .line 1087
    const/4 v0, -0x1

    .line 1089
    .local v0, "SpriteIdx":I
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    and-int v2, p1, v3

    aget-object v1, v1, v2

    iget-short v1, v1, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1090
    and-int v0, p1, v3

    .line 1091
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, v0

    iget v1, v1, Loms/GameEngine/SpriteResDEF;->SpriteXHitL:I

    .line 1093
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public GetSpriteXHitR(I)I
    .locals 4
    .param p1, "SpriteID"    # I

    .prologue
    const v3, 0xffff

    .line 1102
    const/4 v0, -0x1

    .line 1104
    .local v0, "SpriteIdx":I
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    and-int v2, p1, v3

    aget-object v1, v1, v2

    iget-short v1, v1, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1105
    and-int v0, p1, v3

    .line 1106
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, v0

    iget v1, v1, Loms/GameEngine/SpriteResDEF;->SpriteXHitR:I

    .line 1108
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public GetSpriteYHitD(I)I
    .locals 4
    .param p1, "SpriteID"    # I

    .prologue
    const v3, 0xffff

    .line 1132
    const/4 v0, -0x1

    .line 1134
    .local v0, "SpriteIdx":I
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    and-int v2, p1, v3

    aget-object v1, v1, v2

    iget-short v1, v1, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1135
    and-int v0, p1, v3

    .line 1136
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, v0

    iget v1, v1, Loms/GameEngine/SpriteResDEF;->SpriteYHitD:I

    .line 1138
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public GetSpriteYHitU(I)I
    .locals 4
    .param p1, "SpriteID"    # I

    .prologue
    const v3, 0xffff

    .line 1117
    const/4 v0, -0x1

    .line 1119
    .local v0, "SpriteIdx":I
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    and-int v2, p1, v3

    aget-object v1, v1, v2

    iget-short v1, v1, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1120
    and-int v0, p1, v3

    .line 1121
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, v0

    iget v1, v1, Loms/GameEngine/SpriteResDEF;->SpriteYHitU:I

    .line 1123
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public GetSpriteZHitB(I)I
    .locals 4
    .param p1, "SpriteID"    # I

    .prologue
    const v3, 0xffff

    .line 1162
    const/4 v0, -0x1

    .line 1164
    .local v0, "SpriteIdx":I
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    and-int v2, p1, v3

    aget-object v1, v1, v2

    iget-short v1, v1, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1165
    and-int v0, p1, v3

    .line 1166
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, v0

    iget v1, v1, Loms/GameEngine/SpriteResDEF;->SpriteZHitB:I

    .line 1168
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public GetSpriteZHitF(I)I
    .locals 4
    .param p1, "SpriteID"    # I

    .prologue
    const v3, 0xffff

    .line 1147
    const/4 v0, -0x1

    .line 1149
    .local v0, "SpriteIdx":I
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    and-int v2, p1, v3

    aget-object v1, v1, v2

    iget-short v1, v1, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1150
    and-int v0, p1, v3

    .line 1151
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, v0

    iget v1, v1, Loms/GameEngine/SpriteResDEF;->SpriteZHitF:I

    .line 1153
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public InitACT(II)V
    .locals 2
    .param p1, "ACTLibId"    # I
    .param p2, "ACTFileName"    # I

    .prologue
    .line 331
    iget v0, p0, Loms/GameEngine/SpriteManager;->mACTLibBeg:I

    add-int/2addr p1, v0

    .line 332
    iget v0, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    if-lt p1, v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Loms/GameEngine/SpriteManager;->pSpriteResSegInfo:[Loms/GameEngine/SpriteResSeg;

    aget-object v0, v0, p1

    iget-short v0, v0, Loms/GameEngine/SpriteResSeg;->SegIdx:S

    if-eq v0, p1, :cond_0

    .line 336
    invoke-virtual {p0, p2, p1}, Loms/GameEngine/SpriteManager;->InitSpriteResInfo(II)V

    .line 337
    invoke-virtual {p0}, Loms/GameEngine/SpriteManager;->CloseSpriteACTFile()V

    .line 338
    iget-object v0, p0, Loms/GameEngine/SpriteManager;->pSpriteResSegInfo:[Loms/GameEngine/SpriteResSeg;

    aget-object v0, v0, p1

    int-to-short v1, p1

    iput-short v1, v0, Loms/GameEngine/SpriteResSeg;->SegIdx:S

    goto :goto_0
.end method

.method public InitSprite(I)V
    .locals 3
    .param p1, "SpriteNum"    # I

    .prologue
    .line 316
    const/4 v1, 0x0

    iput v1, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    .line 317
    iput p1, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteNum:I

    .line 318
    iget v1, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteNum:I

    if-nez v1, :cond_0

    .line 319
    const/4 v1, 0x1

    iput v1, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteNum:I

    .line 320
    :cond_0
    iget v1, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteNum:I

    new-array v1, v1, [Loms/GameEngine/SpriteDEF;

    iput-object v1, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    .line 321
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteNum:I

    if-lt v0, v1, :cond_1

    .line 324
    return-void

    .line 322
    :cond_1
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    new-instance v2, Loms/GameEngine/SpriteDEF;

    invoke-direct {v2}, Loms/GameEngine/SpriteDEF;-><init>()V

    aput-object v2, v1, v0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public InitSpriteACTFile()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Loms/GameEngine/SpriteManager$SpriteACTFILE;

    invoke-direct {v0}, Loms/GameEngine/SpriteManager$SpriteACTFILE;-><init>()V

    iput-object v0, p0, Loms/GameEngine/SpriteManager;->cSpriteACTFile:Loms/GameEngine/SpriteManager$SpriteACTFILE;

    .line 179
    return-void
.end method

.method public InitSpriteRes(I)V
    .locals 4
    .param p1, "SpriteResNum"    # I

    .prologue
    const/4 v3, 0x0

    .line 290
    iput p1, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    .line 291
    if-gtz p1, :cond_0

    .line 292
    const/4 v1, 0x1

    iput v1, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    .line 293
    :cond_0
    iget v1, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    new-array v1, v1, [Loms/GameEngine/SpriteResDEF;

    iput-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    .line 294
    iget v1, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    new-array v1, v1, [Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    iput-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    .line 295
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    if-lt v0, v1, :cond_1

    .line 300
    iget v1, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    new-array v1, v1, [Loms/GameEngine/SpriteResSeg;

    iput-object v1, p0, Loms/GameEngine/SpriteManager;->pSpriteResSegInfo:[Loms/GameEngine/SpriteResSeg;

    .line 302
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    if-lt v0, v1, :cond_2

    .line 306
    new-instance v1, Loms/GameEngine/ACTStruct;

    invoke-direct {v1}, Loms/GameEngine/ACTStruct;-><init>()V

    iput-object v1, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    .line 307
    iput-boolean v3, p0, Loms/GameEngine/SpriteManager;->bLoadingSpriteRes:Z

    .line 308
    iput v3, p0, Loms/GameEngine/SpriteManager;->nCurSpriteFileNum:I

    .line 309
    return-void

    .line 296
    :cond_1
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    new-instance v2, Loms/GameEngine/SpriteResDEF;

    invoke-direct {v2}, Loms/GameEngine/SpriteResDEF;-><init>()V

    aput-object v2, v1, v0

    .line 297
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    new-instance v2, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    invoke-direct {v2}, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;-><init>()V

    aput-object v2, v1, v0

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_2
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->pSpriteResSegInfo:[Loms/GameEngine/SpriteResSeg;

    new-instance v2, Loms/GameEngine/SpriteResSeg;

    invoke-direct {v2}, Loms/GameEngine/SpriteResSeg;-><init>()V

    aput-object v2, v1, v0

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public InitSpriteResInfo(II)V
    .locals 5
    .param p1, "ResId"    # I
    .param p2, "ACTLibId"    # I

    .prologue
    .line 415
    const/4 v3, 0x0

    iput v3, p0, Loms/GameEngine/SpriteManager;->nCurSegLoadedSpriteNum:I

    .line 416
    invoke-virtual {p0, p1}, Loms/GameEngine/SpriteManager;->LoadSpriteACTFile(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 430
    :cond_0
    return-void

    .line 419
    :cond_1
    invoke-direct {p0, p2}, Loms/GameEngine/SpriteManager;->GetFileHead(I)V

    .line 421
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v3, v3, Loms/GameEngine/ACTStruct;->FileNum:I

    if-ge v1, v3, :cond_0

    .line 422
    invoke-direct {p0, v1}, Loms/GameEngine/SpriteManager;->GetSpriteHead(I)V

    .line 423
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v3, v3, Loms/GameEngine/ACTStruct;->SpriteNum:I

    if-lt v2, v3, :cond_2

    .line 428
    iget v3, p0, Loms/GameEngine/SpriteManager;->nCurSegLoadedSpriteNum:I

    iget-object v4, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v4, v4, Loms/GameEngine/ACTStruct;->SpriteNum:I

    add-int/2addr v3, v4

    iput v3, p0, Loms/GameEngine/SpriteManager;->nCurSegLoadedSpriteNum:I

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :cond_2
    invoke-direct {p0, v2}, Loms/GameEngine/SpriteManager;->GetSpriteResID(I)I

    move-result v3

    const v4, 0xffff

    and-int v0, v3, v4

    .line 425
    .local v0, "ACTFrameId":I
    iget-object v3, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    aget-object v3, v3, v0

    iget-short v3, v3, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 426
    invoke-direct {p0, v2, p2}, Loms/GameEngine/SpriteManager;->ReadSpriteResInfo(II)V

    .line 423
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public InitSpriteResInfo(III)V
    .locals 5
    .param p1, "ResId"    # I
    .param p2, "ACTLibId"    # I
    .param p3, "ACTFrameId"    # I

    .prologue
    .line 494
    const/4 v2, 0x0

    .line 495
    .local v2, "ret":Z
    invoke-virtual {p0, p1}, Loms/GameEngine/SpriteManager;->LoadSpriteACTFile(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 522
    :cond_0
    return-void

    .line 498
    :cond_1
    invoke-direct {p0, p2}, Loms/GameEngine/SpriteManager;->GetFileHead(I)V

    .line 499
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v3, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v3, v3, Loms/GameEngine/ACTStruct;->FileNum:I

    if-ge v1, v3, :cond_0

    .line 500
    invoke-direct {p0, v1}, Loms/GameEngine/SpriteManager;->GetSpriteHead(I)V

    .line 501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v3, v3, Loms/GameEngine/ACTStruct;->SpriteNum:I

    if-lt v0, v3, :cond_2

    .line 510
    :goto_2
    if-nez v2, :cond_0

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    :cond_2
    invoke-direct {p0, v0}, Loms/GameEngine/SpriteManager;->GetSpriteResID(I)I

    move-result v3

    if-ne v3, p3, :cond_4

    .line 503
    const v3, 0xffff

    and-int/2addr p3, v3

    .line 504
    iget-object v3, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    aget-object v3, v3, p3

    iget-short v3, v3, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 505
    invoke-direct {p0, v0, p2}, Loms/GameEngine/SpriteManager;->ReadSpriteResInfo(II)V

    .line 506
    :cond_3
    const/4 v2, 0x1

    .line 507
    goto :goto_2

    .line 501
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public InitSpriteResInfo(IIII)V
    .locals 5
    .param p1, "ResId"    # I
    .param p2, "ACTLibId"    # I
    .param p3, "ACTFrameBeg"    # I
    .param p4, "ACTFrameEnd"    # I

    .prologue
    .line 475
    invoke-virtual {p0, p1}, Loms/GameEngine/SpriteManager;->LoadSpriteACTFile(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 491
    :cond_0
    return-void

    .line 478
    :cond_1
    invoke-direct {p0, p2}, Loms/GameEngine/SpriteManager;->GetFileHead(I)V

    .line 480
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Loms/GameEngine/SpriteManager;->GetSpriteHead(I)V

    .line 482
    iget-object v3, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v3, v3, Loms/GameEngine/ACTStruct;->SpriteNum:I

    if-ge p4, v3, :cond_3

    .line 483
    move v1, p4

    .line 486
    .local v1, "End":I
    :goto_0
    move v2, p3

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 487
    invoke-direct {p0, v2}, Loms/GameEngine/SpriteManager;->GetSpriteResID(I)I

    move-result v3

    const v4, 0xffff

    and-int v0, v3, v4

    .line 488
    .local v0, "ACTFrameId":I
    iget-object v3, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    aget-object v3, v3, v0

    iget-short v3, v3, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 489
    invoke-direct {p0, v2, p2}, Loms/GameEngine/SpriteManager;->ReadSpriteResInfo(II)V

    .line 486
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 485
    .end local v0    # "ACTFrameId":I
    .end local v1    # "End":I
    .end local v2    # "j":I
    :cond_3
    iget-object v3, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v1, v3, Loms/GameEngine/ACTStruct;->SpriteNum:I

    .restart local v1    # "End":I
    goto :goto_0
.end method

.method public LoadACT(III)V
    .locals 1
    .param p1, "ACTLibId"    # I
    .param p2, "ACTFrameId"    # I
    .param p3, "ACTFileName"    # I

    .prologue
    .line 368
    iget v0, p0, Loms/GameEngine/SpriteManager;->mACTLibBeg:I

    add-int/2addr p1, v0

    .line 369
    iget v0, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    if-lt p1, v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-virtual {p0, p3, p1, p2}, Loms/GameEngine/SpriteManager;->InitSpriteResInfo(III)V

    .line 372
    invoke-virtual {p0}, Loms/GameEngine/SpriteManager;->CloseSpriteACTFile()V

    goto :goto_0
.end method

.method public LoadACT(IIII)V
    .locals 1
    .param p1, "ACTLibId"    # I
    .param p2, "ACTFrameBeg"    # I
    .param p3, "ACTFrameEnd"    # I
    .param p4, "ACTFileName"    # I

    .prologue
    .line 360
    iget v0, p0, Loms/GameEngine/SpriteManager;->mACTLibBeg:I

    add-int/2addr p1, v0

    .line 361
    iget v0, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    if-lt p1, v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-virtual {p0, p4, p1, p2, p3}, Loms/GameEngine/SpriteManager;->InitSpriteResInfo(IIII)V

    .line 364
    invoke-virtual {p0}, Loms/GameEngine/SpriteManager;->CloseSpriteACTFile()V

    goto :goto_0
.end method

.method public LoadACT(II)Z
    .locals 3
    .param p1, "ACTLibId"    # I
    .param p2, "ACTFileName"    # I

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "result":Z
    iget v1, p0, Loms/GameEngine/SpriteManager;->mACTLibBeg:I

    add-int/2addr p1, v1

    .line 349
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->pSpriteResSegInfo:[Loms/GameEngine/SpriteResSeg;

    aget-object v1, v1, p1

    iget-short v1, v1, Loms/GameEngine/SpriteResSeg;->SegIdx:S

    if-ne v1, p1, :cond_0

    .line 350
    const/4 v1, 0x1

    .line 356
    :goto_0
    return v1

    .line 351
    :cond_0
    invoke-virtual {p0, p2, p1}, Loms/GameEngine/SpriteManager;->LoadSpriteResInfo(II)Z

    move-result v0

    .line 352
    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p0}, Loms/GameEngine/SpriteManager;->CloseSpriteACTFile()V

    .line 354
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->pSpriteResSegInfo:[Loms/GameEngine/SpriteResSeg;

    aget-object v1, v1, p1

    int-to-short v2, p1

    iput-short v2, v1, Loms/GameEngine/SpriteResSeg;->SegIdx:S

    :cond_1
    move v1, v0

    .line 356
    goto :goto_0
.end method

.method public LoadSpriteACTFile(I)Z
    .locals 4
    .param p1, "ResId"    # I

    .prologue
    const/4 v1, 0x0

    .line 390
    new-instance v0, Loms/GameEngine/RESApp;

    iget-object v2, p0, Loms/GameEngine/SpriteManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Loms/GameEngine/RESApp;-><init>(Landroid/content/Context;)V

    .line 391
    .local v0, "rs":Loms/GameEngine/RESApp;
    invoke-virtual {v0, p1}, Loms/GameEngine/RESApp;->OpenRes(I)V

    .line 392
    invoke-virtual {v0}, Loms/GameEngine/RESApp;->getLength()I

    move-result v2

    if-lez v2, :cond_0

    .line 393
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->cSpriteACTFile:Loms/GameEngine/SpriteManager$SpriteACTFILE;

    invoke-virtual {v0}, Loms/GameEngine/RESApp;->getLength()I

    move-result v3

    iput v3, v2, Loms/GameEngine/SpriteManager$SpriteACTFILE;->nACTBuffLen:I

    .line 394
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->cSpriteACTFile:Loms/GameEngine/SpriteManager$SpriteACTFILE;

    iget-object v3, p0, Loms/GameEngine/SpriteManager;->cSpriteACTFile:Loms/GameEngine/SpriteManager$SpriteACTFILE;

    iget v3, v3, Loms/GameEngine/SpriteManager$SpriteACTFILE;->nACTBuffLen:I

    new-array v3, v3, [B

    iput-object v3, v2, Loms/GameEngine/SpriteManager$SpriteACTFILE;->pACTBuff:[B

    .line 395
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->cSpriteACTFile:Loms/GameEngine/SpriteManager$SpriteACTFILE;

    iget-object v2, v2, Loms/GameEngine/SpriteManager$SpriteACTFILE;->pACTBuff:[B

    iget-object v3, p0, Loms/GameEngine/SpriteManager;->cSpriteACTFile:Loms/GameEngine/SpriteManager$SpriteACTFILE;

    iget v3, v3, Loms/GameEngine/SpriteManager$SpriteACTFILE;->nACTBuffLen:I

    invoke-virtual {v0, v2, v1, v3}, Loms/GameEngine/RESApp;->ResRead([BII)V

    .line 396
    invoke-virtual {v0}, Loms/GameEngine/RESApp;->CloseRes()V

    .line 397
    const/4 v1, 0x1

    .line 401
    :goto_0
    return v1

    .line 400
    :cond_0
    invoke-virtual {v0}, Loms/GameEngine/RESApp;->CloseRes()V

    goto :goto_0
.end method

.method public LoadSpriteResInfo(II)Z
    .locals 6
    .param p1, "ResId"    # I
    .param p2, "ACTLibId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 434
    const/4 v2, 0x0

    .line 436
    .local v2, "result":Z
    iget-boolean v4, p0, Loms/GameEngine/SpriteManager;->bLoadingSpriteRes:Z

    if-nez v4, :cond_2

    .line 438
    iget v4, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    if-lt p2, v4, :cond_1

    .line 470
    :cond_0
    :goto_0
    return v3

    .line 443
    :cond_1
    invoke-virtual {p0, p1}, Loms/GameEngine/SpriteManager;->LoadSpriteACTFile(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 445
    invoke-direct {p0, p2}, Loms/GameEngine/SpriteManager;->GetFileHead(I)V

    .line 446
    iput v5, p0, Loms/GameEngine/SpriteManager;->nCurSegLoadedSpriteNum:I

    .line 447
    iput v5, p0, Loms/GameEngine/SpriteManager;->nCurSpriteFileNum:I

    .line 448
    iput-boolean v3, p0, Loms/GameEngine/SpriteManager;->bLoadingSpriteRes:Z

    .line 454
    :cond_2
    iget v3, p0, Loms/GameEngine/SpriteManager;->nCurSpriteFileNum:I

    iget-object v4, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v4, v4, Loms/GameEngine/ACTStruct;->FileNum:I

    if-ge v3, v4, :cond_5

    .line 455
    iget v3, p0, Loms/GameEngine/SpriteManager;->nCurSpriteFileNum:I

    invoke-direct {p0, v3}, Loms/GameEngine/SpriteManager;->GetSpriteHead(I)V

    .line 456
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget-object v3, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v3, v3, Loms/GameEngine/ACTStruct;->SpriteNum:I

    if-lt v1, v3, :cond_3

    .line 461
    iget v3, p0, Loms/GameEngine/SpriteManager;->nCurSegLoadedSpriteNum:I

    iget-object v4, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    iget v4, v4, Loms/GameEngine/ACTStruct;->SpriteNum:I

    add-int/2addr v3, v4

    iput v3, p0, Loms/GameEngine/SpriteManager;->nCurSegLoadedSpriteNum:I

    .line 462
    iget v3, p0, Loms/GameEngine/SpriteManager;->nCurSpriteFileNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Loms/GameEngine/SpriteManager;->nCurSpriteFileNum:I

    .end local v1    # "j":I
    :goto_2
    move v3, v2

    .line 470
    goto :goto_0

    .line 457
    .restart local v1    # "j":I
    :cond_3
    invoke-direct {p0, v1}, Loms/GameEngine/SpriteManager;->GetSpriteResID(I)I

    move-result v3

    const v4, 0xffff

    and-int v0, v3, v4

    .line 458
    .local v0, "ACTFrameId":I
    iget-object v3, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    aget-object v3, v3, v0

    iget-short v3, v3, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 459
    invoke-direct {p0, v1, p2}, Loms/GameEngine/SpriteManager;->ReadSpriteResInfo(II)V

    .line 456
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 466
    .end local v0    # "ACTFrameId":I
    .end local v1    # "j":I
    :cond_5
    iput-boolean v5, p0, Loms/GameEngine/SpriteManager;->bLoadingSpriteRes:Z

    .line 467
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public OnDraw(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)Z
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Attrib"    # I
    .param p3, "XOff"    # I
    .param p4, "YOff"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 233
    if-nez p2, :cond_0

    .line 234
    const/4 v7, 0x0

    iput v7, p0, Loms/GameEngine/SpriteManager;->nCurFlushSpriteNum:I

    .line 237
    :cond_0
    iget v7, p0, Loms/GameEngine/SpriteManager;->nCurFlushSpriteNum:I

    iget v8, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    if-ge v7, v8, :cond_1

    .line 239
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v7, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    if-lt v6, v7, :cond_2

    .line 280
    .end local v6    # "i":I
    :cond_1
    const/4 v7, 0x0

    :goto_1
    return v7

    .line 241
    .restart local v6    # "i":I
    :cond_2
    iget-object v7, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v7, v7, v6

    iget-short v1, v7, Loms/GameEngine/SpriteDEF;->SpriteResID:S

    .line 242
    .local v1, "SpriteIdx":I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_5

    .line 244
    iget-object v7, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v7, v7, v6

    iget v7, v7, Loms/GameEngine/SpriteDEF;->SpriteAttrib:I

    if-ne v7, p2, :cond_5

    .line 246
    iget-object v7, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v7, v7, v6

    iget v3, v7, Loms/GameEngine/SpriteDEF;->SpriteYVal:I

    .line 247
    .local v3, "SpriteYVal":I
    iget-object v7, p0, Loms/GameEngine/SpriteManager;->nViewRc:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v3, v7, :cond_3

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->nViewRc:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v7, :cond_5

    .line 249
    :cond_3
    iget-object v7, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v7, v7, v6

    iget v2, v7, Loms/GameEngine/SpriteDEF;->SpriteXVal:I

    .line 250
    .local v2, "SpriteXVal":I
    iget-object v7, p0, Loms/GameEngine/SpriteManager;->nViewRc:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v2, v7, :cond_4

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->nViewRc:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-gt v2, v7, :cond_5

    .line 254
    :cond_4
    iget-object v7, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v7, v7, v6

    iget v7, v7, Loms/GameEngine/SpriteDEF;->Rotate:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_6

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v7, v7, v6

    iget v7, v7, Loms/GameEngine/SpriteDEF;->ScaleX:F

    const/high16 v8, 0x3f800000

    cmpl-float v7, v7, v8

    if-nez v7, :cond_6

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v7, v7, v6

    iget v7, v7, Loms/GameEngine/SpriteDEF;->ScaleY:F

    const/high16 v8, 0x3f800000

    cmpl-float v7, v7, v8

    if-nez v7, :cond_6

    .line 255
    iget-object v7, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v7, v7, v1

    iget-object v7, v7, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    add-int v8, v2, p3

    iget-object v9, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v9, v9, v6

    iget-short v9, v9, Loms/GameEngine/SpriteDEF;->SpriteCenterX:S

    sub-int/2addr v8, v9

    int-to-float v8, v8

    add-int v9, v3, p4

    iget-object v10, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v10, v10, v6

    iget-short v10, v10, Loms/GameEngine/SpriteDEF;->SpriteCenterY:S

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move-object/from16 v0, p5

    invoke-virtual {p1, v7, v8, v9, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 271
    :goto_2
    iget v7, p0, Loms/GameEngine/SpriteManager;->nCurFlushSpriteNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Loms/GameEngine/SpriteManager;->nCurFlushSpriteNum:I

    .line 276
    .end local v2    # "SpriteXVal":I
    .end local v3    # "SpriteYVal":I
    :cond_5
    iget v7, p0, Loms/GameEngine/SpriteManager;->nCurFlushSpriteNum:I

    iget v8, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    if-ne v7, v8, :cond_8

    .line 277
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 258
    .restart local v2    # "SpriteXVal":I
    .restart local v3    # "SpriteYVal":I
    :cond_6
    add-int v7, v2, p3

    iget-object v8, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v8, v8, v6

    iget-short v8, v8, Loms/GameEngine/SpriteDEF;->SpriteCenterX:S

    sub-int v4, v7, v8

    .line 259
    .local v4, "XVal":I
    add-int v7, v3, p4

    iget-object v8, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v8, v8, v6

    iget-short v8, v8, Loms/GameEngine/SpriteDEF;->SpriteCenterY:S

    sub-int v5, v7, v8

    .line 260
    .local v5, "YVal":I
    iget-object v7, p0, Loms/GameEngine/SpriteManager;->cMatrix:Landroid/graphics/Matrix;

    int-to-float v8, v4

    int-to-float v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 262
    iget-object v7, p0, Loms/GameEngine/SpriteManager;->cMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v8, v8, v6

    iget v8, v8, Loms/GameEngine/SpriteDEF;->ScaleX:F

    iget-object v9, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v9, v9, v6

    iget v9, v9, Loms/GameEngine/SpriteDEF;->ScaleY:F

    add-int v10, v2, p3

    int-to-float v10, v10

    add-int v11, v3, p4

    int-to-float v11, v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 264
    iget-object v7, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v7, v7, v6

    iget-short v7, v7, Loms/GameEngine/SpriteDEF;->RotateX:S

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v7, v7, v6

    iget-short v7, v7, Loms/GameEngine/SpriteDEF;->RotateY:S

    const/4 v8, -0x1

    if-eq v7, v8, :cond_7

    .line 265
    iget-object v7, p0, Loms/GameEngine/SpriteManager;->cMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v8, v8, v6

    iget v8, v8, Loms/GameEngine/SpriteDEF;->Rotate:F

    iget-object v9, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v9, v9, v6

    iget-short v9, v9, Loms/GameEngine/SpriteDEF;->RotateX:S

    add-int/2addr v9, p3

    int-to-float v9, v9

    iget-object v10, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v10, v10, v6

    iget-short v10, v10, Loms/GameEngine/SpriteDEF;->RotateY:S

    add-int v10, v10, p4

    int-to-float v10, v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 269
    :goto_3
    iget-object v7, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v7, v7, v1

    iget-object v7, v7, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    iget-object v8, p0, Loms/GameEngine/SpriteManager;->cMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p5

    invoke-virtual {p1, v7, v8, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 267
    :cond_7
    iget-object v7, p0, Loms/GameEngine/SpriteManager;->cMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v8, v8, v6

    iget v8, v8, Loms/GameEngine/SpriteDEF;->Rotate:F

    add-int v9, v2, p3

    int-to-float v9, v9

    add-int v10, v3, p4

    int-to-float v10, v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_3

    .line 239
    .end local v2    # "SpriteXVal":I
    .end local v3    # "SpriteYVal":I
    .end local v4    # "XVal":I
    .end local v5    # "YVal":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method public OnDraw(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)Z
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Attrib"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v4, 0x0

    .line 182
    if-nez p2, :cond_0

    .line 183
    iput v4, p0, Loms/GameEngine/SpriteManager;->nCurFlushSpriteNum:I

    .line 185
    :cond_0
    iget v5, p0, Loms/GameEngine/SpriteManager;->nCurFlushSpriteNum:I

    iget v6, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    if-ge v5, v6, :cond_1

    .line 186
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v5, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    if-lt v3, v5, :cond_2

    .line 205
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return v4

    .line 187
    .restart local v3    # "i":I
    :cond_2
    iget-object v5, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v5, v5, v3

    iget-short v0, v5, Loms/GameEngine/SpriteDEF;->SpriteResID:S

    .line 188
    .local v0, "SpriteIdx":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_5

    .line 189
    iget-object v5, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v5, v5, v3

    iget v5, v5, Loms/GameEngine/SpriteDEF;->SpriteAttrib:I

    if-ne v5, p2, :cond_5

    .line 190
    iget-object v5, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v5, v5, v3

    iget v2, v5, Loms/GameEngine/SpriteDEF;->SpriteYVal:I

    .line 191
    .local v2, "SpriteYVal":I
    iget-object v5, p0, Loms/GameEngine/SpriteManager;->nViewRc:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Loms/GameEngine/SpriteManager;->nViewRc:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v5, :cond_5

    .line 192
    :cond_3
    iget-object v5, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v5, v5, v3

    iget v1, v5, Loms/GameEngine/SpriteDEF;->SpriteXVal:I

    .line 193
    .local v1, "SpriteXVal":I
    iget-object v5, p0, Loms/GameEngine/SpriteManager;->nViewRc:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Loms/GameEngine/SpriteManager;->nViewRc:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-gt v1, v5, :cond_5

    .line 194
    :cond_4
    iget-object v5, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v5, v5, v0

    iget-object v5, v5, Loms/GameEngine/SpriteResDEF;->Sprite:Landroid/graphics/Bitmap;

    iget-object v6, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v6, v6, v3

    iget-short v6, v6, Loms/GameEngine/SpriteDEF;->SpriteCenterX:S

    sub-int v6, v1, v6

    int-to-float v6, v6

    iget-object v7, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v7, v7, v3

    iget-short v7, v7, Loms/GameEngine/SpriteDEF;->SpriteCenterY:S

    sub-int v7, v2, v7

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 195
    iget v5, p0, Loms/GameEngine/SpriteManager;->nCurFlushSpriteNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Loms/GameEngine/SpriteManager;->nCurFlushSpriteNum:I

    .line 200
    .end local v1    # "SpriteXVal":I
    .end local v2    # "SpriteYVal":I
    :cond_5
    iget v5, p0, Loms/GameEngine/SpriteManager;->nCurFlushSpriteNum:I

    iget v6, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    if-ne v5, v6, :cond_6

    .line 201
    const/4 v4, 0x1

    goto :goto_1

    .line 186
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public SetACTLibBeg(I)V
    .locals 0
    .param p1, "beg"    # I

    .prologue
    .line 144
    iput p1, p0, Loms/GameEngine/SpriteManager;->mACTLibBeg:I

    .line 145
    return-void
.end method

.method public SetBMPSizeOut(Z)V
    .locals 0
    .param p1, "out"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Loms/GameEngine/SpriteManager;->mIsLogOut:Z

    .line 171
    return-void
.end method

.method public WriteSprite(IIII)I
    .locals 7
    .param p1, "SpriteResId"    # I
    .param p2, "SpriteX"    # I
    .param p3, "SpriteY"    # I
    .param p4, "SpriteAttr"    # I

    .prologue
    const v6, 0xffff

    const/high16 v5, 0x3f800000

    const/4 v4, -0x1

    .line 850
    const/4 v0, -0x1

    .line 852
    .local v0, "SpriteIdx":I
    iget v2, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    iget v3, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteNum:I

    if-lt v2, v3, :cond_0

    move v1, v0

    .line 874
    .end local v0    # "SpriteIdx":I
    .local v1, "SpriteIdx":I
    :goto_0
    return v1

    .line 854
    .end local v1    # "SpriteIdx":I
    .restart local v0    # "SpriteIdx":I
    :cond_0
    const/high16 v2, 0x7f020000

    if-ge p1, v2, :cond_1

    move v1, v0

    .line 855
    .end local v0    # "SpriteIdx":I
    .restart local v1    # "SpriteIdx":I
    goto :goto_0

    .line 856
    .end local v1    # "SpriteIdx":I
    .restart local v0    # "SpriteIdx":I
    :cond_1
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    and-int v3, p1, v6

    aget-object v2, v2, v3

    iget-short v2, v2, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    if-eq v2, v4, :cond_2

    .line 857
    and-int v0, p1, v6

    .line 859
    :cond_2
    if-eq v0, v4, :cond_3

    .line 860
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    int-to-short v3, v0

    iput-short v3, v2, Loms/GameEngine/SpriteDEF;->SpriteResID:S

    .line 861
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p2, v2, Loms/GameEngine/SpriteDEF;->SpriteXVal:I

    .line 862
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p3, v2, Loms/GameEngine/SpriteDEF;->SpriteYVal:I

    .line 863
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    iput v3, v2, Loms/GameEngine/SpriteDEF;->Rotate:F

    .line 864
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput v5, v2, Loms/GameEngine/SpriteDEF;->ScaleX:F

    .line 865
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput v5, v2, Loms/GameEngine/SpriteDEF;->ScaleY:F

    .line 867
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iget-object v3, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v3, v3, v0

    iget v3, v3, Loms/GameEngine/SpriteResDEF;->SpriteCenterX:I

    int-to-short v3, v3

    iput-short v3, v2, Loms/GameEngine/SpriteDEF;->SpriteCenterX:S

    .line 868
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iget-object v3, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v3, v3, v0

    iget v3, v3, Loms/GameEngine/SpriteResDEF;->SpriteCenterY:I

    int-to-short v3, v3

    iput-short v3, v2, Loms/GameEngine/SpriteDEF;->SpriteCenterY:S

    .line 869
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput-short v4, v2, Loms/GameEngine/SpriteDEF;->RotateX:S

    .line 870
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput-short v4, v2, Loms/GameEngine/SpriteDEF;->RotateY:S

    .line 871
    iget v0, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    .line 872
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p4, v2, Loms/GameEngine/SpriteDEF;->SpriteAttrib:I

    :cond_3
    move v1, v0

    .line 874
    .end local v0    # "SpriteIdx":I
    .restart local v1    # "SpriteIdx":I
    goto/16 :goto_0
.end method

.method public WriteSprite(IIIIFF)I
    .locals 6
    .param p1, "SpriteResId"    # I
    .param p2, "SpriteX"    # I
    .param p3, "SpriteY"    # I
    .param p4, "SpriteAttr"    # I
    .param p5, "rotate"    # F
    .param p6, "scale"    # F

    .prologue
    const v5, 0xffff

    const/4 v4, -0x1

    .line 909
    const/4 v0, -0x1

    .line 911
    .local v0, "SpriteIdx":I
    iget v2, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    iget v3, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteNum:I

    if-lt v2, v3, :cond_0

    move v1, v0

    .line 933
    .end local v0    # "SpriteIdx":I
    .local v1, "SpriteIdx":I
    :goto_0
    return v1

    .line 913
    .end local v1    # "SpriteIdx":I
    .restart local v0    # "SpriteIdx":I
    :cond_0
    const/high16 v2, 0x7f020000

    if-ge p1, v2, :cond_1

    move v1, v0

    .line 914
    .end local v0    # "SpriteIdx":I
    .restart local v1    # "SpriteIdx":I
    goto :goto_0

    .line 915
    .end local v1    # "SpriteIdx":I
    .restart local v0    # "SpriteIdx":I
    :cond_1
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    and-int v3, p1, v5

    aget-object v2, v2, v3

    iget-short v2, v2, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    if-eq v2, v4, :cond_2

    .line 916
    and-int v0, p1, v5

    .line 918
    :cond_2
    if-eq v0, v4, :cond_3

    .line 919
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    int-to-short v3, v0

    iput-short v3, v2, Loms/GameEngine/SpriteDEF;->SpriteResID:S

    .line 920
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p2, v2, Loms/GameEngine/SpriteDEF;->SpriteXVal:I

    .line 921
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p3, v2, Loms/GameEngine/SpriteDEF;->SpriteYVal:I

    .line 922
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p5, v2, Loms/GameEngine/SpriteDEF;->Rotate:F

    .line 923
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p6, v2, Loms/GameEngine/SpriteDEF;->ScaleX:F

    .line 924
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p6, v2, Loms/GameEngine/SpriteDEF;->ScaleY:F

    .line 926
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iget-object v3, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v3, v3, v0

    iget v3, v3, Loms/GameEngine/SpriteResDEF;->SpriteCenterX:I

    int-to-short v3, v3

    iput-short v3, v2, Loms/GameEngine/SpriteDEF;->SpriteCenterX:S

    .line 927
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iget-object v3, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v3, v3, v0

    iget v3, v3, Loms/GameEngine/SpriteResDEF;->SpriteCenterY:I

    int-to-short v3, v3

    iput-short v3, v2, Loms/GameEngine/SpriteDEF;->SpriteCenterY:S

    .line 928
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput-short v4, v2, Loms/GameEngine/SpriteDEF;->RotateX:S

    .line 929
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput-short v4, v2, Loms/GameEngine/SpriteDEF;->RotateY:S

    .line 930
    iget v0, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    .line 931
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p4, v2, Loms/GameEngine/SpriteDEF;->SpriteAttrib:I

    :cond_3
    move v1, v0

    .line 933
    .end local v0    # "SpriteIdx":I
    .restart local v1    # "SpriteIdx":I
    goto/16 :goto_0
.end method

.method public WriteSprite(IIIIFFFSS)I
    .locals 6
    .param p1, "SpriteResId"    # I
    .param p2, "SpriteX"    # I
    .param p3, "SpriteY"    # I
    .param p4, "SpriteAttr"    # I
    .param p5, "rotate"    # F
    .param p6, "scaleX"    # F
    .param p7, "scaleY"    # F
    .param p8, "RotateX"    # S
    .param p9, "RotateY"    # S

    .prologue
    const/4 v4, -0x1

    const v5, 0xffff

    .line 1002
    const/4 v0, -0x1

    .line 1004
    .local v0, "SpriteIdx":I
    iget v2, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    iget v3, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteNum:I

    if-lt v2, v3, :cond_0

    move v1, v0

    .line 1034
    .end local v0    # "SpriteIdx":I
    .local v1, "SpriteIdx":I
    :goto_0
    return v1

    .line 1006
    .end local v1    # "SpriteIdx":I
    .restart local v0    # "SpriteIdx":I
    :cond_0
    const/high16 v2, 0x7f020000

    if-ge p1, v2, :cond_1

    move v1, v0

    .line 1007
    .end local v0    # "SpriteIdx":I
    .restart local v1    # "SpriteIdx":I
    goto :goto_0

    .line 1008
    .end local v1    # "SpriteIdx":I
    .restart local v0    # "SpriteIdx":I
    :cond_1
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    and-int v3, p1, v5

    aget-object v2, v2, v3

    iget-short v2, v2, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    if-eq v2, v4, :cond_2

    .line 1009
    and-int v0, p1, v5

    .line 1011
    :cond_2
    if-eq v0, v4, :cond_3

    .line 1012
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    int-to-short v3, v0

    iput-short v3, v2, Loms/GameEngine/SpriteDEF;->SpriteResID:S

    .line 1013
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p2, v2, Loms/GameEngine/SpriteDEF;->SpriteXVal:I

    .line 1014
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p3, v2, Loms/GameEngine/SpriteDEF;->SpriteYVal:I

    .line 1015
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p5, v2, Loms/GameEngine/SpriteDEF;->Rotate:F

    .line 1016
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p6, v2, Loms/GameEngine/SpriteDEF;->ScaleX:F

    .line 1017
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p7, v2, Loms/GameEngine/SpriteDEF;->ScaleY:F

    .line 1019
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iget-object v3, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v3, v3, v0

    iget v3, v3, Loms/GameEngine/SpriteResDEF;->SpriteCenterX:I

    int-to-short v3, v3

    iput-short v3, v2, Loms/GameEngine/SpriteDEF;->SpriteCenterX:S

    .line 1020
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iget-object v3, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v3, v3, v0

    iget v3, v3, Loms/GameEngine/SpriteResDEF;->SpriteCenterY:I

    int-to-short v3, v3

    iput-short v3, v2, Loms/GameEngine/SpriteDEF;->SpriteCenterY:S

    .line 1022
    if-eq p8, v5, :cond_4

    .line 1023
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput-short p8, v2, Loms/GameEngine/SpriteDEF;->RotateX:S

    .line 1026
    :goto_1
    if-eq p8, v5, :cond_5

    .line 1027
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput-short p9, v2, Loms/GameEngine/SpriteDEF;->RotateY:S

    .line 1031
    :goto_2
    iget v0, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    .line 1032
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p4, v2, Loms/GameEngine/SpriteDEF;->SpriteAttrib:I

    :cond_3
    move v1, v0

    .line 1034
    .end local v0    # "SpriteIdx":I
    .restart local v1    # "SpriteIdx":I
    goto/16 :goto_0

    .line 1025
    .end local v1    # "SpriteIdx":I
    .restart local v0    # "SpriteIdx":I
    :cond_4
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iget-object v3, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v4, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v3, v3, v4

    iget-short v3, v3, Loms/GameEngine/SpriteDEF;->SpriteCenterX:S

    iput-short v3, v2, Loms/GameEngine/SpriteDEF;->RotateX:S

    goto :goto_1

    .line 1029
    :cond_5
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iget-object v3, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v4, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v3, v3, v4

    iget-short v3, v3, Loms/GameEngine/SpriteDEF;->SpriteCenterY:S

    iput-short v3, v2, Loms/GameEngine/SpriteDEF;->RotateY:S

    goto :goto_2
.end method

.method public WriteSprite(IIIIFFSS)I
    .locals 6
    .param p1, "SpriteResId"    # I
    .param p2, "SpriteX"    # I
    .param p3, "SpriteY"    # I
    .param p4, "SpriteAttr"    # I
    .param p5, "rotate"    # F
    .param p6, "scale"    # F
    .param p7, "RotateX"    # S
    .param p8, "RotateY"    # S

    .prologue
    const/4 v4, -0x1

    const v5, 0xffff

    .line 965
    const/4 v0, -0x1

    .line 967
    .local v0, "SpriteIdx":I
    iget v2, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    iget v3, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteNum:I

    if-lt v2, v3, :cond_0

    move v1, v0

    .line 997
    .end local v0    # "SpriteIdx":I
    .local v1, "SpriteIdx":I
    :goto_0
    return v1

    .line 969
    .end local v1    # "SpriteIdx":I
    .restart local v0    # "SpriteIdx":I
    :cond_0
    const/high16 v2, 0x7f020000

    if-ge p1, v2, :cond_1

    move v1, v0

    .line 970
    .end local v0    # "SpriteIdx":I
    .restart local v1    # "SpriteIdx":I
    goto :goto_0

    .line 971
    .end local v1    # "SpriteIdx":I
    .restart local v0    # "SpriteIdx":I
    :cond_1
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    and-int v3, p1, v5

    aget-object v2, v2, v3

    iget-short v2, v2, Loms/GameEngine/SpriteManager$SpriteRESACTINFO;->RESACTIdx:S

    if-eq v2, v4, :cond_2

    .line 972
    and-int v0, p1, v5

    .line 974
    :cond_2
    if-eq v0, v4, :cond_3

    .line 975
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    int-to-short v3, v0

    iput-short v3, v2, Loms/GameEngine/SpriteDEF;->SpriteResID:S

    .line 976
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p2, v2, Loms/GameEngine/SpriteDEF;->SpriteXVal:I

    .line 977
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p3, v2, Loms/GameEngine/SpriteDEF;->SpriteYVal:I

    .line 978
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p5, v2, Loms/GameEngine/SpriteDEF;->Rotate:F

    .line 979
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p6, v2, Loms/GameEngine/SpriteDEF;->ScaleX:F

    .line 980
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p6, v2, Loms/GameEngine/SpriteDEF;->ScaleY:F

    .line 982
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iget-object v3, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v3, v3, v0

    iget v3, v3, Loms/GameEngine/SpriteResDEF;->SpriteCenterX:I

    int-to-short v3, v3

    iput-short v3, v2, Loms/GameEngine/SpriteDEF;->SpriteCenterX:S

    .line 983
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iget-object v3, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v3, v3, v0

    iget v3, v3, Loms/GameEngine/SpriteResDEF;->SpriteCenterY:I

    int-to-short v3, v3

    iput-short v3, v2, Loms/GameEngine/SpriteDEF;->SpriteCenterY:S

    .line 985
    if-eq p7, v5, :cond_4

    .line 986
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput-short p7, v2, Loms/GameEngine/SpriteDEF;->RotateX:S

    .line 989
    :goto_1
    if-eq p7, v5, :cond_5

    .line 990
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput-short p8, v2, Loms/GameEngine/SpriteDEF;->RotateY:S

    .line 994
    :goto_2
    iget v0, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    .line 995
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iput p4, v2, Loms/GameEngine/SpriteDEF;->SpriteAttrib:I

    :cond_3
    move v1, v0

    .line 997
    .end local v0    # "SpriteIdx":I
    .restart local v1    # "SpriteIdx":I
    goto/16 :goto_0

    .line 988
    .end local v1    # "SpriteIdx":I
    .restart local v0    # "SpriteIdx":I
    :cond_4
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iget-object v3, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v4, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v3, v3, v4

    iget-short v3, v3, Loms/GameEngine/SpriteDEF;->SpriteCenterX:S

    iput-short v3, v2, Loms/GameEngine/SpriteDEF;->RotateX:S

    goto :goto_1

    .line 992
    :cond_5
    iget-object v2, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v3, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v2, v2, v3

    iget-object v3, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    iget v4, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    aget-object v3, v3, v4

    iget-short v3, v3, Loms/GameEngine/SpriteDEF;->SpriteCenterY:S

    iput-short v3, v2, Loms/GameEngine/SpriteDEF;->RotateY:S

    goto :goto_2
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 115
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    if-eqz v1, :cond_0

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    if-lt v0, v1, :cond_2

    .line 121
    .end local v0    # "i":I
    :cond_0
    iput-object v3, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    .line 122
    iput v2, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteResNum:I

    .line 123
    iput-object v3, p0, Loms/GameEngine/SpriteManager;->SpriteResACTInfo:[Loms/GameEngine/SpriteManager$SpriteRESACTINFO;

    .line 124
    iput v2, p0, Loms/GameEngine/SpriteManager;->nCurSpriteFileNum:I

    .line 125
    iput-boolean v2, p0, Loms/GameEngine/SpriteManager;->bLoadingSpriteRes:Z

    .line 126
    iput-object v3, p0, Loms/GameEngine/SpriteManager;->pSpriteResSegInfo:[Loms/GameEngine/SpriteResSeg;

    .line 127
    iput v2, p0, Loms/GameEngine/SpriteManager;->nCurSegLoadedSpriteNum:I

    .line 128
    iput-object v3, p0, Loms/GameEngine/SpriteManager;->ACTStructInfo:Loms/GameEngine/ACTStruct;

    .line 130
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    if-eqz v1, :cond_1

    .line 131
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v1, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteNum:I

    if-lt v0, v1, :cond_4

    .line 135
    .end local v0    # "i":I
    :cond_1
    iput-object v3, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    .line 136
    iput v2, p0, Loms/GameEngine/SpriteManager;->nMaxSpriteNum:I

    .line 137
    iput v2, p0, Loms/GameEngine/SpriteManager;->nShowSpriteNum:I

    .line 139
    invoke-virtual {p0}, Loms/GameEngine/SpriteManager;->CloseSpriteACTFile()V

    .line 140
    return-void

    .line 117
    .restart local v0    # "i":I
    :cond_2
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 118
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->SpriteRes:[Loms/GameEngine/SpriteResDEF;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Loms/GameEngine/SpriteResDEF;->release()V

    .line 116
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_4
    iget-object v1, p0, Loms/GameEngine/SpriteManager;->Sprite:[Loms/GameEngine/SpriteDEF;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Loms/GameEngine/SpriteDEF;->release()V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
