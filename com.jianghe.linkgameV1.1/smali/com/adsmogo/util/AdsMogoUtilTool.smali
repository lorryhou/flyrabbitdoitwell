.class public Lcom/adsmogo/util/AdsMogoUtilTool;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.Syztem/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/adsmogo/model/a;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "AdsMOGO SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPlatformInfo type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/adsmogo/model/a;

    invoke-direct {v0}, Lcom/adsmogo/model/a;-><init>()V

    const/16 v1, 0x7d0

    if-ne p0, v1, :cond_0

    iput v4, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.api.AdsMogoS2sAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v4, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, "com.adsmogo.adapters.api.AdsMogoS2sInterstitialAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v4, v0, Lcom/adsmogo/model/a;->l:I

    :goto_0
    return-object v0

    :cond_0
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.GoogleAdMobAdsAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.GoogleAdMobAdsAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v4, v0, Lcom/adsmogo/model/a;->l:I

    goto :goto_0

    :pswitch_2
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AppMediaAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.DomobAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.DomobAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v4, v0, Lcom/adsmogo/model/a;->l:I

    goto :goto_0

    :pswitch_4
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.YoumiAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.YoumiAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->l:I

    goto :goto_0

    :pswitch_5
    iput v5, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.api.WXeXiXQXiXaXnAPIAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.WeiQianAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.MobWINAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    iput v5, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.api.AXdXCXhXiXnXaApiAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AdChinaAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AdChinaAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->c:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->i:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AdChinaAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->h:Ljava/lang/String;

    iput v4, v0, Lcom/adsmogo/model/a;->l:I

    iput v4, v0, Lcom/adsmogo/model/a;->m:I

    goto/16 :goto_0

    :pswitch_8
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.MobiSageAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.MobiSageAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_9
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.IZPAdAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_a
    iput v5, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.api.AXdXwXoApiAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AdwoAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AdwoAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v4, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_b
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.VponCNAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_c
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.GreystripeAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.GreystripeAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v4, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_d
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.ZestAdzAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_e
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.MdotMAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_f
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.YJFAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.YJFAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_10
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.HaoBaiAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_11
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.WiyunAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_12
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.WoobooAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.WoobooAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_13
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.SmartMADAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.SmartMADAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v4, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_14
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AdTouchAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_15
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.LSenseAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.LSenseAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_16
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.BaiduJsonAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_17
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.ZhidianAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_18
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AllYesAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_19
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AirAdAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1a
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.MidiAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1b
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.JuDianAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1c
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.MillennialAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.MillennialAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_1d
    iput v5, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.api.FXrXaXcXtXaXlAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.FractalSDKAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.FractalSDKAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_1e
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.UmengAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1f
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.UmengWWWAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_20
    iput v4, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.api.LXmXMXoXbAPIAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_21
    iput v5, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.api.AXdXuXuAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AdAduuAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AdAduuAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v4, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_22
    iput v4, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.api.APIAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_23
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.InmobiSdkAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.InmobiSdkAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v4, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_24
    iput v4, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.api.SXmXaXaXtXoAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_25
    iput v4, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.api.PublicCustomAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v4, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, "com.adsmogo.adapters.api.PublicCustomAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v4, v0, Lcom/adsmogo/model/a;->c:I

    const-string v1, "com.adsmogo.adapters.api.PublicCustomAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->i:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->h:Ljava/lang/String;

    iput v4, v0, Lcom/adsmogo/model/a;->l:I

    iput v4, v0, Lcom/adsmogo/model/a;->m:I

    goto/16 :goto_0

    :pswitch_26
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.MomarkAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_27
    iput v4, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.api.AXdXfXoXnXiXcAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_28
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.AdAderAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v4, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_29
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.PunchBoxAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.PunchBoxAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_2a
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.GuoMengAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.GuoMengAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_2b
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.PingCooAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.PingCooAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_2c
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.ChartboostAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v4, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_2d
    iput v3, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.MixAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_2e
    iput v5, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.api.MobFoxBannerApiAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.MobFoxBannerAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.MobFoxFullAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    iput v4, v0, Lcom/adsmogo/model/a;->l:I

    goto/16 :goto_0

    :pswitch_2f
    iput v5, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.api.LeadboltAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_30
    iput v5, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, "com.adsmogo.adapters.api.MojivaAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_31
    iput v3, v0, Lcom/adsmogo/model/a;->c:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->i:Ljava/lang/String;

    const-string v1, "com.adsmogo.adapters.sdk.VungleAdapter"

    iput-object v1, v0, Lcom/adsmogo/model/a;->h:Ljava/lang/String;

    iput v3, v0, Lcom/adsmogo/model/a;->m:I

    goto/16 :goto_0

    :pswitch_32
    iput v6, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v6, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_33
    iput v6, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v6, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_34
    iput v6, v0, Lcom/adsmogo/model/a;->a:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->d:Ljava/lang/String;

    iput v6, v0, Lcom/adsmogo/model/a;->b:I

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->g:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/adsmogo/model/a;->f:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1c
        :pswitch_c
        :pswitch_0
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_0
        :pswitch_d
        :pswitch_7
        :pswitch_11
        :pswitch_12
        :pswitch_4
        :pswitch_0
        :pswitch_13
        :pswitch_25
        :pswitch_14
        :pswitch_3
        :pswitch_b
        :pswitch_8
        :pswitch_19
        :pswitch_a
        :pswitch_15
        :pswitch_24
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_25
        :pswitch_20
        :pswitch_17
        :pswitch_25
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_25
        :pswitch_1e
        :pswitch_5
        :pswitch_28
        :pswitch_0
        :pswitch_18
        :pswitch_21
        :pswitch_0
        :pswitch_1f
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_1b
        :pswitch_0
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2c
        :pswitch_2a
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_29
        :pswitch_2b
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2d
        :pswitch_2f
        :pswitch_2e
        :pswitch_30
        :pswitch_31
        :pswitch_0
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Read assets images error"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :cond_0
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Landroid/webkit/WebSettings;Landroid/webkit/WebView;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "mZoomButtonsController"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v1, Landroid/widget/ZoomButtonsController;

    invoke-direct {v1, p1}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "rts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static convertToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "000000000000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v2

    if-lt v1, v0, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-byte v0, v2, v1

    if-gez v0, :cond_2

    add-int/lit16 v0, v0, 0x100

    :cond_2
    const/16 v4, 0x10

    if-ge v0, v4, :cond_3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public static downloadAPK(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adsmogo/controller/service/UpdateService;

    invoke-direct {v0, p4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mogo_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mogo_link"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\u4e0b\u8f7d\u5730\u5740\u5b58\u5728\u5f02\u5e38"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x10

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v1, 0x0

    new-array v3, v9, [C

    fill-array-data v3, :array_0

    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    const/16 v2, 0x20

    new-array v5, v2, [C

    move v2, v0

    :goto_0
    if-lt v0, v9, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    :goto_1
    return-object v0

    :cond_0
    aget-byte v6, v4, v0

    add-int/lit8 v7, v2, 0x1

    ushr-int/lit8 v8, v6, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v3, v8

    aput-char v8, v5, v2

    add-int/lit8 v2, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v3, v6

    aput-char v6, v5, v7
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    nop

    :array_0
    .array-data 2
        0x39s
        0x30s
        0x36s
        0x65s
        0x64s
        0x63s
        0x31s
        0x62s
        0x33s
        0x38s
        0x37s
        0x32s
        0x61s
        0x35s
        0x66s
        0x34s
    .end array-data
.end method

.method public static getApkPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
