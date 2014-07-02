.class final Lcom/adsmogo/adview/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/adsmogo/adview/j;

.field private final synthetic b:Landroid/widget/RelativeLayout;

.field private final synthetic c:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/j;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adview/k;->a:Lcom/adsmogo/adview/j;

    iput-object p2, p0, Lcom/adsmogo/adview/k;->b:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/adsmogo/adview/k;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/adview/k;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adsmogo/adview/k;->a:Lcom/adsmogo/adview/j;

    invoke-static {v1}, Lcom/adsmogo/adview/j;->a(Lcom/adsmogo/adview/j;)Lcom/adsmogo/adview/AdsMogoLayout;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/adsmogo/adview/k;->c:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
