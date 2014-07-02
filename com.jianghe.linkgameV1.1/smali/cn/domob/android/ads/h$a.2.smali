.class public Lcn/domob/android/ads/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/h;

.field private b:Z

.field private c:I

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/h;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 586
    iput-object p1, p0, Lcn/domob/android/ads/h$a;->a:Lcn/domob/android/ads/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-boolean v1, p0, Lcn/domob/android/ads/h$a;->b:Z

    .line 587
    if-eqz p2, :cond_2

    .line 589
    const-string v0, "refresh"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    const-string v0, "refresh"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/h$a;->c:I

    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/h$a;->b:Z

    .line 593
    :cond_0
    const-string v0, "disable"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/h$a;->d:Z

    .line 594
    const-string v0, "dis_time"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/h$a;->e:I

    .line 596
    const-string v0, "ors"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 597
    if-eqz v0, :cond_1

    .line 598
    const-string v1, "version"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/h$a;->f:Ljava/lang/String;

    .line 600
    const-string v1, "config"

    const-string v2, "{\"com.admogo.AdMogoLayout\":\"1\",\"com.guohead.sdk.GHView\":\"2\",\"com.adview.AdViewLayout\":\"3\",\"appfactory.cn.adplatform.AdSageLayout\":\"4\"}"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/h$a;->g:Ljava/lang/String;

    .line 604
    :cond_1
    const-string v0, "sp_timeout"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 605
    if-le v0, v3, :cond_2

    invoke-static {p1}, Lcn/domob/android/ads/h;->a(Lcn/domob/android/ads/h;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 606
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 607
    const-string v2, "timeout"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    new-instance v0, Lcn/domob/android/ads/d/a;

    invoke-static {p1}, Lcn/domob/android/ads/h;->a(Lcn/domob/android/ads/h;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "domob_config"

    invoke-direct {v0, v2, v3}, Lcn/domob/android/ads/d/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 609
    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/a;->a(Ljava/util/HashMap;)V

    .line 612
    :cond_2
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 620
    iget v0, p0, Lcn/domob/android/ads/h$a;->c:I

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, Lcn/domob/android/ads/h$a;->d:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 634
    iget v0, p0, Lcn/domob/android/ads/h$a;->e:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Lcn/domob/android/ads/h$a;->b:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcn/domob/android/ads/h$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcn/domob/android/ads/h$a;->g:Ljava/lang/String;

    return-object v0
.end method
