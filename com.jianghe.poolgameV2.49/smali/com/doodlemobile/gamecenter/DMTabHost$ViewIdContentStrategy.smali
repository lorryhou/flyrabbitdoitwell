.class Lcom/doodlemobile/gamecenter/DMTabHost$ViewIdContentStrategy;
.super Ljava/lang/Object;
.source "DMTabHost.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/DMTabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DMTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIdContentStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DMTabHost;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/DMTabHost;I)V
    .locals 3

    .prologue
    .line 599
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$ViewIdContentStrategy;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    # getter for: Lcom/doodlemobile/gamecenter/DMTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {p1}, Lcom/doodlemobile/gamecenter/DMTabHost;->access$100(Lcom/doodlemobile/gamecenter/DMTabHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    .line 601
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 607
    return-void

    .line 604
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create tab content because could not find view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/DMTabHost;ILcom/doodlemobile/gamecenter/DMTabHost$1;)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0, p1, p2}, Lcom/doodlemobile/gamecenter/DMTabHost$ViewIdContentStrategy;-><init>(Lcom/doodlemobile/gamecenter/DMTabHost;I)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$ViewIdContentStrategy;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 616
    return-void
.end method
