.class Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;
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
    name = "IntentContentStrategy"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field private mLaunchedView:Landroid/view/View;

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DMTabHost;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/DMTabHost;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    .line 658
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    .line 659
    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/DMTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/doodlemobile/gamecenter/DMTabHost$1;)V
    .locals 0

    .prologue
    .line 649
    invoke-direct {p0, p1, p2, p3}, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;-><init>(Lcom/doodlemobile/gamecenter/DMTabHost;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 3

    .prologue
    .line 662
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DMTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    if-nez v0, :cond_0

    .line 663
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DMTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->mTag:Ljava/lang/String;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 668
    :goto_0
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 669
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 670
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    # getter for: Lcom/doodlemobile/gamecenter/DMTabHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DMTabHost;->access$100(Lcom/doodlemobile/gamecenter/DMTabHost;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 673
    :cond_1
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    .line 681
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 682
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 684
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    return-object v0

    .line 667
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tabClosed()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;->mLaunchedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 694
    :cond_0
    return-void
.end method
