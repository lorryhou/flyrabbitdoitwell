.class Lcom/jianghe/cwblal/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:Landroid/util/DisplayMetrics;

.field b:I

.field final synthetic c:Lcom/jianghe/cwblal/d/c;


# direct methods
.method private constructor <init>(Lcom/jianghe/cwblal/d/c;)V
    .locals 1

    iput-object p1, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/jianghe/cwblal/d/f;->a:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/jianghe/cwblal/d/f;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/jianghe/cwblal/d/c;Lcom/jianghe/cwblal/d/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jianghe/cwblal/d/f;-><init>(Lcom/jianghe/cwblal/d/c;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const-wide/16 v7, 0x64

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return v4

    :pswitch_0
    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/jianghe/cwblal/d/c;->a(Lcom/jianghe/cwblal/d/c;F)F

    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/jianghe/cwblal/d/c;->b(Lcom/jianghe/cwblal/d/c;F)F

    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jianghe/cwblal/d/c;->c(Lcom/jianghe/cwblal/d/c;F)F

    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/jianghe/cwblal/d/c;->d(Lcom/jianghe/cwblal/d/c;F)F

    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/jianghe/cwblal/d/c;->a(Lcom/jianghe/cwblal/d/c;J)J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jianghe/cwblal/d/g;

    invoke-direct {v1, p0}, Lcom/jianghe/cwblal/d/g;-><init>(Lcom/jianghe/cwblal/d/f;)V

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/jianghe/cwblal/d/f;->b:I

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->g()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v3}, Lcom/jianghe/cwblal/d/c;->c(Lcom/jianghe/cwblal/d/c;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->g()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v2}, Lcom/jianghe/cwblal/d/c;->c(Lcom/jianghe/cwblal/d/c;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;F)I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v1}, Lcom/jianghe/cwblal/d/c;->d(Lcom/jianghe/cwblal/d/c;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v1}, Lcom/jianghe/cwblal/d/c;->e(Lcom/jianghe/cwblal/d/c;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v2}, Lcom/jianghe/cwblal/d/c;->d(Lcom/jianghe/cwblal/d/c;)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/jianghe/cwblal/d/c;->c(Lcom/jianghe/cwblal/d/c;F)F

    :cond_1
    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v0}, Lcom/jianghe/cwblal/d/c;->f(Lcom/jianghe/cwblal/d/c;)J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v2}, Lcom/jianghe/cwblal/d/c;->f(Lcom/jianghe/cwblal/d/c;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v2}, Lcom/jianghe/cwblal/d/c;->g(Lcom/jianghe/cwblal/d/c;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v0}, Lcom/jianghe/cwblal/d/c;->e(Lcom/jianghe/cwblal/d/c;)F

    move-result v0

    const/high16 v1, 0x41200000

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-virtual {v0}, Lcom/jianghe/cwblal/d/c;->e()V

    :cond_2
    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/jianghe/cwblal/d/c;->e(Lcom/jianghe/cwblal/d/c;F)F

    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/jianghe/cwblal/d/c;->f(Lcom/jianghe/cwblal/d/c;F)F

    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v0}, Lcom/jianghe/cwblal/d/c;->h(Lcom/jianghe/cwblal/d/c;)F

    move-result v0

    iget-object v1, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v1}, Lcom/jianghe/cwblal/d/c;->i(Lcom/jianghe/cwblal/d/c;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v0}, Lcom/jianghe/cwblal/d/c;->j(Lcom/jianghe/cwblal/d/c;)F

    move-result v0

    iget-object v1, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v1}, Lcom/jianghe/cwblal/d/c;->k(Lcom/jianghe/cwblal/d/c;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v1}, Lcom/jianghe/cwblal/d/c;->l(Lcom/jianghe/cwblal/d/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/jianghe/cwblal/d/f;->b:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v2}, Lcom/jianghe/cwblal/d/c;->m(Lcom/jianghe/cwblal/d/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v3}, Lcom/jianghe/cwblal/d/c;->j(Lcom/jianghe/cwblal/d/c;)F

    move-result v3

    int-to-float v1, v1

    sub-float v1, v3, v1

    float-to-int v1, v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->h()Landroid/widget/AbsoluteLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/jianghe/cwblal/d/c;->f()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->h()Landroid/widget/AbsoluteLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v2}, Lcom/jianghe/cwblal/d/c;->m(Lcom/jianghe/cwblal/d/c;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v0, v5, v6}, Lcom/jianghe/cwblal/d/c;->a(Lcom/jianghe/cwblal/d/c;J)J

    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v0}, Lcom/jianghe/cwblal/d/c;->l(Lcom/jianghe/cwblal/d/c;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v0}, Lcom/jianghe/cwblal/d/c;->j(Lcom/jianghe/cwblal/d/c;)F

    move-result v0

    iget v1, p0, Lcom/jianghe/cwblal/d/f;->b:I

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->g()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v3}, Lcom/jianghe/cwblal/d/c;->c(Lcom/jianghe/cwblal/d/c;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v0}, Lcom/jianghe/cwblal/d/c;->j(Lcom/jianghe/cwblal/d/c;)F

    move-result v0

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->g()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v2}, Lcom/jianghe/cwblal/d/c;->c(Lcom/jianghe/cwblal/d/c;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->g()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/jianghe/cwblal/d/f;->c:Lcom/jianghe/cwblal/d/c;

    invoke-static {v1}, Lcom/jianghe/cwblal/d/c;->j(Lcom/jianghe/cwblal/d/c;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v4, v1}, Lcom/jianghe/cwblal/c/h;->a(Landroid/content/Context;II)V

    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/jianghe/cwblal/d/h;

    invoke-direct {v1, p0}, Lcom/jianghe/cwblal/d/h;-><init>(Lcom/jianghe/cwblal/d/f;)V

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
