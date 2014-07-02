.class final Lcom/adsmogo/adapters/api/ak;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/MojivaAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/MojivaAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/ak;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/MojivaAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/ak;-><init>(Lcom/adsmogo/adapters/api/MojivaAdapter;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ak;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adsmogo/adapters/api/ak;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/MojivaAdapter;->g(Lcom/adsmogo/adapters/api/MojivaAdapter;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adsmogo/adapters/api/MojivaAdapter;->a(Lcom/adsmogo/adapters/api/MojivaAdapter;ZLandroid/view/ViewGroup;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/ak;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/MojivaAdapter;->b(Lcom/adsmogo/adapters/api/MojivaAdapter;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/adsmogo/controller/j;->a()Lcom/adsmogo/controller/j;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/ak;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/MojivaAdapter;->b(Lcom/adsmogo/adapters/api/MojivaAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "link"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/adsmogo/controller/j;->b()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/adsmogo/adapters/api/ak;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sendClickSingleton"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/ak;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/MojivaAdapter;->b(Lcom/adsmogo/adapters/api/MojivaAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/adsmogo/controller/j;->b()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/ak;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/MojivaAdapter;->b(Lcom/adsmogo/adapters/api/MojivaAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/ak;->a:Lcom/adsmogo/adapters/api/MojivaAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/MojivaAdapter;->f(Lcom/adsmogo/adapters/api/MojivaAdapter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mojiva open err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
