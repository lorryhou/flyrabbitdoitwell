.class final Lcom/jianghe/cwblal/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/jianghe/cwblal/Bons;


# direct methods
.method public constructor <init>(Lcom/jianghe/cwblal/Bons;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/jianghe/cwblal/f;->a:Lcom/jianghe/cwblal/Bons;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/jianghe/cwblal/f;->a:Lcom/jianghe/cwblal/Bons;

    invoke-static {v0}, Lcom/jianghe/cwblal/Bons;->a(Lcom/jianghe/cwblal/Bons;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jianghe/cwblal/f;->a:Lcom/jianghe/cwblal/Bons;

    invoke-static {v0}, Lcom/jianghe/cwblal/Bons;->b(Lcom/jianghe/cwblal/Bons;)V

    iget-object v0, p0, Lcom/jianghe/cwblal/f;->a:Lcom/jianghe/cwblal/Bons;

    invoke-static {v0}, Lcom/jianghe/cwblal/Bons;->c(Lcom/jianghe/cwblal/Bons;)Lcom/jianghe/cwblal/f;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v5, v1, v2}, Lcom/jianghe/cwblal/f;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/jianghe/cwblal/f;->a:Lcom/jianghe/cwblal/Bons;

    invoke-static {v0}, Lcom/jianghe/cwblal/Bons;->d(Lcom/jianghe/cwblal/Bons;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jianghe/cwblal/c/i;->a(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/jianghe/cwblal/f;->a:Lcom/jianghe/cwblal/Bons;

    invoke-static {v2}, Lcom/jianghe/cwblal/Bons;->d(Lcom/jianghe/cwblal/Bons;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/jianghe/cwblal/c/h;->l(Landroid/content/Context;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v2, p0, Lcom/jianghe/cwblal/f;->a:Lcom/jianghe/cwblal/Bons;

    invoke-static {v2}, Lcom/jianghe/cwblal/Bons;->d(Lcom/jianghe/cwblal/Bons;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/jianghe/cwblal/c/b;->by:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/jianghe/cwblal/c/b;->y:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v0, v3, :cond_1

    if-eq v3, v4, :cond_1

    invoke-static {}, Lcom/jianghe/cwblal/d/c;->a()V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/jianghe/cwblal/c/b;->y:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    div-int/lit8 v0, v1, 0x2

    iget-object v1, p0, Lcom/jianghe/cwblal/f;->a:Lcom/jianghe/cwblal/Bons;

    invoke-static {v1}, Lcom/jianghe/cwblal/Bons;->d(Lcom/jianghe/cwblal/Bons;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5, v0}, Lcom/jianghe/cwblal/c/h;->a(Landroid/content/Context;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v3, v4, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/jianghe/cwblal/c/b;->y:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
