.class public Loms/GameEngine/C_MessageManager;
.super Ljava/lang/Object;
.source "C_MessageManager.java"


# instance fields
.field private nQueueLen:I

.field private pMessageQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Loms/GameEngine/C_MSG;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Loms/GameEngine/C_MessageManager;->pMessageQueue:Ljava/util/LinkedList;

    .line 22
    invoke-virtual {p0}, Loms/GameEngine/C_MessageManager;->RemoveAllMsgQueue()V

    .line 23
    return-void
.end method


# virtual methods
.method public GetMessageQueue()Loms/GameEngine/C_MSG;
    .locals 3

    .prologue
    .line 64
    iget v1, p0, Loms/GameEngine/C_MessageManager;->nQueueLen:I

    if-nez v1, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    .line 70
    :cond_0
    iget-object v1, p0, Loms/GameEngine/C_MessageManager;->pMessageQueue:Ljava/util/LinkedList;

    iget v2, p0, Loms/GameEngine/C_MessageManager;->nQueueLen:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loms/GameEngine/C_MSG;

    .line 71
    .local v0, "msg":Loms/GameEngine/C_MSG;
    goto :goto_0
.end method

.method public GetMessageQueue(I)Loms/GameEngine/C_MSG;
    .locals 2
    .param p1, "queueIdx"    # I

    .prologue
    .line 77
    iget v1, p0, Loms/GameEngine/C_MessageManager;->nQueueLen:I

    if-lt p1, v1, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    .line 83
    :cond_0
    iget-object v1, p0, Loms/GameEngine/C_MessageManager;->pMessageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loms/GameEngine/C_MSG;

    .line 84
    .local v0, "msg":Loms/GameEngine/C_MSG;
    goto :goto_0
.end method

.method public GetMessageQueueLength()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Loms/GameEngine/C_MessageManager;->nQueueLen:I

    return v0
.end method

.method public RemoveAllMsgQueue()V
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Loms/GameEngine/C_MessageManager;->pMessageQueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Loms/GameEngine/C_MessageManager;->nQueueLen:I

    if-lt v0, v1, :cond_1

    .line 96
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Loms/GameEngine/C_MessageManager;->nQueueLen:I

    .line 97
    return-void

    .line 93
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Loms/GameEngine/C_MessageManager;->pMessageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public SendMessage(III)V
    .locals 2
    .param p1, "hWnd"    # I
    .param p2, "message"    # I
    .param p3, "param"    # I

    .prologue
    .line 48
    new-instance v0, Loms/GameEngine/C_MSG;

    invoke-direct {v0}, Loms/GameEngine/C_MSG;-><init>()V

    .line 49
    .local v0, "msg":Loms/GameEngine/C_MSG;
    invoke-virtual {v0, p1, p2, p3}, Loms/GameEngine/C_MSG;->SetMessage(III)V

    .line 50
    iget-object v1, p0, Loms/GameEngine/C_MessageManager;->pMessageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 51
    iget v1, p0, Loms/GameEngine/C_MessageManager;->nQueueLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Loms/GameEngine/C_MessageManager;->nQueueLen:I

    .line 52
    return-void
.end method

.method public SendMessage(IIIIII)V
    .locals 7
    .param p1, "hWnd"    # I
    .param p2, "message"    # I
    .param p3, "param"    # I
    .param p4, "time"    # I
    .param p5, "cursorX"    # I
    .param p6, "cursorY"    # I

    .prologue
    .line 32
    new-instance v0, Loms/GameEngine/C_MSG;

    invoke-direct {v0}, Loms/GameEngine/C_MSG;-><init>()V

    .local v0, "msg":Loms/GameEngine/C_MSG;
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 33
    invoke-virtual/range {v0 .. v6}, Loms/GameEngine/C_MSG;->SetMessage(IIIIII)V

    .line 34
    iget-object v1, p0, Loms/GameEngine/C_MessageManager;->pMessageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 35
    iget v1, p0, Loms/GameEngine/C_MessageManager;->nQueueLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Loms/GameEngine/C_MessageManager;->nQueueLen:I

    .line 36
    return-void
.end method

.method public SendMessage(ILjava/lang/String;I)V
    .locals 2
    .param p1, "hWnd"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "param"    # I

    .prologue
    .line 56
    new-instance v0, Loms/GameEngine/C_MSG;

    invoke-direct {v0}, Loms/GameEngine/C_MSG;-><init>()V

    .line 57
    .local v0, "msg":Loms/GameEngine/C_MSG;
    invoke-virtual {v0, p1, p2, p3}, Loms/GameEngine/C_MSG;->SetMessage(ILjava/lang/String;I)V

    .line 58
    iget-object v1, p0, Loms/GameEngine/C_MessageManager;->pMessageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 59
    iget v1, p0, Loms/GameEngine/C_MessageManager;->nQueueLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Loms/GameEngine/C_MessageManager;->nQueueLen:I

    .line 60
    return-void
.end method

.method public SendMessage(ILjava/lang/String;IIII)V
    .locals 7
    .param p1, "hWnd"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "param"    # I
    .param p4, "time"    # I
    .param p5, "cursorX"    # I
    .param p6, "cursorY"    # I

    .prologue
    .line 40
    new-instance v0, Loms/GameEngine/C_MSG;

    invoke-direct {v0}, Loms/GameEngine/C_MSG;-><init>()V

    .local v0, "msg":Loms/GameEngine/C_MSG;
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 41
    invoke-virtual/range {v0 .. v6}, Loms/GameEngine/C_MSG;->SetMessage(ILjava/lang/String;IIII)V

    .line 42
    iget-object v1, p0, Loms/GameEngine/C_MessageManager;->pMessageQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    iget v1, p0, Loms/GameEngine/C_MessageManager;->nQueueLen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Loms/GameEngine/C_MessageManager;->nQueueLen:I

    .line 44
    return-void
.end method
