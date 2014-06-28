.class Lcom/forthblue/pool/ui/GameScene$4;
.super Ljava/lang/Object;
.source "GameScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/forthblue/pool/ui/GameScene;->tick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/forthblue/pool/ui/GameScene;

.field final synthetic val$msgid:I


# direct methods
.method constructor <init>(Lcom/forthblue/pool/ui/GameScene;I)V
    .locals 0

    .prologue
    .line 1451
    iput-object p1, p0, Lcom/forthblue/pool/ui/GameScene$4;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iput p2, p0, Lcom/forthblue/pool/ui/GameScene$4;->val$msgid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1454
    iget v1, p0, Lcom/forthblue/pool/ui/GameScene$4;->val$msgid:I

    packed-switch v1, :pswitch_data_0

    .line 1457
    const-string v0, "\u7535\u8111\u72af\u89c4!"

    .line 1469
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene$4;->this$0:Lcom/forthblue/pool/ui/GameScene;

    iget-object v1, v1, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    invoke-virtual {v1}, Lcom/forthblue/pool/Main;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1470
    return-void

    .line 1460
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_0
    const-string v0, "\u5927\u54e5\u4f60\u72af\u89c4\u4e86!"

    .line 1461
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1463
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1
    const-string v0, "\u73a9\u5bb6\u0031\u72af\u89c4\u4e86!"

    .line 1464
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1466
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_2
    const-string v0, "\u73a9\u5bb6\u0032\u72af\u89c4\u4e86!"

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 1454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
