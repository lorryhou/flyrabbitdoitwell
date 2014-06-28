.class Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$2;
.super Ljava/lang/Object;
.source "MoreGamesActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->initMoreGames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$2;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    # getter for: Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->access$100()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    # getter for: Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;
    invoke-static {}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->access$100()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 93
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
