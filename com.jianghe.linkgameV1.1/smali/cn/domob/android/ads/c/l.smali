.class Lcn/domob/android/ads/c/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lcn/domob/android/ads/d/e; = null

.field private static final g:J = 0xbb8L

.field private static final h:I = 0x32

.field private static final i:Ljava/lang/String; = "domob_close.png"


# instance fields
.field protected a:Landroid/content/BroadcastReceiver;

.field protected b:F

.field protected c:I

.field protected d:I

.field e:Landroid/widget/FrameLayout;

.field private j:Lcn/domob/android/ads/c/s;

.field private k:Landroid/content/Context;

.field private l:Lcn/domob/android/ads/c/s$l;

.field private final m:Lcn/domob/android/ads/c/s$b;

.field private final n:Lcn/domob/android/ads/c/s$d;

.field private o:Landroid/widget/FrameLayout;

.field private p:Z

.field private q:Ljava/lang/Runnable;

.field private r:Landroid/os/Handler;

.field private final s:I

.field private t:Landroid/widget/ImageView;

.field private u:Z

.field private v:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/c/l;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/c/l;->f:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method constructor <init>(Lcn/domob/android/ads/c/s;Lcn/domob/android/ads/c/s$b;Lcn/domob/android/ads/c/s$d;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v1, Lcn/domob/android/ads/c/s$l;->d:Lcn/domob/android/ads/c/s$l;

    iput-object v1, p0, Lcn/domob/android/ads/c/l;->l:Lcn/domob/android/ads/c/s$l;

    .line 61
    new-instance v1, Lcn/domob/android/ads/c/m;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/c/m;-><init>(Lcn/domob/android/ads/c/l;)V

    iput-object v1, p0, Lcn/domob/android/ads/c/l;->q:Ljava/lang/Runnable;

    .line 74
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcn/domob/android/ads/c/l;->r:Landroid/os/Handler;

    .line 84
    new-instance v1, Lcn/domob/android/ads/c/n;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/c/n;-><init>(Lcn/domob/android/ads/c/l;)V

    iput-object v1, p0, Lcn/domob/android/ads/c/l;->a:Landroid/content/BroadcastReceiver;

    .line 115
    iput v0, p0, Lcn/domob/android/ads/c/l;->c:I

    .line 117
    iput v0, p0, Lcn/domob/android/ads/c/l;->d:I

    .line 130
    iput-object p1, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    .line 131
    iput-object p2, p0, Lcn/domob/android/ads/c/l;->m:Lcn/domob/android/ads/c/s$b;

    .line 132
    iput-object p3, p0, Lcn/domob/android/ads/c/l;->n:Lcn/domob/android/ads/c/s$d;

    .line 134
    iget-object v1, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v1}, Lcn/domob/android/ads/c/s;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/c/l;->k:Landroid/content/Context;

    .line 135
    iget-object v1, p0, Lcn/domob/android/ads/c/l;->k:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/c/l;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    :cond_0
    iput v0, p0, Lcn/domob/android/ads/c/l;->s:I

    .line 138
    invoke-direct {p0}, Lcn/domob/android/ads/c/l;->f()V

    .line 139
    return-void
.end method

.method private a(Landroid/view/View;II)Landroid/view/ViewGroup;
    .locals 15

    .prologue
    .line 343
    const/high16 v2, 0x42480000

    iget v3, p0, Lcn/domob/android/ads/c/l;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 344
    move/from16 v0, p2

    if-ge v0, v2, :cond_0

    move/from16 p2, v2

    .line 346
    :cond_0
    move/from16 v0, p3

    if-ge v0, v2, :cond_1

    move/from16 p3, v2

    .line 349
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v3}, Lcn/domob/android/ads/c/s;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 350
    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 352
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v4}, Lcn/domob/android/ads/c/s;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 353
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 354
    new-instance v4, Lcn/domob/android/ads/c/l$1;

    invoke-direct {v4, p0}, Lcn/domob/android/ads/c/l$1;-><init>(Lcn/domob/android/ads/c/l;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 360
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v4}, Lcn/domob/android/ads/c/s;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 364
    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setId(I)V

    .line 365
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 371
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 372
    iget-object v6, p0, Lcn/domob/android/ads/c/l;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 373
    const/4 v6, 0x0

    aget v6, v5, v6

    .line 374
    const/4 v7, 0x1

    aget v7, v5, v7

    .line 375
    iget-object v8, p0, Lcn/domob/android/ads/c/l;->k:Landroid/content/Context;

    invoke-static {v8}, Lcn/domob/android/a/a;->w(Landroid/content/Context;)I

    move-result v8

    .line 376
    iget-object v9, p0, Lcn/domob/android/ads/c/l;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    .line 377
    sget-object v10, Lcn/domob/android/ads/c/l;->f:Lcn/domob/android/ads/d/e;

    const-string v11, "Mraid banner view\'s location on screen is:(%d, %d)"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 381
    sub-int/2addr v8, v7

    move/from16 v0, p3

    if-le v8, v0, :cond_2

    .line 383
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 384
    iget v5, p0, Lcn/domob/android/ads/c/l;->w:I

    sub-int v5, v7, v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 394
    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    return-object v2

    .line 385
    :cond_2
    iget v6, p0, Lcn/domob/android/ads/c/l;->w:I

    sub-int v6, v7, v6

    add-int/2addr v6, v9

    move/from16 v0, p3

    if-le v6, v0, :cond_3

    .line 387
    const/4 v6, 0x0

    aget v5, v5, v6

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 388
    sub-int v5, p3, v9

    sub-int v5, v7, v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 391
    :cond_3
    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method static synthetic a(Lcn/domob/android/ads/c/l;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcn/domob/android/ads/c/l;->p:Z

    return v0
.end method

.method static synthetic a(Lcn/domob/android/ads/c/l;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcn/domob/android/ads/c/l;->p:Z

    return p1
.end method

.method static synthetic b(Lcn/domob/android/ads/c/l;)Lcn/domob/android/ads/c/s;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/ads/c/l;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->r:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/s;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 403
    :try_start_0
    check-cast v0, Landroid/app/Activity;

    .line 404
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 406
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 410
    :goto_1
    return-void

    .line 404
    :cond_0
    iget v1, p0, Lcn/domob/android/ads/c/l;->s:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    sget-object v0, Lcn/domob/android/ads/c/l;->f:Lcn/domob/android/ads/d/e;

    const-string v1, "Unable to modify device orientation."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private f()V
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcn/domob/android/ads/c/s$l;->a:Lcn/domob/android/ads/c/s$l;

    iput-object v0, p0, Lcn/domob/android/ads/c/l;->l:Lcn/domob/android/ads/c/s$l;

    .line 144
    invoke-direct {p0}, Lcn/domob/android/ads/c/l;->h()V

    .line 148
    return-void
.end method

.method private g()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const-wide/high16 v8, 0x4064000000000000L

    const/4 v2, 0x0

    .line 151
    iget-object v1, p0, Lcn/domob/android/ads/c/l;->k:Landroid/content/Context;

    .line 152
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 153
    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 154
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 155
    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcn/domob/android/ads/c/l;->b:F

    .line 158
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 159
    check-cast v0, Landroid/app/Activity;

    .line 160
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 161
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 162
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 163
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 164
    const v4, 0x1020002

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 165
    sub-int/2addr v0, v1

    .line 168
    :goto_0
    add-int v4, v1, v0

    iput v4, p0, Lcn/domob/android/ads/c/l;->w:I

    .line 169
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 170
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int v1, v5, v1

    sub-int v0, v1, v0

    .line 171
    sget-object v1, Lcn/domob/android/ads/c/l;->f:Lcn/domob/android/ads/d/e;

    const-string v5, "Metrics pixels: width=%d, height=%d"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 173
    int-to-double v4, v4

    iget v1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v6, v1

    div-double v6, v8, v6

    mul-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, p0, Lcn/domob/android/ads/c/l;->c:I

    .line 174
    int-to-double v0, v0

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v3, v3

    div-double v3, v8, v3

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lcn/domob/android/ads/c/l;->d:I

    .line 175
    sget-object v0, Lcn/domob/android/ads/c/l;->f:Lcn/domob/android/ads/d/e;

    const-string v1, "Screen size: width=%d, height=%d"

    new-array v3, v11, [Ljava/lang/Object;

    iget v4, p0, Lcn/domob/android/ads/c/l;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget v2, p0, Lcn/domob/android/ads/c/l;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v10

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 177
    return-void

    :cond_0
    move v0, v2

    move v1, v2

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/c/l;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/c/l;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 248
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->o:Landroid/widget/FrameLayout;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 250
    iget-object v1, p0, Lcn/domob/android/ads/c/l;->o:Landroid/widget/FrameLayout;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 253
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcn/domob/android/ads/c/l;->a(Z)V

    .line 254
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 255
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 257
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/s;->requestLayout()V

    .line 259
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 263
    iget-object v1, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    iget v2, p0, Lcn/domob/android/ads/c/l;->v:I

    iget-object v3, p0, Lcn/domob/android/ads/c/l;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v1, p0, Lcn/domob/android/ads/c/l;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 265
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 267
    instance-of v1, v0, Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 268
    check-cast v1, Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v4}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    move-object v1, v0

    .line 269
    check-cast v1, Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v4}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 270
    check-cast v0, Landroid/widget/ViewFlipper;

    iget v1, p0, Lcn/domob/android/ads/c/l;->v:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 272
    :cond_0
    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    .line 320
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/s;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 321
    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 324
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcn/domob/android/ads/c/l;->k:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/domob/android/ads/c/l;->e:Landroid/widget/FrameLayout;

    .line 325
    iget-object v1, p0, Lcn/domob/android/ads/c/l;->e:Landroid/widget/FrameLayout;

    const v2, -0xff0100

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 328
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 329
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 330
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    if-ne v3, v4, :cond_2

    .line 334
    :cond_1
    sget-object v2, Lcn/domob/android/ads/c/l;->f:Lcn/domob/android/ads/d/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current MRAID view\'s index is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 335
    iput v1, p0, Lcn/domob/android/ads/c/l;->v:I

    .line 336
    iget-object v2, p0, Lcn/domob/android/ads/c/l;->e:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget-object v4, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v4}, Lcn/domob/android/ads/c/s;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v5}, Lcn/domob/android/ads/c/s;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 338
    iget-object v1, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 329
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcn/domob/android/ads/c/l;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method protected a(Ljava/lang/String;IIZZ)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 276
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->m:Lcn/domob/android/ads/c/s$b;

    sget-object v1, Lcn/domob/android/ads/c/s$b;->b:Lcn/domob/android/ads/c/s$b;

    if-ne v0, v1, :cond_1

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    const-string v1, "expand"

    const-string v2, "URL passed to expand() was invalid."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/s;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/domob/android/ads/c/l;->o:Landroid/widget/FrameLayout;

    .line 291
    invoke-virtual {p0, p4}, Lcn/domob/android/ads/c/l;->b(Z)V

    .line 292
    invoke-direct {p0, p5}, Lcn/domob/android/ads/c/l;->c(Z)V

    .line 293
    invoke-direct {p0}, Lcn/domob/android/ads/c/l;->j()V

    .line 295
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    .line 297
    if-eqz p1, :cond_3

    .line 298
    new-instance v0, Lcn/domob/android/ads/c/s;

    iget-object v1, p0, Lcn/domob/android/ads/c/l;->k:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/s;-><init>(Landroid/content/Context;)V

    .line 299
    invoke-virtual {v0, p1}, Lcn/domob/android/ads/c/s;->loadUrl(Ljava/lang/String;)V

    .line 303
    :cond_3
    int-to-float v1, p2

    iget v2, p0, Lcn/domob/android/ads/c/l;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p3

    iget v3, p0, Lcn/domob/android/ads/c/l;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcn/domob/android/ads/c/l;->a(Landroid/view/View;II)Landroid/view/ViewGroup;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcn/domob/android/ads/c/l;->o:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->n:Lcn/domob/android/ads/c/s$d;

    sget-object v1, Lcn/domob/android/ads/c/s$d;->a:Lcn/domob/android/ads/c/s$d;

    if-eq v0, v1, :cond_4

    iget-boolean v0, p0, Lcn/domob/android/ads/c/l;->u:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/domob/android/ads/c/l;->n:Lcn/domob/android/ads/c/s$d;

    sget-object v1, Lcn/domob/android/ads/c/s$d;->b:Lcn/domob/android/ads/c/s$d;

    if-eq v0, v1, :cond_5

    .line 310
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/c/l;->a(Z)V

    .line 313
    :cond_5
    sget-object v0, Lcn/domob/android/ads/c/s$l;->c:Lcn/domob/android/ads/c/s$l;

    iput-object v0, p0, Lcn/domob/android/ads/c/l;->l:Lcn/domob/android/ads/c/s$l;

    .line 314
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    iget-object v1, p0, Lcn/domob/android/ads/c/l;->l:Lcn/domob/android/ads/c/s$l;

    invoke-static {v1}, Lcn/domob/android/ads/c/r;->a(Lcn/domob/android/ads/c/s$l;)Lcn/domob/android/ads/c/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/s;->a(Lcn/domob/android/ads/c/p;)V

    .line 315
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/s;->c()Lcn/domob/android/ads/c/s$g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/s;->c()Lcn/domob/android/ads/c/s$g;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/c/s$g;->a(Lcn/domob/android/ads/c/s;)V

    goto/16 :goto_0
.end method

.method protected a(Z)V
    .locals 4

    .prologue
    .line 413
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->o:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->o:Landroid/widget/FrameLayout;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 420
    if-eqz p1, :cond_3

    .line 421
    iget-object v1, p0, Lcn/domob/android/ads/c/l;->t:Landroid/widget/ImageView;

    if-nez v1, :cond_2

    .line 422
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v2}, Lcn/domob/android/ads/c/s;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/domob/android/ads/c/l;->t:Landroid/widget/ImageView;

    .line 423
    iget-object v1, p0, Lcn/domob/android/ads/c/l;->t:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/domob/android/ads/c/l;->k:Landroid/content/Context;

    const-string v3, "domob_close.png"

    invoke-static {v2, v3}, Lcn/domob/android/ads/d/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v1, p0, Lcn/domob/android/ads/c/l;->t:Landroid/widget/ImageView;

    new-instance v2, Lcn/domob/android/ads/c/l$2;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/c/l$2;-><init>(Lcn/domob/android/ads/c/l;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    :cond_2
    const/high16 v1, 0x42480000

    iget v2, p0, Lcn/domob/android/ads/c/l;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 433
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x5

    invoke-direct {v2, v1, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 435
    iget-object v1, p0, Lcn/domob/android/ads/c/l;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    :goto_1
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    .line 441
    invoke-virtual {v0}, Lcn/domob/android/ads/c/s;->g()Lcn/domob/android/ads/c/s$e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v0}, Lcn/domob/android/ads/c/s;->g()Lcn/domob/android/ads/c/s$e;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcn/domob/android/ads/c/s$e;->a(Lcn/domob/android/ads/c/s;Z)V

    goto :goto_0

    .line 437
    :cond_3
    iget-object v1, p0, Lcn/domob/android/ads/c/l;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 211
    invoke-direct {p0}, Lcn/domob/android/ads/c/l;->g()V

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    iget v1, p0, Lcn/domob/android/ads/c/l;->c:I

    iget v2, p0, Lcn/domob/android/ads/c/l;->d:I

    invoke-static {v1, v2}, Lcn/domob/android/ads/c/q;->a(II)Lcn/domob/android/ads/c/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-boolean v1, p0, Lcn/domob/android/ads/c/l;->p:Z

    invoke-static {v1}, Lcn/domob/android/ads/c/t;->a(Z)Lcn/domob/android/ads/c/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v1, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/s;->a(Ljava/util/ArrayList;)V

    .line 217
    sget-object v0, Lcn/domob/android/ads/c/s$l;->b:Lcn/domob/android/ads/c/s$l;

    iput-object v0, p0, Lcn/domob/android/ads/c/l;->l:Lcn/domob/android/ads/c/s$l;

    .line 218
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    iget-object v1, p0, Lcn/domob/android/ads/c/l;->l:Lcn/domob/android/ads/c/s$l;

    invoke-static {v1}, Lcn/domob/android/ads/c/r;->a(Lcn/domob/android/ads/c/s$l;)Lcn/domob/android/ads/c/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/s;->a(Lcn/domob/android/ads/c/p;)V

    .line 219
    return-void
.end method

.method protected b(Z)V
    .locals 3

    .prologue
    .line 447
    iput-boolean p1, p0, Lcn/domob/android/ads/c/l;->u:Z

    .line 449
    iget-object v1, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    .line 450
    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 451
    :goto_0
    invoke-virtual {v1}, Lcn/domob/android/ads/c/s;->g()Lcn/domob/android/ads/c/s$e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 452
    invoke-virtual {v1}, Lcn/domob/android/ads/c/s;->g()Lcn/domob/android/ads/c/s$e;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcn/domob/android/ads/c/s$e;->a(Lcn/domob/android/ads/c/s;Z)V

    .line 454
    :cond_0
    return-void

    .line 450
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Z
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->l:Lcn/domob/android/ads/c/s$l;

    sget-object v1, Lcn/domob/android/ads/c/s$l;->c:Lcn/domob/android/ads/c/s$l;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()V
    .locals 3

    .prologue
    .line 226
    sget-object v0, Lcn/domob/android/ads/c/l;->f:Lcn/domob/android/ads/d/e;

    const-string v1, "MRAID expandable part will be closed."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->l:Lcn/domob/android/ads/c/s$l;

    sget-object v1, Lcn/domob/android/ads/c/s$l;->c:Lcn/domob/android/ads/c/s$l;

    if-ne v0, v1, :cond_2

    .line 228
    sget-object v0, Lcn/domob/android/ads/c/l;->f:Lcn/domob/android/ads/d/e;

    const-string v1, "MRAID view state is expanded and expand part will be closed."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcn/domob/android/ads/c/l;->i()V

    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/domob/android/ads/c/l;->c(Z)V

    .line 231
    sget-object v0, Lcn/domob/android/ads/c/s$l;->b:Lcn/domob/android/ads/c/s$l;

    iput-object v0, p0, Lcn/domob/android/ads/c/l;->l:Lcn/domob/android/ads/c/s$l;

    .line 232
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    iget-object v1, p0, Lcn/domob/android/ads/c/l;->l:Lcn/domob/android/ads/c/s$l;

    invoke-static {v1}, Lcn/domob/android/ads/c/r;->a(Lcn/domob/android/ads/c/s$l;)Lcn/domob/android/ads/c/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/s;->a(Lcn/domob/android/ads/c/p;)V

    .line 242
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/s;->d()Lcn/domob/android/ads/c/s$f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/s;->d()Lcn/domob/android/ads/c/s$f;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    iget-object v2, p0, Lcn/domob/android/ads/c/l;->l:Lcn/domob/android/ads/c/s$l;

    invoke-interface {v0, v1, v2}, Lcn/domob/android/ads/c/s$f;->a(Lcn/domob/android/ads/c/s;Lcn/domob/android/ads/c/s$l;)V

    .line 245
    :cond_1
    return-void

    .line 234
    :cond_2
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->l:Lcn/domob/android/ads/c/s$l;

    sget-object v1, Lcn/domob/android/ads/c/s$l;->b:Lcn/domob/android/ads/c/s$l;

    if-ne v0, v1, :cond_0

    .line 235
    sget-object v0, Lcn/domob/android/ads/c/l;->f:Lcn/domob/android/ads/d/e;

    const-string v1, "MRAID view state is default and MRAID view will be hidden."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/s;->setVisibility(I)V

    .line 237
    sget-object v0, Lcn/domob/android/ads/c/s$l;->d:Lcn/domob/android/ads/c/s$l;

    iput-object v0, p0, Lcn/domob/android/ads/c/l;->l:Lcn/domob/android/ads/c/s$l;

    .line 238
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    iget-object v1, p0, Lcn/domob/android/ads/c/l;->l:Lcn/domob/android/ads/c/s$l;

    invoke-static {v1}, Lcn/domob/android/ads/c/r;->a(Lcn/domob/android/ads/c/s$l;)Lcn/domob/android/ads/c/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/s;->a(Lcn/domob/android/ads/c/p;)V

    goto :goto_0
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcn/domob/android/ads/c/l;->j:Lcn/domob/android/ads/c/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/s;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
