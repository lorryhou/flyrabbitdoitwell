.class final Lcom/adsmogo/adapters/api/W;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/W;-><init>(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/W;)Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    return-object v0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v0, v0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->c(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;ZLandroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v0, v0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Ftad;->getBeacon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v0, v0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Ftad;->getBeacon()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->b(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v0, v0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v0, v0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Ftad;->getAdclicktype()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/adsmogo/controller/j;->a()Lcom/adsmogo/controller/j;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "link"

    iget-object v4, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v4, v4, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/Ftad;->getAdclickurl1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/adsmogo/controller/j;->b()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sendClickSingleton"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/adsmogo/controller/j;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v1, v1, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Ftad;->getAdclickurl1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->b()V

    goto :goto_0

    :cond_1
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->b(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v3, "\u63d0\u793a"

    const-string v2, "\u786e\u5b9a\u8981\u4e0b\u8f7d\u5417?"

    const-string v1, "\u786e\u8ba4"

    const-string v0, "\u53d6\u6d88"

    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-static {v5}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/adsmogo/adapters/api/X;

    invoke-direct {v3, p0}, Lcom/adsmogo/adapters/api/X;-><init>(Lcom/adsmogo/adapters/api/W;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/adsmogo/adapters/api/Y;

    invoke-direct {v2, p0}, Lcom/adsmogo/adapters/api/Y;-><init>(Lcom/adsmogo/adapters/api/W;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    const-string v3, "Message"

    const-string v2, "Are you sure you want to download?"

    const-string v1, "OK"

    const-string v0, "Cancel"

    goto :goto_1

    :cond_3
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/adsmogo/adview/ShowFullDialog;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adsmogo/adview/ShowFullDialog;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v1, v1, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v1}, Lcom/adsmogo/model/obj/Ftad;->getAdclickurl2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsmogo/adview/ShowFullDialog;->showClickDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v2, v2, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/Ftad;->getAdclickurl3()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a(Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    invoke-virtual {v0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->b()V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v0, v0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Ftad;->getAdclickurl3()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/W;->a:Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;

    iget-object v0, v0, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->a:Lcom/adsmogo/model/obj/Ftad;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Ftad;->getAdclickurl3()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsmogo/adapters/api/FXrXaXcXtXaXlAdapter;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fractal open call err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
