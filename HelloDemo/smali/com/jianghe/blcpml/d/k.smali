.class public Lcom/jianghe/blcpml/d/k;
.super Landroid/widget/RelativeLayout;


# static fields
.field public static a:Lcom/jianghe/blcpml/d/k;

.field public static b:Lcom/jianghe/blcpml/d/k;

.field public static c:Lcom/jianghe/blcpml/d/n;

.field private static j:Lcom/jianghe/blcpml/b/f;


# instance fields
.field private d:Lcom/jianghe/blcpml/n;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/FrameLayout$LayoutParams;

.field private i:I

.field private k:Landroid/content/Context;

.field private l:Lcom/jianghe/blcpml/d/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/jianghe/blcpml/d/k;->a:Lcom/jianghe/blcpml/d/k;

    sput-object v0, Lcom/jianghe/blcpml/d/k;->b:Lcom/jianghe/blcpml/d/k;

    sput-object v0, Lcom/jianghe/blcpml/d/k;->j:Lcom/jianghe/blcpml/b/f;

    sput-object v0, Lcom/jianghe/blcpml/d/k;->c:Lcom/jianghe/blcpml/d/n;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jianghe/blcpml/b/f;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/jianghe/blcpml/d/k;->k:Landroid/content/Context;

    iget-object v0, p0, Lcom/jianghe/blcpml/d/k;->k:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/jianghe/blcpml/e/h;->a(Landroid/content/Context;I)I

    iget-object v0, p0, Lcom/jianghe/blcpml/d/k;->k:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/jianghe/blcpml/e/h;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {p1}, Lcom/jianghe/blcpml/e/h;->g(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    const/16 v0, 0x17

    :cond_0
    sput-object p2, Lcom/jianghe/blcpml/d/k;->j:Lcom/jianghe/blcpml/b/f;

    iput p3, p0, Lcom/jianghe/blcpml/d/k;->i:I

    new-instance v1, Lcom/jianghe/blcpml/n;

    invoke-direct {v1, p1}, Lcom/jianghe/blcpml/n;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jianghe/blcpml/d/k;->d:Lcom/jianghe/blcpml/n;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jianghe/blcpml/d/k;->e:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jianghe/blcpml/d/k;->f:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/jianghe/blcpml/d/k;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/jianghe/blcpml/d/k;->g:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/jianghe/blcpml/d/k;->h:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/jianghe/blcpml/d/k;->h:Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :try_start_0
    iget-object v1, p0, Lcom/jianghe/blcpml/d/k;->g:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jianghe/blcpml/d/k;->k:Landroid/content/Context;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/jianghe/blcpml/e/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/jianghe/blcpml/d/s;

    invoke-direct {v1, p1, p2}, Lcom/jianghe/blcpml/d/s;-><init>(Landroid/content/Context;Lcom/jianghe/blcpml/b/f;)V

    iput-object v1, p0, Lcom/jianghe/blcpml/d/k;->l:Lcom/jianghe/blcpml/d/s;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/jianghe/blcpml/d/k;->f:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/jianghe/blcpml/d/k;->l:Lcom/jianghe/blcpml/d/s;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/jianghe/blcpml/d/k;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5, v0, v0, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/jianghe/blcpml/d/k;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/jianghe/blcpml/d/k;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/jianghe/blcpml/d/k;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jianghe/blcpml/d/k;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/jianghe/blcpml/d/k;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jianghe/blcpml/d/k;->g:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/jianghe/blcpml/d/k;->h:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/jianghe/blcpml/d/k;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/jianghe/blcpml/d/k;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/jianghe/blcpml/d/l;

    invoke-direct {v1, p0, p1, p3}, Lcom/jianghe/blcpml/d/l;-><init>(Lcom/jianghe/blcpml/d/k;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/jianghe/blcpml/d/k;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/jianghe/blcpml/d/k;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/jianghe/blcpml/b/f;I)Lcom/jianghe/blcpml/d/k;
    .locals 1

    sput-object p1, Lcom/jianghe/blcpml/d/k;->j:Lcom/jianghe/blcpml/b/f;

    sget-object v0, Lcom/jianghe/blcpml/d/k;->b:Lcom/jianghe/blcpml/d/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jianghe/blcpml/d/k;

    invoke-direct {v0, p0, p1, p2}, Lcom/jianghe/blcpml/d/k;-><init>(Landroid/content/Context;Lcom/jianghe/blcpml/b/f;I)V

    sput-object v0, Lcom/jianghe/blcpml/d/k;->b:Lcom/jianghe/blcpml/d/k;

    :cond_0
    sget-object v0, Lcom/jianghe/blcpml/d/k;->b:Lcom/jianghe/blcpml/d/k;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/jianghe/blcpml/d/k;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v0, Lcom/jianghe/blcpml/d/m;

    sget-object v1, Lcom/jianghe/blcpml/d/k;->j:Lcom/jianghe/blcpml/b/f;

    iget v1, v1, Lcom/jianghe/blcpml/b/f;->q:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/jianghe/blcpml/d/m;-><init>(Lcom/jianghe/blcpml/d/k;JJ)V

    invoke-virtual {v0}, Lcom/jianghe/blcpml/d/m;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public a(I)V
    .locals 4

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/jianghe/blcpml/d/k;->l:Lcom/jianghe/blcpml/d/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/blcpml/d/k;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/jianghe/blcpml/d/k;->l:Lcom/jianghe/blcpml/d/s;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    new-instance v0, Lcom/jianghe/blcpml/d/s;

    iget-object v1, p0, Lcom/jianghe/blcpml/d/k;->k:Landroid/content/Context;

    sget-object v2, Lcom/jianghe/blcpml/d/k;->j:Lcom/jianghe/blcpml/b/f;

    invoke-direct {v0, v1, v2}, Lcom/jianghe/blcpml/d/s;-><init>(Landroid/content/Context;Lcom/jianghe/blcpml/b/f;)V

    iput-object v0, p0, Lcom/jianghe/blcpml/d/k;->l:Lcom/jianghe/blcpml/d/s;

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/jianghe/blcpml/d/k;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    :cond_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/jianghe/blcpml/d/k;->k:Landroid/content/Context;

    const/16 v2, 0x17

    invoke-static {v1, v2}, Lcom/jianghe/blcpml/e/h;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/jianghe/blcpml/d/k;->k:Landroid/content/Context;

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/jianghe/blcpml/e/h;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/jianghe/blcpml/d/k;->f:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/jianghe/blcpml/d/k;->l:Lcom/jianghe/blcpml/d/s;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/jianghe/blcpml/d/n;)V
    .locals 0

    sput-object p1, Lcom/jianghe/blcpml/d/k;->c:Lcom/jianghe/blcpml/d/n;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    sget-object v0, Lcom/jianghe/blcpml/d/k;->c:Lcom/jianghe/blcpml/d/n;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jianghe/blcpml/d/k;->c:Lcom/jianghe/blcpml/d/n;

    iget v1, p0, Lcom/jianghe/blcpml/d/k;->i:I

    invoke-interface {v0, p1, v1}, Lcom/jianghe/blcpml/d/n;->a(Landroid/view/MotionEvent;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
