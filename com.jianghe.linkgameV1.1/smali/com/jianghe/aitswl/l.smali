.class Lcom/jianghe/aitswl/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jianghe/aitswl/i;


# direct methods
.method constructor <init>(Lcom/jianghe/aitswl/i;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/aitswl/l;->a:Lcom/jianghe/aitswl/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/jianghe/aitswl/l;->a:Lcom/jianghe/aitswl/i;

    invoke-static {v0}, Lcom/jianghe/aitswl/i;->c(Lcom/jianghe/aitswl/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/aitswl/l;->a:Lcom/jianghe/aitswl/i;

    invoke-static {v0}, Lcom/jianghe/aitswl/i;->e(Lcom/jianghe/aitswl/i;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/aitswl/l;->a:Lcom/jianghe/aitswl/i;

    invoke-static {v1}, Lcom/jianghe/aitswl/i;->d(Lcom/jianghe/aitswl/i;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getWallpaperDesiredMinimumHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/jianghe/aitswl/l;->a:Lcom/jianghe/aitswl/i;

    invoke-static {v0}, Lcom/jianghe/aitswl/i;->f(Lcom/jianghe/aitswl/i;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/aitswl/l;->a:Lcom/jianghe/aitswl/i;

    invoke-static {v1}, Lcom/jianghe/aitswl/i;->d(Lcom/jianghe/aitswl/i;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lcom/jianghe/aitswl/d/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/jianghe/aitswl/l;->a:Lcom/jianghe/aitswl/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jianghe/aitswl/i;->a(Lcom/jianghe/aitswl/i;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/jianghe/aitswl/l;->a:Lcom/jianghe/aitswl/i;

    invoke-static {v0}, Lcom/jianghe/aitswl/i;->e(Lcom/jianghe/aitswl/i;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/jianghe/aitswl/l;->a:Lcom/jianghe/aitswl/i;

    invoke-static {v0}, Lcom/jianghe/aitswl/i;->f(Lcom/jianghe/aitswl/i;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/aitswl/l;->a:Lcom/jianghe/aitswl/i;

    invoke-static {v1}, Lcom/jianghe/aitswl/i;->d(Lcom/jianghe/aitswl/i;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/jianghe/aitswl/d/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/jianghe/aitswl/l;->a:Lcom/jianghe/aitswl/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jianghe/aitswl/i;->a(Lcom/jianghe/aitswl/i;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
