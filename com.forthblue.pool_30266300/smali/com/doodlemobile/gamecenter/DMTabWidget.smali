.class public Lcom/doodlemobile/gamecenter/DMTabWidget;
.super Landroid/widget/LinearLayout;
.source "DMTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/DMTabWidget$1;,
        Lcom/doodlemobile/gamecenter/DMTabWidget$OnTabSelectionChanged;,
        Lcom/doodlemobile/gamecenter/DMTabWidget$TabClickListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedTab:I

.field private mSelectionChangedListener:Lcom/doodlemobile/gamecenter/DMTabWidget$OnTabSelectionChanged;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/doodlemobile/gamecenter/DMTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/doodlemobile/gamecenter/DMTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mSelectedTab:I

    .line 68
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->initTabWidget()V

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/doodlemobile/gamecenter/DMTabWidget;)Lcom/doodlemobile/gamecenter/DMTabWidget$OnTabSelectionChanged;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mSelectionChangedListener:Lcom/doodlemobile/gamecenter/DMTabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->setOrientation(I)V

    .line 101
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mContext:Landroid/content/Context;

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->setFocusable(Z)V

    .line 118
    invoke-virtual {p0, p0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 119
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v3, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 312
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 313
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 319
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 323
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 324
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 325
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 328
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 329
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    new-instance v0, Lcom/doodlemobile/gamecenter/DMTabWidget$TabClickListener;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getTabCount()I

    move-result v1

    sub-int/2addr v1, v4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/doodlemobile/gamecenter/DMTabWidget$TabClickListener;-><init>(Lcom/doodlemobile/gamecenter/DMTabWidget;ILcom/doodlemobile/gamecenter/DMTabWidget$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 339
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->invalidate()V

    .line 193
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 194
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 207
    iget v0, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    .line 230
    return-void
.end method

.method public focusCurrentTab(I)V
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mSelectedTab:I

    .line 288
    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/DMTabWidget;->setCurrentTab(I)V

    .line 291
    if-eq v0, p1, :cond_0

    .line 292
    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 294
    :cond_0
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    sub-int v0, p1, v0

    if-ne p2, v0, :cond_0

    .line 89
    iget v0, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mSelectedTab:I

    .line 93
    :goto_0
    return v0

    .line 90
    :cond_0
    iget v0, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_1

    .line 91
    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    .line 93
    goto :goto_0
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 132
    mul-int/lit8 v0, p1, 0x2

    .line 134
    :goto_0
    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public getTabCount()I
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getChildCount()I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 149
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    .line 151
    :cond_0
    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 350
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    .line 351
    iget v0, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    if-eqz p2, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getTabCount()I

    move-result v0

    move v1, v3

    .line 358
    :goto_1
    if-ge v1, v0, :cond_0

    .line 359
    invoke-virtual {p0, v1}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 360
    invoke-virtual {p0, v1}, Lcom/doodlemobile/gamecenter/DMTabWidget;->setCurrentTab(I)V

    .line 361
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mSelectionChangedListener:Lcom/doodlemobile/gamecenter/DMTabWidget$OnTabSelectionChanged;

    invoke-interface {v0, v1, v3}, Lcom/doodlemobile/gamecenter/DMTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    goto :goto_0

    .line 364
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 83
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 2

    .prologue
    .line 260
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget v0, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 265
    iput p1, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mSelectedTab:I

    .line 266
    iget v0, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method public setDividerDrawable(I)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 172
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 162
    return-void
.end method

.method setDrawBottomStrips(Z)V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 299
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getTabCount()I

    move-result v0

    .line 301
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 302
    invoke-virtual {p0, v1}, Lcom/doodlemobile/gamecenter/DMTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 303
    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :cond_0
    return-void
.end method

.method setTabSelectionListener(Lcom/doodlemobile/gamecenter/DMTabWidget$OnTabSelectionChanged;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DMTabWidget;->mSelectionChangedListener:Lcom/doodlemobile/gamecenter/DMTabWidget$OnTabSelectionChanged;

    .line 347
    return-void
.end method
