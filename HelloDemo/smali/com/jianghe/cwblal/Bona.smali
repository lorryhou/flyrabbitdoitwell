.class public Lcom/jianghe/cwblal/Bona;
.super Landroid/app/Activity;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Z


# instance fields
.field d:Landroid/os/Handler;

.field private e:Ljava/util/Map;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/app/Activity;

.field private h:Landroid/widget/FrameLayout;

.field private i:I

.field private j:Ljava/util/List;

.field private k:Z

.field private l:Lcom/jianghe/cwblal/d/i;

.field private m:Lcom/jianghe/cwblal/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jianghe/cwblal/Bona;->a:Z

    sput-boolean v0, Lcom/jianghe/cwblal/Bona;->b:Z

    sput-boolean v0, Lcom/jianghe/cwblal/Bona;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jianghe/cwblal/Bona;->e:Ljava/util/Map;

    const/4 v0, 0x1

    iput v0, p0, Lcom/jianghe/cwblal/Bona;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jianghe/cwblal/Bona;->k:Z

    new-instance v0, Lcom/jianghe/cwblal/b;

    invoke-direct {v0, p0}, Lcom/jianghe/cwblal/b;-><init>(Lcom/jianghe/cwblal/Bona;)V

    iput-object v0, p0, Lcom/jianghe/cwblal/Bona;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/jianghe/cwblal/Bona;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/jianghe/cwblal/Bona;Lcom/jianghe/cwblal/c/e;)Lcom/jianghe/cwblal/c/e;
    .locals 0

    iput-object p1, p0, Lcom/jianghe/cwblal/Bona;->m:Lcom/jianghe/cwblal/c/e;

    return-object p1
.end method

.method static synthetic a(Lcom/jianghe/cwblal/Bona;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/jianghe/cwblal/Bona;->j:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/jianghe/cwblal/Bona;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/jianghe/cwblal/Bona;)Lcom/jianghe/cwblal/c/e;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->m:Lcom/jianghe/cwblal/c/e;

    return-object v0
.end method

.method static synthetic d(Lcom/jianghe/cwblal/Bona;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/jianghe/cwblal/Bona;)Lcom/jianghe/cwblal/d/i;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->l:Lcom/jianghe/cwblal/d/i;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/high16 v10, 0x42200000

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v8}, Lcom/jianghe/cwblal/Bona;->requestWindowFeature(I)Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jianghe/cwblal/Bons;

    invoke-static {p0, v1}, Lcom/jianghe/cwblal/c/h;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jianghe/cwblal/Bona;->stopService(Landroid/content/Intent;)Z

    invoke-static {p0}, Lcom/jianghe/cwblal/c/h;->r(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/jianghe/cwblal/Bona;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "l"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jianghe/cwblal/Bona;->i:I

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jianghe/cwblal/Bona;->h:Landroid/widget/FrameLayout;

    iput-object p0, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v0, Lcom/jianghe/cwblal/d/i;

    iget-object v1, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    iget v4, p0, Lcom/jianghe/cwblal/Bona;->i:I

    iget-object v5, p0, Lcom/jianghe/cwblal/Bona;->d:Landroid/os/Handler;

    invoke-direct {v0, v1, v4, v5}, Lcom/jianghe/cwblal/d/i;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/jianghe/cwblal/Bona;->l:Lcom/jianghe/cwblal/d/i;

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->l:Lcom/jianghe/cwblal/d/i;

    new-instance v1, Lcom/jianghe/cwblal/d;

    invoke-direct {v1, p0}, Lcom/jianghe/cwblal/d;-><init>(Lcom/jianghe/cwblal/Bona;)V

    invoke-virtual {v0, v1}, Lcom/jianghe/cwblal/d/i;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/jianghe/cwblal/c/e;->a(Landroid/content/Context;)Lcom/jianghe/cwblal/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/jianghe/cwblal/Bona;->m:Lcom/jianghe/cwblal/c/e;

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->m:Lcom/jianghe/cwblal/c/e;

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/jianghe/cwblal/c/e;->b(Landroid/content/Context;)Ljava/util/List;

    invoke-static {p0}, Lcom/jianghe/cwblal/c/h;->t(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/jianghe/cwblal/Bona;->j:Ljava/util/List;

    :try_start_0
    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/jianghe/cwblal/Bona;->a:Z

    move v1, v2

    :goto_0
    sget-object v0, Lcom/jianghe/cwblal/c/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v4, Lcom/jianghe/cwblal/b/b;

    invoke-direct {v4}, Lcom/jianghe/cwblal/b/b;-><init>()V

    sget-object v0, Lcom/jianghe/cwblal/c/e;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/jianghe/cwblal/b/b;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->j:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->l:Lcom/jianghe/cwblal/d/i;

    iget-object v1, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    iget-object v4, p0, Lcom/jianghe/cwblal/Bona;->j:Ljava/util/List;

    invoke-virtual {v0, v1, v4}, Lcom/jianghe/cwblal/d/i;->a(Landroid/content/Context;Ljava/util/List;)V

    :goto_1
    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->h:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jianghe/cwblal/Bona;->l:Lcom/jianghe/cwblal/d/i;

    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x33

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v0, p0, Lcom/jianghe/cwblal/Bona;->i:I

    if-ne v0, v8, :cond_6

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    const/high16 v3, 0x42b40000

    invoke-static {v0, v3}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_1
    :goto_2
    invoke-static {p0}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/jianghe/cwblal/c/h;->l(Landroid/content/Context;)[I

    move-result-object v0

    aget v0, v0, v8

    iget-object v5, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    sget-object v6, Lcom/jianghe/cwblal/c/b;->by:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    sget-object v6, Lcom/jianghe/cwblal/c/b;->y:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v4, v6, :cond_7

    if-eq v6, v7, :cond_7

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->a()V

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v5, Lcom/jianghe/cwblal/c/b;->y:Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    div-int/lit8 v0, v3, 0x2

    iget-object v3, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    invoke-static {v3, v2, v0}, Lcom/jianghe/cwblal/c/h;->a(Landroid/content/Context;II)V

    :cond_2
    :goto_3
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/jianghe/cwblal/Bona;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    invoke-direct {v3, v1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v7, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jianghe/cwblal/Bona;->f:Landroid/widget/ImageView;

    iget v1, p0, Lcom/jianghe/cwblal/Bona;->i:I

    if-ne v1, v8, :cond_8

    iget-object v1, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    invoke-static {v1, v9}, Lcom/jianghe/cwblal/c/a;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/jianghe/cwblal/Bona;->f:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/jianghe/cwblal/Bona;->f:Landroid/widget/ImageView;

    new-instance v2, Lcom/jianghe/cwblal/a;

    invoke-direct {v2, p0}, Lcom/jianghe/cwblal/a;-><init>(Lcom/jianghe/cwblal/Bona;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    iget v2, p0, Lcom/jianghe/cwblal/Bona;->i:I

    if-ne v2, v8, :cond_9

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    invoke-static {v2, v10}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v4, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    const/high16 v5, 0x42a00000

    invoke-static {v4, v5}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v1, v2, v4, v5, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    :cond_4
    :goto_5
    iget-object v2, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    const/high16 v4, 0x42480000

    invoke-static {v2, v4}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v1}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->h:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/jianghe/cwblal/Bona;->setContentView(Landroid/view/View;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lcom/jianghe/cwblal/Bona;->i:I

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    const/high16 v4, 0x43020000

    invoke-static {v3, v4}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    :cond_7
    if-ne v6, v7, :cond_2

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/jianghe/cwblal/c/b;->y:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    :cond_8
    iget v1, p0, Lcom/jianghe/cwblal/Bona;->i:I

    if-ne v1, v9, :cond_3

    iget-object v1, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/jianghe/cwblal/c/a;->a(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/jianghe/cwblal/Bona;->f:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_9
    iget v2, p0, Lcom/jianghe/cwblal/Bona;->i:I

    if-ne v2, v9, :cond_4

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v2, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    invoke-static {v2, v10}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;F)I

    move-result v2

    iget-object v4, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    const/high16 v5, 0x42a00000

    invoke-static {v4, v5}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    const/high16 v6, -0x40800000

    invoke-static {v5, v6}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v1, v2, v4, v5, v0}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    goto :goto_5
.end method

.method protected onDestroy()V
    .locals 5

    iget-boolean v0, p0, Lcom/jianghe/cwblal/Bona;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    iget-object v3, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    const-class v4, Lcom/jianghe/cwblal/Bons;

    invoke-static {v3, v4}, Lcom/jianghe/cwblal/c/h;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    invoke-static {v1}, Lcom/jianghe/cwblal/c/h;->q(Landroid/content/Context;)I

    move-result v1

    iget v2, p0, Lcom/jianghe/cwblal/Bona;->i:I

    invoke-static {v0, v1, v2}, Lcom/jianghe/cwblal/i;->a(Landroid/content/Context;II)Lcom/jianghe/cwblal/i;

    invoke-static {}, Lcom/jianghe/cwblal/i;->a()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jianghe/cwblal/Bona;->c:Z

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/jianghe/cwblal/Bona;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/jianghe/cwblal/Bona;->b:Z

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lcom/jianghe/cwblal/d/i;->a:Lcom/jianghe/cwblal/d/l;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/jianghe/cwblal/d/i;->a:Lcom/jianghe/cwblal/d/l;

    invoke-virtual {v0}, Lcom/jianghe/cwblal/d/l;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/jianghe/cwblal/Bons;

    invoke-static {p0, v1}, Lcom/jianghe/cwblal/c/h;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/jianghe/cwblal/Bona;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method protected onStop()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    iget-object v3, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    const-class v4, Lcom/jianghe/cwblal/Bons;

    invoke-static {v3, v4}, Lcom/jianghe/cwblal/c/h;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jianghe/cwblal/Bona;->b:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget v0, p0, Lcom/jianghe/cwblal/Bona;->i:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x3

    if-le v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/jianghe/cwblal/Bona;->finish()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/jianghe/cwblal/Bona;->i:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/jianghe/cwblal/Bona;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/jianghe/cwblal/Bona;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
