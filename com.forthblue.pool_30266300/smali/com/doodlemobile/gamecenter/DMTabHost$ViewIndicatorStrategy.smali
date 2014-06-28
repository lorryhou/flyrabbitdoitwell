.class Lcom/doodlemobile/gamecenter/DMTabHost$ViewIndicatorStrategy;
.super Ljava/lang/Object;
.source "DMTabHost.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/DMTabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DMTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIndicatorStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DMTabHost;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/DMTabHost;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$ViewIndicatorStrategy;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/DMTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    .line 585
    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/DMTabHost;Landroid/view/View;Lcom/doodlemobile/gamecenter/DMTabHost$1;)V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0, p1, p2}, Lcom/doodlemobile/gamecenter/DMTabHost$ViewIndicatorStrategy;-><init>(Lcom/doodlemobile/gamecenter/DMTabHost;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    return-object v0
.end method
