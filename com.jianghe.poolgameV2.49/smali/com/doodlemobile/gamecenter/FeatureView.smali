.class public Lcom/doodlemobile/gamecenter/FeatureView;
.super Landroid/widget/RelativeLayout;
.source "FeatureView.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/FeatureViewResetCallBack;


# static fields
.field private static mAppear:Ljava/lang/String;


# instance fields
.field private final DEFAULT:Ljava/lang/String;

.field private final DEFAULT_REFRESH_TIME:I

.field private final DIALOG:Ljava/lang/String;

.field private final ICON:Ljava/lang/String;

.field private final NO_REFRESH_TIME:I

.field private final PROMOTE_REFRESH_TIME:I

.field private TAG:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

.field private mContext:Landroid/content/Context;

.field private mFeatureBackground:Landroid/widget/RelativeLayout;

.field private mFeatureCompanyText:Landroid/widget/TextView;

.field private mFeatureGameText:Landroid/widget/TextView;

.field private mFeatureImage:Landroid/widget/ImageView;

.field private mFeatureIntent:Landroid/content/Intent;

.field public mLocation:Ljava/lang/String;

.field private mRefreshtime:I

.field private final mSecond:I

.field private mType:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mWhat:I

.field private mXmlName:Ljava/lang/String;

.field refreshHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/FeatureView;->mAppear:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 428
    new-instance v0, Lcom/doodlemobile/gamecenter/FeatureView$4;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/FeatureView$4;-><init>(Lcom/doodlemobile/gamecenter/FeatureView;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->refreshHandler:Landroid/os/Handler;

    .line 441
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mLocation:Ljava/lang/String;

    .line 442
    const-string v0, "FeatureView"

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->TAG:Ljava/lang/String;

    .line 443
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->bitmap:Landroid/graphics/Bitmap;

    .line 444
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    .line 445
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    .line 446
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureImage:Landroid/widget/ImageView;

    .line 447
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureGameText:Landroid/widget/TextView;

    .line 448
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mContext:Landroid/content/Context;

    .line 449
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureCompanyText:Landroid/widget/TextView;

    .line 450
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureIntent:Landroid/content/Intent;

    .line 451
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureBackground:Landroid/widget/RelativeLayout;

    .line 452
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mType:Ljava/lang/String;

    .line 453
    iput-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mXmlName:Ljava/lang/String;

    .line 454
    const/16 v0, 0xa

    iput v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mRefreshtime:I

    .line 455
    const/16 v0, 0x46

    iput v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->NO_REFRESH_TIME:I

    .line 456
    const/16 v0, 0x1e

    iput v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->DEFAULT_REFRESH_TIME:I

    .line 457
    const/16 v0, 0x3c

    iput v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->PROMOTE_REFRESH_TIME:I

    .line 458
    const/16 v0, 0x2711

    iput v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mWhat:I

    .line 459
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mSecond:I

    .line 460
    const-string v0, "icon"

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->ICON:Ljava/lang/String;

    .line 461
    const-string v0, "promotedialog"

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->DIALOG:Ljava/lang/String;

    .line 462
    const-string v0, "default"

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->DEFAULT:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mContext:Landroid/content/Context;

    .line 31
    invoke-direct {p0, p2}, Lcom/doodlemobile/gamecenter/FeatureView;->getXml(Landroid/util/AttributeSet;)V

    .line 32
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mXmlName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/FeatureView;->getView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->registerFeatureView(Lcom/doodlemobile/gamecenter/FeatureView;)V

    .line 35
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->refreshHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 36
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->reset()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/doodlemobile/gamecenter/FeatureView;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/doodlemobile/gamecenter/FeatureView;)Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    return-object v0
.end method

.method static synthetic access$200(Lcom/doodlemobile/gamecenter/FeatureView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/doodlemobile/gamecenter/FeatureView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/doodlemobile/gamecenter/FeatureView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/doodlemobile/gamecenter/FeatureView;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->refresh()V

    return-void
.end method

.method private getView(Ljava/lang/String;)Landroid/view/View;
    .locals 7

    .prologue
    const-string v6, "feature_gamename"

    const-string v5, "feature_companyname"

    const-string v4, "layout"

    const-string v3, "id"

    .line 168
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 170
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mType:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    :cond_0
    const/16 v1, 0x1e

    invoke-virtual {p0, v1}, Lcom/doodlemobile/gamecenter/FeatureView;->setRefreshTime(I)V

    .line 172
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    invoke-static {v1, v4, p1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    .line 178
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "featurebar"

    invoke-static {v1, v3, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureBackground:Landroid/widget/RelativeLayout;

    .line 183
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "feature_gamename"

    invoke-static {v1, v3, v6}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureGameText:Landroid/widget/TextView;

    .line 188
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "feature_companyname"

    invoke-static {v1, v3, v5}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureCompanyText:Landroid/widget/TextView;

    .line 193
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureBackground:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/doodlemobile/gamecenter/FeatureView$1;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/FeatureView$1;-><init>(Lcom/doodlemobile/gamecenter/FeatureView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "feature_image"

    invoke-static {v1, v3, v2}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureImage:Landroid/widget/ImageView;

    .line 333
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    return-object v0

    .line 224
    :cond_2
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mType:Ljava/lang/String;

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 225
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    invoke-static {v1, v4, p1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    .line 232
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    new-instance v1, Lcom/doodlemobile/gamecenter/FeatureView$2;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/FeatureView$2;-><init>(Lcom/doodlemobile/gamecenter/FeatureView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 261
    :cond_3
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mType:Ljava/lang/String;

    const-string v2, "promotedialog"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 262
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    invoke-static {v1, v4, p1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    .line 269
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "feature_gamename"

    invoke-static {v1, v3, v6}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureGameText:Landroid/widget/TextView;

    .line 274
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "feature_companyname"

    invoke-static {v1, v3, v5}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureCompanyText:Landroid/widget/TextView;

    .line 279
    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/FeatureView;->setRefreshTime(I)V

    goto/16 :goto_0

    .line 282
    :cond_4
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    invoke-static {v1, v4, p1}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    .line 290
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "feature_gamename"

    invoke-static {v1, v3, v6}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureGameText:Landroid/widget/TextView;

    .line 295
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "id"

    const-string v2, "feature_companyname"

    invoke-static {v1, v3, v5}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureCompanyText:Landroid/widget/TextView;

    .line 299
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/FeatureView;->setRefreshTime(I)V

    .line 300
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    new-instance v1, Lcom/doodlemobile/gamecenter/FeatureView$3;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/FeatureView$3;-><init>(Lcom/doodlemobile/gamecenter/FeatureView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private getXml(Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const-string v1, "dm.featureView.location"

    .line 153
    const-string v0, "dm.featureView.location"

    const-string v0, "featureLocation"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mLocation:Ljava/lang/String;

    .line 155
    const-string v0, "dm.featureView.location"

    const-string v0, "type"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mType:Ljava/lang/String;

    .line 156
    const-string v0, "dm.featureView.location"

    const-string v0, "xmlname"

    invoke-interface {p1, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mXmlName:Ljava/lang/String;

    .line 157
    return-void
.end method

.method private prepareFeatureView(Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "icon"

    .line 338
    if-eqz p1, :cond_5

    .line 342
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mImage:[B

    if-eqz v0, :cond_3

    .line 343
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mImage:[B

    iget-object v1, p1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mImage:[B

    array-length v1, v1

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->bitmap:Landroid/graphics/Bitmap;

    .line 346
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mImageuri:Ljava/lang/String;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->DeleteFile(Ljava/lang/String;Landroid/content/Context;)V

    move v0, v2

    .line 383
    :goto_0
    return v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 359
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mType:Ljava/lang/String;

    .line 360
    const-string v1, "icon"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureIntent:Landroid/content/Intent;

    .line 381
    const/4 v0, 0x1

    goto :goto_0

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureGameText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mGameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureCompanyText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mCompanyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 367
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mImage:[B

    .line 368
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mImageuri:Ljava/lang/String;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/net/FetchManager;->getImageFromNet(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mImage:[B

    .line 369
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mImage:[B

    if-nez v0, :cond_4

    move v0, v2

    .line 370
    goto :goto_0

    .line 372
    :cond_4
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mImage:[B

    iget-object v1, p1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mImage:[B

    array-length v1, v1

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->bitmap:Landroid/graphics/Bitmap;

    .line 373
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 374
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mType:Ljava/lang/String;

    const-string v1, "icon"

    if-eq v0, v3, :cond_1

    .line 375
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureGameText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mGameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureCompanyText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mGameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 383
    goto :goto_0
.end method

.method private refresh()V
    .locals 6

    .prologue
    const/16 v5, 0x46

    .line 396
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    iget v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mRefreshtime:I

    if-ne v0, v5, :cond_0

    .line 399
    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->clearFeatureGameCount()V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->getOneGame(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    .line 403
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/FeatureView;->prepareFeatureView(Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mGameName:Ljava/lang/String;

    const-string v2, "Refresh"

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mLocation:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mGameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " refresh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 420
    :cond_1
    :goto_0
    :try_start_1
    iget v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mRefreshtime:I

    if-eq v0, v5, :cond_2

    .line 421
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->refreshHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mWhat:I

    iget v2, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mRefreshtime:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 426
    :cond_2
    :goto_1
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 413
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getFeatureGame()Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mMarketUri:Ljava/lang/String;

    .line 389
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 390
    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->refreshHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    return-void
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->getOneGame(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 119
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 120
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    sget-object v0, Lcom/doodlemobile/gamecenter/FeatureView;->mAppear:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/FeatureView;->mAppear:Ljava/lang/String;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    const/16 v0, 0x10

    :try_start_0
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mGameName:Ljava/lang/String;

    const-string v2, "Appear"

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mLocation:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;->mGameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appear "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appear "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAppear is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/doodlemobile/gamecenter/FeatureView;->mAppear:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mLocation:Ljava/lang/String;

    sput-object v0, Lcom/doodlemobile/gamecenter/FeatureView;->mAppear:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->refreshHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->refreshHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mWhat:I

    iget v2, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mRefreshtime:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 140
    :cond_1
    return-void

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 72
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->refreshHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->NOFIRST:Z

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    if-nez p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->refreshHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->reset()V

    .line 78
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->TAG:Ljava/lang/String;

    const-string v1, "onWindowVisbilityChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->refreshHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->refreshHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mWhat:I

    iget v2, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mRefreshtime:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    iget v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mRefreshtime:I

    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    .line 44
    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->clearFeatureGameCount()V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureGamesFactory;->getOneGame(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    .line 47
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->dg:Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;

    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/FeatureView;->prepareFeatureView(Lcom/doodlemobile/gamecenter/featuregames/DoodlemobileFeatureGame;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mFeatureImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 63
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRefreshTime(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mRefreshtime:I

    .line 67
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/FeatureView;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->refreshHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mWhat:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/FeatureView;->refreshHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mWhat:I

    iget v2, p0, Lcom/doodlemobile/gamecenter/FeatureView;->mRefreshtime:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 102
    :cond_0
    return-void
.end method
