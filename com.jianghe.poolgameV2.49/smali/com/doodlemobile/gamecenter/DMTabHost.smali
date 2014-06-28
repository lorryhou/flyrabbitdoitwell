.class public Lcom/doodlemobile/gamecenter/DMTabHost;
.super Landroid/widget/FrameLayout;
.source "DMTabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;,
        Lcom/doodlemobile/gamecenter/DMTabHost$FactoryContentStrategy;,
        Lcom/doodlemobile/gamecenter/DMTabHost$ViewIdContentStrategy;,
        Lcom/doodlemobile/gamecenter/DMTabHost$ViewIndicatorStrategy;,
        Lcom/doodlemobile/gamecenter/DMTabHost$LabelAndIconIndicatorStrategy;,
        Lcom/doodlemobile/gamecenter/DMTabHost$LabelIndicatorStrategy;,
        Lcom/doodlemobile/gamecenter/DMTabHost$ContentStrategy;,
        Lcom/doodlemobile/gamecenter/DMTabHost$IndicatorStrategy;,
        Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;,
        Lcom/doodlemobile/gamecenter/DMTabHost$TabContentFactory;,
        Lcom/doodlemobile/gamecenter/DMTabHost$OnTabChangeListener;
    }
.end annotation


# instance fields
.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Lcom/doodlemobile/gamecenter/DMTabHost$OnTabChangeListener;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Lcom/doodlemobile/gamecenter/DMTabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabSpecs:Ljava/util/List;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    .line 55
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentView:Landroid/view/View;

    .line 60
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 66
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/DMTabHost;->initTabHost()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabSpecs:Ljava/util/List;

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    .line 55
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentView:Landroid/view/View;

    .line 60
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 71
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/DMTabHost;->initTabHost()V

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/doodlemobile/gamecenter/DMTabHost;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/doodlemobile/gamecenter/DMTabHost;)Lcom/doodlemobile/gamecenter/DMTabWidget;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabWidget:Lcom/doodlemobile/gamecenter/DMTabWidget;

    return-object v0
.end method

.method private initTabHost()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DMTabHost;->setFocusableInTouchMode(Z)V

    .line 76
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DMTabHost;->setDescendantFocusability(I)V

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentView:Landroid/view/View;

    .line 80
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mOnTabChangeListener:Lcom/doodlemobile/gamecenter/DMTabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mOnTabChangeListener:Lcom/doodlemobile/gamecenter/DMTabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DMTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/doodlemobile/gamecenter/DMTabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 358
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    # getter for: Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mIndicatorStrategy:Lcom/doodlemobile/gamecenter/DMTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->access$200(Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;)Lcom/doodlemobile/gamecenter/DMTabHost$IndicatorStrategy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify a way to create the tab indicator."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    # getter for: Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mContentStrategy:Lcom/doodlemobile/gamecenter/DMTabHost$ContentStrategy;
    invoke-static {p1}, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->access$300(Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;)Lcom/doodlemobile/gamecenter/DMTabHost$ContentStrategy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify a way to create the tab content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1
    # getter for: Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mIndicatorStrategy:Lcom/doodlemobile/gamecenter/DMTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->access$200(Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;)Lcom/doodlemobile/gamecenter/DMTabHost$IndicatorStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/doodlemobile/gamecenter/DMTabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 209
    # getter for: Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mIndicatorStrategy:Lcom/doodlemobile/gamecenter/DMTabHost$IndicatorStrategy;
    invoke-static {p1}, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->access$200(Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;)Lcom/doodlemobile/gamecenter/DMTabHost$IndicatorStrategy;

    move-result-object v1

    instance-of v1, v1, Lcom/doodlemobile/gamecenter/DMTabHost$ViewIndicatorStrategy;

    if-eqz v1, :cond_2

    .line 211
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabWidget:Lcom/doodlemobile/gamecenter/DMTabWidget;

    invoke-virtual {v1, v2}, Lcom/doodlemobile/gamecenter/DMTabWidget;->setDrawBottomStrips(Z)V

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabWidget:Lcom/doodlemobile/gamecenter/DMTabWidget;

    invoke-virtual {v1, v0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->addView(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 217
    invoke-virtual {p0, v2}, Lcom/doodlemobile/gamecenter/DMTabHost;->setCurrentTab(I)V

    .line 219
    :cond_3
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabWidget:Lcom/doodlemobile/gamecenter/DMTabWidget;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->removeAllViews()V

    .line 227
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/DMTabHost;->initTabHost()V

    .line 228
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 229
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 230
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DMTabHost;->requestLayout()V

    .line 231
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DMTabHost;->invalidate()V

    .line 232
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 283
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabWidget:Lcom/doodlemobile/gamecenter/DMTabWidget;

    iget v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 290
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DMTabHost;->playSoundEffect(I)V

    .line 291
    const/4 v0, 0x1

    .line 293
    :cond_0
    return v0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 299
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    iget v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 250
    iget v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabWidget:Lcom/doodlemobile/gamecenter/DMTabWidget;

    iget v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabWidget()Lcom/doodlemobile/gamecenter/DMTabWidget;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabWidget:Lcom/doodlemobile/gamecenter/DMTabWidget;

    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;-><init>(Lcom/doodlemobile/gamecenter/DMTabHost;Ljava/lang/String;Lcom/doodlemobile/gamecenter/DMTabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 163
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DMTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 167
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 172
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DMTabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 176
    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2

    .prologue
    .line 182
    if-nez p1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabWidget:Lcom/doodlemobile/gamecenter/DMTabWidget;

    iget v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 189
    :cond_1
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 302
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    if-eq p1, v0, :cond_0

    .line 311
    iget v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    if-eq v0, v3, :cond_2

    .line 312
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;

    # getter for: Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mContentStrategy:Lcom/doodlemobile/gamecenter/DMTabHost$ContentStrategy;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->access$300(Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;)Lcom/doodlemobile/gamecenter/DMTabHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/doodlemobile/gamecenter/DMTabHost$ContentStrategy;->tabClosed()V

    .line 315
    :cond_2
    iput p1, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    .line 316
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;

    .line 320
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabWidget:Lcom/doodlemobile/gamecenter/DMTabWidget;

    iget v2, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/doodlemobile/gamecenter/DMTabWidget;->focusCurrentTab(I)V

    .line 323
    # getter for: Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mContentStrategy:Lcom/doodlemobile/gamecenter/DMTabHost$ContentStrategy;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->access$300(Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;)Lcom/doodlemobile/gamecenter/DMTabHost$ContentStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/doodlemobile/gamecenter/DMTabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentView:Landroid/view/View;

    .line 325
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 326
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentView:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabWidget:Lcom/doodlemobile/gamecenter/DMTabWidget;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_4

    .line 337
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 341
    :cond_4
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/DMTabHost;->invokeOnTabChangeListener()V

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 262
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    invoke-virtual {p0, v1}, Lcom/doodlemobile/gamecenter/DMTabHost;->setCurrentTab(I)V

    .line 268
    :cond_0
    return-void

    .line 262
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setOnTabChangedListener(Lcom/doodlemobile/gamecenter/DMTabHost$OnTabChangeListener;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mOnTabChangeListener:Lcom/doodlemobile/gamecenter/DMTabHost$OnTabChangeListener;

    .line 352
    return-void
.end method

.method public setup()V
    .locals 3

    .prologue
    const-string v2, "id"

    .line 103
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DMTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "tabs"

    invoke-static {v0, v2, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DMTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/DMTabWidget;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabWidget:Lcom/doodlemobile/gamecenter/DMTabWidget;

    .line 104
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabWidget:Lcom/doodlemobile/gamecenter/DMTabWidget;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    new-instance v0, Lcom/doodlemobile/gamecenter/DMTabHost$1;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/DMTabHost$1;-><init>(Lcom/doodlemobile/gamecenter/DMTabHost;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 129
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabWidget:Lcom/doodlemobile/gamecenter/DMTabWidget;

    new-instance v1, Lcom/doodlemobile/gamecenter/DMTabHost$2;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/DMTabHost$2;-><init>(Lcom/doodlemobile/gamecenter/DMTabHost;)V

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/DMTabWidget;->setTabSelectionListener(Lcom/doodlemobile/gamecenter/DMTabWidget$OnTabSelectionChanged;)V

    .line 139
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DMTabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v1, "id"

    const-string v1, "tabcontent"

    invoke-static {v0, v2, v1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DMTabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 140
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DMTabHost;->setup()V

    .line 156
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DMTabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 157
    return-void
.end method
