.class final Lcom/adsmogo/adview/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private synthetic c:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/adsmogo/adview/AdsMogoInterstitialActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/adsmogo/adview/h;->c:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/adview/h;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/adview/h;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/adsmogo/adview/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/adsmogo/adview/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/adview/h;->c:Lcom/adsmogo/adview/AdsMogoInterstitialActivity;

    iget-object v0, p0, Lcom/adsmogo/adview/h;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsmogo/adview/h;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adsmogo/adview/AdsMogoInterstitialActivity;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
