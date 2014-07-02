.class final Lcom/adsmogo/splash/l;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/adsmogo/splash/AdsMogoSplashWebView;


# direct methods
.method constructor <init>(Lcom/adsmogo/splash/AdsMogoSplashWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/splash/l;->a:Lcom/adsmogo/splash/AdsMogoSplashWebView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/splash/l;->a:Lcom/adsmogo/splash/AdsMogoSplashWebView;

    invoke-static {v0}, Lcom/adsmogo/splash/AdsMogoSplashWebView;->h(Lcom/adsmogo/splash/AdsMogoSplashWebView;)V

    return-void
.end method
