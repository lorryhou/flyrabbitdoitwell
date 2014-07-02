.class final Lcom/adsmogo/adview/j;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/AdsMogoLayout;

.field private final synthetic b:Landroid/view/ViewGroup;

.field private final synthetic c:Landroid/app/Activity;

.field private final synthetic d:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Landroid/content/Context;Landroid/view/ViewGroup;Landroid/app/Activity;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iput-object p3, p0, Lcom/adsmogo/adview/j;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/adsmogo/adview/j;->c:Landroid/app/Activity;

    iput-object p5, p0, Lcom/adsmogo/adview/j;->d:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adview/j;)Lcom/adsmogo/adview/AdsMogoLayout;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    return-object v0
.end method


# virtual methods
.method protected final onSizeChanged(IIII)V
    .locals 8

    const/16 v3, 0x64

    const/16 v2, 0x14

    const/16 v7, 0xb

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/adsmogo/adview/j;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/adsmogo/adview/j;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-gt v1, v3, :cond_0

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/j;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v0, p0, Lcom/adsmogo/adview/j;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    :cond_0
    if-le v1, v3, :cond_1

    if-gt v0, v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v2, v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v3, v1, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {v0, v5, v5, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    new-instance v1, Landroid/widget/Button;

    iget-object v3, p0, Lcom/adsmogo/adview/j;->c:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->f:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    iget-object v3, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v3, v3, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsmogo/adview/k;

    iget-object v3, p0, Lcom/adsmogo/adview/j;->d:Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0, v3, v2}, Lcom/adsmogo/adview/k;-><init>(Lcom/adsmogo/adview/j;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v3, v1, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->e:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/adsmogo/adview/j;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    goto :goto_2
.end method
