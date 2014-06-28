.class Lcom/doodlemobile/gamecenter/GameCenterActivity$2;
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
    .line 97
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity$2;->this$0:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameCenterActivity$2;->this$0:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->setScene(I)V

    .line 102
    return-void
.end method
