.class Lcom/doodlemobile/gamecenter/GameTestActivity$6$2;
.super Ljava/lang/Object;
.source "GameTestActivity.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onStartShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/GameTestActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/doodlemobile/gamecenter/GameTestActivity$6;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/GameTestActivity$6;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/GameTestActivity$6$2;->this$1:Lcom/doodlemobile/gamecenter/GameTestActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartShow()V
    .locals 2

    .prologue
    .line 132
    const-string v0, "xuming"

    const-string v1, "show !!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method
