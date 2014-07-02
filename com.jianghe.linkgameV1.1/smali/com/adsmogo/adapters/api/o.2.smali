.class final Lcom/adsmogo/adapters/api/o;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;


# direct methods
.method private constructor <init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/adapters/api/o;-><init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)V

    return-void
.end method

.method static synthetic a(Lcom/adsmogo/adapters/api/o;)Lcom/adsmogo/adapters/api/AXdXuXuAdapter;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    return-object v0
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->c(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/model/obj/Aduu;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getScheduler()Lcom/adsmogo/util/e;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;ZLandroid/view/ViewGroup;)V

    new-instance v1, Lcom/adsmogo/adapters/api/m;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Lcom/adsmogo/adapters/api/m;-><init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getScheduler()Lcom/adsmogo/util/e;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/adsmogo/adapters/api/m;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    const-string v3, "2"

    invoke-direct {v1, v2, v3}, Lcom/adsmogo/adapters/api/m;-><init>(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adsmogo/util/e;->a(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->c(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/model/obj/Aduu;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->c(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/model/obj/Aduu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Aduu;->getClickcontent()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->c(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/model/obj/Aduu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/Aduu;->getClicktype()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/adsmogo/controller/j;->a()Lcom/adsmogo/controller/j;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/adsmogo/controller/j;->b()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/adsmogo/adview/AdsMogoWebView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "link"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sendClickSingleton"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v7

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/adsmogo/controller/j;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->e(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)V

    goto :goto_0

    :cond_2
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->b(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/interstitial/AdsMogoConfigInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/adsmogo/interstitial/AdsMogoConfigInterface;->getDownloadIsShowDialog()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->f(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v3, "\u63d0\u793a"

    const-string v2, "\u786e\u5b9a\u8981\u4e0b\u8f7d\u5417?"

    const-string v1, "\u786e\u8ba4"

    const-string v0, "\u53d6\u6d88"

    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v6}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/adsmogo/adapters/api/p;

    invoke-direct {v3, p0, v4}, Lcom/adsmogo/adapters/api/p;-><init>(Lcom/adsmogo/adapters/api/o;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/adsmogo/adapters/api/q;

    invoke-direct {v2, p0}, Lcom/adsmogo/adapters/api/q;-><init>(Lcom/adsmogo/adapters/api/o;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_3
    const-string v3, "Message"

    const-string v2, "Are you sure you want to download?"

    const-string v1, "OK"

    const-string v0, "Cancel"

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/adsmogo/controller/service/UpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mogo_title"

    const-string v2, "APK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mogo_link"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isAduu"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "uuid"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    iget-object v2, v2, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "reqid"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->c(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/model/obj/Aduu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/Aduu;->getReqid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "adid"

    iget-object v2, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v2}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->c(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Lcom/adsmogo/model/obj/Aduu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/Aduu;->getAdid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->e(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v1}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->e(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Can\'t call"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_3
    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "smsto:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "sms_body"

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->d(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/adsmogo/adapters/api/o;->a:Lcom/adsmogo/adapters/api/AXdXuXuAdapter;

    invoke-static {v0}, Lcom/adsmogo/adapters/api/AXdXuXuAdapter;->e(Lcom/adsmogo/adapters/api/AXdXuXuAdapter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Cannot send a message"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
