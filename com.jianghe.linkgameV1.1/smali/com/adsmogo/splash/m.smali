.class final Lcom/adsmogo/splash/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field private synthetic a:Lcom/adsmogo/splash/AdsMogoSplashWebView;


# direct methods
.method constructor <init>(Lcom/adsmogo/splash/AdsMogoSplashWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/splash/m;->a:Lcom/adsmogo/splash/AdsMogoSplashWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/splash/m;->a:Lcom/adsmogo/splash/AdsMogoSplashWebView;

    const-class v2, Lcom/adsmogo/controller/service/UpdateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mogo_title"

    const-string v2, "APK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mogo_link"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/adsmogo/splash/m;->a:Lcom/adsmogo/splash/AdsMogoSplashWebView;

    invoke-virtual {v1, v0}, Lcom/adsmogo/splash/AdsMogoSplashWebView;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v0, Lcom/adsmogo/splash/AdsMogoSplash;->c:Lcom/adsmogo/splash/AdsMogoSplashListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/splash/m;->a:Lcom/adsmogo/splash/AdsMogoSplashWebView;

    invoke-static {v0}, Lcom/adsmogo/splash/AdsMogoSplashWebView;->e(Lcom/adsmogo/splash/AdsMogoSplashWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adsmogo/splash/AdsMogoSplash;->c:Lcom/adsmogo/splash/AdsMogoSplashListener;

    invoke-interface {v0}, Lcom/adsmogo/splash/AdsMogoSplashListener;->onSplashClose()V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/splash/m;->a:Lcom/adsmogo/splash/AdsMogoSplashWebView;

    invoke-virtual {v0}, Lcom/adsmogo/splash/AdsMogoSplashWebView;->finish()V

    return-void
.end method
