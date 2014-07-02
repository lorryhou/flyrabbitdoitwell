.class public Lcom/adsmogo/mriad/view/AdsMogoRMWebView;
.super Landroid/webkit/WebView;


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "action"

.field public static final DIMENSIONS:Ljava/lang/String; = "expand_dimensions"

.field public static final EXPAND_URL:Ljava/lang/String; = "expand_url"

.field public static final PLAYER_PROPERTIES:Ljava/lang/String; = "player_properties"

.field private static h:Lcom/adsmogo/mriad/util/AdsMogoPlayer;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

.field private i:Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;

.field private j:F

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Landroid/webkit/WebViewClient;

.field private t:Landroid/webkit/WebChromeClient;

.field private u:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->c:Z

    iput-boolean v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->d:Z

    iput-boolean v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->e:Z

    iput-boolean v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->f:Z

    sget-object v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->DEFAULT:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    iput-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->p:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    const-string v0, "inline"

    iput-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->q:Ljava/lang/String;

    new-instance v0, Lcom/adsmogo/mriad/view/b;

    invoke-direct {v0, p0}, Lcom/adsmogo/mriad/view/b;-><init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)V

    iput-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->s:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/adsmogo/mriad/view/c;

    invoke-direct {v0, p0}, Lcom/adsmogo/mriad/view/c;-><init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)V

    iput-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->t:Landroid/webkit/WebChromeClient;

    new-instance v0, Lcom/adsmogo/mriad/view/d;

    invoke-direct {v0, p0}, Lcom/adsmogo/mriad/view/d;-><init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)V

    iput-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->c:Z

    iput-boolean v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->d:Z

    iput-boolean v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->e:Z

    iput-boolean v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->f:Z

    sget-object v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->DEFAULT:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    iput-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->p:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    const-string v0, "inline"

    iput-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->q:Ljava/lang/String;

    new-instance v0, Lcom/adsmogo/mriad/view/b;

    invoke-direct {v0, p0}, Lcom/adsmogo/mriad/view/b;-><init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)V

    iput-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->s:Landroid/webkit/WebViewClient;

    new-instance v0, Lcom/adsmogo/mriad/view/c;

    invoke-direct {v0, p0}, Lcom/adsmogo/mriad/view/c;-><init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)V

    iput-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->t:Landroid/webkit/WebChromeClient;

    new-instance v0, Lcom/adsmogo/mriad/view/d;

    invoke-direct {v0, p0}, Lcom/adsmogo/mriad/view/d;-><init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)V

    iput-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->setMogoRmListener(Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;)V

    invoke-direct {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->g:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    return-object v0
.end method

.method static synthetic a(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->k:I

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;Landroid/os/Bundle;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v11, -0x1

    const-string v0, "expand_dimensions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;

    const-string v1, "expand_url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "expand_properties"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Properties;

    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_6

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    iget-boolean v3, v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Properties;->useBG:Z

    if-eqz v3, :cond_1

    iget v3, v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Properties;->bgColor:I

    iget v4, v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Properties;->bgOpacity:F

    const/high16 v5, 0x437f0000

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/high16 v5, 0x10000000

    mul-int/2addr v4, v5

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :cond_1
    iget-boolean v1, v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Properties;->useCustomClose:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "/com/adsmogo/assets/adsmogo_rm_closeBtn.png"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "webview_bar_bgimg.png"

    invoke-static {v1, v3}, Lcom/adsmogo/util/AdsMogoUtilTool;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/adsmogo/mriad/view/e;

    invoke-direct {v4, p0}, Lcom/adsmogo/mriad/view/e;-><init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v4, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v4, v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xb

    invoke-virtual {v4, v3, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v2, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mogoview.fireChangeEvent({ state: \'expanded\', size: { width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->w:I

    int-to-float v2, v2

    iget v3, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->j:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->h:I

    int-to-float v0, v0

    iget v2, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->j:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} });"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doExpand: injection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->injectJavaScript(Ljava/lang/String;)V

    invoke-direct {p0, v12, v12}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a(ZZ)V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->g:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->g:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    invoke-interface {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;->onExpand()Z

    :cond_4
    sget-object v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->EXPANDED:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    iput-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->p:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    :cond_5
    return-void

    :cond_6
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v0, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->w:I

    iget v7, v0, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->h:I

    invoke-direct {v6, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v4, v0, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->x:I

    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v4, v0, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->y:I

    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v4, v5

    :goto_2
    if-lt v4, v7, :cond_8

    :cond_7
    iput v4, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->o:I

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getHeight()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v7, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/adsmogo/mriad/view/h;

    invoke-direct {v4, p0}, Lcom/adsmogo/mriad/view/h;-><init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x65

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setId(I)V

    iget v7, v0, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->x:I

    iget v8, v0, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->y:I

    invoke-virtual {v3, v7, v8, v5, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {v3, p0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v3

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eq v8, p0, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->p:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mark:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isExpand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",beforeState playStop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expandStop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->c:Z

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz p2, :cond_4

    iput-boolean p1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->c:Z

    :goto_1
    iget-boolean v1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->d:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->c:Z

    if-eqz v1, :cond_5

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->g:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    if-eqz v0, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "RM onAdStop"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->g:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    invoke-interface {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;->onAdStop()V

    :cond_2
    :goto_2
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "newState playStop:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expandStop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iput-boolean p1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->d:Z

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->g:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    if-eqz v0, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "RM onAdStart"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->g:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    invoke-interface {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;->onAdStart()V

    goto :goto_2
.end method

.method static synthetic b(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)F
    .locals 1

    iget v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->j:F

    return v0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->setScrollContainer(Z)V

    invoke-virtual {p0, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->setBackgroundColor(I)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->j:F

    new-instance v0, Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;-><init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->i:Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->i:Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;

    const-string v1, "ADSMOGOSendControllerBridge"

    invoke-virtual {p0, v0, v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->s:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->t:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method static synthetic b(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->l:I

    return-void
.end method

.method static synthetic c(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->i:Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;

    return-object v0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->g:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->g:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    invoke-interface {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;->onResizeClose()Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mogoview.fireChangeEvent({ state: \'default\', size: { width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "closeResized: injection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->injectJavaScript(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->d()V

    return-void
.end method

.method static synthetic d(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->q:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->r:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->m:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->n:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->requestLayout()V

    return-void
.end method

.method private e()Lcom/adsmogo/mriad/util/AdsMogoPlayer;
    .locals 2

    sget-object v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->h:Lcom/adsmogo/mriad/util/AdsMogoPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->h:Lcom/adsmogo/mriad/util/AdsMogoPlayer;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/util/AdsMogoPlayer;->releasePlayer()V

    :cond_0
    new-instance v0, Lcom/adsmogo/mriad/util/AdsMogoPlayer;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adsmogo/mriad/util/AdsMogoPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->h:Lcom/adsmogo/mriad/util/AdsMogoPlayer;

    return-object v0
.end method

.method static synthetic e(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->p:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    return-object v0
.end method

.method static synthetic f(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->c()V

    return-void
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->resetContents()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window.mogoview.fireChangeEvent({ state: \'default\', size: { width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "closeExpanded: injection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->injectJavaScript(Ljava/lang/String;)V

    sget-object v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->DEFAULT:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    iput-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->p:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearView()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->p:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    sget-object v1, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->EXPANDED:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->invalidate()V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->i:Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;->deleteOldAds()V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->i:Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;->stopAllListeners()V

    invoke-direct {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->d()V

    invoke-super {p0}, Landroid/webkit/WebView;->clearView()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->p:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    sget-object v1, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->RESIZED:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->c()V

    goto :goto_0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public expand(Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;Ljava/lang/String;Lcom/adsmogo/mriad/controller/AdsMogoController$Properties;)V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "expand_dimensions"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "expand_properties"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getMOGO_BRIDGE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMRAID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ width: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->j:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->j:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->p:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public hideVideo()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public hideVideoImpl()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2, v2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a(ZZ)V

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public injectJavaScript(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RMWebView injectJavaScript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->p:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    sget-object v1, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->EXPANDED:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->r:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->m:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->r:Z

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->i:Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;->stopAllListeners()V

    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    return-void
.end method

.method public onRmAndAdRead(Z)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RM onRmAndAdRead isOnWebViewPageFinished\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->e:Z

    :goto_0
    iget-boolean v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->g:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->g:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    invoke-interface {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;->onAdSucceed()V

    :cond_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->f:Z

    goto :goto_0
.end method

.method public open(Ljava/lang/String;ZZZ)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "open err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "Invalid url"

    const-string v1, "open"

    invoke-virtual {p0, v0, v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openMap(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening Map Url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/mriad/util/AdsMogoRMUtils;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public pauseVideo()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public pauseVideoImpl()V
    .locals 1

    sget-object v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->h:Lcom/adsmogo/mriad/util/AdsMogoPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->h:Lcom/adsmogo/mriad/util/AdsMogoPlayer;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/util/AdsMogoPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public playAudio(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/adsmogo/mriad/controller/AdsMogoController$PlayerProperties;

    invoke-direct {v0}, Lcom/adsmogo/mriad/controller/AdsMogoController$PlayerProperties;-><init>()V

    const/4 v1, 0x0

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p4

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/adsmogo/mriad/controller/AdsMogoController$PlayerProperties;->setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    sget-object v3, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->PLAY_AUDIO:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    invoke-virtual {v3}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "player_properties"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Lcom/adsmogo/mriad/controller/AdsMogoController$PlayerProperties;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    const/16 v2, 0x3f0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public playAudioImpl(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/mriad/controller/AdsMogoController$PlayerProperties;

    const-string v1, "expand_url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->e()Lcom/adsmogo/mriad/util/AdsMogoPlayer;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/adsmogo/mriad/util/AdsMogoPlayer;->setPlayData(Lcom/adsmogo/mriad/controller/AdsMogoController$PlayerProperties;Ljava/lang/String;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Lcom/adsmogo/mriad/util/AdsMogoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/adsmogo/mriad/util/AdsMogoPlayer;->playAudio()V

    return-void
.end method

.method public playVideo(Ljava/lang/String;ZZZZLcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    new-instance v0, Lcom/adsmogo/mriad/controller/AdsMogoController$PlayerProperties;

    invoke-direct {v0}, Lcom/adsmogo/mriad/controller/AdsMogoController$PlayerProperties;-><init>()V

    const/4 v4, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/adsmogo/mriad/controller/AdsMogoController$PlayerProperties;->setProperties(ZZZZZLjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "expand_url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "action"

    sget-object v3, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->PLAY_VIDEO:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    invoke-virtual {v3}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "player_properties"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p6, :cond_0

    const-string v2, "expand_dimensions"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "properties.isFullScreen():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/adsmogo/mriad/controller/AdsMogoController$PlayerProperties;->isFullScreen()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/adsmogo/mriad/controller/AdsMogoController$PlayerProperties;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-eqz p6, :cond_1

    invoke-virtual {v8, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public playVideoImpl(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/mriad/controller/AdsMogoController$PlayerProperties;

    const-string v1, "expand_dimensions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;

    const-string v2, "expand_url"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->e()Lcom/adsmogo/mriad/util/AdsMogoPlayer;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0, v2}, Lcom/adsmogo/mriad/util/AdsMogoPlayer;->setPlayData(Lcom/adsmogo/mriad/controller/AdsMogoController$PlayerProperties;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->w:I

    iget v5, v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->h:I

    invoke-direct {v0, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/adsmogo/mriad/util/AdsMogoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/adsmogo/mriad/view/f;

    invoke-direct {v0, p0}, Lcom/adsmogo/mriad/view/f;-><init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)V

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x66

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    iget v0, v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->y:I

    iget v1, v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->x:I

    invoke-virtual {v2, v0, v1, v6, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/adsmogo/mriad/view/g;

    invoke-direct {v0, p0}, Lcom/adsmogo/mriad/view/g;-><init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)V

    invoke-virtual {v3, v0}, Lcom/adsmogo/mriad/util/AdsMogoPlayer;->setListener(Lcom/adsmogo/mriad/util/AdsMogoPlayerListener;)V

    invoke-virtual {v3}, Lcom/adsmogo/mriad/util/AdsMogoPlayer;->playVideo()V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v6}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a(ZZ)V

    return-void
.end method

.method public raiseError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "action"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public removeMogoRmListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->g:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    return-void
.end method

.method public resetContents()V
    .locals 5

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getRootView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getRootView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getRootView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->d()V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->o:I

    invoke-virtual {v0, p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_2
    return-void
.end method

.method public resize(II)V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "resize_width"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "resize_height"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setMOGO_BRIDGE(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a:Ljava/lang/String;

    return-void
.end method

.method public setMRAID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->b:Ljava/lang/String;

    return-void
.end method

.method public setMaxSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->i:Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;

    invoke-virtual {v0, p1, p2}, Lcom/adsmogo/mriad/controller/AdsMogoUtilityController;->setMaxSize(II)V

    return-void
.end method

.method public setMogoRmListener(Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->g:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    return-void
.end method

.method public setPlacementType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->q:Ljava/lang/String;

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showVideo()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    const/16 v1, 0x3f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->u:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public showVideoImpl()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->h:Lcom/adsmogo/mriad/util/AdsMogoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a(ZZ)V

    goto :goto_0
.end method
