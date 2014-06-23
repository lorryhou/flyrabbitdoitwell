.class public Loms/GameEngine/KeyBoard;
.super Ljava/lang/Object;
.source "KeyBoard.java"


# static fields
.field public static final KEYMAX:I = 0x5c


# instance fields
.field public CurUpKey:[Z

.field public DownKey:[Z

.field public SingleKey:[Z

.field public SteadyKey:[Z

.field public UpKey:[Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x5c

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-array v0, v1, [Z

    iput-object v0, p0, Loms/GameEngine/KeyBoard;->SingleKey:[Z

    .line 17
    new-array v0, v1, [Z

    iput-object v0, p0, Loms/GameEngine/KeyBoard;->SteadyKey:[Z

    .line 18
    new-array v0, v1, [Z

    iput-object v0, p0, Loms/GameEngine/KeyBoard;->DownKey:[Z

    .line 19
    new-array v0, v1, [Z

    iput-object v0, p0, Loms/GameEngine/KeyBoard;->UpKey:[Z

    .line 20
    new-array v0, v1, [Z

    iput-object v0, p0, Loms/GameEngine/KeyBoard;->CurUpKey:[Z

    .line 21
    return-void
.end method


# virtual methods
.method public CHKSingleKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 61
    iget-object v0, p0, Loms/GameEngine/KeyBoard;->SingleKey:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public CHKSteadyKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 65
    iget-object v0, p0, Loms/GameEngine/KeyBoard;->SteadyKey:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public CHKUpKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 69
    iget-object v0, p0, Loms/GameEngine/KeyBoard;->UpKey:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public ClearKeyValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x5c

    if-lt v0, v1, :cond_0

    .line 45
    return-void

    .line 40
    :cond_0
    iget-object v1, p0, Loms/GameEngine/KeyBoard;->SingleKey:[Z

    aput-boolean v2, v1, v0

    .line 41
    iget-object v1, p0, Loms/GameEngine/KeyBoard;->SteadyKey:[Z

    aput-boolean v2, v1, v0

    .line 42
    iget-object v1, p0, Loms/GameEngine/KeyBoard;->UpKey:[Z

    aput-boolean v2, v1, v0

    .line 43
    iget-object v1, p0, Loms/GameEngine/KeyBoard;->CurUpKey:[Z

    aput-boolean v2, v1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public ReadKeyBoard()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x5c

    if-lt v0, v1, :cond_0

    .line 58
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Loms/GameEngine/KeyBoard;->DownKey:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Loms/GameEngine/KeyBoard;->SteadyKey:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    .line 51
    iget-object v1, p0, Loms/GameEngine/KeyBoard;->SingleKey:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 54
    :goto_1
    iget-object v1, p0, Loms/GameEngine/KeyBoard;->SteadyKey:[Z

    iget-object v2, p0, Loms/GameEngine/KeyBoard;->DownKey:[Z

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    .line 55
    iget-object v1, p0, Loms/GameEngine/KeyBoard;->UpKey:[Z

    iget-object v2, p0, Loms/GameEngine/KeyBoard;->CurUpKey:[Z

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    .line 56
    iget-object v1, p0, Loms/GameEngine/KeyBoard;->CurUpKey:[Z

    aput-boolean v3, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, p0, Loms/GameEngine/KeyBoard;->SingleKey:[Z

    aput-boolean v3, v1, v0

    goto :goto_1
.end method

.method public onKeyDown(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 24
    if-ltz p1, :cond_0

    const/16 v0, 0x5c

    if-lt p1, v0, :cond_1

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Loms/GameEngine/KeyBoard;->DownKey:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    goto :goto_0
.end method

.method public onKeyUp(I)V
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 30
    if-ltz p1, :cond_0

    const/16 v0, 0x5c

    if-lt p1, v0, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Loms/GameEngine/KeyBoard;->DownKey:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 33
    iget-object v0, p0, Loms/GameEngine/KeyBoard;->CurUpKey:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    goto :goto_0
.end method
