.class public Lcom/adsmogo/mriad/view/AdsMogoActionHandler;
.super Landroid/app/Activity;


# static fields
.field private static synthetic c:[I


# instance fields
.field private a:Ljava/util/HashMap;

.field private b:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;->a:Ljava/util/HashMap;

    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;)Lcom/adsmogo/mriad/util/AdsMogoPlayer;
    .locals 5

    const/4 v4, -0x1

    const-string v0, "player_properties"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/mriad/controller/AdsMogoController$PlayerProperties;

    const-string v1, "expand_dimensions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;

    new-instance v2, Lcom/adsmogo/mriad/util/AdsMogoPlayer;

    invoke-direct {v2, p0}, Lcom/adsmogo/mriad/util/AdsMogoPlayer;-><init>(Landroid/content/Context;)V

    const-string v3, "expand_url"

    invoke-static {v3, p1}, Lcom/adsmogo/mriad/util/AdsMogoRMUtils;->getData(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/adsmogo/mriad/util/AdsMogoPlayer;->setPlayData(Lcom/adsmogo/mriad/controller/AdsMogoController$PlayerProperties;Ljava/lang/String;)V

    if-nez v1, :cond_0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    invoke-virtual {v2, v0}, Lcom/adsmogo/mriad/util/AdsMogoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/adsmogo/mriad/view/a;

    invoke-direct {v0, p0}, Lcom/adsmogo/mriad/view/a;-><init>(Lcom/adsmogo/mriad/view/AdsMogoActionHandler;)V

    invoke-virtual {v2, v0}, Lcom/adsmogo/mriad/util/AdsMogoPlayer;->setListener(Lcom/adsmogo/mriad/util/AdsMogoPlayerListener;)V

    return-object v2

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->w:I

    iget v4, v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->h:I

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->y:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v1, v1, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->x:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->values()[Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->PLAY_AUDIO:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->PLAY_VIDEO:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;->c:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;->b:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;->setContentView(Landroid/view/View;)V

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->valueOf(Ljava/lang/String;)Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    move-result-object v1

    invoke-static {}, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;->a()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;->a(Landroid/os/Bundle;Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;)Lcom/adsmogo/mriad/util/AdsMogoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/mriad/util/AdsMogoPlayer;->playAudio()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;->a(Landroid/os/Bundle;Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;)Lcom/adsmogo/mriad/util/AdsMogoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/mriad/util/AdsMogoPlayer;->playVideo()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onStop()V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/adsmogo/mriad/view/AdsMogoActionHandler;->a()[I

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ACTION;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/mriad/util/AdsMogoPlayer;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/util/AdsMogoPlayer;->releasePlayer()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
