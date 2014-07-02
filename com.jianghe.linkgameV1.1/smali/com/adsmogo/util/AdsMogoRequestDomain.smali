.class public Lcom/adsmogo/util/AdsMogoRequestDomain;
.super Ljava/lang/Object;


# static fields
.field public static final firstBlkDomain:Ljava/lang/String; = "http://blk."

.field public static final firstCfgDomain:Ljava/lang/String; = "http://cfg."

.field public static final firstClkDomain:Ljava/lang/String; = "http://clk."

.field public static final firstCusDomain:Ljava/lang/String; = "http://cus."

.field public static final firstImpDomain:Ljava/lang/String; = "http://imp."

.field public static final firstReqDomain:Ljava/lang/String; = "http://req."

.field public static final fullBlaUrl:Ljava/lang/String; = "/blank.ashx?"

.field public static final fullImpUrl:Ljava/lang/String; = "/exmet.ashx?"

.field public static final fullReqUrl:Ljava/lang/String; = "/exrequest.ashx?"

.field public static final fullUrl:Ljava/lang/String; = "appid=%s&nid=%s&type=%d&uuid=%s&client=2&adtype=%s&appver=%d&country=%s"

.field public static final fullVideoEndUul:Ljava/lang/String; = "appid=%s&nid=%s&type=%d&uuid=%s&client=2&adtype=%s&appver=%d&country=%s&vt=%s"

.field public static isTestModel:Z = false

.field public static final secondDomain:Ljava/lang/String; = "adsmogo."

.field public static final secondTestDomain:Ljava/lang/String; = "himogo."

.field public static final thirdDomains:Ljava/util/ArrayList;

.field public static urlAction:Ljava/lang/String; = null

.field public static final urlAudiance:Ljava/lang/String; = "/Audiance.ashx?aid=%s&uid=%s&vr=%s&pn=%s&uv=%s&uc=%s&nt=%s&mn=%s&os=%s&dn=%s&si=%s%s&ra=%s&cn=%s&lc=%s&ll=%s"

.field public static urlCheckApp:Ljava/lang/String;

.field public static urlClick:Ljava/lang/String;

.field public static urlConfig:Ljava/lang/String;

.field public static urlCustom:Ljava/lang/String;

.field public static urlCustom_defind:Ljava/lang/String;

.field public static urlExchange:Ljava/lang/String;

.field public static urlGetIp:Ljava/lang/String;

.field public static urlMogo:Ljava/lang/String;

.field public static urlPremium:Ljava/lang/String;

.field public static urlPremium_defind:Ljava/lang/String;

.field public static urlRecommend:Ljava/lang/String;

.field public static urlRecordData:Ljava/lang/String;

.field public static urlStat:Ljava/lang/String;

.field public static urlUpdate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-boolean v3, Lcom/adsmogo/util/AdsMogoRequestDomain;->isTestModel:Z

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Mogo/test.mogo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->isTestModel:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/adsmogo/util/d;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com"

    aput-object v2, v1, v3

    const-string v2, "org"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "mobi"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "net"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/adsmogo/util/d;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->thirdDomains:Ljava/util/ArrayList;

    const-string v0, "/cf/%s/%s/%s/%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlConfig:Ljava/lang/String;

    const-string v0, "/stat/312/%s/%s/%s/%s/%s?uuid=%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlStat:Ljava/lang/String;

    const-string v0, "/ver/%s/%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlUpdate:Ljava/lang/String;

    const-string v0, "/ad/9/312/%s/%s/%s/%s?uuid=%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlCustom:Ljava/lang/String;

    const-string v0, "/ad/9/312/%s/%s/%s/%s/%s/%s?uuid=%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlCustom_defind:Ljava/lang/String;

    const-string v0, "/ad/45/312/%s/%s/%s/%s/%s/%s?uuid=%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlExchange:Ljava/lang/String;

    const-string v0, "/ad/27/312/%s/%s/%s/%s/%s/%s/%s?uuid=%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlMogo:Ljava/lang/String;

    const-string v0, "/ad/48/312/%s/%s/%s/%s/%s/%s/%s?uuid=%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlPremium:Ljava/lang/String;

    const-string v0, "/ad/48/312/%s/%s/%s/%s/%s/%s/%s/%s/%s?uuid=%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlPremium_defind:Ljava/lang/String;

    const-string v0, "/ad/54/312/%s/%s/%s/%s/%s/%s/%s?uuid=%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlRecommend:Ljava/lang/String;

    const-string v0, "/batch.ashx"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlRecordData:Ljava/lang/String;

    const-string v0, "/clk/312/%s/%s/%s/%s/%s/%s/%s%suuid=%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlClick:Ljava/lang/String;

    const-string v0, "/act/312/%s/%s/%s/%s/%s/%s/%s?uuid=%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlAction:Ljava/lang/String;

    const-string v0, "/GetIP.ashx"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlGetIp:Ljava/lang/String;

    const-string v0, "/InstalledApp.ashx?uuid=%s&pn=%s&mac=%s"

    sput-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->urlCheckApp:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->isTestModel:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecondDomain()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->isTestModel:Z

    if-eqz v0, :cond_0

    const-string v0, "himogo."

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "adsmogo."

    goto :goto_0
.end method

.method public static getThirdDomain()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {}, Lcom/adsmogo/util/AdsMogoRequestDomain;->getThirdDomains()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getThirdDomains()Ljava/util/ArrayList;
    .locals 4

    sget-boolean v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->isTestModel:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/adsmogo/util/d;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/adsmogo/util/d;-><init>([Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adsmogo/util/AdsMogoRequestDomain;->thirdDomains:Ljava/util/ArrayList;

    goto :goto_0
.end method
