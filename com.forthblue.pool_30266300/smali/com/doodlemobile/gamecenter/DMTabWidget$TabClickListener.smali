.class Lcom/doodlemobile/gamecenter/DMTabWidget$TabClickListener;
.super Ljava/lang/Object;
.source "DMTabWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DMTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DMTabWidget;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/DMTabWidget;I)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DMTabWidget$TabClickListener;->this$0:Lcom/doodlemobile/gamecenter/DMTabWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput p2, p0, Lcom/doodlemobile/gamecenter/DMTabWidget$TabClickListener;->mTabIndex:I

    .line 376
    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/DMTabWidget;ILcom/doodlemobile/gamecenter/DMTabWidget$1;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0, p1, p2}, Lcom/doodlemobile/gamecenter/DMTabWidget$TabClickListener;-><init>(Lcom/doodlemobile/gamecenter/DMTabWidget;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabWidget$TabClickListener;->this$0:Lcom/doodlemobile/gamecenter/DMTabWidget;

    # getter for: Lcom/doodlemobile/gamecenter/DMTabWidget;->mSelectionChangedListener:Lcom/doodlemobile/gamecenter/DMTabWidget$OnTabSelectionChanged;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DMTabWidget;->access$100(Lcom/doodlemobile/gamecenter/DMTabWidget;)Lcom/doodlemobile/gamecenter/DMTabWidget$OnTabSelectionChanged;

    move-result-object v0

    iget v1, p0, Lcom/doodlemobile/gamecenter/DMTabWidget$TabClickListener;->mTabIndex:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/doodlemobile/gamecenter/DMTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 380
    return-void
.end method
