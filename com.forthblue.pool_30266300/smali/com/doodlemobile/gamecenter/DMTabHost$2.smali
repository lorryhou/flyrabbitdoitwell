.class Lcom/doodlemobile/gamecenter/DMTabHost$2;
.super Ljava/lang/Object;
.source "DMTabHost.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/DMTabWidget$OnTabSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/DMTabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DMTabHost;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/DMTabHost;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$2;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelectionChanged(IZ)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$2;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    invoke-virtual {v0, p1}, Lcom/doodlemobile/gamecenter/DMTabHost;->setCurrentTab(I)V

    .line 132
    if-eqz p2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$2;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    # getter for: Lcom/doodlemobile/gamecenter/DMTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DMTabHost;->access$100(Lcom/doodlemobile/gamecenter/DMTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 135
    :cond_0
    return-void
.end method
