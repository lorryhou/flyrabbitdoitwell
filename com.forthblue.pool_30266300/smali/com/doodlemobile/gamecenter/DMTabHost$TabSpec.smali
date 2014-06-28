.class public Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;
.super Ljava/lang/Object;
.source "DMTabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DMTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSpec"
.end annotation


# static fields
.field public static final ROUNDED_TAB_LEFT:I = 0x0

.field public static final ROUNDED_TAB_MIDDLE:I = 0x1

.field public static final ROUNDED_TAB_RIGHT:I = 0x2


# instance fields
.field private mContentStrategy:Lcom/doodlemobile/gamecenter/DMTabHost$ContentStrategy;

.field private mIndicatorStrategy:Lcom/doodlemobile/gamecenter/DMTabHost$IndicatorStrategy;

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DMTabHost;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/DMTabHost;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mTag:Ljava/lang/String;

    .line 410
    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/DMTabHost;Ljava/lang/String;Lcom/doodlemobile/gamecenter/DMTabHost$1;)V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0, p1, p2}, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;-><init>(Lcom/doodlemobile/gamecenter/DMTabHost;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;)Lcom/doodlemobile/gamecenter/DMTabHost$IndicatorStrategy;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mIndicatorStrategy:Lcom/doodlemobile/gamecenter/DMTabHost$IndicatorStrategy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;)Lcom/doodlemobile/gamecenter/DMTabHost$ContentStrategy;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mContentStrategy:Lcom/doodlemobile/gamecenter/DMTabHost$ContentStrategy;

    return-object v0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(I)Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;
    .locals 3

    .prologue
    .line 442
    new-instance v0, Lcom/doodlemobile/gamecenter/DMTabHost$ViewIdContentStrategy;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/doodlemobile/gamecenter/DMTabHost$ViewIdContentStrategy;-><init>(Lcom/doodlemobile/gamecenter/DMTabHost;ILcom/doodlemobile/gamecenter/DMTabHost$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mContentStrategy:Lcom/doodlemobile/gamecenter/DMTabHost$ContentStrategy;

    .line 443
    return-object p0
.end method

.method public setContent(Landroid/content/Intent;)Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;
    .locals 4

    .prologue
    .line 459
    new-instance v0, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/doodlemobile/gamecenter/DMTabHost$IntentContentStrategy;-><init>(Lcom/doodlemobile/gamecenter/DMTabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/doodlemobile/gamecenter/DMTabHost$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mContentStrategy:Lcom/doodlemobile/gamecenter/DMTabHost$ContentStrategy;

    .line 460
    return-object p0
.end method

.method public setContent(Lcom/doodlemobile/gamecenter/DMTabHost$TabContentFactory;)Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;
    .locals 3

    .prologue
    .line 451
    new-instance v0, Lcom/doodlemobile/gamecenter/DMTabHost$FactoryContentStrategy;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/doodlemobile/gamecenter/DMTabHost$FactoryContentStrategy;-><init>(Lcom/doodlemobile/gamecenter/DMTabHost;Ljava/lang/CharSequence;Lcom/doodlemobile/gamecenter/DMTabHost$TabContentFactory;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mContentStrategy:Lcom/doodlemobile/gamecenter/DMTabHost$ContentStrategy;

    .line 452
    return-object p0
.end method

.method public setIndicator(Landroid/view/View;)Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;
    .locals 3

    .prologue
    .line 433
    new-instance v0, Lcom/doodlemobile/gamecenter/DMTabHost$ViewIndicatorStrategy;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/doodlemobile/gamecenter/DMTabHost$ViewIndicatorStrategy;-><init>(Lcom/doodlemobile/gamecenter/DMTabHost;Landroid/view/View;Lcom/doodlemobile/gamecenter/DMTabHost$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mIndicatorStrategy:Lcom/doodlemobile/gamecenter/DMTabHost$IndicatorStrategy;

    .line 434
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;)Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;
    .locals 3

    .prologue
    .line 416
    new-instance v0, Lcom/doodlemobile/gamecenter/DMTabHost$LabelIndicatorStrategy;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/doodlemobile/gamecenter/DMTabHost$LabelIndicatorStrategy;-><init>(Lcom/doodlemobile/gamecenter/DMTabHost;Ljava/lang/CharSequence;Lcom/doodlemobile/gamecenter/DMTabHost$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mIndicatorStrategy:Lcom/doodlemobile/gamecenter/DMTabHost$IndicatorStrategy;

    .line 417
    return-object p0
.end method

.method public setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;
    .locals 3

    .prologue
    .line 424
    new-instance v0, Lcom/doodlemobile/gamecenter/DMTabHost$LabelAndIconIndicatorStrategy;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->this$0:Lcom/doodlemobile/gamecenter/DMTabHost;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/doodlemobile/gamecenter/DMTabHost$LabelAndIconIndicatorStrategy;-><init>(Lcom/doodlemobile/gamecenter/DMTabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/doodlemobile/gamecenter/DMTabHost$1;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DMTabHost$TabSpec;->mIndicatorStrategy:Lcom/doodlemobile/gamecenter/DMTabHost$IndicatorStrategy;

    .line 425
    return-object p0
.end method
