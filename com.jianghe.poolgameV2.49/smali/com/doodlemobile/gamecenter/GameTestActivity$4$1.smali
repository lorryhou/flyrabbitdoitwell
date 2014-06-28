.class Lcom/doodlemobile/gamecenter/GameTestActivity$4$1;
.super Ljava/lang/Object;
.source "GameTestActivity.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/GameTestActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/doodlemobile/gamecenter/GameTestActivity$4;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/GameTestActivity$4;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/GameTestActivity$4$1;->this$1:Lcom/doodlemobile/gamecenter/GameTestActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameTestActivity$4$1;->this$1:Lcom/doodlemobile/gamecenter/GameTestActivity$4;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/GameTestActivity$4;->this$0:Lcom/doodlemobile/gamecenter/GameTestActivity;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/GameTestActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "on listener: Submit Score Success."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 93
    return-void
.end method
