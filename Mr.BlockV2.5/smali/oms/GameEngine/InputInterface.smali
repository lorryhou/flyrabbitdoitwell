.class public Loms/GameEngine/InputInterface;
.super Ljava/lang/Object;
.source "InputInterface.java"


# instance fields
.field private cKeyBoard:Loms/GameEngine/KeyBoard;

.field private cTouchPannel:Loms/GameEngine/TouchPannel;

.field public nIsPause:Z

.field public nScreenXOff:I

.field public nScreenYOff:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Loms/GameEngine/KeyBoard;

    invoke-direct {v0}, Loms/GameEngine/KeyBoard;-><init>()V

    iput-object v0, p0, Loms/GameEngine/InputInterface;->cKeyBoard:Loms/GameEngine/KeyBoard;

    .line 21
    new-instance v0, Loms/GameEngine/TouchPannel;

    invoke-direct {v0}, Loms/GameEngine/TouchPannel;-><init>()V

    iput-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    .line 22
    iput v1, p0, Loms/GameEngine/InputInterface;->nScreenXOff:I

    .line 23
    iput v1, p0, Loms/GameEngine/InputInterface;->nScreenYOff:I

    .line 24
    iput-boolean v1, p0, Loms/GameEngine/InputInterface;->nIsPause:Z

    .line 25
    return-void
.end method


# virtual methods
.method public CHKIsTouch()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->CHKIsTouch()Z

    move-result v0

    return v0
.end method

.method public CHKSingleKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 44
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cKeyBoard:Loms/GameEngine/KeyBoard;

    invoke-virtual {v0, p1}, Loms/GameEngine/KeyBoard;->CHKSingleKey(I)Z

    move-result v0

    return v0
.end method

.method public CHKSteadyKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 48
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cKeyBoard:Loms/GameEngine/KeyBoard;

    invoke-virtual {v0, p1}, Loms/GameEngine/KeyBoard;->CHKSteadyKey(I)Z

    move-result v0

    return v0
.end method

.method public CHKTouchDown()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->CHKTouchDown()Z

    move-result v0

    return v0
.end method

.method public CHKTouchMove()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->CHKTouchMove()Z

    move-result v0

    return v0
.end method

.method public CHKTouchUp()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->CHKTouchUp()Z

    move-result v0

    return v0
.end method

.method public CHKUpKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 52
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cKeyBoard:Loms/GameEngine/KeyBoard;

    invoke-virtual {v0, p1}, Loms/GameEngine/KeyBoard;->CHKUpKey(I)Z

    move-result v0

    return v0
.end method

.method public ClearKeyValue()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cKeyBoard:Loms/GameEngine/KeyBoard;

    invoke-virtual {v0}, Loms/GameEngine/KeyBoard;->ClearKeyValue()V

    .line 58
    return-void
.end method

.method public ClearTouchDown()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->ClearTouchDown()V

    .line 145
    return-void
.end method

.method public ClearTouchMove()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->ClearTouchMove()V

    .line 149
    return-void
.end method

.method public ClearTouchUp()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->ClearTouchUp()V

    .line 153
    return-void
.end method

.method public GetTouchDownCount()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->GetTouchDownCount()I

    move-result v0

    return v0
.end method

.method public GetTouchDownX()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->GetTouchDownX()I

    move-result v0

    return v0
.end method

.method public GetTouchDownX(I)I
    .locals 1
    .param p1, "Count"    # I

    .prologue
    .line 160
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->GetTouchDownX()I

    move-result v0

    return v0
.end method

.method public GetTouchDownY()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->GetTouchDownY()I

    move-result v0

    return v0
.end method

.method public GetTouchDownY(I)I
    .locals 1
    .param p1, "Count"    # I

    .prologue
    .line 164
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->GetTouchDownY()I

    move-result v0

    return v0
.end method

.method public GetTouchEn()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    iget-boolean v0, v0, Loms/GameEngine/TouchPannel;->mTouchEn:Z

    return v0
.end method

.method public GetTouchMoveCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->GetTouchMoveCount()I

    move-result v0

    return v0
.end method

.method public GetTouchMoveX()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->GetTouchMoveX()I

    move-result v0

    return v0
.end method

.method public GetTouchMoveX(I)I
    .locals 1
    .param p1, "Count"    # I

    .prologue
    .line 125
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0, p1}, Loms/GameEngine/TouchPannel;->GetTouchMoveX(I)I

    move-result v0

    return v0
.end method

.method public GetTouchMoveY()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->GetTouchMoveY()I

    move-result v0

    return v0
.end method

.method public GetTouchMoveY(I)I
    .locals 1
    .param p1, "Count"    # I

    .prologue
    .line 129
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0, p1}, Loms/GameEngine/TouchPannel;->GetTouchMoveY(I)I

    move-result v0

    return v0
.end method

.method public GetTouchUpCount()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->GetTouchUpCount()I

    move-result v0

    return v0
.end method

.method public GetTouchUpX()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->GetTouchUpX()I

    move-result v0

    return v0
.end method

.method public GetTouchUpX(I)I
    .locals 1
    .param p1, "Count"    # I

    .prologue
    .line 172
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->GetTouchUpX()I

    move-result v0

    return v0
.end method

.method public GetTouchUpY()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->GetTouchUpY()I

    move-result v0

    return v0
.end method

.method public GetTouchUpY(I)I
    .locals 1
    .param p1, "Count"    # I

    .prologue
    .line 176
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->GetTouchUpY()I

    move-result v0

    return v0
.end method

.method public ReadKeyBoard()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cKeyBoard:Loms/GameEngine/KeyBoard;

    invoke-virtual {v0}, Loms/GameEngine/KeyBoard;->ReadKeyBoard()V

    .line 41
    return-void
.end method

.method public ReadTouch()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    invoke-virtual {v0}, Loms/GameEngine/TouchPannel;->ReadTouch()V

    .line 90
    return-void
.end method

.method public SetScreenOffset(II)V
    .locals 0
    .param p1, "XOff"    # I
    .param p2, "YOff"    # I

    .prologue
    .line 62
    iput p1, p0, Loms/GameEngine/InputInterface;->nScreenXOff:I

    .line 63
    iput p2, p0, Loms/GameEngine/InputInterface;->nScreenYOff:I

    .line 64
    return-void
.end method

.method public SetTouchDown(II)V
    .locals 3
    .param p1, "X"    # I
    .param p2, "Y"    # I

    .prologue
    .line 76
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    iget v1, p0, Loms/GameEngine/InputInterface;->nScreenXOff:I

    sub-int v1, p1, v1

    invoke-static {v1}, Loms/GameEngine/GameMath;->convertToRealX(I)I

    move-result v1

    iget v2, p0, Loms/GameEngine/InputInterface;->nScreenYOff:I

    sub-int v2, p2, v2

    invoke-static {v2}, Loms/GameEngine/GameMath;->convertToRealY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Loms/GameEngine/TouchPannel;->SetTouchDown(II)V

    .line 78
    return-void
.end method

.method public SetTouchEn(Z)V
    .locals 1
    .param p1, "touch"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    iput-boolean p1, v0, Loms/GameEngine/TouchPannel;->mTouchEn:Z

    .line 69
    return-void
.end method

.method public SetTouchMove(II)V
    .locals 3
    .param p1, "X"    # I
    .param p2, "Y"    # I

    .prologue
    .line 81
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    iget v1, p0, Loms/GameEngine/InputInterface;->nScreenXOff:I

    sub-int v1, p1, v1

    invoke-static {v1}, Loms/GameEngine/GameMath;->convertToRealX(I)I

    move-result v1

    iget v2, p0, Loms/GameEngine/InputInterface;->nScreenYOff:I

    sub-int v2, p2, v2

    invoke-static {v2}, Loms/GameEngine/GameMath;->convertToRealY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Loms/GameEngine/TouchPannel;->SetTouchMove(II)V

    .line 82
    return-void
.end method

.method public SetTouchUp(II)V
    .locals 3
    .param p1, "X"    # I
    .param p2, "Y"    # I

    .prologue
    .line 85
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cTouchPannel:Loms/GameEngine/TouchPannel;

    iget v1, p0, Loms/GameEngine/InputInterface;->nScreenXOff:I

    sub-int v1, p1, v1

    invoke-static {v1}, Loms/GameEngine/GameMath;->convertToRealX(I)I

    move-result v1

    iget v2, p0, Loms/GameEngine/InputInterface;->nScreenYOff:I

    sub-int v2, p2, v2

    invoke-static {v2}, Loms/GameEngine/GameMath;->convertToRealY(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Loms/GameEngine/TouchPannel;->SetTouchUp(II)V

    .line 86
    return-void
.end method

.method public onKeyDown(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 29
    iget-boolean v0, p0, Loms/GameEngine/InputInterface;->nIsPause:Z

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cKeyBoard:Loms/GameEngine/KeyBoard;

    invoke-virtual {v0, p1}, Loms/GameEngine/KeyBoard;->onKeyDown(I)V

    .line 31
    :cond_0
    return-void
.end method

.method public onKeyUp(I)V
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 34
    iget-boolean v0, p0, Loms/GameEngine/InputInterface;->nIsPause:Z

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Loms/GameEngine/InputInterface;->cKeyBoard:Loms/GameEngine/KeyBoard;

    invoke-virtual {v0, p1}, Loms/GameEngine/KeyBoard;->onKeyUp(I)V

    .line 37
    :cond_0
    return-void
.end method
