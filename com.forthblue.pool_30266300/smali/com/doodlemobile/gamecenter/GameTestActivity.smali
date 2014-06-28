.class public Lcom/doodlemobile/gamecenter/GameTestActivity;
.super Landroid/app/Activity;
.source "GameTestActivity.java"


# static fields
.field public static final DIALOG_PROMOTE_DIALOG:I = 0x186a1


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 160
    new-instance v0, Lcom/doodlemobile/gamecenter/GameTestActivity$7;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/GameTestActivity$7;-><init>(Lcom/doodlemobile/gamecenter/GameTestActivity;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/GameTestActivity;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method inflateButtons()V
    .locals 2

    .prologue
    .line 41
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameTestActivity;->setContentView(I)V

    .line 42
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/GoogleAnaylise;->start(Landroid/content/Context;)V

    .line 44
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/GameTestActivity$1;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/GameTestActivity$1;-><init>(Lcom/doodlemobile/gamecenter/GameTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/GameTestActivity$2;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/GameTestActivity$2;-><init>(Lcom/doodlemobile/gamecenter/GameTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/GameTestActivity$3;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/GameTestActivity$3;-><init>(Lcom/doodlemobile/gamecenter/GameTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/GameTestActivity$4;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/GameTestActivity$4;-><init>(Lcom/doodlemobile/gamecenter/GameTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/GameTestActivity$5;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/GameTestActivity$5;-><init>(Lcom/doodlemobile/gamecenter/GameTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v0, 0x7f080067

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/GameTestActivity$6;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/GameTestActivity$6;-><init>(Lcom/doodlemobile/gamecenter/GameTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method

.method inflateView()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameTestActivity;->setContentView(I)V

    .line 37
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->onCreate(Landroid/app/Activity;)V

    .line 30
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/GameTestActivity;->inflateButtons()V

    .line 32
    const/high16 v0, 0x41200000

    invoke-static {p0, v0}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->SetOnFeatureScreen(Landroid/content/Context;F)V

    .line 33
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 186
    const v0, 0x186a1

    if-ne p1, v0, :cond_0

    .line 187
    new-instance v0, Lcom/doodlemobile/gamecenter/PromoteDialog;

    const v1, 0x7f070002

    invoke-direct {v0, p0, v1}, Lcom/doodlemobile/gamecenter/PromoteDialog;-><init>(Landroid/content/Context;I)V

    .line 189
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 153
    invoke-static {p1, p2}, Lcom/doodlemobile/gamecenter/featurescreen/FeatureScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 172
    const-string v0, "x10001"

    invoke-static {p0, v0}, Lcom/doodlemobile/gamecenter/DoodleMobile;->onStartSession(Landroid/app/Activity;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 179
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->onStop(Landroid/app/Activity;)V

    .line 180
    invoke-static {}, Lcom/doodlemobile/gamecenter/GoogleAnaylise;->stop()V

    .line 181
    return-void
.end method
