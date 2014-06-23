.class public Loms/GameEngine/TouchPannel;
.super Ljava/lang/Object;
.source "TouchPannel.java"


# static fields
.field public static final BUFFMAX:I = 0x14

.field public static final MOVEBUFFMAX:I = 0x14


# instance fields
.field public mTouch:Z

.field public mTouchDown:Z

.field public mTouchDownBuff:[I

.field public mTouchDownReadCount:I

.field public mTouchDownWriteCount:I

.field public mTouchEn:Z

.field public mTouchMove:Z

.field public mTouchMoveBuff:[I

.field public mTouchMoveReadCount:I

.field public mTouchMoveWriteCount:I

.field public mTouchMoveX:I

.field public mTouchMoveXBuff:[I

.field public mTouchMoveXReadBuff:[I

.field public mTouchMoveY:I

.field public mTouchMoveYBuff:[I

.field public mTouchMoveYReadBuff:[I

.field public mTouchUp:Z

.field public mTouchUpBuff:[I

.field public mTouchUpReadCount:I

.field public mTouchUpWriteCount:I

.field public mTouchUpX:I

.field public mTouchUpXBuff:[I

.field public mTouchUpXReadBuff:[I

.field public mTouchUpY:I

.field public mTouchUpYBuff:[I

.field public mTouchUpYReadBuff:[I

.field public mTouchX:I

.field public mTouchXBuff:[I

.field public mTouchXReadBuff:[I

.field public mTouchY:I

.field public mTouchYBuff:[I

.field public mTouchYReadBuff:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v2, p0, Loms/GameEngine/TouchPannel;->mTouchEn:Z

    .line 9
    iput-boolean v2, p0, Loms/GameEngine/TouchPannel;->mTouch:Z

    .line 11
    iput-boolean v2, p0, Loms/GameEngine/TouchPannel;->mTouchDown:Z

    .line 12
    iput v2, p0, Loms/GameEngine/TouchPannel;->mTouchX:I

    .line 13
    iput v2, p0, Loms/GameEngine/TouchPannel;->mTouchY:I

    .line 15
    iput-boolean v2, p0, Loms/GameEngine/TouchPannel;->mTouchMove:Z

    .line 16
    iput v2, p0, Loms/GameEngine/TouchPannel;->mTouchMoveX:I

    .line 17
    iput v2, p0, Loms/GameEngine/TouchPannel;->mTouchMoveY:I

    .line 19
    iput-boolean v2, p0, Loms/GameEngine/TouchPannel;->mTouchUp:Z

    .line 20
    iput v2, p0, Loms/GameEngine/TouchPannel;->mTouchUpX:I

    .line 21
    iput v2, p0, Loms/GameEngine/TouchPannel;->mTouchUpY:I

    .line 28
    iput v2, p0, Loms/GameEngine/TouchPannel;->mTouchDownReadCount:I

    .line 29
    iput v2, p0, Loms/GameEngine/TouchPannel;->mTouchDownWriteCount:I

    .line 36
    iput v2, p0, Loms/GameEngine/TouchPannel;->mTouchMoveReadCount:I

    .line 37
    iput v2, p0, Loms/GameEngine/TouchPannel;->mTouchMoveWriteCount:I

    .line 44
    iput v2, p0, Loms/GameEngine/TouchPannel;->mTouchUpReadCount:I

    .line 45
    iput v2, p0, Loms/GameEngine/TouchPannel;->mTouchUpWriteCount:I

    .line 49
    new-array v1, v4, [I

    iput-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchDownBuff:[I

    .line 50
    new-array v1, v3, [I

    iput-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchXBuff:[I

    .line 51
    new-array v1, v3, [I

    iput-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchYBuff:[I

    .line 52
    new-array v1, v3, [I

    iput-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchXReadBuff:[I

    .line 53
    new-array v1, v3, [I

    iput-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchYReadBuff:[I

    .line 54
    new-array v1, v4, [I

    iput-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveBuff:[I

    .line 55
    new-array v1, v3, [I

    iput-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveXBuff:[I

    .line 56
    new-array v1, v3, [I

    iput-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveYBuff:[I

    .line 57
    new-array v1, v3, [I

    iput-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveXReadBuff:[I

    .line 58
    new-array v1, v3, [I

    iput-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveYReadBuff:[I

    .line 59
    new-array v1, v4, [I

    iput-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpBuff:[I

    .line 60
    new-array v1, v3, [I

    iput-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpXBuff:[I

    .line 61
    new-array v1, v3, [I

    iput-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpYBuff:[I

    .line 62
    new-array v1, v3, [I

    iput-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpXReadBuff:[I

    .line 63
    new-array v1, v3, [I

    iput-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpYReadBuff:[I

    .line 65
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchDownBuff:[I

    aput v2, v1, v2

    .line 66
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpBuff:[I

    aput v2, v1, v2

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 80
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveBuff:[I

    aput v2, v1, v2

    .line 81
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_1

    .line 88
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchXBuff:[I

    aput v2, v1, v0

    .line 70
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchYBuff:[I

    aput v2, v1, v0

    .line 71
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchXReadBuff:[I

    aput v2, v1, v0

    .line 72
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchYReadBuff:[I

    aput v2, v1, v0

    .line 74
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpXBuff:[I

    aput v2, v1, v0

    .line 75
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpYBuff:[I

    aput v2, v1, v0

    .line 76
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpXReadBuff:[I

    aput v2, v1, v0

    .line 77
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpYReadBuff:[I

    aput v2, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveXBuff:[I

    aput v2, v1, v0

    .line 83
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveYBuff:[I

    aput v2, v1, v0

    .line 84
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveXReadBuff:[I

    aput v2, v1, v0

    .line 85
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveYReadBuff:[I

    aput v2, v1, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public CHKIsTouch()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Loms/GameEngine/TouchPannel;->mTouch:Z

    return v0
.end method

.method public CHKTouchDown()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Loms/GameEngine/TouchPannel;->mTouchDown:Z

    return v0
.end method

.method public CHKTouchMove()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Loms/GameEngine/TouchPannel;->mTouchMove:Z

    return v0
.end method

.method public CHKTouchUp()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Loms/GameEngine/TouchPannel;->mTouchUp:Z

    return v0
.end method

.method public ClearTouchDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchDownBuff:[I

    aput v2, v1, v2

    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 285
    return-void

    .line 282
    :cond_0
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchXBuff:[I

    aput v2, v1, v0

    .line 283
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchYBuff:[I

    aput v2, v1, v0

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public ClearTouchMove()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveBuff:[I

    aput v2, v1, v2

    .line 289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 293
    iput v2, p0, Loms/GameEngine/TouchPannel;->mTouchMoveReadCount:I

    .line 294
    iput v2, p0, Loms/GameEngine/TouchPannel;->mTouchMoveWriteCount:I

    .line 295
    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveXBuff:[I

    aput v2, v1, v0

    .line 291
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveYBuff:[I

    aput v2, v1, v0

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public ClearTouchUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpBuff:[I

    aput v2, v1, v2

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 303
    return-void

    .line 300
    :cond_0
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpXBuff:[I

    aput v2, v1, v0

    .line 301
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpYBuff:[I

    aput v2, v1, v0

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public GetTouchDownCount()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchDownReadCount:I

    return v0
.end method

.method public GetTouchDownX()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchX:I

    return v0
.end method

.method public GetTouchDownX(I)I
    .locals 1
    .param p1, "Count"    # I

    .prologue
    .line 211
    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchDownReadCount:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 212
    iget-object v0, p0, Loms/GameEngine/TouchPannel;->mTouchXReadBuff:[I

    aget v0, v0, p1

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetTouchDownY()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchY:I

    return v0
.end method

.method public GetTouchDownY(I)I
    .locals 1
    .param p1, "Count"    # I

    .prologue
    .line 218
    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchDownReadCount:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 219
    iget-object v0, p0, Loms/GameEngine/TouchPannel;->mTouchYReadBuff:[I

    aget v0, v0, p1

    .line 221
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetTouchEn()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Loms/GameEngine/TouchPannel;->mTouchEn:Z

    return v0
.end method

.method public GetTouchMoveCount()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchMoveReadCount:I

    return v0
.end method

.method public GetTouchMoveX()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchMoveX:I

    return v0
.end method

.method public GetTouchMoveX(I)I
    .locals 1
    .param p1, "Count"    # I

    .prologue
    .line 237
    if-ltz p1, :cond_0

    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchMoveReadCount:I

    if-ge p1, v0, :cond_0

    .line 238
    iget-object v0, p0, Loms/GameEngine/TouchPannel;->mTouchMoveXReadBuff:[I

    aget v0, v0, p1

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetTouchMoveY()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchMoveY:I

    return v0
.end method

.method public GetTouchMoveY(I)I
    .locals 1
    .param p1, "Count"    # I

    .prologue
    .line 244
    if-ltz p1, :cond_0

    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchMoveReadCount:I

    if-ge p1, v0, :cond_0

    .line 245
    iget-object v0, p0, Loms/GameEngine/TouchPannel;->mTouchMoveYReadBuff:[I

    aget v0, v0, p1

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetTouchUpCount()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchUpReadCount:I

    return v0
.end method

.method public GetTouchUpX()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchUpX:I

    return v0
.end method

.method public GetTouchUpX(I)I
    .locals 1
    .param p1, "Count"    # I

    .prologue
    .line 266
    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchUpReadCount:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 267
    iget-object v0, p0, Loms/GameEngine/TouchPannel;->mTouchUpXReadBuff:[I

    aget v0, v0, p1

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetTouchUpY()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchUpY:I

    return v0
.end method

.method public GetTouchUpY(I)I
    .locals 1
    .param p1, "Count"    # I

    .prologue
    .line 273
    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchUpReadCount:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 274
    iget-object v0, p0, Loms/GameEngine/TouchPannel;->mTouchUpYReadBuff:[I

    aget v0, v0, p1

    .line 276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ReadTouch()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchDownBuff:[I

    aget v1, v1, v3

    if-ne v1, v4, :cond_0

    .line 129
    iput-boolean v4, p0, Loms/GameEngine/TouchPannel;->mTouchDown:Z

    .line 132
    :goto_0
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchXBuff:[I

    aget v1, v1, v3

    iput v1, p0, Loms/GameEngine/TouchPannel;->mTouchX:I

    .line 133
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchYBuff:[I

    aget v1, v1, v3

    iput v1, p0, Loms/GameEngine/TouchPannel;->mTouchY:I

    .line 134
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchDownBuff:[I

    aput v3, v1, v3

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Loms/GameEngine/TouchPannel;->mTouchDownWriteCount:I

    if-lt v0, v1, :cond_1

    .line 142
    iget v1, p0, Loms/GameEngine/TouchPannel;->mTouchDownWriteCount:I

    iput v1, p0, Loms/GameEngine/TouchPannel;->mTouchDownReadCount:I

    .line 143
    iput v3, p0, Loms/GameEngine/TouchPannel;->mTouchDownWriteCount:I

    .line 147
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveBuff:[I

    aget v1, v1, v3

    if-ne v1, v4, :cond_2

    .line 148
    iput-boolean v4, p0, Loms/GameEngine/TouchPannel;->mTouchMove:Z

    .line 151
    :goto_2
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveBuff:[I

    aput v3, v1, v3

    .line 152
    iget v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveWriteCount:I

    if-lez v1, :cond_3

    .line 153
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveXBuff:[I

    iget v2, p0, Loms/GameEngine/TouchPannel;->mTouchMoveWriteCount:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iput v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveX:I

    .line 154
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveYBuff:[I

    iget v2, p0, Loms/GameEngine/TouchPannel;->mTouchMoveWriteCount:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iput v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveY:I

    .line 160
    :goto_3
    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveWriteCount:I

    if-lt v0, v1, :cond_4

    .line 166
    iget v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveWriteCount:I

    iput v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveReadCount:I

    .line 167
    iput v3, p0, Loms/GameEngine/TouchPannel;->mTouchMoveWriteCount:I

    .line 170
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpBuff:[I

    aget v1, v1, v3

    if-ne v1, v4, :cond_5

    .line 171
    iput-boolean v4, p0, Loms/GameEngine/TouchPannel;->mTouchUp:Z

    .line 174
    :goto_5
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpXBuff:[I

    aget v1, v1, v3

    iput v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpX:I

    .line 175
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpYBuff:[I

    aget v1, v1, v3

    iput v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpY:I

    .line 176
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpBuff:[I

    aput v3, v1, v3

    .line 177
    const/4 v0, 0x0

    :goto_6
    iget v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpWriteCount:I

    if-lt v0, v1, :cond_6

    .line 184
    iget v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpWriteCount:I

    iput v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpReadCount:I

    .line 185
    iput v3, p0, Loms/GameEngine/TouchPannel;->mTouchUpWriteCount:I

    .line 186
    return-void

    .line 131
    .end local v0    # "i":I
    :cond_0
    iput-boolean v3, p0, Loms/GameEngine/TouchPannel;->mTouchDown:Z

    goto :goto_0

    .line 137
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchXReadBuff:[I

    iget-object v2, p0, Loms/GameEngine/TouchPannel;->mTouchXBuff:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 138
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchYReadBuff:[I

    iget-object v2, p0, Loms/GameEngine/TouchPannel;->mTouchYBuff:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    :cond_2
    iput-boolean v3, p0, Loms/GameEngine/TouchPannel;->mTouchMove:Z

    goto :goto_2

    .line 157
    :cond_3
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveXBuff:[I

    aget v1, v1, v3

    iput v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveX:I

    .line 158
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveYBuff:[I

    aget v1, v1, v3

    iput v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveY:I

    goto :goto_3

    .line 161
    :cond_4
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveXReadBuff:[I

    iget-object v2, p0, Loms/GameEngine/TouchPannel;->mTouchMoveXBuff:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 162
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveYReadBuff:[I

    iget-object v2, p0, Loms/GameEngine/TouchPannel;->mTouchMoveYBuff:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 163
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveXBuff:[I

    aput v3, v1, v0

    .line 164
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveYBuff:[I

    aput v3, v1, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 173
    :cond_5
    iput-boolean v3, p0, Loms/GameEngine/TouchPannel;->mTouchUp:Z

    goto :goto_5

    .line 179
    :cond_6
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpXReadBuff:[I

    iget-object v2, p0, Loms/GameEngine/TouchPannel;->mTouchUpXBuff:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 180
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpYReadBuff:[I

    iget-object v2, p0, Loms/GameEngine/TouchPannel;->mTouchUpYBuff:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 181
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpXBuff:[I

    aput v3, v1, v0

    .line 182
    iget-object v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpYBuff:[I

    aput v3, v1, v0

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public SetTouchDown(II)V
    .locals 3
    .param p1, "X"    # I
    .param p2, "Y"    # I

    .prologue
    const/4 v2, 0x1

    .line 101
    iget-object v0, p0, Loms/GameEngine/TouchPannel;->mTouchDownBuff:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 102
    iput-boolean v2, p0, Loms/GameEngine/TouchPannel;->mTouch:Z

    .line 103
    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchDownWriteCount:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Loms/GameEngine/TouchPannel;->mTouchXBuff:[I

    iget v1, p0, Loms/GameEngine/TouchPannel;->mTouchDownWriteCount:I

    aput p1, v0, v1

    .line 105
    iget-object v0, p0, Loms/GameEngine/TouchPannel;->mTouchYBuff:[I

    iget v1, p0, Loms/GameEngine/TouchPannel;->mTouchDownWriteCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Loms/GameEngine/TouchPannel;->mTouchDownWriteCount:I

    aput p2, v0, v1

    .line 107
    :cond_0
    return-void
.end method

.method public SetTouchEn(Z)V
    .locals 0
    .param p1, "touch"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Loms/GameEngine/TouchPannel;->mTouchEn:Z

    .line 92
    return-void
.end method

.method public SetTouchMove(II)V
    .locals 3
    .param p1, "X"    # I
    .param p2, "Y"    # I

    .prologue
    const/4 v2, 0x1

    .line 109
    iget-object v0, p0, Loms/GameEngine/TouchPannel;->mTouchMoveBuff:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 110
    iput-boolean v2, p0, Loms/GameEngine/TouchPannel;->mTouch:Z

    .line 111
    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchMoveWriteCount:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Loms/GameEngine/TouchPannel;->mTouchMoveXBuff:[I

    iget v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveWriteCount:I

    aput p1, v0, v1

    .line 113
    iget-object v0, p0, Loms/GameEngine/TouchPannel;->mTouchMoveYBuff:[I

    iget v1, p0, Loms/GameEngine/TouchPannel;->mTouchMoveWriteCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Loms/GameEngine/TouchPannel;->mTouchMoveWriteCount:I

    aput p2, v0, v1

    .line 115
    :cond_0
    return-void
.end method

.method public SetTouchUp(II)V
    .locals 3
    .param p1, "X"    # I
    .param p2, "Y"    # I

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Loms/GameEngine/TouchPannel;->mTouchUpBuff:[I

    const/4 v1, 0x1

    aput v1, v0, v2

    .line 119
    iput-boolean v2, p0, Loms/GameEngine/TouchPannel;->mTouch:Z

    .line 120
    iget v0, p0, Loms/GameEngine/TouchPannel;->mTouchUpWriteCount:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Loms/GameEngine/TouchPannel;->mTouchUpXBuff:[I

    iget v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpWriteCount:I

    aput p1, v0, v1

    .line 122
    iget-object v0, p0, Loms/GameEngine/TouchPannel;->mTouchUpYBuff:[I

    iget v1, p0, Loms/GameEngine/TouchPannel;->mTouchUpWriteCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Loms/GameEngine/TouchPannel;->mTouchUpWriteCount:I

    aput p2, v0, v1

    .line 124
    :cond_0
    return-void
.end method
