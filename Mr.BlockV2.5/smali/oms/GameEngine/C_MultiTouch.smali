.class public Loms/GameEngine/C_MultiTouch;
.super Ljava/lang/Object;
.source "C_MultiTouch.java"


# static fields
.field public static final MULTIMOVEMAX:I = 0xa

.field public static final MULTITOUCHMAX:I = 0x4

.field public static nScreenXOff:I

.field public static nScreenYOff:I


# instance fields
.field public mTouchDownReadCount:I

.field public mTouchDownReadId:[I

.field public mTouchDownReadXVal:[I

.field public mTouchDownReadYVal:[I

.field public mTouchDownWriteCount:I

.field public mTouchDownWriteId:[I

.field public mTouchDownWriteXVal:[I

.field public mTouchDownWriteYVal:[I

.field public mTouchMove:Z

.field public mTouchMoveReadCount:[I

.field public mTouchMoveReadId:[I

.field public mTouchMoveReadXVal:[[I

.field public mTouchMoveReadYVal:[[I

.field public mTouchMoveWriteCount:[I

.field public mTouchMoveWriteId:[I

.field public mTouchMoveWriteXVal:[[I

.field public mTouchMoveWriteYVal:[[I

.field public mTouchUpReadCount:I

.field public mTouchUpReadId:[I

.field public mTouchUpReadXVal:[I

.field public mTouchUpReadYVal:[I

.field public mTouchUpWriteCount:I

.field public mTouchUpWriteId:[I

.field public mTouchUpWriteXVal:[I

.field public mTouchUpWriteYVal:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Loms/GameEngine/OS;->determineAPI()V

    .line 55
    invoke-direct {p0}, Loms/GameEngine/C_MultiTouch;->initTouch()V

    .line 56
    invoke-static {v0, v0}, Loms/GameEngine/C_MultiTouch;->SetScreenOffset(II)V

    .line 57
    return-void
.end method

.method public static SetScreenOffset(II)V
    .locals 0
    .param p0, "XOff"    # I
    .param p1, "YOff"    # I

    .prologue
    .line 60
    sput p0, Loms/GameEngine/C_MultiTouch;->nScreenXOff:I

    .line 61
    sput p1, Loms/GameEngine/C_MultiTouch;->nScreenYOff:I

    .line 62
    return-void
.end method

.method private initTouch()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0xa

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 195
    iput v4, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownWriteCount:I

    .line 196
    new-array v2, v5, [I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownWriteId:[I

    .line 197
    new-array v2, v5, [I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownWriteXVal:[I

    .line 198
    new-array v2, v5, [I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownWriteYVal:[I

    .line 202
    iput v4, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadCount:I

    .line 203
    new-array v2, v5, [I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadId:[I

    .line 204
    new-array v2, v5, [I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadXVal:[I

    .line 205
    new-array v2, v5, [I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadYVal:[I

    .line 208
    iput v4, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpWriteCount:I

    .line 209
    new-array v2, v5, [I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpWriteId:[I

    .line 210
    new-array v2, v5, [I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpWriteXVal:[I

    .line 211
    new-array v2, v5, [I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpWriteYVal:[I

    .line 213
    iput v4, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadCount:I

    .line 214
    new-array v2, v5, [I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadId:[I

    .line 215
    new-array v2, v5, [I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadXVal:[I

    .line 216
    new-array v2, v5, [I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadYVal:[I

    .line 218
    new-array v2, v5, [I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteId:[I

    .line 219
    new-array v2, v5, [I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteCount:[I

    .line 220
    filled-new-array {v5, v6}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteXVal:[[I

    .line 221
    filled-new-array {v5, v6}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteYVal:[[I

    .line 223
    new-array v2, v5, [I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveReadId:[I

    .line 224
    new-array v2, v5, [I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveReadCount:[I

    .line 225
    filled-new-array {v5, v6}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveReadXVal:[[I

    .line 226
    filled-new-array {v5, v6}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveReadYVal:[[I

    .line 228
    iput-boolean v4, p0, Loms/GameEngine/C_MultiTouch;->mTouchMove:Z

    .line 229
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 261
    return-void

    .line 231
    :cond_0
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownWriteId:[I

    aput v4, v2, v0

    .line 232
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownWriteXVal:[I

    aput v4, v2, v0

    .line 233
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownWriteYVal:[I

    aput v4, v2, v0

    .line 235
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadId:[I

    aput v7, v2, v0

    .line 236
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadXVal:[I

    aput v4, v2, v0

    .line 237
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadYVal:[I

    aput v4, v2, v0

    .line 239
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpWriteId:[I

    aput v7, v2, v0

    .line 240
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpWriteXVal:[I

    aput v4, v2, v0

    .line 241
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpWriteYVal:[I

    aput v4, v2, v0

    .line 243
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadId:[I

    aput v4, v2, v0

    .line 244
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadXVal:[I

    aput v4, v2, v0

    .line 245
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadYVal:[I

    aput v4, v2, v0

    .line 247
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteId:[I

    aput v4, v2, v0

    .line 248
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteCount:[I

    aput v4, v2, v0

    .line 250
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveReadId:[I

    aput v4, v2, v0

    .line 251
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveReadCount:[I

    aput v4, v2, v0

    .line 253
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-lt v1, v6, :cond_1

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_1
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteXVal:[[I

    aget-object v2, v2, v0

    aput v4, v2, v1

    .line 256
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteYVal:[[I

    aget-object v2, v2, v0

    aput v4, v2, v1

    .line 257
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveReadXVal:[[I

    aget-object v2, v2, v0

    aput v4, v2, v1

    .line 258
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveReadYVal:[[I

    aget-object v2, v2, v0

    aput v4, v2, v1

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private onTouchDown(FFII)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerCount"    # I
    .param p4, "pointerId"    # I

    .prologue
    .line 311
    const/4 v0, 0x4

    if-lt p4, v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownWriteId:[I

    aput p4, v0, p4

    .line 314
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownWriteXVal:[I

    float-to-int v1, p1

    invoke-static {v1}, Loms/GameEngine/GameMath;->convertToRealX(I)I

    move-result v1

    aput v1, v0, p4

    .line 315
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownWriteYVal:[I

    float-to-int v1, p2

    invoke-static {v1}, Loms/GameEngine/GameMath;->convertToRealY(I)I

    move-result v1

    aput v1, v0, p4

    goto :goto_0
.end method

.method private onTouchMove(FFII)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerCount"    # I
    .param p4, "pointerId"    # I

    .prologue
    .line 403
    const/4 v0, 0x4

    if-lt p4, v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteId:[I

    aput p4, v0, p4

    .line 406
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteCount:[I

    aget v0, v0, p4

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteXVal:[[I

    aget-object v0, v0, p4

    iget-object v1, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteCount:[I

    aget v1, v1, p4

    float-to-int v2, p1

    invoke-static {v2}, Loms/GameEngine/GameMath;->convertToRealX(I)I

    move-result v2

    aput v2, v0, v1

    .line 409
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteYVal:[[I

    aget-object v0, v0, p4

    iget-object v1, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteCount:[I

    aget v2, v1, p4

    add-int/lit8 v3, v2, 0x1

    aput v3, v1, p4

    float-to-int v1, p2

    invoke-static {v1}, Loms/GameEngine/GameMath;->convertToRealY(I)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0
.end method

.method private onTouchUp(FFII)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "pointerCount"    # I
    .param p4, "pointerId"    # I

    .prologue
    .line 357
    const/4 v0, 0x4

    if-lt p4, v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpWriteId:[I

    aput p4, v0, p4

    .line 360
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpWriteXVal:[I

    float-to-int v1, p1

    invoke-static {v1}, Loms/GameEngine/GameMath;->convertToRealX(I)I

    move-result v1

    aput v1, v0, p4

    .line 361
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpWriteYVal:[I

    float-to-int v1, p2

    invoke-static {v1}, Loms/GameEngine/GameMath;->convertToRealY(I)I

    move-result v1

    aput v1, v0, p4

    goto :goto_0
.end method


# virtual methods
.method public CHKTouchDown()Z
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadCount:I

    if-lez v0, :cond_0

    .line 326
    const/4 v0, 0x1

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public CHKTouchMove()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchMove:Z

    return v0
.end method

.method public CHKTouchUp()Z
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadCount:I

    if-lez v0, :cond_0

    .line 372
    const/4 v0, 0x1

    .line 374
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ReadTouch()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 267
    iput v5, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadCount:I

    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 278
    iput v5, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadCount:I

    .line 279
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v6, :cond_2

    .line 289
    iput-boolean v5, p0, Loms/GameEngine/C_MultiTouch;->mTouchMove:Z

    .line 291
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v6, :cond_4

    .line 307
    return-void

    .line 270
    :cond_0
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownWriteId:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_1

    .line 271
    iget v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadCount:I

    .line 272
    :cond_1
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadId:[I

    iget-object v3, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownWriteId:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 273
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadXVal:[I

    iget-object v3, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownWriteXVal:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 274
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadYVal:[I

    iget-object v3, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownWriteYVal:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 275
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownWriteId:[I

    aput v4, v2, v0

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_2
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpWriteId:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_3

    .line 282
    iget v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadCount:I

    .line 283
    :cond_3
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadId:[I

    iget-object v3, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpWriteId:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 284
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadXVal:[I

    iget-object v3, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpWriteXVal:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 285
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadYVal:[I

    iget-object v3, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpWriteYVal:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 286
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpWriteId:[I

    aput v4, v2, v0

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 293
    :cond_4
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteId:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_5

    .line 294
    iput-boolean v7, p0, Loms/GameEngine/C_MultiTouch;->mTouchMove:Z

    .line 295
    :cond_5
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveReadId:[I

    iget-object v3, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteId:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 296
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteId:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_6

    .line 297
    iput-boolean v7, p0, Loms/GameEngine/C_MultiTouch;->mTouchMove:Z

    .line 298
    :cond_6
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    const/16 v2, 0xa

    if-lt v1, v2, :cond_7

    .line 303
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveReadCount:[I

    iget-object v3, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteCount:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 304
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteCount:[I

    aput v5, v2, v0

    .line 305
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteId:[I

    aput v4, v2, v0

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 300
    :cond_7
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveReadXVal:[[I

    aget-object v2, v2, v0

    iget-object v3, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteXVal:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    aput v3, v2, v1

    .line 301
    iget-object v2, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveReadYVal:[[I

    aget-object v2, v2, v0

    iget-object v3, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveWriteYVal:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    aput v3, v2, v1

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public getTouchDownCount()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadCount:I

    return v0
.end method

.method public getTouchDownId(I)I
    .locals 1
    .param p1, "pointerId"    # I

    .prologue
    .line 333
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 334
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadId:[I

    aget v0, v0, p1

    .line 336
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchDownX(I)I
    .locals 1
    .param p1, "pointerId"    # I

    .prologue
    .line 341
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 342
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadXVal:[I

    aget v0, v0, p1

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchDownY(I)I
    .locals 1
    .param p1, "pointerId"    # I

    .prologue
    .line 349
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 350
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchDownReadYVal:[I

    aget v0, v0, p1

    .line 352
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchMoveCount(I)I
    .locals 1
    .param p1, "nID"    # I

    .prologue
    .line 425
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveReadCount:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTouchMoveId(I)I
    .locals 1
    .param p1, "nID"    # I

    .prologue
    .line 420
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveReadId:[I

    aget v0, v0, p1

    return v0
.end method

.method public getTouchMoveX(II)I
    .locals 1
    .param p1, "nID"    # I
    .param p2, "pointId"    # I

    .prologue
    .line 430
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveReadXVal:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public getTouchMoveY(II)I
    .locals 1
    .param p1, "nID"    # I
    .param p2, "pointId"    # I

    .prologue
    .line 435
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchMoveReadYVal:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public getTouchUpCount()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadCount:I

    return v0
.end method

.method public getTouchUpId(I)I
    .locals 1
    .param p1, "pointerId"    # I

    .prologue
    .line 379
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 380
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadId:[I

    aget v0, v0, p1

    .line 382
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchUpX(I)I
    .locals 1
    .param p1, "pointerId"    # I

    .prologue
    .line 387
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 388
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadXVal:[I

    aget v0, v0, p1

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchUpY(I)I
    .locals 1
    .param p1, "pointerId"    # I

    .prologue
    .line 395
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 396
    iget-object v0, p0, Loms/GameEngine/C_MultiTouch;->mTouchUpReadYVal:[I

    aget v0, v0, p1

    .line 398
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleMultiTouch(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 104
    invoke-static {p1}, Loms/GameEngine/C_MotionEventWrapper5;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v3

    .line 106
    .local v3, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 107
    .local v0, "action":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 161
    return-void

    .line 109
    :cond_0
    invoke-static {p1, v2}, Loms/GameEngine/C_MotionEventWrapper5;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 110
    .local v1, "id":I
    invoke-static {p1, v2}, Loms/GameEngine/C_MotionEventWrapper5;->getX(Landroid/view/MotionEvent;I)F

    move-result v6

    sget v7, Loms/GameEngine/C_MultiTouch;->nScreenXOff:I

    int-to-float v7, v7

    sub-float v4, v6, v7

    .line 111
    .local v4, "realX":F
    invoke-static {p1, v2}, Loms/GameEngine/C_MotionEventWrapper5;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    sget v7, Loms/GameEngine/C_MultiTouch;->nScreenYOff:I

    int-to-float v7, v7

    sub-float v5, v6, v7

    .line 112
    .local v5, "realY":F
    sparse-switch v0, :sswitch_data_0

    .line 107
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :sswitch_0
    invoke-direct {p0, v4, v5, v3, v1}, Loms/GameEngine/C_MultiTouch;->onTouchDown(FFII)V

    goto :goto_1

    .line 118
    :sswitch_1
    invoke-direct {p0, v4, v5, v3, v1}, Loms/GameEngine/C_MultiTouch;->onTouchUp(FFII)V

    goto :goto_1

    .line 121
    :sswitch_2
    invoke-direct {p0, v4, v5, v3, v1}, Loms/GameEngine/C_MultiTouch;->onTouchMove(FFII)V

    goto :goto_1

    .line 124
    :sswitch_3
    if-nez v2, :cond_1

    .line 126
    invoke-direct {p0, v4, v5, v3, v1}, Loms/GameEngine/C_MultiTouch;->onTouchDown(FFII)V

    goto :goto_1

    .line 130
    :sswitch_4
    if-nez v2, :cond_1

    .line 132
    invoke-direct {p0, v4, v5, v3, v1}, Loms/GameEngine/C_MultiTouch;->onTouchUp(FFII)V

    goto :goto_1

    .line 136
    :sswitch_5
    if-ne v2, v8, :cond_1

    .line 138
    invoke-direct {p0, v4, v5, v3, v1}, Loms/GameEngine/C_MultiTouch;->onTouchDown(FFII)V

    goto :goto_1

    .line 142
    :sswitch_6
    if-ne v2, v8, :cond_1

    .line 144
    invoke-direct {p0, v4, v5, v3, v1}, Loms/GameEngine/C_MultiTouch;->onTouchUp(FFII)V

    goto :goto_1

    .line 148
    :sswitch_7
    if-ne v2, v9, :cond_1

    .line 150
    invoke-direct {p0, v4, v5, v3, v1}, Loms/GameEngine/C_MultiTouch;->onTouchDown(FFII)V

    goto :goto_1

    .line 154
    :sswitch_8
    if-ne v2, v9, :cond_1

    .line 156
    invoke-direct {p0, v4, v5, v3, v1}, Loms/GameEngine/C_MultiTouch;->onTouchUp(FFII)V

    goto :goto_1

    .line 112
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x105 -> :sswitch_5
        0x106 -> :sswitch_6
        0x205 -> :sswitch_7
        0x206 -> :sswitch_8
    .end sparse-switch
.end method

.method protected handleSDK8MultiTouch(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v8, 0xff00

    .line 66
    invoke-static {p1}, Loms/GameEngine/C_MotionEventWrapper8;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v3

    .line 67
    .local v3, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 68
    .local v0, "action":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 98
    return-void

    .line 70
    :cond_0
    invoke-static {p1, v2}, Loms/GameEngine/C_MotionEventWrapper8;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 71
    .local v1, "id":I
    invoke-static {p1, v2}, Loms/GameEngine/C_MotionEventWrapper8;->getX(Landroid/view/MotionEvent;I)F

    move-result v6

    sget v7, Loms/GameEngine/C_MultiTouch;->nScreenXOff:I

    int-to-float v7, v7

    sub-float v4, v6, v7

    .line 72
    .local v4, "realX":F
    invoke-static {p1, v2}, Loms/GameEngine/C_MotionEventWrapper8;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    sget v7, Loms/GameEngine/C_MultiTouch;->nScreenYOff:I

    int-to-float v7, v7

    sub-float v5, v6, v7

    .line 73
    .local v5, "realY":F
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    .line 68
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :pswitch_1
    invoke-direct {p0, v4, v5, v3, v1}, Loms/GameEngine/C_MultiTouch;->onTouchDown(FFII)V

    goto :goto_1

    .line 79
    :pswitch_2
    invoke-direct {p0, v4, v5, v3, v1}, Loms/GameEngine/C_MultiTouch;->onTouchUp(FFII)V

    goto :goto_1

    .line 82
    :pswitch_3
    invoke-direct {p0, v4, v5, v3, v1}, Loms/GameEngine/C_MultiTouch;->onTouchMove(FFII)V

    goto :goto_1

    .line 85
    :pswitch_4
    and-int v6, v0, v8

    shr-int/lit8 v6, v6, 0x8

    if-ne v6, v2, :cond_1

    .line 87
    invoke-direct {p0, v4, v5, v3, v1}, Loms/GameEngine/C_MultiTouch;->onTouchDown(FFII)V

    goto :goto_1

    .line 91
    :pswitch_5
    and-int v6, v0, v8

    shr-int/lit8 v6, v6, 0x8

    if-ne v6, v2, :cond_1

    .line 93
    invoke-direct {p0, v4, v5, v3, v1}, Loms/GameEngine/C_MultiTouch;->onTouchUp(FFII)V

    goto :goto_1

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleTouch(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 165
    sget v3, Loms/GameEngine/OS;->API_LEVEL:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 167
    sget v3, Loms/GameEngine/OS;->API_LEVEL:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Loms/GameEngine/C_MultiTouch;->handleSDK8MultiTouch(Landroid/view/MotionEvent;)V

    .line 190
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Loms/GameEngine/C_MultiTouch;->handleMultiTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 176
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sget v4, Loms/GameEngine/C_MultiTouch;->nScreenXOff:I

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 177
    .local v1, "realX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sget v4, Loms/GameEngine/C_MultiTouch;->nScreenYOff:I

    int-to-float v4, v4

    sub-float v2, v3, v4

    .line 178
    .local v2, "realY":F
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 181
    :pswitch_0
    invoke-direct {p0, v1, v2, v6, v5}, Loms/GameEngine/C_MultiTouch;->onTouchDown(FFII)V

    goto :goto_0

    .line 184
    :pswitch_1
    invoke-direct {p0, v1, v2, v6, v5}, Loms/GameEngine/C_MultiTouch;->onTouchUp(FFII)V

    goto :goto_0

    .line 187
    :pswitch_2
    invoke-direct {p0, v1, v2, v6, v5}, Loms/GameEngine/C_MultiTouch;->onTouchMove(FFII)V

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
