.class final Lcom/adsmogo/adapters/api/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/s;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/s;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/t;->a:Lcom/adsmogo/adapters/api/s;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/s;->a(Lcom/adsmogo/adapters/api/s;)Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;->d(Lcom/adsmogo/adapters/api/AXdXwXoApiAdapter;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
