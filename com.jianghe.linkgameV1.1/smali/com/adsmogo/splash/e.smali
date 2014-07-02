.class final Lcom/adsmogo/splash/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/splash/c;


# direct methods
.method constructor <init>(Lcom/adsmogo/splash/c;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/splash/e;->a:Lcom/adsmogo/splash/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/splash/e;->a:Lcom/adsmogo/splash/c;

    invoke-static {v0}, Lcom/adsmogo/splash/c;->a(Lcom/adsmogo/splash/c;)Lcom/adsmogo/splash/AdsMogoSplash;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/splash/AdsMogoSplash;->a(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/splash/e;->a:Lcom/adsmogo/splash/c;

    invoke-static {v0}, Lcom/adsmogo/splash/c;->a(Lcom/adsmogo/splash/c;)Lcom/adsmogo/splash/AdsMogoSplash;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/splash/AdsMogoSplash;->b(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/splash/e;->a:Lcom/adsmogo/splash/c;

    invoke-static {v0}, Lcom/adsmogo/splash/c;->a(Lcom/adsmogo/splash/c;)Lcom/adsmogo/splash/AdsMogoSplash;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/splash/AdsMogoSplash;->a(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/splash/e;->a:Lcom/adsmogo/splash/c;

    iget-object v1, v1, Lcom/adsmogo/splash/c;->a:Landroid/app/Activity;

    const-class v2, Lcom/adsmogo/splash/AdsMogoSplashWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "link"

    iget-object v3, p0, Lcom/adsmogo/splash/e;->a:Lcom/adsmogo/splash/c;

    invoke-static {v3}, Lcom/adsmogo/splash/c;->a(Lcom/adsmogo/splash/c;)Lcom/adsmogo/splash/AdsMogoSplash;

    move-result-object v3

    invoke-static {v3}, Lcom/adsmogo/splash/AdsMogoSplash;->d(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sendClickSingleton"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "isSplash"

    const-string v3, "Splash"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/splash/e;->a:Lcom/adsmogo/splash/c;

    iget-object v1, v1, Lcom/adsmogo/splash/c;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/adsmogo/model/obj/Ration;

    invoke-direct {v0}, Lcom/adsmogo/model/obj/Ration;-><init>()V

    iget-object v1, p0, Lcom/adsmogo/splash/e;->a:Lcom/adsmogo/splash/c;

    invoke-static {v1}, Lcom/adsmogo/splash/c;->a(Lcom/adsmogo/splash/c;)Lcom/adsmogo/splash/AdsMogoSplash;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/splash/AdsMogoSplash;->e(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsmogo/splash/e;->a:Lcom/adsmogo/splash/c;

    invoke-static {v1}, Lcom/adsmogo/splash/c;->a(Lcom/adsmogo/splash/c;)Lcom/adsmogo/splash/AdsMogoSplash;

    move-result-object v1

    invoke-static {v1}, Lcom/adsmogo/splash/AdsMogoSplash;->f(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/adsmogo/splash/a;

    iget-object v3, p0, Lcom/adsmogo/splash/e;->a:Lcom/adsmogo/splash/c;

    invoke-static {v3}, Lcom/adsmogo/splash/c;->a(Lcom/adsmogo/splash/c;)Lcom/adsmogo/splash/AdsMogoSplash;

    move-result-object v3

    iget-object v4, p0, Lcom/adsmogo/splash/e;->a:Lcom/adsmogo/splash/c;

    invoke-static {v4}, Lcom/adsmogo/splash/c;->a(Lcom/adsmogo/splash/c;)Lcom/adsmogo/splash/AdsMogoSplash;

    move-result-object v4

    invoke-static {v4}, Lcom/adsmogo/splash/AdsMogoSplash;->g(Lcom/adsmogo/splash/AdsMogoSplash;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/adsmogo/splash/a;-><init>(Lcom/adsmogo/splash/AdsMogoSplash;Lcom/adsmogo/model/obj/Ration;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Please add AdsMogoSplashWebView Activity"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/adsmogo/splash/e;->a:Lcom/adsmogo/splash/c;

    iget-object v1, v1, Lcom/adsmogo/splash/c;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
