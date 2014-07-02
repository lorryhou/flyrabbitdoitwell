.class public final Lcom/adsmogo/controller/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

.field private b:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

.field private c:Ljava/util/ArrayList;

.field private d:I

.field private e:I

.field private f:Lcom/adsmogo/model/obj/Ration;

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:I

.field private l:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/adsmogo/controller/l;->c:Ljava/util/ArrayList;

    iput v0, p0, Lcom/adsmogo/controller/l;->d:I

    iput v0, p0, Lcom/adsmogo/controller/l;->e:I

    iput-object v1, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    iput v2, p0, Lcom/adsmogo/controller/l;->g:I

    iput v0, p0, Lcom/adsmogo/controller/l;->h:I

    iput v0, p0, Lcom/adsmogo/controller/l;->i:I

    iput-boolean v2, p0, Lcom/adsmogo/controller/l;->j:Z

    iput-object v1, p0, Lcom/adsmogo/controller/l;->l:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/adsmogo/controller/l;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-direct {p0, p1}, Lcom/adsmogo/controller/l;->a(Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/ArrayList;)I
    .locals 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/model/obj/Ration;

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;I)Lcom/adsmogo/model/obj/Ration;
    .locals 8

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/2addr v0, p2

    add-int/lit8 v2, v0, 0x1

    const-string v0, "AdsMOGO SDK"

    const-string v1, "rotate by Weight"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "dart is <"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "> of <"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/model/obj/Ration;

    int-to-double v4, v1

    iget-wide v6, v0, Lcom/adsmogo/model/obj/Ration;->weight:D

    add-double/2addr v4, v6

    double-to-int v1, v4

    if-lt v1, v2, :cond_0

    goto :goto_0
.end method

.method private a(Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v1, v0}, Lcom/adsmogo/model/AdsMogoConfigDataList;->a(Z)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v1

    iput-object v1, p0, Lcom/adsmogo/controller/l;->b:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    iget-object v1, p0, Lcom/adsmogo/controller/l;->b:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adsmogo/controller/l;->b:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/adsmogo/controller/l;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adsmogo/controller/l;->b:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Lcom/adsmogo/model/obj/Extra;->adFirst:I

    iput v2, p0, Lcom/adsmogo/controller/l;->d:I

    iget v1, v1, Lcom/adsmogo/model/obj/Extra;->improveClick:I

    if-ne v1, v0, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/adsmogo/controller/l;->j:Z

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/controller/l;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/adsmogo/controller/l;->a(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lcom/adsmogo/controller/l;->g:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/adsmogo/controller/l;->k:I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/util/ArrayList;I)Lcom/adsmogo/model/obj/Ration;
    .locals 3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "rotate by Priority"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "curPriority is:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/model/obj/Ration;

    iget v2, v0, Lcom/adsmogo/model/obj/Ration;->priority:I

    if-le v2, p1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)Lcom/adsmogo/model/obj/Ration;
    .locals 12

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/adsmogo/controller/l;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-direct {p0, v0}, Lcom/adsmogo/controller/l;->a(Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;)V

    iget-object v0, p0, Lcom/adsmogo/controller/l;->b:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/controller/l;->b:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/controller/l;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/adsmogo/controller/l;->b:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/adsmogo/model/obj/Extra;->adFirst:I

    iput v3, p0, Lcom/adsmogo/controller/l;->d:I

    iget v0, v0, Lcom/adsmogo/model/obj/Extra;->improveClick:I

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/adsmogo/controller/l;->j:Z

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/controller/l;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/controller/l;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/adsmogo/controller/l;->a(Ljava/util/ArrayList;)I

    move-result v0

    iput v0, p0, Lcom/adsmogo/controller/l;->g:I

    :cond_1
    iput v5, p0, Lcom/adsmogo/controller/l;->h:I

    iput v5, p0, Lcom/adsmogo/controller/l;->i:I

    iput v5, p0, Lcom/adsmogo/controller/l;->e:I

    :cond_2
    iget-boolean v0, p0, Lcom/adsmogo/controller/l;->j:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    iget v0, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    iput v0, p0, Lcom/adsmogo/controller/l;->k:I

    :cond_3
    iget-object v0, p0, Lcom/adsmogo/controller/l;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/controller/l;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/controller/l;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iput-object v4, p0, Lcom/adsmogo/controller/l;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/controller/l;->l:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/adsmogo/controller/l;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/adsmogo/controller/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v4

    move-object v5, v4

    move v6, v2

    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_2
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/adsmogo/controller/l;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v1, p0, Lcom/adsmogo/controller/l;->l:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/model/obj/Ration;

    iget v2, v0, Lcom/adsmogo/model/obj/Ration;->priority:I

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_7
    iget-object v0, p0, Lcom/adsmogo/controller/l;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_10

    if-nez v5, :cond_10

    :goto_4
    return-object v4

    :cond_8
    move v0, v2

    goto/16 :goto_0

    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/model/obj/Ration;

    iget v8, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    iget v9, v0, Lcom/adsmogo/model/obj/Ration;->priority:I

    iget v10, p0, Lcom/adsmogo/controller/l;->d:I

    if-ne v8, v10, :cond_a

    move-object v5, v0

    goto :goto_1

    :cond_a
    if-nez p1, :cond_b

    iget v10, p0, Lcom/adsmogo/controller/l;->h:I

    if-ne v10, v8, :cond_b

    iget v8, p0, Lcom/adsmogo/controller/l;->i:I

    if-eq v8, v9, :cond_5

    :cond_b
    iget v8, p0, Lcom/adsmogo/controller/l;->k:I

    iget v9, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    if-ne v8, v9, :cond_c

    iget-object v8, p0, Lcom/adsmogo/controller/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v8, v1, :cond_c

    iget v8, p0, Lcom/adsmogo/controller/l;->g:I

    if-ne v8, v1, :cond_d

    :cond_c
    iget-object v8, p0, Lcom/adsmogo/controller/l;->l:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-double v8, v6

    iget-wide v10, v0, Lcom/adsmogo/model/obj/Ration;->weight:D

    add-double/2addr v8, v10

    double-to-int v0, v8

    move v6, v0

    goto :goto_1

    :cond_d
    if-nez v3, :cond_e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/model/obj/Ration;

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/adsmogo/model/obj/Ration;->priority:I

    iget-object v7, p0, Lcom/adsmogo/controller/l;->l:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_10
    if-eqz v5, :cond_14

    if-eqz p1, :cond_12

    iput-object v5, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    :cond_11
    :goto_5
    iget-object v4, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    goto :goto_4

    :cond_12
    if-lez v6, :cond_13

    iget-object v0, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    iget v0, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    iget v1, v5, Lcom/adsmogo/model/obj/Ration;->type:I

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/adsmogo/controller/l;->l:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v6}, Lcom/adsmogo/controller/l;->a(Ljava/util/ArrayList;I)Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    iget-object v0, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    iget v0, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    iput v0, p0, Lcom/adsmogo/controller/l;->h:I

    iget-object v0, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    iget v0, v0, Lcom/adsmogo/model/obj/Ration;->priority:I

    iput v0, p0, Lcom/adsmogo/controller/l;->i:I

    goto :goto_5

    :cond_13
    iget-object v0, p0, Lcom/adsmogo/controller/l;->l:Ljava/util/ArrayList;

    iget v1, p0, Lcom/adsmogo/controller/l;->e:I

    invoke-static {v0, v1}, Lcom/adsmogo/controller/l;->b(Ljava/util/ArrayList;I)Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    iget-object v0, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    iget v0, v0, Lcom/adsmogo/model/obj/Ration;->priority:I

    iput v0, p0, Lcom/adsmogo/controller/l;->e:I

    goto :goto_5

    :cond_14
    if-eqz p1, :cond_15

    if-lez v6, :cond_15

    iget-object v0, p0, Lcom/adsmogo/controller/l;->l:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v6}, Lcom/adsmogo/controller/l;->a(Ljava/util/ArrayList;I)Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    iget-object v0, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    iget v0, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    iput v0, p0, Lcom/adsmogo/controller/l;->h:I

    iget-object v0, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    iget v0, v0, Lcom/adsmogo/model/obj/Ration;->priority:I

    iput v0, p0, Lcom/adsmogo/controller/l;->i:I

    goto :goto_5

    :cond_15
    iget-object v0, p0, Lcom/adsmogo/controller/l;->l:Ljava/util/ArrayList;

    iget v1, p0, Lcom/adsmogo/controller/l;->e:I

    invoke-static {v0, v1}, Lcom/adsmogo/controller/l;->b(Ljava/util/ArrayList;I)Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    iget-object v0, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/adsmogo/controller/l;->f:Lcom/adsmogo/model/obj/Ration;

    iget v0, v0, Lcom/adsmogo/model/obj/Ration;->priority:I

    iput v0, p0, Lcom/adsmogo/controller/l;->e:I

    goto :goto_5

    :cond_16
    move-object v3, v4

    move-object v5, v4

    move v6, v2

    goto/16 :goto_2
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/l;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/l;->a:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-direct {p0, v0}, Lcom/adsmogo/controller/l;->a(Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/adsmogo/controller/l;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/controller/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rationManager isHaveValidRations err:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
