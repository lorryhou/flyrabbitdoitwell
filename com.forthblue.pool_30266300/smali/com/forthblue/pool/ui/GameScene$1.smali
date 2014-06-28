.class Lcom/forthblue/pool/ui/GameScene$1;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/forthblue/pool/ui/GameScene;->onButtonClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/forthblue/pool/ui/GameScene;


# direct methods
.method constructor <init>(Lcom/forthblue/pool/ui/GameScene;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/forthblue/pool/ui/GameScene$1;->this$0:Lcom/forthblue/pool/ui/GameScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$1;->this$0:Lcom/forthblue/pool/ui/GameScene;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/GameScene;->showConfirmDialog()V

    .line 184
    return-void
.end method
