.class public Lcom/jianghe/dkjfsl/d/a;
.super Landroid/widget/BaseAdapter;


# static fields
.field public static a:Ljava/util/List;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/content/pm/PackageManager;

.field private d:Landroid/content/Context;

.field private e:Lcom/jianghe/dkjfsl/d/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p3, p0, Lcom/jianghe/dkjfsl/d/a;->b:Landroid/os/Handler;

    sput-object p2, Lcom/jianghe/dkjfsl/d/a;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/jianghe/dkjfsl/d/a;->d:Landroid/content/Context;

    sget-object v0, Lcom/jianghe/dkjfsl/c/q;->b:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/jianghe/dkjfsl/c/q;->a(Landroid/content/Context;)Lcom/jianghe/dkjfsl/c/q;

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jianghe/dkjfsl/d/a;->c:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic a(Lcom/jianghe/dkjfsl/d/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/dkjfsl/d/a;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    sget-object v0, Lcom/jianghe/dkjfsl/d/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/jianghe/dkjfsl/d/a;->a:Ljava/util/List;

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

    new-instance v0, Lcom/jianghe/dkjfsl/d/b;

    iget-object v2, p0, Lcom/jianghe/dkjfsl/d/a;->d:Landroid/content/Context;

    sget-object v1, Lcom/jianghe/dkjfsl/d/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jianghe/dkjfsl/b/b;

    move-object v1, p0

    move v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/jianghe/dkjfsl/d/b;-><init>(Lcom/jianghe/dkjfsl/d/a;Landroid/content/Context;Lcom/jianghe/dkjfsl/b/b;ILandroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/jianghe/dkjfsl/d/a;->e:Lcom/jianghe/dkjfsl/d/b;

    iget-object v2, p0, Lcom/jianghe/dkjfsl/d/a;->e:Lcom/jianghe/dkjfsl/d/b;

    iget-object v0, p0, Lcom/jianghe/dkjfsl/d/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/jianghe/dkjfsl/c/h;->G:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/jianghe/dkjfsl/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/dkjfsl/b/b;

    iget v0, v0, Lcom/jianghe/dkjfsl/b/b;->e:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/jianghe/dkjfsl/c/h;->Z:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/jianghe/dkjfsl/c/h;->H:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/jianghe/dkjfsl/d/a;->d:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/jianghe/dkjfsl/c/r;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jianghe/dkjfsl/d/a;->e:Lcom/jianghe/dkjfsl/d/b;

    invoke-static {v0}, Lcom/jianghe/dkjfsl/d/b;->a(Lcom/jianghe/dkjfsl/d/b;)Landroid/widget/TextView;

    move-result-object v3

    sget-object v0, Lcom/jianghe/dkjfsl/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/dkjfsl/b/b;

    iget-object v0, v0, Lcom/jianghe/dkjfsl/b/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/jianghe/dkjfsl/d/a;->e:Lcom/jianghe/dkjfsl/d/b;

    invoke-static {v0}, Lcom/jianghe/dkjfsl/d/b;->b(Lcom/jianghe/dkjfsl/d/b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/jianghe/dkjfsl/c/q;->b:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jianghe/dkjfsl/d/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/jianghe/dkjfsl/c/q;->a(Landroid/content/Context;)Lcom/jianghe/dkjfsl/c/q;

    :cond_1
    sget-object v1, Lcom/jianghe/dkjfsl/c/q;->c:Ljava/util/List;

    sget-object v0, Lcom/jianghe/dkjfsl/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/dkjfsl/b/b;

    iget-object v0, v0, Lcom/jianghe/dkjfsl/b/b;->f:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/jianghe/dkjfsl/d/a;->c:Landroid/content/pm/PackageManager;

    sget-object v0, Lcom/jianghe/dkjfsl/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/dkjfsl/b/b;

    iget-object v0, v0, Lcom/jianghe/dkjfsl/b/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/dkjfsl/d/a;->e:Lcom/jianghe/dkjfsl/d/b;

    invoke-static {v1}, Lcom/jianghe/dkjfsl/d/b;->b(Lcom/jianghe/dkjfsl/d/b;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    :try_start_1
    const-string v1, "s"

    sget-object v0, Lcom/jianghe/dkjfsl/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/dkjfsl/b/b;

    iget-object v0, v0, Lcom/jianghe/dkjfsl/b/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jianghe/dkjfsl/d/a;->e:Lcom/jianghe/dkjfsl/d/b;

    invoke-static {v0}, Lcom/jianghe/dkjfsl/d/b;->b(Lcom/jianghe/dkjfsl/d/b;)Landroid/widget/ImageView;

    move-result-object v1

    sget-object v0, Lcom/jianghe/dkjfsl/c/q;->a:Ljava/util/List;

    sget-object v3, Lcom/jianghe/dkjfsl/c/q;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget-object v4, Lcom/jianghe/dkjfsl/d/a;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, p1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/jianghe/dkjfsl/d/a;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/jianghe/dkjfsl/d/a;->e:Lcom/jianghe/dkjfsl/d/b;

    invoke-static {v0}, Lcom/jianghe/dkjfsl/d/b;->a(Lcom/jianghe/dkjfsl/d/b;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v0, Lcom/jianghe/dkjfsl/c/q;->a:Ljava/util/List;

    sget-object v3, Lcom/jianghe/dkjfsl/c/q;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget-object v4, Lcom/jianghe/dkjfsl/d/a;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, p1

    sub-int/2addr v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/jianghe/dkjfsl/d/a;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    return-object v2

    :cond_4
    iget-object v0, p0, Lcom/jianghe/dkjfsl/d/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/jianghe/dkjfsl/c/t;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/jianghe/dkjfsl/a/c;

    invoke-direct {v3}, Lcom/jianghe/dkjfsl/a/c;-><init>()V

    sget-object v0, Lcom/jianghe/dkjfsl/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/dkjfsl/b/b;

    iget-object v4, v0, Lcom/jianghe/dkjfsl/b/b;->k:Ljava/lang/String;

    sget-object v0, Lcom/jianghe/dkjfsl/d/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jianghe/dkjfsl/b/b;

    iget v0, v0, Lcom/jianghe/dkjfsl/b/b;->e:I

    iget-object v5, p0, Lcom/jianghe/dkjfsl/d/a;->b:Landroid/os/Handler;

    invoke-virtual {v3, v4, v0, v5}, Lcom/jianghe/dkjfsl/a/c;->a(Ljava/lang/String;ILandroid/os/Handler;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
