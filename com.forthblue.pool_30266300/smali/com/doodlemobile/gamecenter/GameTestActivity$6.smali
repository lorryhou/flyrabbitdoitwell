.class Lcom/doodlemobile/gamecenter/GameTestActivity$6;
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
    .line 111
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/GameTestActivity$6;->this$0:Lcom/doodlemobile/gamecenter/GameTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/GameTestActivity$6;->this$0:Lcom/doodlemobile/gamecenter/GameTestActivity;

    const/high16 v1, 0x41200000

    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->SetOnFeatureScreen(Landroid/content/Context;F)V

    .line 120
    new-instance v0, Lcom/doodlemobile/gamecenter/GameTestActivity$6$1;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/GameTestActivity$6$1;-><init>(Lcom/doodlemobile/gamecenter/GameTestActivity$6;)V

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->setOnCancelListener(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;)V

    .line 128
    new-instance v0, Lcom/doodlemobile/gamecenter/GameTestActivity$6$2;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/GameTestActivity$6$2;-><init>(Lcom/doodlemobile/gamecenter/GameTestActivity$6;)V

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->setOnStartShowListener(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onStartShowListener;)V

    .line 145
    return-void
.end method
