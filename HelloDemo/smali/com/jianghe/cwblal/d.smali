.class public Lcom/jianghe/cwblal/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/jianghe/cwblal/Bona;


# direct methods
.method public constructor <init>(Lcom/jianghe/cwblal/Bona;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/cwblal/d;->a:Lcom/jianghe/cwblal/Bona;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object v0, p0, Lcom/jianghe/cwblal/d;->a:Lcom/jianghe/cwblal/Bona;

    invoke-static {v0}, Lcom/jianghe/cwblal/Bona;->b(Lcom/jianghe/cwblal/Bona;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/jianghe/cwblal/b/b;

    iget-object v0, v5, Lcom/jianghe/cwblal/b/b;->b:Ljava/lang/String;

    iget v1, v5, Lcom/jianghe/cwblal/b/b;->e:I

    iget-object v2, p0, Lcom/jianghe/cwblal/d;->a:Lcom/jianghe/cwblal/Bona;

    iget-object v3, p0, Lcom/jianghe/cwblal/d;->a:Lcom/jianghe/cwblal/Bona;

    invoke-static {v3}, Lcom/jianghe/cwblal/Bona;->a(Lcom/jianghe/cwblal/Bona;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/jianghe/cwblal/c/e;->a(Landroid/content/Context;)Lcom/jianghe/cwblal/c/e;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jianghe/cwblal/Bona;->a(Lcom/jianghe/cwblal/Bona;Lcom/jianghe/cwblal/c/e;)Lcom/jianghe/cwblal/c/e;

    sget-object v2, Lcom/jianghe/cwblal/c/e;->c:Ljava/util/List;

    iget-object v3, v5, Lcom/jianghe/cwblal/b/b;->f:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v5, Lcom/jianghe/cwblal/b/b;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/jianghe/cwblal/d;->a:Lcom/jianghe/cwblal/Bona;

    invoke-static {v1}, Lcom/jianghe/cwblal/Bona;->a(Lcom/jianghe/cwblal/Bona;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jianghe/cwblal/c/h;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/jianghe/cwblal/d;->a:Lcom/jianghe/cwblal/Bona;

    invoke-static {v2}, Lcom/jianghe/cwblal/Bona;->c(Lcom/jianghe/cwblal/Bona;)Lcom/jianghe/cwblal/c/e;

    move-result-object v2

    iget-object v3, p0, Lcom/jianghe/cwblal/d;->a:Lcom/jianghe/cwblal/Bona;

    invoke-static {v3}, Lcom/jianghe/cwblal/Bona;->c(Lcom/jianghe/cwblal/Bona;)Lcom/jianghe/cwblal/c/e;

    invoke-static {v0}, Lcom/jianghe/cwblal/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/jianghe/cwblal/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/jianghe/cwblal/c/e;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/jianghe/cwblal/d;->a:Lcom/jianghe/cwblal/Bona;

    invoke-static {v2}, Lcom/jianghe/cwblal/Bona;->a(Lcom/jianghe/cwblal/Bona;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/jianghe/cwblal/c/h;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/jianghe/cwblal/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/jianghe/cwblal/c/h;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/jianghe/cwblal/d;->a:Lcom/jianghe/cwblal/Bona;

    invoke-static {v1}, Lcom/jianghe/cwblal/Bona;->a(Lcom/jianghe/cwblal/Bona;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, v5, Lcom/jianghe/cwblal/b/b;->f:Ljava/lang/String;

    iget v4, v5, Lcom/jianghe/cwblal/b/b;->e:I

    iget-object v5, v5, Lcom/jianghe/cwblal/b/b;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/jianghe/cwblal/a/b;->a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, v5, Lcom/jianghe/cwblal/b/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/jianghe/cwblal/d;->a:Lcom/jianghe/cwblal/Bona;

    invoke-static {v2}, Lcom/jianghe/cwblal/Bona;->a(Lcom/jianghe/cwblal/Bona;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v2, v1, v5}, Lcom/jianghe/cwblal/c/h;->a(Ljava/lang/String;Landroid/content/Context;ILcom/jianghe/cwblal/b/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/jianghe/cwblal/d;->a:Lcom/jianghe/cwblal/Bona;

    invoke-static {v1}, Lcom/jianghe/cwblal/Bona;->a(Lcom/jianghe/cwblal/Bona;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/jianghe/cwblal/c/h;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/jianghe/cwblal/a/c;->b:Ljava/util/Map;

    iget-object v2, v5, Lcom/jianghe/cwblal/b/b;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/jianghe/cwblal/a/c;->b:Ljava/util/Map;

    iget-object v2, v5, Lcom/jianghe/cwblal/b/b;->b:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v6, v5, Lcom/jianghe/cwblal/b/b;->b:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x1

    iget-object v6, v5, Lcom/jianghe/cwblal/b/b;->f:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/jianghe/cwblal/b/b;->e:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget-object v6, v5, Lcom/jianghe/cwblal/b/b;->d:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/jianghe/cwblal/a/i;->a:Ljava/util/Map;

    iget-object v2, v5, Lcom/jianghe/cwblal/b/b;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    sget-object v2, Lcom/jianghe/cwblal/c/b;->az:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    sget-object v1, Lcom/jianghe/cwblal/a/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_5

    iget-object v0, v5, Lcom/jianghe/cwblal/b/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/jianghe/cwblal/d;->a:Lcom/jianghe/cwblal/Bona;

    invoke-static {v1}, Lcom/jianghe/cwblal/Bona;->a(Lcom/jianghe/cwblal/Bona;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, v5, Lcom/jianghe/cwblal/b/b;->f:Ljava/lang/String;

    iget v4, v5, Lcom/jianghe/cwblal/b/b;->e:I

    iget-object v5, v5, Lcom/jianghe/cwblal/b/b;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/jianghe/cwblal/a/b;->a(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/jianghe/cwblal/d;->a:Lcom/jianghe/cwblal/Bona;

    invoke-static {v1}, Lcom/jianghe/cwblal/Bona;->d(Lcom/jianghe/cwblal/Bona;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/jianghe/cwblal/d;->a:Lcom/jianghe/cwblal/Bona;

    invoke-static {v1}, Lcom/jianghe/cwblal/Bona;->d(Lcom/jianghe/cwblal/Bona;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v1, v5, Lcom/jianghe/cwblal/b/b;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/jianghe/cwblal/d;->a:Lcom/jianghe/cwblal/Bona;

    invoke-static {v2}, Lcom/jianghe/cwblal/Bona;->d(Lcom/jianghe/cwblal/Bona;)Ljava/util/Map;

    move-result-object v2

    iget v3, v5, Lcom/jianghe/cwblal/b/b;->e:I

    iget-object v4, v5, Lcom/jianghe/cwblal/b/b;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/jianghe/cwblal/a/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/jianghe/cwblal/d;->a:Lcom/jianghe/cwblal/Bona;

    invoke-static {v0}, Lcom/jianghe/cwblal/Bona;->a(Lcom/jianghe/cwblal/Bona;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/jianghe/cwblal/c/h;->h(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
