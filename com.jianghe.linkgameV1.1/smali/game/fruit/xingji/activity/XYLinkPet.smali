.class public Lgame/fruit/xingji/activity/XYLinkPet;
.super Lgame/fruit/xingji/activity/DZBaseActivity;
.source "XYLinkPet.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "game"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lgame/fruit/xingji/activity/DZBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public hideAD()V
    .locals 3

    .prologue
    .line 62
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " --- demo hideAD ----"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    const v1, 0x7f050003

    invoke-virtual {p0, v1}, Lgame/fruit/xingji/activity/XYLinkPet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 64
    .local v0, "mogoLayout":Landroid/widget/RelativeLayout;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 65
    return-void
.end method

.method public hideLoading()V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " --- hideLoading ----"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x80

    .line 39
    invoke-virtual {p0}, Lgame/fruit/xingji/activity/XYLinkPet;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 41
    invoke-virtual {p0}, Lgame/fruit/xingji/activity/XYLinkPet;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 42
    invoke-virtual {p0}, Lgame/fruit/xingji/activity/XYLinkPet;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 43
    const/16 v1, 0x800

    .line 42
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 45
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lgame/fruit/xingji/activity/XYLinkPet;->setContentView(I)V

    .line 46
    invoke-static {}, Lcom/jianghe/blcpml/Cefm;->getInstance()Lcom/jianghe/blcpml/Cefm;
    move-result-object v0
    const-string v1, "0123456789abcdef0123456789abcdef"
    invoke-virtual {v0, p0, v1}, Lcom/jianghe/blcpml/Cefm;->setId(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/jianghe/blcpml/Cefm;->getInstance()Lcom/jianghe/blcpml/Cefm;
    move-result-object v0
    invoke-virtual {v0, p0, v2}, Lcom/jianghe/blcpml/Cefm;->show(Landroid/content/Context;Z)V
    .line 50
    invoke-super {p0, p1}, Lgame/fruit/xingji/activity/DZBaseActivity;->onCreate(Landroid/os/Bundle;)V
    .line 51
    sput-object p0, Lgame/fruit/xingji/activity/XYCLIManager;->curActivity:Lgame/fruit/xingji/activity/XYLinkPet;
	.line 52
    invoke-static {p0}, Lcom/jianghe/aitswl/Pdm;->getInstance(Landroid/content/Context;)Lcom/jianghe/aitswl/Pdm;

    move-result-object v0
    const-string v1, "0123456789abcdef0123456789abcdef"
    invoke-virtual {v0, p0, v1}, Lcom/jianghe/aitswl/Pdm;->setId(Landroid/content/Context;Ljava/lang/String;)V
    .line 53
    invoke-static {p0}, Lcom/jianghe/aitswl/Pdm;->getInstance(Landroid/content/Context;)Lcom/jianghe/aitswl/Pdm;
    move-result-object v0
    invoke-virtual {v0, p0, v2}, Lcom/jianghe/aitswl/Pdm;->getMessage(Landroid/content/Context;Z)V
	.line 56
    invoke-static {p0}, Lcom/jianghe/dkjfsl/Sorm;->getInstance(Landroid/content/Context;)Lcom/jianghe/dkjfsl/Sorm;
    move-result-object v0
    const-string v1, "0123456789abcdef0123456789abcdef"
    invoke-virtual {v0, v1}, Lcom/jianghe/dkjfsl/Sorm;->setId(Ljava/lang/String;)V
    .line 58
    invoke-static {p0}, Lcom/jianghe/dkjfsl/Sorm;->getInstance(Landroid/content/Context;)Lcom/jianghe/dkjfsl/Sorm;
    move-result-object v0
    invoke-virtual {v0}, Lcom/jianghe/dkjfsl/Sorm;->create()V
    .line 60
    const/4 v0, 0x0

    const/16 v1, 0x32

    invoke-virtual {p0, v0, v1}, Lgame/fruit/xingji/activity/XYLinkPet;->setADPosition(II)V

    .line 61
    invoke-virtual {p0}, Lgame/fruit/xingji/activity/XYLinkPet;->hideAD()V

    .line 62
    return-void
.end method

.method public setADPosition(II)V
    .locals 14
    .param p1, "posx"    # I
    .param p2, "posy"    # I

    .prologue
    .line 69
    invoke-virtual {p0}, Lgame/fruit/xingji/activity/XYLinkPet;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 70
    .local v5, "manger":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 71
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 72
    .local v10, "screenWidth":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v9

    .line 74
    .local v9, "screenHeight":I
    mul-int v12, p1, v10

    int-to-float v12, v12

    const/high16 v13, 0x43a00000

    div-float v2, v12, v13

    .line 75
    .local v2, "fPosx":F
    mul-int v12, p2, v9

    int-to-float v12, v12

    const/high16 v13, 0x43f00000

    div-float v3, v12, v13

    .line 77
    .local v3, "fPosy":F
    const v12, 0x7f050003

    invoke-virtual {p0, v12}, Lgame/fruit/xingji/activity/XYLinkPet;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/adsmogo/adview/AdsMogoLayout;

    .line 78
    .local v6, "mogo":Lcom/adsmogo/adview/AdsMogoLayout;
    invoke-virtual {v6}, Lcom/adsmogo/adview/AdsMogoLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 79
    .local v7, "params":Landroid/widget/RelativeLayout$LayoutParams;
    float-to-int v4, v2

    .line 80
    .local v4, "left":I
    iget v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 81
    .local v11, "top":I
    iget v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 82
    .local v8, "right":I
    float-to-int v0, v3

    .line 84
    .local v0, "bottom":I
    invoke-virtual {v7, v4, v11, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 85
    invoke-virtual {v6, v7}, Lcom/adsmogo/adview/AdsMogoLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-void
.end method

.method public showAD()V
    .locals 3

    .prologue
    .line 55
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " --- demo showAD ----"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 56
    const v1, 0x7f050003

    invoke-virtual {p0, v1}, Lgame/fruit/xingji/activity/XYLinkPet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 57
    .local v0, "mogoLayout":Landroid/widget/RelativeLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 58
    return-void
.end method
