.class public Lcom/jianghe/blcpml/y;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lcom/jianghe/blcpml/m;

.field private c:Landroid/content/Context;

.field private d:Landroid/os/Handler;

.field private e:Lcom/jianghe/blcpml/aa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jianghe/blcpml/y;->a:Ljava/util/List;

    new-instance v0, Lcom/jianghe/blcpml/z;

    invoke-direct {v0, p0}, Lcom/jianghe/blcpml/z;-><init>(Lcom/jianghe/blcpml/y;)V

    iput-object v0, p0, Lcom/jianghe/blcpml/y;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jianghe/blcpml/y;->e:Lcom/jianghe/blcpml/aa;

    iput-object p1, p0, Lcom/jianghe/blcpml/y;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/jianghe/blcpml/y;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/jianghe/blcpml/y;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/blcpml/y;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/jianghe/blcpml/y;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/blcpml/y;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/jianghe/blcpml/y;->c:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/jianghe/blcpml/e/a;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/jianghe/blcpml/y;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/jianghe/blcpml/e/a;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    :goto_0
    check-cast p2, Lcom/jianghe/blcpml/ab;

    if-nez p2, :cond_0

    new-instance p2, Lcom/jianghe/blcpml/ab;

    iget-object v0, p0, Lcom/jianghe/blcpml/y;->c:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lcom/jianghe/blcpml/ab;-><init>(Lcom/jianghe/blcpml/y;Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/jianghe/blcpml/e/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/jianghe/blcpml/y;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/blcpml/b/f;

    iget v0, v0, Lcom/jianghe/blcpml/b/f;->e:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/jianghe/blcpml/e/b;->E:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/jianghe/blcpml/y;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/jianghe/blcpml/d/u;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-static {p2}, Lcom/jianghe/blcpml/ab;->a(Lcom/jianghe/blcpml/ab;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-static {p2}, Lcom/jianghe/blcpml/ab;->b(Lcom/jianghe/blcpml/ab;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/jianghe/blcpml/y;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/blcpml/b/f;

    iget-object v0, v0, Lcom/jianghe/blcpml/b/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/jianghe/blcpml/ab;->c(Lcom/jianghe/blcpml/ab;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/jianghe/blcpml/y;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/blcpml/b/f;

    iget-object v0, v0, Lcom/jianghe/blcpml/b/f;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/jianghe/blcpml/ab;->a()V

    :cond_3
    return-object p2

    :cond_4
    new-instance v2, Lcom/jianghe/blcpml/m;

    iget-object v3, p0, Lcom/jianghe/blcpml/y;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/jianghe/blcpml/y;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/blcpml/b/f;

    iget-object v4, p0, Lcom/jianghe/blcpml/y;->d:Landroid/os/Handler;

    invoke-direct {v2, v3, v0, v4}, Lcom/jianghe/blcpml/m;-><init>(Landroid/content/Context;Lcom/jianghe/blcpml/b/f;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/jianghe/blcpml/y;->b:Lcom/jianghe/blcpml/m;

    new-instance v2, Lcom/jianghe/blcpml/a/h;

    iget-object v0, p0, Lcom/jianghe/blcpml/y;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/blcpml/b/f;

    iget-object v3, v0, Lcom/jianghe/blcpml/b/f;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/jianghe/blcpml/y;->c:Landroid/content/Context;

    sget-object v5, Lcom/jianghe/blcpml/e/b;->E:Ljava/lang/String;

    iget-object v0, p0, Lcom/jianghe/blcpml/y;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/blcpml/b/f;

    iget v0, v0, Lcom/jianghe/blcpml/b/f;->e:I

    invoke-static {v4, v5, v0}, Lcom/jianghe/blcpml/e/h;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Lcom/jianghe/blcpml/a/h;-><init>(Ljava/lang/String;Ljava/io/File;I)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/jianghe/blcpml/a/h;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jianghe/blcpml/y;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/jianghe/blcpml/y;->b:Lcom/jianghe/blcpml/m;

    invoke-static {v0, v2, v3}, Lcom/jianghe/blcpml/r;->a(Landroid/content/Context;Lcom/jianghe/blcpml/a/h;Lcom/jianghe/blcpml/a/c;)V

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/jianghe/blcpml/y;->a:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/blcpml/b/f;

    iget-object v1, p0, Lcom/jianghe/blcpml/y;->e:Lcom/jianghe/blcpml/aa;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jianghe/blcpml/y;->e:Lcom/jianghe/blcpml/aa;

    invoke-interface {v1, v0}, Lcom/jianghe/blcpml/aa;->a(Lcom/jianghe/blcpml/b/f;)V

    :cond_0
    return-void
.end method
