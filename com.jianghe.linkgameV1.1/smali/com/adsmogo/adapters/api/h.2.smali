.class final Lcom/adsmogo/adapters/api/h;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/h;->a:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/h;-><init>(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    const-string v0, "AdsMOGO SDK"

    const-string v1, "adchina succeed"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/h;->a:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->a(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;ZLandroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/h;->a:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getScheduler()Lcom/adsmogo/util/e;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/adsmogo/adapters/api/e;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/h;->a:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/adsmogo/adapters/api/e;-><init>(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;Z)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/h;->a:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-static {}, Lcom/adsmogo/controller/j;->a()Lcom/adsmogo/controller/j;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/adsmogo/controller/j;->b()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/adapters/api/h;->a:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/h;->a:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "link"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sendClickSingleton"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/h;->a:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/adsmogo/adapters/api/h;->a:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->d(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getScheduler()Lcom/adsmogo/util/e;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/adsmogo/adapters/api/e;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/h;->a:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    invoke-direct {v1, v2, v5}, Lcom/adsmogo/adapters/api/e;-><init>(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;Z)V

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/adsmogo/controller/j;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/h;->a:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->b(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/h;->a:Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;->c(Lcom/adsmogo/adapters/api/AXdXCXhXiXnXaApiAdapter;)V

    goto :goto_1
.end method
