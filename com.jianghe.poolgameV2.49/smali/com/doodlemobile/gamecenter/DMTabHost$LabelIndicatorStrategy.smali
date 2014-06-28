.class Lcom/doodlemobile/gamecenter/DMTabHost$LabelIndicatorStrategy;
.super Ljava/lang/Object;
.source "DMTabHost.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/DMTabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DMTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelIndicatorStrategy"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DMTabHost;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/DMTabHost;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$LabelIndicatorStrategy;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/DMTabHost$LabelIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 506
    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/DMTabHost;Ljava/lang/CharSequence;Lcom/doodlemobile/gamecenter/DMTabHost$1;)V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0, p1, p2}, Lcom/doodlemobile/gamecenter/DMTabHost$LabelIndicatorStrategy;-><init>(Lcom/doodlemobile/gamecenter/DMTabHost;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 4

    .prologue
    .line 509
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$LabelIndicatorStrategy;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/DMTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 510
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 514
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$LabelIndicatorStrategy;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/DMTabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    const-string v3, "dm_tab_indicator"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DMTabHost$LabelIndicatorStrategy;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    # getter for: Lcom/doodlemobile/gamecenter/DMTabHost;->mTabWidget:Lcom/doodlemobile/gamecenter/DMTabWidget;
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DMTabHost;->access$900(Lcom/doodlemobile/gamecenter/DMTabHost;)Lcom/doodlemobile/gamecenter/DMTabWidget;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 527
    return-object v0
.end method
