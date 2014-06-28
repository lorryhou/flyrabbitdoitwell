.class Lcom/doodlemobile/gamecenter/GameTestActivity$5;
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
    .line 103
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/GameTestActivity$5;->this$0:Lcom/doodlemobile/gamecenter/GameTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/GameTestActivity$5;->this$0:Lcom/doodlemobile/gamecenter/GameTestActivity;

    const-class v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/GameTestActivity$5;->this$0:Lcom/doodlemobile/gamecenter/GameTestActivity;

    invoke-virtual {v1, v0}, Lcom/doodlemobile/gamecenter/GameTestActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method
