.class Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MoreGamesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    # getter for: Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->access$500(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load url error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 206
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    .line 209
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 185
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 186
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    const/4 v0, 0x2

    const-string v1, "="

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "Clicks"

    const-string v3, "MoreGamesActivity"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return v5

    .line 190
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    # getter for: Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->access$500(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->isNetworkAvailable(Landroid/content/Context;)Z
    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->access$600(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "market://"

    const-string v1, "http://play.google.com/store/apps/"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    # invokes: Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->OpenNetWork()V
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->access$700(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)V

    goto :goto_0
.end method
