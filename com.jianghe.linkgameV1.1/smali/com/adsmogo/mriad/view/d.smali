.class final Lcom/adsmogo/mriad/view/d;
.super Landroid/os/Handler;


# static fields
.field private static synthetic b:[I


# instance fields
.field private synthetic a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;


# direct methods
.method constructor <init>(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/adsmogo/mriad/view/d;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->values()[Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->DEFAULT:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->EXPANDED:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->HIDDEN:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->LEFT_BEHIND:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->OPENED:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->RESIZED:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/adsmogo/mriad/view/d;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    const/4 v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;ZZ)V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-static {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-static {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;->onExpandClose()Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    sget-object v2, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->RESIZED:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    invoke-static {v1, v2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;)V

    iget-object v1, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "resize_height"

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string v2, "resize_width"

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "window.mogoview.fireChangeEvent({ state: \'resized\', size: { width: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", height: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}});"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->injectJavaScript(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->requestLayout()V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-static {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-static {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$AdsMogoRmViewListener;->onResize()Z

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/adsmogo/mriad/view/d;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-static {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->e(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-static {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->f(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->setVisibility(I)V

    const-string v0, "window.mogoview.fireChangeEvent({ state: \'hidden\' });"

    iget-object v1, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "window.mogoview.fireChangeEvent({ state: \'default\' });"

    iget-object v1, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->injectJavaScript(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0, v2}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-static {v1, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    sget-object v1, Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;->LEFT_BEHIND:Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;

    invoke-static {v0, v1}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->a(Lcom/adsmogo/mriad/view/AdsMogoRMWebView;Lcom/adsmogo/mriad/view/AdsMogoRMWebView$ViewState;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->playAudioImpl(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->playVideoImpl(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->hideVideoImpl()V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->pauseVideoImpl()V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->showVideoImpl()V

    goto/16 :goto_0

    :pswitch_e
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window.mogoview.fireErrorEvent(\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adsmogo/mriad/view/d;->a:Lcom/adsmogo/mriad/view/AdsMogoRMWebView;

    invoke-virtual {v1, v0}, Lcom/adsmogo/mriad/view/AdsMogoRMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_e
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
