.class Lcom/doodlemobile/gamecenter/GameTestActivity$4;
.super Ljava/lang/Object;
.source "GameTestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/GameTestActivity;->inflateButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/GameTestActivity;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/GameTestActivity;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/GameTestActivity$4;->this$0:Lcom/doodlemobile/gamecenter/GameTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 84
    new-instance v0, Lcom/doodlemobile/gamecenter/ScoreSubmit;

    invoke-direct {v0}, Lcom/doodlemobile/gamecenter/ScoreSubmit;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/GameTestActivity$4;->this$0:Lcom/doodlemobile/gamecenter/GameTestActivity;

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/GameTestActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/util/Random;

    const-wide/16 v3, 0x64

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/doodlemobile/gamecenter/ScoreSubmit;->submit(Landroid/content/Context;I)V

    .line 86
    new-instance v1, Lcom/doodlemobile/gamecenter/GameTestActivity$4$1;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/GameTestActivity$4$1;-><init>(Lcom/doodlemobile/gamecenter/GameTestActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/ScoreSubmit;->setOnSubmitScoreListener(Lcom/doodlemobile/gamecenter/ScoreSubmit$onSubmitScoreListener;)V

    .line 99
    return-void
.end method
