.class public Loms/GameEngine/TextManager;
.super Ljava/lang/Object;
.source "TextManager.java"


# static fields
.field private static Text:[Loms/GameEngine/TextDEF;


# instance fields
.field private cMatrix:Landroid/graphics/Matrix;

.field private mContext:Landroid/content/Context;

.field private mIsLogOut:Z

.field private nCurBMPRamSize:J

.field private nTextLayerMax:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "TextLayer"    # I

    .prologue
    const-wide/16 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Loms/GameEngine/TextManager;->mIsLogOut:Z

    .line 34
    iput-wide v1, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

    .line 37
    iput-object p1, p0, Loms/GameEngine/TextManager;->mContext:Landroid/content/Context;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    .line 39
    iput p2, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    .line 40
    iget v0, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    invoke-virtual {p0, v0}, Loms/GameEngine/TextManager;->InitText(I)V

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Loms/GameEngine/TextManager;->cMatrix:Landroid/graphics/Matrix;

    .line 43
    iput-wide v1, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

    .line 44
    return-void
.end method

.method private GetBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 52
    const/4 v0, 0x1

    .line 53
    .local v0, "bit":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    .line 55
    const/4 v0, 0x1

    .line 69
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

    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_2

    .line 59
    const/4 v0, 0x2

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_3

    .line 63
    const/4 v0, 0x2

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    .line 67
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public CloseAllText()V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    if-lt v0, v1, :cond_0

    .line 140
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0, v0}, Loms/GameEngine/TextManager;->CloseText(I)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public CloseText(I)V
    .locals 6
    .param p1, "TextLayer"    # I

    .prologue
    const/4 v4, 0x0

    .line 103
    iget v0, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    if-lt p1, v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 106
    iget-wide v0, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

    sget-object v2, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v2, v2, p1

    iget-object v2, v2, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Loms/GameEngine/TextManager;->GetBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

    .line 107
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 108
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput-object v1, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    .line 109
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iput v4, v0, Loms/GameEngine/TextDEF;->TextAttrib:I

    .line 110
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iput v4, v0, Loms/GameEngine/TextDEF;->TextCtrl:I

    .line 111
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iput v4, v0, Loms/GameEngine/TextDEF;->TextXInc:I

    .line 112
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iput v4, v0, Loms/GameEngine/TextDEF;->TextYInc:I

    .line 113
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iput v4, v0, Loms/GameEngine/TextDEF;->TextXVal:I

    .line 114
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iput v4, v0, Loms/GameEngine/TextDEF;->TextYVal:I

    .line 115
    iget-boolean v0, p0, Loms/GameEngine/TextManager;->mIsLogOut:Z

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "GameEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Text use RAM: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KBytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetBMPRamSize()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

    return-wide v0
.end method

.method public GetTextHeight(I)I
    .locals 1
    .param p1, "TextLayer"    # I

    .prologue
    .line 415
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 416
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 418
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetTextWidth(I)I
    .locals 1
    .param p1, "TextLayer"    # I

    .prologue
    .line 402
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 403
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetTextXVal(I)I
    .locals 1
    .param p1, "TextLayer"    # I

    .prologue
    .line 429
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget v0, v0, Loms/GameEngine/TextDEF;->TextXVal:I

    return v0
.end method

.method public GetTextYVal(I)I
    .locals 1
    .param p1, "TextLayer"    # I

    .prologue
    .line 434
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget v0, v0, Loms/GameEngine/TextDEF;->TextYVal:I

    return v0
.end method

.method public InitText(I)V
    .locals 3
    .param p1, "TextLayerNum"    # I

    .prologue
    .line 88
    iput p1, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    .line 89
    iget v1, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    if-nez v1, :cond_0

    .line 90
    const/4 v1, 0x1

    iput v1, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    .line 91
    :cond_0
    iget v1, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    new-array v1, v1, [Loms/GameEngine/TextDEF;

    sput-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    if-lt v0, v1, :cond_1

    .line 96
    return-void

    .line 94
    :cond_1
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    new-instance v2, Loms/GameEngine/TextDEF;

    invoke-direct {v2}, Loms/GameEngine/TextDEF;-><init>()V

    aput-object v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public LoadPicture(III)V
    .locals 9
    .param p1, "ResTextID"    # I
    .param p2, "TextLayer"    # I
    .param p3, "TextDepth"    # I

    .prologue
    const/high16 v8, 0x3f800000

    const/4 v7, 0x0

    .line 187
    iget v1, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    if-lt p2, v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0, p2}, Loms/GameEngine/TextManager;->CloseText(I)V

    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Loms/GameEngine/TextManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    .line 200
    iget-wide v1, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

    invoke-direct {p0, v0}, Loms/GameEngine/TextManager;->GetBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

    .line 201
    iget-boolean v1, p0, Loms/GameEngine/TextManager;->mIsLogOut:Z

    if-eqz v1, :cond_2

    .line 202
    const-string v1, "GameEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ResID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v1, "GameEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Width: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v1, "GameEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Height: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v1, "GameEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OPtions: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v1, "GameEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Text use RAM: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

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

    .line 209
    :cond_2
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    iput-object v0, v1, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    .line 210
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    iput v7, v1, Loms/GameEngine/TextDEF;->TextXInc:I

    .line 211
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    iput v7, v1, Loms/GameEngine/TextDEF;->TextYInc:I

    .line 212
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    iput v7, v1, Loms/GameEngine/TextDEF;->TextXVal:I

    .line 213
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    iput v7, v1, Loms/GameEngine/TextDEF;->TextYVal:I

    .line 215
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    iput v8, v1, Loms/GameEngine/TextDEF;->ScaleX:F

    .line 216
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    iput v8, v1, Loms/GameEngine/TextDEF;->ScaleY:F

    .line 217
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    iput v2, v1, Loms/GameEngine/TextDEF;->Rotate:F

    .line 218
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    iput p3, v1, Loms/GameEngine/TextDEF;->TextAttrib:I

    .line 219
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    const/16 v2, 0xf

    iput v2, v1, Loms/GameEngine/TextDEF;->TextCtrl:I

    goto/16 :goto_0
.end method

.method public LoadText(III)V
    .locals 9
    .param p1, "ResTextID"    # I
    .param p2, "TextLayer"    # I
    .param p3, "TextDepth"    # I

    .prologue
    const/high16 v8, 0x3f800000

    const/4 v7, 0x0

    .line 149
    iget v1, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    if-lt p2, v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-virtual {p0, p2}, Loms/GameEngine/TextManager;->CloseText(I)V

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Loms/GameEngine/TextManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Loms/GameEngine/PackageManager;->createBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    iget-wide v1, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

    invoke-direct {p0, v0}, Loms/GameEngine/TextManager;->GetBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

    .line 163
    iget-boolean v1, p0, Loms/GameEngine/TextManager;->mIsLogOut:Z

    if-eqz v1, :cond_2

    .line 164
    const-string v1, "GameEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ResID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v1, "GameEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Width: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v1, "GameEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Height: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v1, "GameEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OPtions: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v1, "GameEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Text use RAM: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

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

    .line 171
    :cond_2
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    iput-object v0, v1, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    .line 172
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    iput v7, v1, Loms/GameEngine/TextDEF;->TextXInc:I

    .line 173
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    iput v7, v1, Loms/GameEngine/TextDEF;->TextYInc:I

    .line 174
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    iput v7, v1, Loms/GameEngine/TextDEF;->TextXVal:I

    .line 175
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    iput v7, v1, Loms/GameEngine/TextDEF;->TextYVal:I

    .line 177
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    iput v8, v1, Loms/GameEngine/TextDEF;->ScaleX:F

    .line 178
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    iput v8, v1, Loms/GameEngine/TextDEF;->ScaleY:F

    .line 179
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    iput v2, v1, Loms/GameEngine/TextDEF;->Rotate:F

    .line 180
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    iput p3, v1, Loms/GameEngine/TextDEF;->TextAttrib:I

    .line 181
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p2

    const/16 v2, 0xf

    iput v2, v1, Loms/GameEngine/TextDEF;->TextCtrl:I

    goto/16 :goto_0
.end method

.method public LoadText(IIII)V
    .locals 9
    .param p1, "Width"    # I
    .param p2, "Height"    # I
    .param p3, "TextLayer"    # I
    .param p4, "TextDepth"    # I

    .prologue
    const/high16 v8, 0x3f800000

    const/4 v7, 0x0

    .line 302
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p3

    iget-object v1, v1, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 303
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p3

    iget-object v1, v1, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 304
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p3

    const/4 v2, 0x0

    iput-object v2, v1, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    .line 307
    :cond_0
    const/4 v0, 0x0

    .line 308
    .local v0, "bmp":Landroid/graphics/Bitmap;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 309
    iget v1, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    if-ge p3, v1, :cond_2

    .line 310
    iget-wide v1, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

    invoke-direct {p0, v0}, Loms/GameEngine/TextManager;->GetBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

    .line 311
    iget-boolean v1, p0, Loms/GameEngine/TextManager;->mIsLogOut:Z

    if-eqz v1, :cond_1

    .line 312
    const-string v1, "GameEngine"

    const-string v2, "ResID: 0"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const-string v1, "GameEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Width: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v1, "GameEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Height: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v1, "GameEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OPtions: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v1, "GameEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Text use RAM: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

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

    .line 319
    :cond_1
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p3

    iput-object v0, v1, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    .line 320
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p3

    iput v7, v1, Loms/GameEngine/TextDEF;->TextXInc:I

    .line 321
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p3

    iput v7, v1, Loms/GameEngine/TextDEF;->TextYInc:I

    .line 322
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p3

    iput v7, v1, Loms/GameEngine/TextDEF;->TextXVal:I

    .line 323
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p3

    iput v7, v1, Loms/GameEngine/TextDEF;->TextYVal:I

    .line 325
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p3

    iput v8, v1, Loms/GameEngine/TextDEF;->ScaleX:F

    .line 326
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p3

    iput v8, v1, Loms/GameEngine/TextDEF;->ScaleY:F

    .line 327
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p3

    const/4 v2, 0x0

    iput v2, v1, Loms/GameEngine/TextDEF;->Rotate:F

    .line 328
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p3

    iput p4, v1, Loms/GameEngine/TextDEF;->TextAttrib:I

    .line 329
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, p3

    const/16 v2, 0xf

    iput v2, v1, Loms/GameEngine/TextDEF;->TextCtrl:I

    .line 331
    :cond_2
    return-void
.end method

.method public LoadText(Ljava/lang/String;II)V
    .locals 12
    .param p1, "sResPath"    # Ljava/lang/String;
    .param p2, "TextLayer"    # I
    .param p3, "TextDepth"    # I

    .prologue
    const/high16 v11, 0x3f800000

    const/4 v10, 0x0

    .line 230
    iget v4, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    if-lt p2, v4, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    sget-object v4, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v4, v4, p2

    iget-object v4, v4, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 239
    sget-object v4, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v4, v4, p2

    iget-object v4, v4, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 240
    sget-object v4, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v4, v4, p2

    const/4 v5, 0x0

    iput-object v5, v4, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    .line 242
    :cond_2
    const/4 v1, 0x0

    .line 243
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 244
    .local v3, "inputStream":Ljava/io/InputStream;
    iget-object v4, p0, Loms/GameEngine/TextManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 246
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 252
    :goto_1
    if-eqz v3, :cond_0

    .line 253
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 255
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    :goto_2
    if-eqz v1, :cond_0

    .line 270
    iget-wide v4, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

    invoke-direct {p0, v1}, Loms/GameEngine/TextManager;->GetBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

    .line 271
    iget-boolean v4, p0, Loms/GameEngine/TextManager;->mIsLogOut:Z

    if-eqz v4, :cond_3

    .line 272
    const-string v4, "GameEngine"

    const-string v5, "ResID: 0"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v4, "GameEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Width: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v4, "GameEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Height: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v4, "GameEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OPtions: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v4, "GameEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Text use RAM: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Loms/GameEngine/TextManager;->nCurBMPRamSize:J

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " KBytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_3
    sget-object v4, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v4, v4, p2

    iput-object v1, v4, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    .line 279
    sget-object v4, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v4, v4, p2

    iput v10, v4, Loms/GameEngine/TextDEF;->TextXInc:I

    .line 280
    sget-object v4, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v4, v4, p2

    iput v10, v4, Loms/GameEngine/TextDEF;->TextYInc:I

    .line 281
    sget-object v4, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v4, v4, p2

    iput v10, v4, Loms/GameEngine/TextDEF;->TextXVal:I

    .line 282
    sget-object v4, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v4, v4, p2

    iput v10, v4, Loms/GameEngine/TextDEF;->TextYVal:I

    .line 284
    sget-object v4, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v4, v4, p2

    iput v11, v4, Loms/GameEngine/TextDEF;->ScaleX:F

    .line 285
    sget-object v4, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v4, v4, p2

    iput v11, v4, Loms/GameEngine/TextDEF;->ScaleY:F

    .line 286
    sget-object v4, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v4, v4, p2

    const/4 v5, 0x0

    iput v5, v4, Loms/GameEngine/TextDEF;->Rotate:F

    .line 287
    sget-object v4, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v4, v4, p2

    iput p3, v4, Loms/GameEngine/TextDEF;->TextAttrib:I

    .line 288
    sget-object v4, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v4, v4, p2

    const/16 v5, 0xf

    iput v5, v4, Loms/GameEngine/TextDEF;->TextCtrl:I

    goto/16 :goto_0

    .line 247
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 256
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 258
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public OnDraw(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Attrib"    # I
    .param p3, "XOff"    # I
    .param p4, "YOff"    # I
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v7, 0x3f800000

    .line 565
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    if-lt v2, v3, :cond_0

    .line 583
    return-void

    .line 566
    :cond_0
    sget-object v3, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v3, v3, v2

    iget-object v3, v3, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    sget-object v3, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v3, v3, v2

    iget v3, v3, Loms/GameEngine/TextDEF;->TextAttrib:I

    if-ne v3, p2, :cond_1

    .line 569
    sget-object v3, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v3, v3, v2

    iget v3, v3, Loms/GameEngine/TextDEF;->ScaleX:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_2

    sget-object v3, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v3, v3, v2

    iget v3, v3, Loms/GameEngine/TextDEF;->ScaleY:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_2

    sget-object v3, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v3, v3, v2

    iget v3, v3, Loms/GameEngine/TextDEF;->Rotate:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 570
    sget-object v3, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v3, v3, v2

    iget-object v3, v3, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    sget-object v4, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v4, v4, v2

    iget v4, v4, Loms/GameEngine/TextDEF;->TextXVal:I

    int-to-float v4, v4

    int-to-float v5, p3

    add-float/2addr v4, v5

    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, v2

    iget v5, v5, Loms/GameEngine/TextDEF;->TextYVal:I

    int-to-float v5, v5

    int-to-float v6, p4

    add-float/2addr v5, v6

    invoke-virtual {p1, v3, v4, v5, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 565
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 572
    :cond_2
    iget-object v3, p0, Loms/GameEngine/TextManager;->cMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 573
    sget-object v3, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v3, v3, v2

    iget v3, v3, Loms/GameEngine/TextDEF;->TextXVal:I

    add-int v0, v3, p3

    .line 574
    .local v0, "XVal":I
    sget-object v3, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v3, v3, v2

    iget v3, v3, Loms/GameEngine/TextDEF;->TextYVal:I

    add-int v1, v3, p4

    .line 575
    .local v1, "YVal":I
    iget-object v3, p0, Loms/GameEngine/TextManager;->cMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Loms/GameEngine/GameMath;->convertToUIX(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v1}, Loms/GameEngine/GameMath;->convertToUIY(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 576
    iget-object v3, p0, Loms/GameEngine/TextManager;->cMatrix:Landroid/graphics/Matrix;

    sget-object v4, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v4, v4, v2

    iget v4, v4, Loms/GameEngine/TextDEF;->Rotate:F

    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, v2

    iget-object v5, v5, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    sget-object v6, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v6, v6, v2

    iget-object v6, v6, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 577
    sget-object v3, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v3, v3, v2

    iget v3, v3, Loms/GameEngine/TextDEF;->ScaleX:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_3

    sget-object v3, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v3, v3, v2

    iget v3, v3, Loms/GameEngine/TextDEF;->ScaleY:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_4

    .line 578
    :cond_3
    iget-object v3, p0, Loms/GameEngine/TextManager;->cMatrix:Landroid/graphics/Matrix;

    sget-object v4, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v4, v4, v2

    iget v4, v4, Loms/GameEngine/TextDEF;->ScaleX:F

    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, v2

    iget v5, v5, Loms/GameEngine/TextDEF;->ScaleY:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 579
    :cond_4
    sget-object v3, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v3, v3, v2

    iget-object v3, v3, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    iget-object v4, p0, Loms/GameEngine/TextManager;->cMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3, v4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public OnDraw(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Attrib"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 544
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    if-lt v0, v1, :cond_0

    .line 561
    return-void

    .line 545
    :cond_0
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, v0

    iget-object v1, v1, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, v0

    iget v1, v1, Loms/GameEngine/TextDEF;->TextAttrib:I

    if-ne v1, p2, :cond_1

    .line 546
    sget-object v1, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v1, v1, v0

    iget-object v1, v1, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    sget-object v2, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v2, v2, v0

    iget v2, v2, Loms/GameEngine/TextDEF;->TextXVal:I

    invoke-static {v2}, Loms/GameEngine/GameMath;->convertToUIX(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v3, v3, v0

    iget v3, v3, Loms/GameEngine/TextDEF;->TextYVal:I

    invoke-static {v3}, Loms/GameEngine/GameMath;->convertToUIY(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 544
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public ScrollText(I)V
    .locals 9
    .param p1, "TextLayer"    # I

    .prologue
    const/4 v8, 0x0

    .line 470
    iget v5, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    if-ge p1, v5, :cond_0

    .line 471
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    iget-object v5, v5, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    invoke-static {}, Loms/GameEngine/GameCanvas;->GetScreenWidth()I

    move-result v2

    .line 475
    .local v2, "ScreenWidth":I
    invoke-static {}, Loms/GameEngine/GameCanvas;->GetScreenHeight()I

    move-result v1

    .line 476
    .local v1, "ScreenHeight":I
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    iget-object v5, v5, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 477
    .local v4, "Width":I
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    iget-object v5, v5, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 479
    .local v0, "Height":I
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    iget v3, v5, Loms/GameEngine/TextDEF;->TextCtrl:I

    .line 481
    .local v3, "TextCtrl":I
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    iget v5, v5, Loms/GameEngine/TextDEF;->TextXInc:I

    if-gez v5, :cond_2

    and-int/lit8 v5, v3, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 482
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    sget-object v6, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v6, v6, p1

    iget v6, v6, Loms/GameEngine/TextDEF;->TextXVal:I

    sget-object v7, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v7, v7, p1

    iget v7, v7, Loms/GameEngine/TextDEF;->TextXInc:I

    sub-int/2addr v6, v7

    iput v6, v5, Loms/GameEngine/TextDEF;->TextXVal:I

    .line 483
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    iget v5, v5, Loms/GameEngine/TextDEF;->TextXVal:I

    if-ltz v5, :cond_2

    .line 484
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    iput v8, v5, Loms/GameEngine/TextDEF;->TextXVal:I

    .line 487
    :cond_2
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    iget v5, v5, Loms/GameEngine/TextDEF;->TextXInc:I

    if-lez v5, :cond_3

    and-int/lit8 v5, v3, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 488
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    sget-object v6, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v6, v6, p1

    iget v6, v6, Loms/GameEngine/TextDEF;->TextXVal:I

    sget-object v7, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v7, v7, p1

    iget v7, v7, Loms/GameEngine/TextDEF;->TextXInc:I

    sub-int/2addr v6, v7

    iput v6, v5, Loms/GameEngine/TextDEF;->TextXVal:I

    .line 489
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    iget v5, v5, Loms/GameEngine/TextDEF;->TextXVal:I

    add-int/2addr v5, v2

    if-lt v5, v4, :cond_3

    .line 490
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    sub-int v6, v2, v4

    iput v6, v5, Loms/GameEngine/TextDEF;->TextXVal:I

    .line 493
    :cond_3
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    iget v5, v5, Loms/GameEngine/TextDEF;->TextYInc:I

    if-gez v5, :cond_4

    and-int/lit8 v5, v3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 494
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    sget-object v6, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v6, v6, p1

    iget v6, v6, Loms/GameEngine/TextDEF;->TextYVal:I

    sget-object v7, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v7, v7, p1

    iget v7, v7, Loms/GameEngine/TextDEF;->TextYInc:I

    sub-int/2addr v6, v7

    iput v6, v5, Loms/GameEngine/TextDEF;->TextYVal:I

    .line 495
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    iget v5, v5, Loms/GameEngine/TextDEF;->TextXVal:I

    if-ltz v5, :cond_4

    .line 496
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    iput v8, v5, Loms/GameEngine/TextDEF;->TextYVal:I

    .line 499
    :cond_4
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    iget v5, v5, Loms/GameEngine/TextDEF;->TextYInc:I

    if-lez v5, :cond_0

    and-int/lit8 v5, v3, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 500
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    sget-object v6, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v6, v6, p1

    iget v6, v6, Loms/GameEngine/TextDEF;->TextYVal:I

    sget-object v7, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v7, v7, p1

    iget v7, v7, Loms/GameEngine/TextDEF;->TextYInc:I

    sub-int/2addr v6, v7

    iput v6, v5, Loms/GameEngine/TextDEF;->TextYVal:I

    .line 501
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    iget v5, v5, Loms/GameEngine/TextDEF;->TextYVal:I

    add-int/2addr v5, v1

    if-lt v5, v0, :cond_0

    .line 502
    sget-object v5, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v5, v5, p1

    sub-int v6, v1, v0

    iput v6, v5, Loms/GameEngine/TextDEF;->TextYVal:I

    goto/16 :goto_0
.end method

.method public SetBMPSizeOut(Z)V
    .locals 0
    .param p1, "out"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Loms/GameEngine/TextManager;->mIsLogOut:Z

    .line 74
    return-void
.end method

.method public SetTextInc(III)V
    .locals 1
    .param p1, "TextLayer"    # I
    .param p2, "XInc"    # I
    .param p3, "YInc"    # I

    .prologue
    .line 391
    iget v0, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    if-ge p1, v0, :cond_0

    .line 396
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iput p2, v0, Loms/GameEngine/TextDEF;->TextXInc:I

    .line 397
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iput p3, v0, Loms/GameEngine/TextDEF;->TextYInc:I

    .line 399
    :cond_0
    return-void
.end method

.method public SetTextRotate(IF)V
    .locals 1
    .param p1, "TextLayer"    # I
    .param p2, "Rotate"    # F

    .prologue
    .line 457
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 458
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iput p2, v0, Loms/GameEngine/TextDEF;->Rotate:F

    .line 459
    :cond_0
    return-void
.end method

.method public SetTextScale(IF)V
    .locals 2
    .param p1, "TextLayer"    # I
    .param p2, "Scale"    # F

    .prologue
    .line 449
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 451
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    sget v1, Loms/GameEngine/C_Lib;->mCanvasScaleX:F

    add-float/2addr v1, p2

    iput v1, v0, Loms/GameEngine/TextDEF;->ScaleX:F

    .line 452
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    sget v1, Loms/GameEngine/C_Lib;->mCanvasScaleY:F

    add-float/2addr v1, p2

    iput v1, v0, Loms/GameEngine/TextDEF;->ScaleY:F

    .line 454
    :cond_0
    return-void
.end method

.method public SetTextXVal(II)V
    .locals 1
    .param p1, "TextLayer"    # I
    .param p2, "X"    # I

    .prologue
    .line 439
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iput p2, v0, Loms/GameEngine/TextDEF;->TextXVal:I

    .line 440
    return-void
.end method

.method public SetTextYVal(II)V
    .locals 1
    .param p1, "TextLayer"    # I
    .param p2, "Y"    # I

    .prologue
    .line 445
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iput p2, v0, Loms/GameEngine/TextDEF;->TextYVal:I

    .line 446
    return-void
.end method

.method public getTextLayer()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    return v0
.end method

.method public getTextPixels(I[I)Z
    .locals 8
    .param p1, "TextLayer"    # I
    .param p2, "pixels"    # [I

    .prologue
    const/4 v2, 0x0

    .line 334
    iget v0, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    if-lt p1, v0, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v2

    .line 344
    :cond_1
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 347
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 348
    .local v3, "width":I
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 349
    .local v7, "height":I
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    move-object v1, p2

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 350
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0}, Loms/GameEngine/TextManager;->CloseAllText()V

    .line 48
    return-void
.end method

.method public setTextPixels(I[I)V
    .locals 8
    .param p1, "TextLayer"    # I
    .param p2, "pixels"    # [I

    .prologue
    const/4 v2, 0x0

    .line 354
    iget v0, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    if-lt p1, v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 367
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 368
    .local v3, "width":I
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 369
    .local v7, "height":I
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    move-object v1, p2

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0
.end method

.method public setTextPixels(I[IIIIII)V
    .locals 8
    .param p1, "TextLayer"    # I
    .param p2, "pixels"    # [I
    .param p3, "offset"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 373
    iget v0, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    if-lt p1, v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 378
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 379
    .local v3, "BMPWidth":I
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    move-object v1, p2

    move v2, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0
.end method

.method public setTextPixels(I[IIIIIII)V
    .locals 8
    .param p1, "TextLayer"    # I
    .param p2, "pixels"    # [I
    .param p3, "offset"    # I
    .param p4, "stride"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    .prologue
    .line 383
    iget v0, p0, Loms/GameEngine/TextManager;->nTextLayerMax:I

    if-lt p1, v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 387
    sget-object v0, Loms/GameEngine/TextManager;->Text:[Loms/GameEngine/TextDEF;

    aget-object v0, v0, p1

    iget-object v0, v0, Loms/GameEngine/TextDEF;->Text:Landroid/graphics/Bitmap;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_0
.end method
