.class public Lcom/adsmogo/adview/AdsMogoWebView;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Lcom/adsmogo/adview/y;

.field c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Z

.field private j:Landroid/graphics/drawable/BitmapDrawable;

.field private k:Landroid/graphics/drawable/BitmapDrawable;

.field private l:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->c:Z

    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adview/AdsMogoWebView;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/adsmogo/adview/AdsMogoWebView;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    const-string v1, "tel:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/adsmogo/adview/AdsMogoWebView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "open tel err:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "market://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/adsmogo/adview/AdsMogoWebView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/adsmogo/adview/AdsMogoWebView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "\u65e0\u53ef\u7528\u5e02\u573a"

    const/16 v2, 0xc8

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/adview/AdsMogoWebView;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->k:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->l:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->l:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/com/adsmogo/assets/webview_bar_bgimg.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "webview_bar_bgimg.png"

    invoke-static {p0, v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->j:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/com/adsmogo/assets/webview_bar_bgimg_prs.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "webview_bar_bgimg_prs.png"

    invoke-static {p0, v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->k:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/com/adsmogo/assets/webview_bar_back_grey.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "webview_bar_back_grey.png"

    invoke-static {p0, v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "/com/adsmogo/assets/webview_bar_next_grey.png"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "webview_bar_next_grey.png"

    invoke-static {p0, v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_3
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "/com/adsmogo/assets/webview_bar_pause.png"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "webview_bar_pause.png"

    invoke-static {p0, v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_4
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "/com/adsmogo/assets/webview_bar_share.png"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "webview_bar_share.png"

    invoke-static {p0, v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_5
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "/com/adsmogo/assets/webview_bar_close.png"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "webview_bar_close.png"

    invoke-static {p0, v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_6
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->j:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/16 v8, 0xc

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->j:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->h:Landroid/widget/ImageView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->j:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/16 v6, 0xc

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->j:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/adsmogo/adview/v;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/v;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/16 v4, 0xc

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setId(I)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoWebView;->j:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/adsmogo/adview/v;

    invoke-direct {v2, p0}, Lcom/adsmogo/adview/v;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v2, 0x0

    const/16 v3, 0xc

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    invoke-virtual {p1, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoWebView;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/adsmogo/adview/AdsMogoWebView;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->j:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-direct {p0}, Lcom/adsmogo/adview/AdsMogoWebView;->a()V

    iget-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->i:Z

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/adsmogo/controller/j;->a()Lcom/adsmogo/controller/j;

    invoke-static {}, Lcom/adsmogo/controller/j;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adsmogo/controller/j;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->onPageComplete()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/adsmogo/adview/AdsMogoWebView;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoWebView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "\u9009\u62e9\u5206\u4eab\u65b9\u5f0f"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsmogo/adview/AdsMogoWebView;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d(Lcom/adsmogo/adview/AdsMogoWebView;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->c:Z

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/com/adsmogo/assets/webview_bar_back.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "webview_bar_back.png"

    invoke-static {p0, v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/adsmogo/adview/v;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/v;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/com/adsmogo/assets/webview_bar_next.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "webview_bar_next.png"

    invoke-static {p0, v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/adsmogo/adview/v;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/v;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/com/adsmogo/assets/webview_bar_refresh.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "webview_bar_refresh.png"

    invoke-static {p0, v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->h:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->h:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/adsmogo/adview/v;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/v;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/com/adsmogo/assets/webview_bar_back_grey.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "webview_bar_back_grey.png"

    invoke-static {p0, v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/com/adsmogo/assets/webview_bar_next_grey.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "webview_bar_next_grey.png"

    invoke-static {p0, v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_6
    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method static synthetic e(Lcom/adsmogo/adview/AdsMogoWebView;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->c:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/com/adsmogo/assets/webview_bar_pause.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "webview_bar_pause.png"

    invoke-static {p0, v0}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->h:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->h:Landroid/widget/ImageView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/adsmogo/adview/v;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/v;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/adsmogo/adview/AdsMogoWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsmogo/adview/AdsMogoWebView;->b()V

    return-void
.end method

.method static synthetic g(Lcom/adsmogo/adview/AdsMogoWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsmogo/adview/AdsMogoWebView;->b()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/16 v10, 0x33

    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v11, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/adsmogo/util/AdsMogoScreenCalc;->getDensity(Landroid/app/Activity;)D

    move-result-wide v0

    const/16 v2, 0x2b

    invoke-static {v2, v0, v1}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v2

    int-to-double v2, v2

    const/16 v4, 0xa

    invoke-static {v4, v0, v1}, Lcom/adsmogo/util/AdsMogoScreenCalc;->convertToScreenPixels(ID)I

    move-result v0

    int-to-double v0, v0

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    double-to-int v0, v0

    invoke-direct {v6, v11, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v0, Lcom/adsmogo/adview/y;

    invoke-direct {v0, p0}, Lcom/adsmogo/adview/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->b:Lcom/adsmogo/adview/y;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->b:Lcom/adsmogo/adview/y;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adsmogo/adview/y;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x2

    invoke-virtual {v1, v7, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    double-to-int v8, v2

    invoke-direct {v7, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v8, Landroid/webkit/WebView;

    invoke-direct {v8, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    double-to-int v2, v2

    const/high16 v3, 0x3f800000

    invoke-direct {v9, v10, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v2, 0x10

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-direct {p0, v8, v9}, Lcom/adsmogo/adview/AdsMogoWebView;->a(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    invoke-virtual {v0, v8, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->b:Lcom/adsmogo/adview/y;

    invoke-virtual {v4, v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v0}, Lcom/adsmogo/adview/AdsMogoWebView;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsmogo/adview/x;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/x;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Lcom/adsmogo/adview/AdsMogoWebView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "link"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->e:Ljava/lang/String;

    const-string v1, "sendClickSingleton"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->l:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->l:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->l:Ljava/util/Timer;

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->l:Ljava/util/Timer;

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->l:Ljava/util/Timer;

    new-instance v1, Lcom/adsmogo/adview/t;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/t;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adsmogo/adview/AdsMogoWebView;->a(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v11, :cond_2

    invoke-direct {p0}, Lcom/adsmogo/adview/AdsMogoWebView;->b()V

    invoke-virtual {p0}, Lcom/adsmogo/adview/AdsMogoWebView;->finish()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsmogo/adview/u;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/u;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/adsmogo/adview/w;

    invoke-direct {v1, p0}, Lcom/adsmogo/adview/w;-><init>(Lcom/adsmogo/adview/AdsMogoWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v0, v12}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v12}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    invoke-virtual {v0, v12}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v12}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/webkit/WebSettings;Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-direct {p0}, Lcom/adsmogo/adview/AdsMogoWebView;->a()V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->a:Landroid/webkit/WebView;

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adview/AdsMogoWebView;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/adsmogo/controller/j;->a()Lcom/adsmogo/controller/j;

    invoke-static {}, Lcom/adsmogo/controller/j;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/adsmogo/controller/j;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/adview/AdsMogoWebView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
