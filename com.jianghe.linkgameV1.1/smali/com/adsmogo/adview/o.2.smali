.class final Lcom/adsmogo/adview/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/adsmogo/adview/AdsMogoLayout;

.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:Z

.field private synthetic i:Lcom/adsmogo/adview/AdsMogoLayout;


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/adview/AdsMogoLayout;Landroid/app/Activity;Ljava/lang/String;IZIIZ)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/adsmogo/adview/o;->f:I

    iput v0, p0, Lcom/adsmogo/adview/o;->g:I

    iput-boolean v0, p0, Lcom/adsmogo/adview/o;->h:Z

    iput-object p2, p0, Lcom/adsmogo/adview/o;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    iput-object p3, p0, Lcom/adsmogo/adview/o;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/adsmogo/adview/o;->c:Ljava/lang/String;

    iput p5, p0, Lcom/adsmogo/adview/o;->d:I

    iput-boolean p6, p0, Lcom/adsmogo/adview/o;->e:Z

    iput p7, p0, Lcom/adsmogo/adview/o;->f:I

    iput p8, p0, Lcom/adsmogo/adview/o;->g:I

    iput-boolean p9, p0, Lcom/adsmogo/adview/o;->h:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    new-instance v1, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-direct {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;-><init>()V

    iput-object v1, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v0, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, p0, Lcom/adsmogo/adview/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setAppid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget v1, p0, Lcom/adsmogo/adview/o;->d:I

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setAdType(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-boolean v1, p0, Lcom/adsmogo/adview/o;->e:Z

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setExpressMode(Z)V

    iget-object v0, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget v1, p0, Lcom/adsmogo/adview/o;->f:I

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setWidth(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget v1, p0, Lcom/adsmogo/adview/o;->g:I

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setHeight(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-boolean v1, p0, Lcom/adsmogo/adview/o;->h:Z

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setRotate_DEFINED_AD(Z)V

    iget-object v0, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, p0, Lcom/adsmogo/adview/o;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/adsmogo/controller/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setCountryCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v1, p0, Lcom/adsmogo/adview/o;->b:Landroid/app/Activity;

    invoke-static {v1}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getPngSize(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->setPngSize(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    new-instance v1, Lcom/adsmogo/adview/l;

    iget-object v2, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {v1, v2}, Lcom/adsmogo/adview/l;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;)V

    iput-object v1, v0, Lcom/adsmogo/adview/AdsMogoLayout;->b:Lcom/adsmogo/adview/l;

    iget-object v0, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adview/n;

    iget-object v2, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v3, p0, Lcom/adsmogo/adview/o;->a:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {v1, v2, v3}, Lcom/adsmogo/adview/n;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/adview/AdsMogoLayout;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->scheduler:Lcom/adsmogo/util/e;

    new-instance v1, Lcom/adsmogo/adview/m;

    iget-object v2, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {v1, v2}, Lcom/adsmogo/adview/m;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-virtual {v0, v4}, Lcom/adsmogo/adview/AdsMogoLayout;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-virtual {v0, v4}, Lcom/adsmogo/adview/AdsMogoLayout;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/adsmogo/adview/o;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getPngSize(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/com/adsmogo/assets/adsmogo_ad_close_h.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/o;->b:Landroid/app/Activity;

    const-string v1, "adsmogo_ad_close_h.png"

    invoke-static {v0, v1}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/adsmogo/adview/o;->i:Lcom/adsmogo/adview/AdsMogoLayout;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v1, Lcom/adsmogo/adview/AdsMogoLayout;->c:Landroid/graphics/drawable/BitmapDrawable;

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/com/adsmogo/assets/adsmogo_ad_close.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/o;->b:Landroid/app/Activity;

    const-string v1, "adsmogo_ad_close.png"

    invoke-static {v0, v1}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
