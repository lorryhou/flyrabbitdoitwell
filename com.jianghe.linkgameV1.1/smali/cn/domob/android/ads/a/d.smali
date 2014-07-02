.class public Lcn/domob/android/ads/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/a/d$a;,
        Lcn/domob/android/ads/a/d$b;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "domob_banner.png"

.field private static final B:Ljava/lang/String; = "domob_exit.png"

.field private static final C:Ljava/lang/String; = "domob_exit_on.png"

.field private static final D:Ljava/lang/String; = "domob_loading.png"

.field private static final E:Ljava/lang/String; = "domob_next_off.png"

.field private static final F:Ljava/lang/String; = "domob_next.png"

.field private static final G:Ljava/lang/String; = "domob_next_on.png"

.field private static final H:Ljava/lang/String; = "domob_out.png"

.field private static final I:Ljava/lang/String; = "domob_out_on.png"

.field private static final J:Ljava/lang/String; = "domob_preview_off.png"

.field private static final K:Ljava/lang/String; = "domob_preview.png"

.field private static final L:Ljava/lang/String; = "domob_preview_on.png"

.field private static final M:Ljava/lang/String; = "domob_refresh.png"

.field private static final N:Ljava/lang/String; = "domob_refresh_on.png"

.field private static final O:I = 0x23

.field private static final P:I = 0x23

.field private static final Q:I = 0x2d

.field private static final R:I = 0x1f4

.field private static final S:[Ljava/lang/String;

.field private static a:Lcn/domob/android/ads/d/e; = null

.field private static final w:Ljava/lang/String; = "domob"

.field private static final x:Ljava/lang/String; = "close"

.field private static final y:Ljava/lang/String; = "inapp"

.field private static final z:Ljava/lang/String; = "url"


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Landroid/app/Dialog;

.field private g:Lcn/domob/android/ads/a/d$b;

.field private h:Landroid/os/Handler;

.field private i:Landroid/widget/RelativeLayout;

.field private j:F

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/widget/ImageButton;

.field private n:Landroid/widget/ImageButton;

.field private o:Landroid/widget/ImageButton;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/view/animation/RotateAnimation;

.field private s:Landroid/view/animation/Animation;

.field private t:Landroid/view/animation/Animation;

.field private u:Z

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/a/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/a/d;->a:Lcn/domob/android/ads/d/e;

    .line 114
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".3gp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ".asf"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".avi"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ".m4u"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ".m4v"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".mov"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ".mpe"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ".mpeg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ".mpg"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ".mpg4"

    aput-object v2, v0, v1

    sput-object v0, Lcn/domob/android/ads/a/d;->S:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a/d$b;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lcn/domob/android/ads/a/d;->c:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    .line 71
    iput-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->h:Landroid/os/Handler;

    .line 75
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcn/domob/android/ads/a/d;->j:F

    .line 88
    iput-boolean v1, p0, Lcn/domob/android/ads/a/d;->u:Z

    .line 89
    iput-boolean v1, p0, Lcn/domob/android/ads/a/d;->v:Z

    .line 119
    sget-object v0, Lcn/domob/android/ads/a/d;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "Initialize DomobLandingPageBuilder"

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    .line 121
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/a/a;->s(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/a/d;->j:F

    .line 122
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    .line 123
    iput-object p2, p0, Lcn/domob/android/ads/a/d;->c:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lcn/domob/android/ads/a/d;->e:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lcn/domob/android/ads/a/d;->g:Lcn/domob/android/ads/a/d$b;

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->d()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->k:Landroid/view/View;

    .line 129
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    sget-object v1, Lcn/domob/android/ads/a/d;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 400
    const/4 v1, 0x0

    .line 402
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "assets/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-object v0

    .line 404
    :catch_0
    move-exception v0

    .line 405
    sget-object v2, Lcn/domob/android/ads/a/d;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    .line 406
    sget-object v0, Lcn/domob/android/ads/a/d;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load source file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcn/domob/android/ads/a/d;Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcn/domob/android/ads/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/ads/a/d;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/high16 v4, 0x420c0000

    .line 413
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 414
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcn/domob/android/ads/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 416
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 417
    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 422
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 423
    return-object v0
.end method

.method private a(II)Z
    .locals 2

    .prologue
    .line 252
    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 254
    ushr-int v1, p1, v0

    rem-int/lit8 v1, v1, 0x2

    .line 255
    ushr-int v0, p2, v0

    rem-int/lit8 v0, v0, 0x2

    .line 256
    if-ne v1, v0, :cond_0

    .line 257
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcn/domob/android/ads/a/d;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcn/domob/android/ads/a/d;->v:Z

    return p1
.end method

.method static synthetic b(Lcn/domob/android/ads/a/d;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic b()Lcn/domob/android/ads/d/e;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcn/domob/android/ads/a/d;->a:Lcn/domob/android/ads/d/e;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/ads/a/d;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcn/domob/android/ads/a/d;->u:Z

    return p1
.end method

.method static synthetic c(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/d$b;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->g:Lcn/domob/android/ads/a/d$b;

    return-object v0
.end method

.method static synthetic c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcn/domob/android/ads/a/d;->S:[Ljava/lang/String;

    return-object v0
.end method

.method private d()Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 214
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 215
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 216
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    const-string v2, "domob_banner.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->j()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->l()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 220
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->p()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->n()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 222
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->h()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    return-object v0
.end method

.method static synthetic d(Lcn/domob/android/ads/a/d;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcn/domob/android/ads/a/d;->u:Z

    return v0
.end method

.method static synthetic e(Lcn/domob/android/ads/a/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    return-object v0
.end method

.method private e()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000

    .line 227
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    .line 228
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v5, "assets/domob_loading.png"

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->r:Landroid/view/animation/RotateAnimation;

    .line 233
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->r:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 234
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->r:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 235
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->r:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 236
    return-void
.end method

.method static synthetic f(Lcn/domob/android/ads/a/d;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->s()V

    return-void
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 245
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/d;->a(II)Z

    move-result v0

    .line 248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Landroid/webkit/WebView;
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 264
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->s()V

    .line 265
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 267
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 271
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 272
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 275
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    new-instance v1, Lcn/domob/android/ads/a/d$7;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$7;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 364
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    new-instance v1, Lcn/domob/android/ads/a/d$a;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$a;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 365
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    new-instance v1, Lcn/domob/android/ads/a/d$8;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$8;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 381
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 383
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 384
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic g(Lcn/domob/android/ads/a/d;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->t()V

    return-void
.end method

.method private h()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/high16 v4, 0x420c0000

    .line 503
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->p:Landroid/widget/ImageButton;

    .line 507
    const-string v0, "domob_exit.png"

    .line 508
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 510
    iget-object v2, p0, Lcn/domob/android/ads/a/d;->p:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->p:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/android/ads/a/d$9;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/d$9;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->p:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/android/ads/a/d$10;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/d$10;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 531
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->p:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/d;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcn/domob/android/ads/a/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x1f4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 535
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->t:Landroid/view/animation/Animation;

    .line 538
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 539
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 541
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->h:Landroid/os/Handler;

    new-instance v1, Lcn/domob/android/ads/a/d$11;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$11;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 547
    return-void
.end method

.method static synthetic i(Lcn/domob/android/ads/a/d;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->i()V

    return-void
.end method

.method private j()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/high16 v3, 0x420c0000

    .line 550
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->l:Landroid/widget/ImageButton;

    .line 551
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 553
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->l:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    const-string v0, "domob_preview.png"

    .line 561
    :goto_0
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->l:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/android/ads/a/d$12;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/d$12;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->l:Landroid/widget/ImageButton;

    new-instance v2, Lcn/domob/android/ads/a/d$13;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/d$13;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 582
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->l:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/d;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0

    .line 558
    :cond_0
    const-string v0, "domob_preview_off.png"

    goto :goto_0
.end method

.method static synthetic j(Lcn/domob/android/ads/a/d;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->r()V

    return-void
.end method

.method static synthetic k(Lcn/domob/android/ads/a/d;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->p:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 592
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->r()V

    goto :goto_0
.end method

.method static synthetic l(Lcn/domob/android/ads/a/d;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    return-object v0
.end method

.method private l()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/high16 v3, 0x420c0000

    .line 597
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->m:Landroid/widget/ImageButton;

    .line 598
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 600
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->m:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    const-string v0, "domob_next_off.png"

    .line 603
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->m:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/d$14;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$14;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 608
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->m:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/d$2;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$2;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 623
    const-string v0, "domob_next_off.png"

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->m:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/d;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 633
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->r()V

    goto :goto_0
.end method

.method static synthetic m(Lcn/domob/android/ads/a/d;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->k()V

    return-void
.end method

.method static synthetic n(Lcn/domob/android/ads/a/d;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->l:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private n()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/high16 v3, 0x420c0000

    .line 638
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->n:Landroid/widget/ImageButton;

    .line 639
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 641
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    const-string v0, "domob_out.png"

    .line 643
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/d$3;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$3;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->n:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/d$4;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$4;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 665
    const-string v0, "domob_out.png"

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->n:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/d;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 669
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 670
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 671
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 672
    return-void
.end method

.method static synthetic o(Lcn/domob/android/ads/a/d;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->m()V

    return-void
.end method

.method static synthetic p(Lcn/domob/android/ads/a/d;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->m:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private p()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    const/high16 v3, 0x420c0000

    .line 675
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->o:Landroid/widget/ImageButton;

    .line 676
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 678
    iget-object v1, p0, Lcn/domob/android/ads/a/d;->o:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 679
    const-string v0, "domob_refresh.png"

    .line 680
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->o:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/d$5;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$5;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 690
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->o:Landroid/widget/ImageButton;

    new-instance v1, Lcn/domob/android/ads/a/d$6;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$6;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 704
    const-string v0, "domob_refresh.png"

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->o:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/d;->a(Ljava/lang/String;Landroid/widget/ImageButton;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 713
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method

.method static synthetic q(Lcn/domob/android/ads/a/d;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->o()V

    return-void
.end method

.method static synthetic r(Lcn/domob/android/ads/a/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method private r()V
    .locals 3

    .prologue
    .line 719
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->l:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    const-string v2, "domob_preview.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 726
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    const-string v2, "domob_next.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 731
    :goto_1
    return-void

    .line 722
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->l:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    const-string v2, "domob_preview_off.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 729
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    const-string v2, "domob_next_off.png"

    invoke-direct {p0, v1, v2}, Lcn/domob/android/ads/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method static synthetic s(Lcn/domob/android/ads/a/d;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->n:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private s()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 734
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->r:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 738
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 734
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private t()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 741
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    iget-boolean v3, p0, Lcn/domob/android/ads/a/d;->v:Z

    if-nez v3, :cond_3

    :goto_2
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 743
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 745
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 741
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method static synthetic t(Lcn/domob/android/ads/a/d;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->q()V

    return-void
.end method

.method static synthetic u(Lcn/domob/android/ads/a/d;)Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->o:Landroid/widget/ImageButton;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/app/Dialog;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/high16 v5, 0x42340000

    .line 142
    sget-object v0, Lcn/domob/android/ads/a/d;->a:Lcn/domob/android/ads/d/e;

    const-string v3, "Start to build FS/RFS landingpage"

    invoke-virtual {v0, p0, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    .line 144
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->g()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 149
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 152
    iget-object v3, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/domob/android/ads/a/d;->q:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    invoke-direct {p0}, Lcn/domob/android/ads/a/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    const v4, 0x1030011

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    .line 165
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 166
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 168
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 169
    iget-object v3, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/domob/android/ads/a/d;->k:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->s:Landroid/view/animation/Animation;

    .line 183
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->s:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 184
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 186
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f000000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 187
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 189
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    new-instance v1, Lcn/domob/android/ads/a/d$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$1;-><init>(Lcn/domob/android/ads/a/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 209
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    return-object v0

    .line 172
    :cond_0
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcn/domob/android/ads/a/d;->d:Landroid/content/Context;

    const v4, 0x1030010

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/domob/android/ads/a/d;->f:Landroid/app/Dialog;

    .line 173
    iget-object v0, p0, Lcn/domob/android/ads/a/d;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 174
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcn/domob/android/ads/a/d;->j:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    invoke-direct {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 176
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 177
    iget-object v3, p0, Lcn/domob/android/ads/a/d;->i:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcn/domob/android/ads/a/d;->k:Landroid/view/View;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
