.class Lcom/doodlemobile/gamecenter/GameTestActivity$1;
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
    .line 44
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/GameTestActivity$1;->this$0:Lcom/doodlemobile/gamecenter/GameTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/GameTestActivity$1;->this$0:Lcom/doodlemobile/gamecenter/GameTestActivity;

    const-class v2, Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    const-string v1, "classname"

    const-string v2, "com.doodlemobile.gamecenter.ProfileActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/GameTestActivity$1;->this$0:Lcom/doodlemobile/gamecenter/GameTestActivity;

    invoke-virtual {v1, v0}, Lcom/doodlemobile/gamecenter/GameTestActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method
