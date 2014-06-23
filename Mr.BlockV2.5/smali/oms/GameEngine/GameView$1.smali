.class Loms/GameEngine/GameView$1;
.super Landroid/os/Handler;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loms/GameEngine/GameView;->CreateThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Loms/GameEngine/GameView;


# direct methods
.method constructor <init>(Loms/GameEngine/GameView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Loms/GameEngine/GameView$1;->this$0:Loms/GameEngine/GameView;

    .line 250
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 256
    return-void
.end method
