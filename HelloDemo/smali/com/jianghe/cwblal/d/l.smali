.class public Lcom/jianghe/cwblal/d/l;
.super Landroid/widget/BaseAdapter;


# instance fields
.field a:Landroid/os/Handler;

.field private b:Lcom/jianghe/cwblal/d/n;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/jianghe/cwblal/d/m;

    invoke-direct {v0, p0}, Lcom/jianghe/cwblal/d/m;-><init>(Lcom/jianghe/cwblal/d/l;)V

    iput-object v0, p0, Lcom/jianghe/cwblal/d/l;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/jianghe/cwblal/d/l;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/jianghe/cwblal/d/l;->d:Ljava/util/List;

    sget-object v0, Lcom/jianghe/cwblal/a/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/jianghe/cwblal/c/h;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/jianghe/cwblal/d/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/cwblal/d/l;->d:Ljava/util/List;

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

    iget-object v0, p0, Lcom/jianghe/cwblal/d/l;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/cwblal/b/b;

    if-nez p2, :cond_2

    new-instance v1, Lcom/jianghe/cwblal/d/n;

    iget-object v2, p0, Lcom/jianghe/cwblal/d/l;->c:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/jianghe/cwblal/d/n;-><init>(Lcom/jianghe/cwblal/d/l;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jianghe/cwblal/d/l;->b:Lcom/jianghe/cwblal/d/n;

    iget-object v1, p0, Lcom/jianghe/cwblal/d/l;->b:Lcom/jianghe/cwblal/d/n;

    iget-object v2, p0, Lcom/jianghe/cwblal/d/l;->b:Lcom/jianghe/cwblal/d/n;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    sget-object v1, Lcom/jianghe/cwblal/a/i;->a:Ljava/util/Map;

    iget-object v2, v0, Lcom/jianghe/cwblal/b/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/jianghe/cwblal/d/l;->b:Lcom/jianghe/cwblal/d/n;

    invoke-static {v3}, Lcom/jianghe/cwblal/d/n;->a(Lcom/jianghe/cwblal/d/n;)Landroid/widget/TextView;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/jianghe/cwblal/d/l;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jianghe/cwblal/c/b;->G:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/jianghe/cwblal/b/b;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jianghe/cwblal/c/b;->W:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/jianghe/cwblal/c/b;->H:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/jianghe/cwblal/d/l;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/jianghe/cwblal/c/f;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/jianghe/cwblal/d/l;->b:Lcom/jianghe/cwblal/d/n;

    invoke-static {v2}, Lcom/jianghe/cwblal/d/n;->b(Lcom/jianghe/cwblal/d/n;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/jianghe/cwblal/b/b;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/jianghe/cwblal/a/k;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jianghe/cwblal/d/l;->b:Lcom/jianghe/cwblal/d/n;

    invoke-static {v1}, Lcom/jianghe/cwblal/d/n;->a(Lcom/jianghe/cwblal/d/n;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/jianghe/cwblal/c/b;->az:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    :try_start_0
    sget-boolean v1, Lcom/jianghe/cwblal/Bona;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jianghe/cwblal/d/l;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, v0, Lcom/jianghe/cwblal/b/b;->f:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/jianghe/cwblal/b/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/cwblal/d/l;->c:Landroid/content/Context;

    const/16 v3, 0x32

    const/16 v4, 0x32

    invoke-static {v0, v1, v3, v4}, Lcom/jianghe/cwblal/c/i;->a(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/cwblal/d/l;->b:Lcom/jianghe/cwblal/d/n;

    invoke-static {v1}, Lcom/jianghe/cwblal/d/n;->a(Lcom/jianghe/cwblal/d/n;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/jianghe/cwblal/d/l;->b:Lcom/jianghe/cwblal/d/n;

    invoke-static {v1}, Lcom/jianghe/cwblal/d/n;->b(Lcom/jianghe/cwblal/d/n;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/jianghe/cwblal/d/l;->b:Lcom/jianghe/cwblal/d/n;

    return-object v0

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jianghe/cwblal/d/n;

    iput-object v1, p0, Lcom/jianghe/cwblal/d/l;->b:Lcom/jianghe/cwblal/d/n;

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/jianghe/cwblal/d/l;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/jianghe/cwblal/c/h;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/jianghe/cwblal/a/c;

    invoke-direct {v2}, Lcom/jianghe/cwblal/a/c;-><init>()V

    iget-object v3, v0, Lcom/jianghe/cwblal/b/b;->k:Ljava/lang/String;

    iget v4, v0, Lcom/jianghe/cwblal/b/b;->e:I

    iget-object v5, p0, Lcom/jianghe/cwblal/d/l;->a:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Lcom/jianghe/cwblal/a/c;->a(Ljava/lang/String;ILandroid/os/Handler;)V

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/jianghe/cwblal/d/l;->b:Lcom/jianghe/cwblal/d/n;

    invoke-static {v1}, Lcom/jianghe/cwblal/d/n;->a(Lcom/jianghe/cwblal/d/n;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, v0, Lcom/jianghe/cwblal/b/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3
.end method
