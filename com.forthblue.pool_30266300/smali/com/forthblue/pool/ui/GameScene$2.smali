.class Lcom/forthblue/pool/ui/GameScene$2;
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
    .line 218
    iput-object p1, p0, Lcom/forthblue/pool/ui/GameScene$2;->this$0:Lcom/forthblue/pool/ui/GameScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene$2;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget-object v1, v1, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    const-string v2, "purchase is not supported."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
