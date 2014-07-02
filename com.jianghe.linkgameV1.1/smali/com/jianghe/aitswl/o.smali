.class public Lcom/jianghe/aitswl/o;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/ImageButton;

.field private b:Landroid/content/Context;

.field private c:Lcom/jianghe/aitswl/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jianghe/aitswl/o;->c:Lcom/jianghe/aitswl/q;

    iput-object p1, p0, Lcom/jianghe/aitswl/o;->b:Landroid/content/Context;

    const v0, -0x131314

    invoke-virtual {p0, v0}, Lcom/jianghe/aitswl/o;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic a(Lcom/jianghe/aitswl/o;)Lcom/jianghe/aitswl/q;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/aitswl/o;->c:Lcom/jianghe/aitswl/q;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;I)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/jianghe/aitswl/o;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/jianghe/aitswl/o;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/jianghe/aitswl/d/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Lcom/jianghe/aitswl/q;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/o;->c:Lcom/jianghe/aitswl/q;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5

    const/4 v4, -0x2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v0, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/jianghe/aitswl/o;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jianghe/aitswl/o;->a:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/jianghe/aitswl/o;->a:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/jianghe/aitswl/o;->b:Landroid/content/Context;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v3, v0}, Lcom/jianghe/aitswl/d/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/jianghe/aitswl/o;->a:Landroid/widget/ImageButton;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lcom/jianghe/aitswl/o;->b:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/jianghe/aitswl/ay;->a(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v2, p0, Lcom/jianghe/aitswl/o;->a:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2, v0}, Lcom/jianghe/aitswl/o;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/jianghe/aitswl/o;->a:Landroid/widget/ImageButton;

    new-instance v2, Lcom/jianghe/aitswl/p;

    invoke-direct {v2, p0}, Lcom/jianghe/aitswl/p;-><init>(Lcom/jianghe/aitswl/o;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
