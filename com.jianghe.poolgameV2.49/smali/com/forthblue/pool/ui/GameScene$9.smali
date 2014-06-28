.class Lcom/forthblue/pool/ui/GameScene$9;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/forthblue/pool/ui/GameScene;->showConfirmDialog()V
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
    .line 1966
    iput-object p1, p0, Lcom/forthblue/pool/ui/GameScene$9;->this$0:Lcom/forthblue/pool/ui/GameScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene$9;->this$0:Lcom/forthblue/pool/ui/GameScene;

    const/16 v1, 0xc

    iput v1, v0, Lcom/forthblue/pool/ui/GameScene;->lastButtonId:I

    .line 1969
    return-void
.end method
