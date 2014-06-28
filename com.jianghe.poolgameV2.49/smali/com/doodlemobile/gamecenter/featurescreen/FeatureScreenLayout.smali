.class public Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;
.super Landroid/widget/RelativeLayout;
.source "FeatureScreenLayout.java"


# static fields
.field private static final MSG:I = 0x3021


# instance fields
.field context:Landroid/content/Context;

.field dismissHandler:Landroid/os/Handler;

.field fsg:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;

.field metrics:Landroid/util/DisplayMetrics;

.field oncancellistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Handler;Landroid/util/DisplayMetrics;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->dismissHandler:Landroid/os/Handler;

    .line 25
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    .line 26
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->fsg:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;

    .line 27
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->context:Landroid/content/Context;

    .line 29
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->oncancellistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;

    .line 47
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->context:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->dismissHandler:Landroid/os/Handler;

    .line 51
    iput-object p4, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    .line 53
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 56
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    const-string v3, "dm_featurescreen_layout"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    return-void
.end method


# virtual methods
.method public isLanscape()Z
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/high16 v7, 0x40000000

    const/high16 v6, 0x40a00000

    const/16 v3, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_0

    move v0, v4

    .line 148
    :goto_0
    return v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->isLanscape()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x9

    int-to-float v1, v1

    const/high16 v2, 0x41200000

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v6

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 75
    invoke-virtual {p0, v3}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->oncancellistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->oncancellistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;

    invoke-interface {v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;->onCancel()V

    :cond_1
    move v0, v4

    .line 82
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v7

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x40c00000

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v2, 0x40400000

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->fsg:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->mMarketUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 91
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 92
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->fsg:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->mMarketUri:Ljava/lang/String;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    const-string v2, "Clicks"

    const-string v3, "FeatureScreen"

    invoke-static {v0, v1, v2, v3, v5}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v4

    .line 105
    goto/16 :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->context:Landroid/content/Context;

    const-string v2, "Open Android Market Failed ... "

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    div-float/2addr v1, v6

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 114
    invoke-virtual {p0, v3}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->oncancellistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;

    if-eqz v0, :cond_4

    .line 118
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->oncancellistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;

    invoke-interface {v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;->onCancel()V

    :cond_4
    move v0, v4

    .line 121
    goto/16 :goto_0

    .line 122
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v7

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    div-float/2addr v1, v6

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 129
    :try_start_1
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->fsg:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->mMarketUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 132
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    :goto_2
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->fsg:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;->mMarketUri:Ljava/lang/String;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    const-string v2, "Clicks"

    const-string v3, "FeatureScreen"

    invoke-static {v0, v1, v2, v3, v5}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v4

    .line 144
    goto/16 :goto_0

    .line 133
    :catch_1
    move-exception v0

    .line 134
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->context:Landroid/content/Context;

    const-string v2, "Open Android Market Failed ... "

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_6
    move v0, v4

    .line 148
    goto/16 :goto_0
.end method

.method public setFeatureGame(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->fsg:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenGame;

    .line 156
    return-void
.end method

.method public setOnCancelListemer(Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->oncancellistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;

    if-nez v0, :cond_0

    .line 35
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreenLayout;->oncancellistener:Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen$onCancelListener;

    .line 37
    :cond_0
    return-void
.end method
