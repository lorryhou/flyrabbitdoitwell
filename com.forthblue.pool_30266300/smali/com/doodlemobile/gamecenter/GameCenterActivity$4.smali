.class Lcom/doodlemobile/gamecenter/GameCenterActivity$4;
.super Ljava/lang/Object;
.source "GameCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/GameCenterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/GameCenterActivity;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity$4;->this$0:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity$4;->this$0:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->back()Z

    .line 135
    return-void
.end method
