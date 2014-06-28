.class Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$2;
.super Landroid/os/Handler;
.source "FeatureScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$2;->this$0:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 340
    const/16 v0, 0x3021

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$2;->removeMessages(I)V

    .line 341
    invoke-static {}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->removeFeatureScrenn()V

    .line 342
    return-void
.end method
