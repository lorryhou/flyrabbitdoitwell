.class Lcom/doodlemobile/gamecenter/FeatureView$4;
.super Landroid/os/Handler;
.source "FeatureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/FeatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/FeatureView;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/FeatureView;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/FeatureView$4;->this$0:Lcom/doodlemobile/gamecenter/FeatureView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView$4;->this$0:Lcom/doodlemobile/gamecenter/FeatureView;

    # getter for: Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/FeatureView;->access$400(Lcom/doodlemobile/gamecenter/FeatureView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView$4;->this$0:Lcom/doodlemobile/gamecenter/FeatureView;

    # invokes: Lcom/doodlemobile/gamecenter/FeatureView;->refresh()V
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/FeatureView;->access$500(Lcom/doodlemobile/gamecenter/FeatureView;)V

    .line 434
    :cond_0
    return-void
.end method
