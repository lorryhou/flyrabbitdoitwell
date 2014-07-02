.class public final Lcom/adsmogo/interstitial/k;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/adsmogo/interstitial/k;

.field private static b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/adsmogo/interstitial/k;->a:Lcom/adsmogo/interstitial/k;

    sput-object v0, Lcom/adsmogo/interstitial/k;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/adsmogo/interstitial/k;
    .locals 3

    sget-object v0, Lcom/adsmogo/interstitial/k;->a:Lcom/adsmogo/interstitial/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/adsmogo/interstitial/k;

    invoke-direct {v0}, Lcom/adsmogo/interstitial/k;-><init>()V

    sput-object v0, Lcom/adsmogo/interstitial/k;->a:Lcom/adsmogo/interstitial/k;

    :cond_0
    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdsMogoInterstitialVideoSendCount : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/adsmogo/interstitial/k;->a:Lcom/adsmogo/interstitial/k;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/adsmogo/interstitial/k;->a:Lcom/adsmogo/interstitial/k;

    return-object v0
.end method

.method public static b()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/adsmogo/interstitial/k;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adsmogo/interstitial/k;->b:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/adsmogo/interstitial/k;->b:Ljava/util/HashMap;

    return-object v0
.end method
