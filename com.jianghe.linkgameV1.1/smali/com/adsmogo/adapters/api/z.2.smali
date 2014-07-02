.class final Lcom/adsmogo/adapters/api/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/z;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/z;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;F)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/z;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;F)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/z;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/z;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/z;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0, v2, v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;II)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/z;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0, v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Z)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/z;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Z)V

    goto :goto_0
.end method
