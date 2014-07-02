.class final Lcom/adsmogo/adapters/api/M;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/M;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s succeed"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getImp_url()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adsmogo/adapters/api/G;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/S2sEntity;->getImp_url()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/adsmogo/adapters/api/G;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/G;->start()V

    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 11

    const/4 v4, 0x3

    const/16 v2, 0x20

    const/16 v0, 0xa

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v1, "adsmogo://www.adsmogo.com"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, "adsmogo://www.adsmogo.com?action=load"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->g(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;I)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->g(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->f(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s succeed"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-virtual {v0, v5, p1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/S2sEntity;->getImp_url()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adsmogo/adapters/api/G;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/S2sEntity;->getImp_url()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/adsmogo/adapters/api/G;-><init>(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/G;->start()V

    :cond_0
    :goto_0
    move v0, v5

    :goto_1
    return v0

    :cond_1
    const-string v0, "adsmogo://www.adsmogo.com?action=error"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s img err"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(ZLandroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nonsupport url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v0, "AdsMOGO SDK"

    const-string v1, "s2s shouldOverrideUrlLoading err:adsmogoJs<=0"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/S2sEntity;->getType()I

    move-result v1

    const/16 v3, 0x41b

    if-eq v1, v3, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/S2sEntity;->getType()I

    move-result v1

    const/16 v3, 0x803

    if-ne v1, v3, :cond_7

    :cond_6
    move v0, v5

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/S2sEntity;->isCc()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v1, p2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->h(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Z

    move-result v1

    if-nez v1, :cond_8

    move v0, v5

    goto :goto_1

    :cond_8
    :try_start_0
    iget-object v1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/S2sEntity;->getCc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/S2sEntity;->getCc()Ljava/lang/String;

    move-result-object v1

    const-string v3, "cc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Lcom/adsmogo/model/obj/S2sEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/S2sEntity;->getCc()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v1, v7

    if-le v1, v4, :cond_c

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

    :goto_2
    iget-object v4, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    iget-wide v7, v4, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a:D

    invoke-static {v3, v7, v8}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v3

    iget-object v4, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    iget-wide v7, v4, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a:D

    invoke-static {v2, v7, v8}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v2

    iget-object v4, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    iget-wide v7, v4, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a:D

    invoke-static {v1, v7, v8}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v1

    iget-object v4, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    iget-wide v7, v4, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a:D

    invoke-static {v0, v7, v8}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    const-string v4, "AdsMOGO SDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ad onTouch , touchX:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v8}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",touchY:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v8}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->j(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

    iget-object v4, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v4}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)F

    move-result v4

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_a

    iget-object v3, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v3}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)F

    move-result v3

    float-to-double v3, v3

    iget-object v7, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    iget-wide v7, v7, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->b:D

    int-to-double v9, v1

    sub-double/2addr v7, v9

    cmpg-double v1, v3, v7

    if-gtz v1, :cond_a

    iget-object v1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->j(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)F

    move-result v1

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_a

    iget-object v1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->j(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)F

    move-result v1

    float-to-double v1, v1

    iget-object v3, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    iget-wide v3, v3, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->c:D

    int-to-double v7, v0

    sub-double/2addr v3, v7

    cmpg-double v0, v1, v3

    if-gtz v0, :cond_a

    iget-object v0, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->k(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0, v6, v6}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;II)V

    move v0, v6

    goto/16 :goto_1

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

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/0?cp="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->j(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsmogo/model/obj/Ration;->cc:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0, p2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->c(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Ljava/lang/String;)V

    :goto_3
    move v0, v5

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->i(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->j(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->a(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;II)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/adsmogo/adapters/api/M;->a:Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;

    invoke-static {v0, p2}, Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;->c(Lcom/adsmogo/adapters/api/AdsMogoS2sAdapter;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move v1, v2

    move v3, v2

    move v2, v0

    goto/16 :goto_2
.end method
