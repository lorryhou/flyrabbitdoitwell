.class final Lcom/adsmogo/splash/d;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/adsmogo/splash/c;


# direct methods
.method constructor <init>(Lcom/adsmogo/splash/c;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/splash/d;->a:Lcom/adsmogo/splash/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/adsmogo/splash/AdsMogoSplash;->c:Lcom/adsmogo/splash/AdsMogoSplashListener;

    invoke-interface {v0}, Lcom/adsmogo/splash/AdsMogoSplashListener;->onSplashSucceed()V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/adsmogo/splash/AdsMogoSplash;->c:Lcom/adsmogo/splash/AdsMogoSplashListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adsmogo/splash/AdsMogoSplashListener;->onSplashError(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/adsmogo/splash/d;->a:Lcom/adsmogo/splash/c;

    iget-object v0, v0, Lcom/adsmogo/splash/c;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/adsmogo/splash/d;->a:Lcom/adsmogo/splash/c;

    iget-object v1, v1, Lcom/adsmogo/splash/c;->c:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/adsmogo/splash/d;->a:Lcom/adsmogo/splash/c;

    invoke-static {v0}, Lcom/adsmogo/splash/c;->a(Lcom/adsmogo/splash/c;)Lcom/adsmogo/splash/AdsMogoSplash;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/splash/AdsMogoSplash;->a(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/splash/d;->a:Lcom/adsmogo/splash/c;

    invoke-static {v0}, Lcom/adsmogo/splash/c;->a(Lcom/adsmogo/splash/c;)Lcom/adsmogo/splash/AdsMogoSplash;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/splash/AdsMogoSplash;->b(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/splash/d;->a:Lcom/adsmogo/splash/c;

    invoke-static {v0}, Lcom/adsmogo/splash/c;->a(Lcom/adsmogo/splash/c;)Lcom/adsmogo/splash/AdsMogoSplash;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/splash/AdsMogoSplash;->a(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    sget-object v0, Lcom/adsmogo/splash/AdsMogoSplash;->c:Lcom/adsmogo/splash/AdsMogoSplashListener;

    invoke-interface {v0}, Lcom/adsmogo/splash/AdsMogoSplashListener;->onSplashClose()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
