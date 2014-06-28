.class public Lcom/doodlemobile/gamecenter/GameAdActivity;
.super Landroid/app/Activity;
.source "GameAdActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 13
    const-string v1, "http://127.0.0.1"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/GameAdActivity;->setContentView(Landroid/view/View;)V

    .line 18
    return-void
.end method
