.class public final Lcom/adsmogo/adview/A;
.super Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/adsmogo/adview/A;->getDefaultSize(II)I

    move-result v0

    invoke-static {v1, p2}, Lcom/adsmogo/adview/A;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/adsmogo/adview/A;->setMeasuredDimension(II)V

    return-void
.end method
