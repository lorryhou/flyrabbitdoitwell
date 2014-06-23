.class public Loms/GameEngine/GameEvent;
.super Ljava/lang/Object;
.source "GameEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loms/GameEngine/GameEvent$EventDEF;
    }
.end annotation


# static fields
.field public static final CVTEVT:I = 0x8000

.field public static final FIXEVT:I = 0x2000

.field public static final KeepACT:I = 0x80

.field public static final KeepADC:I = 0x200

.field public static final KeepHIT:I = 0x100

.field public static final KeepINC:I = 0x400

.field public static final MAPEVT:I = 0x1000

.field public static final RUNEVT:I = 0x4000

.field public static final V3DEVT:I = 0x800


# instance fields
.field public EVT:Loms/GameEngine/GameEvent$EventDEF;

.field public mRc:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    .line 72
    invoke-static {}, Loms/GameEngine/GameCanvas;->GetViewRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Loms/GameEngine/GameEvent;->mRc:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Loms/GameEngine/GameEvent$EventDEF;

    invoke-direct {v0, p0}, Loms/GameEngine/GameEvent$EventDEF;-><init>(Loms/GameEngine/GameEvent;)V

    iput-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    .line 74
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v1, 0x0

    iput-boolean v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    .line 75
    return-void
.end method


# virtual methods
.method public CHKEVTACTEnd()Z
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v0, Loms/GameEngine/GameEvent$EventDEF;->CurCNT:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v1, Loms/GameEngine/GameEvent$EventDEF;->MaxCNT:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v0, Loms/GameEngine/GameEvent$EventDEF;->CurFRM:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v1, Loms/GameEngine/GameEvent$EventDEF;->MaxFRM:I

    if-ne v0, v1, :cond_0

    .line 305
    const/4 v0, 0x1

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public CheckEVTFun(Loms/GameEngine/GameCanvas;)V
    .locals 3
    .param p1, "canvas"    # Loms/GameEngine/GameCanvas;

    .prologue
    .line 325
    invoke-static {}, Loms/GameEngine/GameCanvas;->GetViewRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 326
    .local v0, "rc":Landroid/graphics/Rect;
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-eq v1, v2, :cond_1

    .line 327
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v1, Loms/GameEngine/GameEvent$EventDEF;->DispX:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v1, Loms/GameEngine/GameEvent$EventDEF;->DispX:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-lt v1, v2, :cond_0

    .line 328
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v1, Loms/GameEngine/GameEvent$EventDEF;->DispY:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v1, Loms/GameEngine/GameEvent$EventDEF;->DispY:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_1

    .line 329
    :cond_0
    invoke-virtual {p0}, Loms/GameEngine/GameEvent;->EVTCLR()V

    .line 331
    :cond_1
    return-void
.end method

.method public EVTACT()V
    .locals 4

    .prologue
    const v1, 0x8000

    const/4 v3, 0x0

    .line 258
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v1, v1, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v2, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    aget-object v1, v1, v2

    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v2, Loms/GameEngine/GameEvent$EventDEF;->CurFRM:I

    aget v1, v1, v2

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTIdx:I

    .line 260
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v0, Loms/GameEngine/GameEvent$EventDEF;->CurCNT:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->CurCNT:I

    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v0, Loms/GameEngine/GameEvent$EventDEF;->MaxCNT:I

    if-lt v1, v0, :cond_0

    .line 262
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v3, v0, Loms/GameEngine/GameEvent$EventDEF;->CurCNT:I

    .line 263
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v0, Loms/GameEngine/GameEvent$EventDEF;->CurFRM:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->CurFRM:I

    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v0, Loms/GameEngine/GameEvent$EventDEF;->MaxFRM:I

    if-lt v1, v0, :cond_0

    .line 264
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v3, v0, Loms/GameEngine/GameEvent$EventDEF;->CurFRM:I

    .line 269
    :cond_0
    return-void
.end method

.method public EVTCLR()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v1, 0x0

    iput-boolean v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    .line 318
    return-void
.end method

.method public EVTCVT()V
    .locals 6

    .prologue
    const v3, 0x8000

    const/4 v5, 0x0

    .line 154
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v2, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 155
    .local v1, "Status":I
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v2, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 156
    .local v0, "Ctrl":I
    and-int v2, v1, v3

    if-ne v2, v3, :cond_4

    .line 157
    and-int/lit16 v2, v1, 0x200

    const/16 v3, 0x200

    if-eq v2, v3, :cond_0

    .line 158
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, v3, Loms/GameEngine/GameEvent$EventDEF;->EVTPtr:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x3

    aget v3, v3, v4

    iput v3, v2, Loms/GameEngine/GameEvent$EventDEF;->XAdc:I

    .line 159
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, v3, Loms/GameEngine/GameEvent$EventDEF;->EVTPtr:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x4

    aget v3, v3, v4

    iput v3, v2, Loms/GameEngine/GameEvent$EventDEF;->YAdc:I

    .line 160
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, v3, Loms/GameEngine/GameEvent$EventDEF;->EVTPtr:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x5

    aget v3, v3, v4

    iput v3, v2, Loms/GameEngine/GameEvent$EventDEF;->ZAdc:I

    .line 162
    :cond_0
    and-int/lit16 v2, v1, 0x400

    const/16 v3, 0x400

    if-eq v2, v3, :cond_1

    .line 163
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, v3, Loms/GameEngine/GameEvent$EventDEF;->EVTPtr:[[I

    aget-object v3, v3, v0

    aget v3, v3, v5

    iput v3, v2, Loms/GameEngine/GameEvent$EventDEF;->XInc:I

    .line 164
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, v3, Loms/GameEngine/GameEvent$EventDEF;->EVTPtr:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    iput v3, v2, Loms/GameEngine/GameEvent$EventDEF;->YInc:I

    .line 165
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, v3, Loms/GameEngine/GameEvent$EventDEF;->EVTPtr:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x2

    aget v3, v3, v4

    iput v3, v2, Loms/GameEngine/GameEvent$EventDEF;->ZInc:I

    .line 167
    :cond_1
    and-int/lit16 v2, v1, 0x80

    const/16 v3, 0x80

    if-eq v2, v3, :cond_2

    .line 168
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v5, v2, Loms/GameEngine/GameEvent$EventDEF;->CurCNT:I

    .line 169
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v5, v2, Loms/GameEngine/GameEvent$EventDEF;->CurFRM:I

    .line 171
    :cond_2
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, v3, Loms/GameEngine/GameEvent$EventDEF;->EVTPtr:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x6

    aget v3, v3, v4

    iput v3, v2, Loms/GameEngine/GameEvent$EventDEF;->MaxCNT:I

    .line 172
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, v3, Loms/GameEngine/GameEvent$EventDEF;->EVTPtr:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x7

    aget v3, v3, v4

    iput v3, v2, Loms/GameEngine/GameEvent$EventDEF;->MaxFRM:I

    .line 173
    and-int/lit16 v2, v1, 0x100

    const/16 v3, 0x100

    if-eq v2, v3, :cond_3

    .line 174
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v3, v3, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    aget-object v3, v3, v0

    iget-object v4, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v4, v4, Loms/GameEngine/GameEvent$EventDEF;->CurFRM:I

    aget v3, v3, v4

    iput v3, v2, Loms/GameEngine/GameEvent$EventDEF;->ACTIdx:I

    .line 175
    :cond_3
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v3, v2, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    const v4, -0x8781

    and-int/2addr v3, v4

    iput v3, v2, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 199
    :cond_4
    return-void
.end method

.method public EVTDIR()V
    .locals 4

    .prologue
    .line 226
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 227
    .local v0, "Status":I
    and-int/lit16 v1, v0, 0x200

    const/16 v2, 0x200

    if-eq v1, v2, :cond_0

    .line 228
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->XInc:I

    iget-object v3, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v3, v3, Loms/GameEngine/GameEvent$EventDEF;->XAdc:I

    add-int/2addr v2, v3

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->XInc:I

    .line 229
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->YInc:I

    iget-object v3, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v3, v3, Loms/GameEngine/GameEvent$EventDEF;->YAdc:I

    add-int/2addr v2, v3

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->YInc:I

    .line 230
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->ZInc:I

    iget-object v3, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v3, v3, Loms/GameEngine/GameEvent$EventDEF;->ZAdc:I

    add-int/2addr v2, v3

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->ZInc:I

    .line 232
    :cond_0
    and-int/lit16 v1, v0, 0x400

    const/16 v2, 0x400

    if-eq v1, v2, :cond_1

    .line 233
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->XVal:I

    iget-object v3, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v3, v3, Loms/GameEngine/GameEvent$EventDEF;->XInc:I

    add-int/2addr v2, v3

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->XVal:I

    .line 234
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->YVal:I

    iget-object v3, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v3, v3, Loms/GameEngine/GameEvent$EventDEF;->YInc:I

    add-int/2addr v2, v3

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->YVal:I

    .line 235
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->ZVal:I

    iget-object v3, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v3, v3, Loms/GameEngine/GameEvent$EventDEF;->ZInc:I

    add-int/2addr v2, v3

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->ZVal:I

    .line 249
    :cond_1
    return-void
.end method

.method public EVTHIT(Loms/GameEngine/GameCanvas;)V
    .locals 3
    .param p1, "canvas"    # Loms/GameEngine/GameCanvas;

    .prologue
    .line 202
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v1, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-eq v1, v2, :cond_0

    .line 203
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v1, Loms/GameEngine/GameEvent$EventDEF;->ACTIdx:I

    .line 204
    .local v0, "ACTIdx":I
    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    invoke-virtual {p1, v0}, Loms/GameEngine/GameCanvas;->GetSpriteXHitL(I)I

    move-result v2

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->XHitL:I

    .line 206
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    invoke-virtual {p1, v0}, Loms/GameEngine/GameCanvas;->GetSpriteXHitR(I)I

    move-result v2

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->XHitR:I

    .line 207
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    invoke-virtual {p1, v0}, Loms/GameEngine/GameCanvas;->GetSpriteYHitU(I)I

    move-result v2

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->YHitU:I

    .line 208
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    invoke-virtual {p1, v0}, Loms/GameEngine/GameCanvas;->GetSpriteYHitD(I)I

    move-result v2

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->YHitD:I

    .line 209
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    invoke-virtual {p1, v0}, Loms/GameEngine/GameCanvas;->GetSpriteZHitF(I)I

    move-result v2

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->ZHitF:I

    .line 210
    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    invoke-virtual {p1, v0}, Loms/GameEngine/GameCanvas;->GetSpriteZHitB(I)I

    move-result v2

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->ZHitB:I

    .line 223
    .end local v0    # "ACTIdx":I
    :cond_0
    return-void
.end method

.method public EVTRUN()V
    .locals 0

    .prologue
    .line 322
    return-void
.end method

.method public ExecEVT(Loms/GameEngine/GameCanvas;)V
    .locals 1
    .param p1, "canvas"    # Loms/GameEngine/GameCanvas;

    .prologue
    .line 129
    if-nez p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v0, v0, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Loms/GameEngine/GameEvent;->EVTCVT()V

    .line 133
    invoke-virtual {p0}, Loms/GameEngine/GameEvent;->EVTDIR()V

    .line 134
    invoke-virtual {p0, p1}, Loms/GameEngine/GameEvent;->EVTHIT(Loms/GameEngine/GameCanvas;)V

    goto :goto_0
.end method

.method public ExecRUN(Loms/GameEngine/GameCanvas;)V
    .locals 2
    .param p1, "canvas"    # Loms/GameEngine/GameCanvas;

    .prologue
    const v1, 0x8000

    .line 139
    if-nez p1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v0, v0, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_2

    .line 143
    invoke-virtual {p0}, Loms/GameEngine/GameEvent;->EVTRUN()V

    .line 144
    :cond_2
    invoke-virtual {p0}, Loms/GameEngine/GameEvent;->TouchEVTClr()V

    .line 145
    invoke-virtual {p0, p1}, Loms/GameEngine/GameEvent;->CheckEVTFun(Loms/GameEngine/GameCanvas;)V

    .line 146
    invoke-virtual {p0}, Loms/GameEngine/GameEvent;->EVTACT()V

    goto :goto_0
.end method

.method public MakeEVENT(III)Z
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 87
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v2, v2, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v2, :cond_0

    .line 124
    :goto_0
    return v0

    .line 89
    :cond_0
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput-boolean v1, v2, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    .line 90
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 91
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->MaxCNT:I

    .line 92
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->MaxFRM:I

    .line 93
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->CurCNT:I

    .line 94
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->CurFRM:I

    .line 95
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    shl-int/lit8 v3, p1, 0x10

    iput v3, v2, Loms/GameEngine/GameEvent$EventDEF;->XVal:I

    .line 96
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    shl-int/lit8 v3, p2, 0x10

    iput v3, v2, Loms/GameEngine/GameEvent$EventDEF;->YVal:I

    .line 97
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    shl-int/lit8 v3, p3, 0x10

    iput v3, v2, Loms/GameEngine/GameEvent$EventDEF;->ZVal:I

    .line 98
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->XInc:I

    .line 99
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->YInc:I

    .line 100
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->ZInc:I

    .line 101
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->XAdc:I

    .line 102
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->YAdc:I

    .line 103
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->ZAdc:I

    .line 104
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->Flag:I

    .line 105
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    .line 106
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const v3, 0x8000

    iput v3, v2, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 107
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput p1, v2, Loms/GameEngine/GameEvent$EventDEF;->DispX:I

    .line 108
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput p2, v2, Loms/GameEngine/GameEvent$EventDEF;->DispY:I

    .line 110
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->XHitL:I

    .line 111
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->XHitR:I

    .line 112
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->YHitU:I

    .line 113
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->YHitD:I

    .line 114
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->ZHitF:I

    .line 115
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->ZHitB:I

    .line 116
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput-boolean v0, v2, Loms/GameEngine/GameEvent$EventDEF;->Touch:Z

    .line 117
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->ACTIdx:I

    .line 119
    iget-object v2, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v0, v2, Loms/GameEngine/GameEvent$EventDEF;->TouchEVTIdx:I

    .line 120
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const-string v2, ""

    iput-object v2, v0, Loms/GameEngine/GameEvent$EventDEF;->TouchEVTName:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v2, 0x0

    iput v2, v0, Loms/GameEngine/GameEvent$EventDEF;->Rotate:F

    .line 123
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/high16 v2, 0x3f800000

    iput v2, v0, Loms/GameEngine/GameEvent$EventDEF;->Scale:F

    move v0, v1

    .line 124
    goto/16 :goto_0
.end method

.method public SetEVTCtrl(II)V
    .locals 3
    .param p1, "Ctrl"    # I
    .param p2, "Mode"    # I

    .prologue
    .line 311
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    const v2, -0x8781

    and-int/2addr v1, v2

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 312
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    const v2, 0x8000

    or-int/2addr v2, p2

    or-int/2addr v1, v2

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 313
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput p1, v0, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    .line 314
    return-void
.end method

.method public ShowEVENT(Loms/GameEngine/GameCanvas;)V
    .locals 8
    .param p1, "canvas"    # Loms/GameEngine/GameCanvas;

    .prologue
    const/4 v5, 0x0

    .line 272
    if-nez p1, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-boolean v0, v0, Loms/GameEngine/GameEvent$EventDEF;->Valid:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    and-int/lit16 v7, v0, 0x1000

    .line 279
    .local v7, "Status":I
    if-nez v7, :cond_3

    .line 280
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_2

    .line 281
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v1, Loms/GameEngine/GameEvent$EventDEF;->XVal:I

    shr-int/lit8 v1, v1, 0x10

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->DispX:I

    .line 282
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v1, Loms/GameEngine/GameEvent$EventDEF;->YVal:I

    shr-int/lit8 v1, v1, 0x10

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->DispY:I

    .line 292
    :cond_2
    :goto_1
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v0, Loms/GameEngine/GameEvent$EventDEF;->DispX:I

    .line 293
    .local v2, "DispX":I
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v3, v0, Loms/GameEngine/GameEvent$EventDEF;->DispY:I

    .line 294
    .local v3, "DispY":I
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTIdx:I

    if-lez v0, :cond_0

    .line 295
    iget-object v0, p0, Loms/GameEngine/GameEvent;->mRc:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Loms/GameEngine/GameEvent;->mRc:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lt v2, v0, :cond_0

    .line 296
    iget-object v0, p0, Loms/GameEngine/GameEvent;->mRc:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Loms/GameEngine/GameEvent;->mRc:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lt v3, v0, :cond_0

    .line 297
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTIdx:I

    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v4, v0, Loms/GameEngine/GameEvent$EventDEF;->Attrib:I

    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v5, v0, Loms/GameEngine/GameEvent$EventDEF;->Rotate:F

    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v6, v0, Loms/GameEngine/GameEvent$EventDEF;->Scale:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Loms/GameEngine/GameCanvas;->WriteSprite(IIIIFF)I

    goto :goto_0

    .line 287
    .end local v2    # "DispX":I
    .end local v3    # "DispY":I
    :cond_3
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v1, Loms/GameEngine/GameEvent$EventDEF;->XVal:I

    invoke-virtual {p1, v5}, Loms/GameEngine/GameCanvas;->GetTextXVal(I)I

    move-result v4

    sub-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x10

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->DispX:I

    .line 288
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget-object v1, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v1, Loms/GameEngine/GameEvent$EventDEF;->YVal:I

    invoke-virtual {p1, v5}, Loms/GameEngine/GameCanvas;->GetTextYVal(I)I

    move-result v4

    sub-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x10

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->DispY:I

    goto :goto_1
.end method

.method public TouchEVTClr()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput-boolean v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Touch:Z

    .line 253
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->TouchEVTIdx:I

    .line 254
    iget-object v0, p0, Loms/GameEngine/GameEvent;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const-string v1, ""

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->TouchEVTName:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
