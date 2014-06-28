.class Lcom/doodlemobile/gamecenter/DMTabHost$LabelAndIconIndicatorStrategy;
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
    name = "LabelAndIconIndicatorStrategy"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DMTabHost;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/DMTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/DMTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    .line 541
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/DMTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 542
    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/DMTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/doodlemobile/gamecenter/DMTabHost$1;)V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0, p1, p2, p3}, Lcom/doodlemobile/gamecenter/DMTabHost$LabelAndIconIndicatorStrategy;-><init>(Lcom/doodlemobile/gamecenter/DMTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 5

    .prologue
    const-string v4, "id"

    .line 545
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/DMTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 546
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 549
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/DMTabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    const-string v3, "dm_tab_indicator"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DMTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    # getter for: Lcom/doodlemobile/gamecenter/DMTabHost;->mTabWidget:Lcom/doodlemobile/gamecenter/DMTabWidget;
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DMTabHost;->access$900(Lcom/doodlemobile/gamecenter/DMTabHost;)Lcom/doodlemobile/gamecenter/DMTabWidget;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 554
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/DMTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "title"

    invoke-static {v0, v4, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 555
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DMTabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$LabelAndIconIndicatorStrategy;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/DMTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "icon"

    invoke-static {v0, v4, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 558
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DMTabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 566
    return-object v1
.end method
