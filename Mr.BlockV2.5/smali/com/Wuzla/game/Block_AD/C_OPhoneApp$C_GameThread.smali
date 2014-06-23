.class Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;
.super Ljava/lang/Thread;
.source "C_OPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Wuzla/game/Block_AD/C_OPhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "C_GameThread"
.end annotation


# instance fields
.field private cBlockMenu:Lcom/Wuzla/game/Block_AD/C_BlockMenu;

.field mRun:Z

.field final synthetic this$0:Lcom/Wuzla/game/Block_AD/C_OPhoneApp;


# direct methods
.method public constructor <init>(Lcom/Wuzla/game/Block_AD/C_OPhoneApp;Loms/GameEngine/C_Lib;Lcom/Wuzla/game/Block_AD/C_BlockMenu;)V
    .locals 1
    .param p2, "clib"    # Loms/GameEngine/C_Lib;
    .param p3, "gameMenu"    # Lcom/Wuzla/game/Block_AD/C_BlockMenu;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;->this$0:Lcom/Wuzla/game/Block_AD/C_OPhoneApp;

    .line 13
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 14
    iput-object p3, p0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;->cBlockMenu:Lcom/Wuzla/game/Block_AD/C_BlockMenu;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;->mRun:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0, p0}, Loms/GameEngine/C_Lib;->SetGameThread(Ljava/lang/Thread;)V

    .line 32
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;->cBlockMenu:Lcom/Wuzla/game/Block_AD/C_BlockMenu;

    invoke-virtual {v0}, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->GameLoop()V

    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 35
    return-void
.end method

.method public setRun(Z)V
    .locals 0
    .param p1, "run"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/Wuzla/game/Block_AD/C_OPhoneApp$C_GameThread;->mRun:Z

    .line 20
    return-void
.end method
