.class public Loms/GameEngine/C_MSG;
.super Ljava/lang/Object;
.source "C_MSG.java"


# static fields
.field public static final ON_COMMAND:I = 0x0

.field public static final ON_WM:I = 0x1


# instance fields
.field private HWND:I

.field private nCursorX:I

.field private nCursorY:I

.field private nMessage:I

.field private nTime:J

.field private sMessage:Ljava/lang/String;

.field private wParam:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v2, p0, Loms/GameEngine/C_MSG;->HWND:I

    .line 30
    iput v2, p0, Loms/GameEngine/C_MSG;->nMessage:I

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Loms/GameEngine/C_MSG;->nTime:J

    .line 32
    iput v2, p0, Loms/GameEngine/C_MSG;->nCursorX:I

    .line 33
    iput v2, p0, Loms/GameEngine/C_MSG;->nCursorY:I

    .line 34
    return-void
.end method


# virtual methods
.method public GetCursorX()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Loms/GameEngine/C_MSG;->nCursorX:I

    return v0
.end method

.method public GetCursorY()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Loms/GameEngine/C_MSG;->nCursorY:I

    return v0
.end method

.method public GetMsgHWnd()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Loms/GameEngine/C_MSG;->HWND:I

    return v0
.end method

.method public GetMsgMessage()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Loms/GameEngine/C_MSG;->nMessage:I

    return v0
.end method

.method public GetMsgTime()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Loms/GameEngine/C_MSG;->nTime:J

    return-wide v0
.end method

.method public GetSMsgMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Loms/GameEngine/C_MSG;->sMessage:Ljava/lang/String;

    return-object v0
.end method

.method public GetwParam()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Loms/GameEngine/C_MSG;->wParam:I

    return v0
.end method

.method public SetMessage(III)V
    .locals 0
    .param p1, "hWnd"    # I
    .param p2, "message"    # I
    .param p3, "param"    # I

    .prologue
    .line 37
    iput p1, p0, Loms/GameEngine/C_MSG;->HWND:I

    .line 38
    iput p2, p0, Loms/GameEngine/C_MSG;->nMessage:I

    .line 39
    iput p3, p0, Loms/GameEngine/C_MSG;->wParam:I

    .line 40
    return-void
.end method

.method public SetMessage(IIIIII)V
    .locals 2
    .param p1, "hWnd"    # I
    .param p2, "message"    # I
    .param p3, "param"    # I
    .param p4, "time"    # I
    .param p5, "cursorX"    # I
    .param p6, "cursorY"    # I

    .prologue
    .line 52
    iput p1, p0, Loms/GameEngine/C_MSG;->HWND:I

    .line 53
    iput p2, p0, Loms/GameEngine/C_MSG;->nMessage:I

    .line 54
    iput p3, p0, Loms/GameEngine/C_MSG;->wParam:I

    .line 55
    int-to-long v0, p4

    iput-wide v0, p0, Loms/GameEngine/C_MSG;->nTime:J

    .line 56
    iput p5, p0, Loms/GameEngine/C_MSG;->nCursorX:I

    .line 57
    iput p6, p0, Loms/GameEngine/C_MSG;->nCursorY:I

    .line 58
    return-void
.end method

.method public SetMessage(ILjava/lang/String;I)V
    .locals 0
    .param p1, "hWnd"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "param"    # I

    .prologue
    .line 61
    iput p1, p0, Loms/GameEngine/C_MSG;->HWND:I

    .line 62
    iput-object p2, p0, Loms/GameEngine/C_MSG;->sMessage:Ljava/lang/String;

    .line 63
    iput p3, p0, Loms/GameEngine/C_MSG;->wParam:I

    .line 64
    return-void
.end method

.method public SetMessage(ILjava/lang/String;IIII)V
    .locals 2
    .param p1, "hWnd"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "param"    # I
    .param p4, "time"    # I
    .param p5, "cursorX"    # I
    .param p6, "cursorY"    # I

    .prologue
    .line 43
    iput p1, p0, Loms/GameEngine/C_MSG;->HWND:I

    .line 44
    iput-object p2, p0, Loms/GameEngine/C_MSG;->sMessage:Ljava/lang/String;

    .line 45
    iput p3, p0, Loms/GameEngine/C_MSG;->wParam:I

    .line 46
    int-to-long v0, p4

    iput-wide v0, p0, Loms/GameEngine/C_MSG;->nTime:J

    .line 47
    iput p5, p0, Loms/GameEngine/C_MSG;->nCursorX:I

    .line 48
    iput p6, p0, Loms/GameEngine/C_MSG;->nCursorY:I

    .line 49
    return-void
.end method
