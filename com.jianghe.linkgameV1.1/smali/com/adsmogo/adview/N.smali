.class final Lcom/adsmogo/adview/N;
.super Landroid/view/View;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/ShowFullScreenDialog;Landroid/content/Context;II)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput p3, p0, Lcom/adsmogo/adview/N;->a:I

    iput p4, p0, Lcom/adsmogo/adview/N;->b:I

    return-void
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x41700000

    const/high16 v3, 0x40400000

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/adsmogo/adview/N;->a:I

    add-int/lit8 v1, v1, 0x9

    int-to-float v1, v1

    iget v2, p0, Lcom/adsmogo/adview/N;->b:I

    add-int/lit8 v2, v2, 0x9

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v2, 0x40c00000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
