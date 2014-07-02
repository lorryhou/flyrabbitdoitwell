.class final Lcom/adsmogo/adapters/api/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/ay;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v4, 0x3

    const/16 v2, 0x20

    const/16 v0, 0xa

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    :try_start_0
    iget-object v1, p0, Lcom/adsmogo/adapters/api/ay;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/model/obj/PublicCustom;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/adsmogo/adapters/api/ay;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/model/obj/PublicCustom;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->cc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/adsmogo/adapters/api/ay;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->c(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Lcom/adsmogo/model/obj/PublicCustom;

    move-result-object v1

    iget-object v1, v1, Lcom/adsmogo/model/obj/PublicCustom;->cc:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v1, v7

    if-le v1, v4, :cond_3

    const/4 v1, 0x0

    aget-object v1, v7, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v1, 0x1

    aget-object v1, v7, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v1, 0x2

    aget-object v1, v7, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v2, v3

    move v3, v4

    :goto_0
    iget-object v4, p0, Lcom/adsmogo/adapters/api/ay;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    iget-wide v7, v4, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:D

    invoke-static {v3, v7, v8}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v3

    iget-object v4, p0, Lcom/adsmogo/adapters/api/ay;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    iget-wide v7, v4, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:D

    invoke-static {v2, v7, v8}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v2

    iget-object v4, p0, Lcom/adsmogo/adapters/api/ay;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    iget-wide v7, v4, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:D

    invoke-static {v1, v7, v8}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    iget-object v4, p0, Lcom/adsmogo/adapters/api/ay;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    iget-wide v7, v4, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a:D

    invoke-static {v0, v7, v8}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    const-string v4, "AdsMOGO SDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ad onTouch , touchX:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",touchY:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",left\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",top:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",right:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",below:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    int-to-float v3, v3

    cmpl-float v3, v5, v3

    if-ltz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int v1, v3, v1

    int-to-float v1, v1

    cmpg-float v1, v5, v1

    if-gtz v1, :cond_2

    int-to-float v1, v2

    cmpl-float v1, v6, v1

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v0, v1, v0

    int-to-float v0, v0

    cmpg-float v0, v6, v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ay;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->m(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ay;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->m(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ay;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->m(Lcom/adsmogo/adapters/api/PublicCustomAdapter;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ay;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-static {v0, v9, v9}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;II)V

    :cond_0
    :goto_1
    return v9

    :catch_0
    move-exception v1

    const-string v3, "AdsMOGO SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "get xy err:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v2

    move v3, v2

    move v2, v0

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/ay;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/0?cp="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    float-to-int v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsmogo/model/obj/Ration;->cc:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ay;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->d()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/ay;->a:Lcom/adsmogo/adapters/api/PublicCustomAdapter;

    float-to-int v1, v5

    float-to-int v2, v6

    invoke-static {v0, v1, v2}, Lcom/adsmogo/adapters/api/PublicCustomAdapter;->a(Lcom/adsmogo/adapters/api/PublicCustomAdapter;II)V

    goto :goto_1

    :cond_3
    move v1, v2

    move v3, v2

    move v2, v0

    goto/16 :goto_0
.end method
