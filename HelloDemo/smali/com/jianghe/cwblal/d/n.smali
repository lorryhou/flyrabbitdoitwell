.class public Lcom/jianghe/cwblal/d/n;
.super Landroid/widget/LinearLayout;


# instance fields
.field final synthetic a:Lcom/jianghe/cwblal/d/l;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/jianghe/cwblal/d/l;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/jianghe/cwblal/d/n;->a:Lcom/jianghe/cwblal/d/l;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lcom/jianghe/cwblal/d/n;->setOrientation(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jianghe/cwblal/d/n;->b:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/jianghe/cwblal/d/n;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/jianghe/cwblal/d/n;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jianghe/cwblal/d/n;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jianghe/cwblal/d/n;->c:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/jianghe/cwblal/d/n;->c:Landroid/widget/TextView;

    const/high16 v2, 0x41200000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/jianghe/cwblal/d/n;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lcom/jianghe/cwblal/d/n;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/jianghe/cwblal/d/n;->c:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lcom/jianghe/cwblal/d/n;->c:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/jianghe/cwblal/d/n;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/jianghe/cwblal/d/n;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/jianghe/cwblal/d/n;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/cwblal/d/n;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/jianghe/cwblal/d/n;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/cwblal/d/n;->b:Landroid/widget/ImageView;

    return-object v0
.end method
