.class public Lcom/doodlemobile/gamecenter/IntroductionView;
.super Lcom/doodlemobile/gamecenter/Scene;
.source "IntroductionView.java"


# static fields
.field public static final HANDLER_RESET_SCREEN:I = 0x3e9

.field public static final TAG:Ljava/lang/String; = "IntroductionView"


# instance fields
.field mView:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/doodlemobile/gamecenter/Scene;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;)V

    .line 22
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/IntroductionView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    .line 24
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/doodlemobile/gamecenter/GameCenterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 27
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/IntroductionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/DoodleMobileSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/DoodleMobileSettings;->mPackageName:Ljava/lang/String;

    const-string v2, "layout"

    const-string v3, "dm_introduction_view"

    invoke-static {v1, v2, v3}, Lcom/doodlemobile/gamecenter/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/IntroductionView;->mView:Landroid/widget/RelativeLayout;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/doodlemobile/gamecenter/Scene;-><init>(Lcom/doodlemobile/gamecenter/GameCenterActivity;Landroid/util/AttributeSet;I)V

    .line 17
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/IntroductionView;->mContext:Lcom/doodlemobile/gamecenter/GameCenterActivity;

    .line 18
    return-void
.end method


# virtual methods
.method public onInflate()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onSetScene()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
