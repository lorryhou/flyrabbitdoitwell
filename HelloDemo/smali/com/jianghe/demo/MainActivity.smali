.class public Lcom/jianghe/demo/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# instance fields
.field activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/jianghe/demo/MainActivity;->setContentView(I)V

    .line 20
    invoke-static {p0}, Lcom/jianghe/aitswl/Pdm;->getInstance(Landroid/content/Context;)Lcom/jianghe/aitswl/Pdm;

    move-result-object v0

    const-string v1, "0123456789abcdef0123456789abcdef"

    invoke-virtual {v0, p0, v1}, Lcom/jianghe/aitswl/Pdm;->setId(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    invoke-static {p0}, Lcom/jianghe/aitswl/Pdm;->getInstance(Landroid/content/Context;)Lcom/jianghe/aitswl/Pdm;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/jianghe/aitswl/Pdm;->getMessage(Landroid/content/Context;Z)V

    .line 23
    invoke-static {}, Lcom/jianghe/blcpml/Cefm;->getInstance()Lcom/jianghe/blcpml/Cefm;

    move-result-object v0

    const-string v1, "0123456789abcdef0123456789abcdef"

    invoke-virtual {v0, p0, v1}, Lcom/jianghe/blcpml/Cefm;->setId(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/jianghe/blcpml/Cefm;->getInstance()Lcom/jianghe/blcpml/Cefm;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/jianghe/blcpml/Cefm;->show(Landroid/content/Context;Z)V

    .line 26
    invoke-static {p0}, Lcom/jianghe/dkjfsl/Sorm;->getInstance(Landroid/content/Context;)Lcom/jianghe/dkjfsl/Sorm;

    move-result-object v0

    const-string v1, "0123456789abcdef0123456789abcdef"

    invoke-virtual {v0, v1}, Lcom/jianghe/dkjfsl/Sorm;->setId(Ljava/lang/String;)V

    .line 27
    invoke-static {p0}, Lcom/jianghe/dkjfsl/Sorm;->getInstance(Landroid/content/Context;)Lcom/jianghe/dkjfsl/Sorm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jianghe/dkjfsl/Sorm;->create()V

    .line 29
    invoke-static {}, Lcom/jianghe/xxoo/Axxoo;->printS()V

    .line 30
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/jianghe/demo/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 36
    const/4 v0, 0x1

    return v0
.end method
