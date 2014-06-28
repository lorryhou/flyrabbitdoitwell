.class Lcom/facebook/android/FbDialog$FbWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "FbDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/android/FbDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FbWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/android/FbDialog;


# direct methods
.method private constructor <init>(Lcom/facebook/android/FbDialog;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/android/FbDialog;Lcom/facebook/android/FbDialog$1;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/facebook/android/FbDialog$FbWebViewClient;-><init>(Lcom/facebook/android/FbDialog;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    # getter for: Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/facebook/android/FbDialog;->access$300(Lcom/facebook/android/FbDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    # getter for: Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/facebook/android/FbDialog;->access$400(Lcom/facebook/android/FbDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    # getter for: Lcom/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/facebook/android/FbDialog;->access$200(Lcom/facebook/android/FbDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 183
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 170
    const-string v0, "Facebook-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webview loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 172
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    # getter for: Lcom/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/facebook/android/FbDialog;->access$200(Lcom/facebook/android/FbDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 173
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    # getter for: Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;
    invoke-static {v0}, Lcom/facebook/android/FbDialog;->access$100(Lcom/facebook/android/FbDialog;)Lcom/facebook/android/Facebook$DialogListener;

    move-result-object v0

    new-instance v1, Lcom/facebook/android/DialogError;

    invoke-direct {v1, p3, p2, p4}, Lcom/facebook/android/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/android/Facebook$DialogListener;->onError(Lcom/facebook/android/DialogError;)V

    .line 165
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    invoke-virtual {v0}, Lcom/facebook/android/FbDialog;->dismiss()V

    .line 166
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 126
    const-string v0, "Facebook-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v0, "fbconnect://success"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    invoke-static {p2}, Lcom/facebook/android/Util;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 130
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    if-nez v1, :cond_0

    .line 132
    const-string v1, "error_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    :cond_0
    if-nez v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    # getter for: Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;
    invoke-static {v1}, Lcom/facebook/android/FbDialog;->access$100(Lcom/facebook/android/FbDialog;)Lcom/facebook/android/Facebook$DialogListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/android/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    invoke-virtual {v0}, Lcom/facebook/android/FbDialog;->dismiss()V

    move v0, v4

    .line 156
    :goto_1
    return v0

    .line 137
    :cond_1
    const-string v0, "access_denied"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OAuthAccessDeniedException"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    # getter for: Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;
    invoke-static {v0}, Lcom/facebook/android/FbDialog;->access$100(Lcom/facebook/android/FbDialog;)Lcom/facebook/android/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/android/Facebook$DialogListener;->onCancel()V

    goto :goto_0

    .line 141
    :cond_3
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    # getter for: Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;
    invoke-static {v0}, Lcom/facebook/android/FbDialog;->access$100(Lcom/facebook/android/FbDialog;)Lcom/facebook/android/Facebook$DialogListener;

    move-result-object v0

    new-instance v2, Lcom/facebook/android/FacebookError;

    invoke-direct {v2, v1}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/facebook/android/Facebook$DialogListener;->onFacebookError(Lcom/facebook/android/FacebookError;)V

    goto :goto_0

    .line 146
    :cond_4
    const-string v0, "fbconnect://cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 147
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    # getter for: Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;
    invoke-static {v0}, Lcom/facebook/android/FbDialog;->access$100(Lcom/facebook/android/FbDialog;)Lcom/facebook/android/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/android/Facebook$DialogListener;->onCancel()V

    .line 148
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    invoke-virtual {v0}, Lcom/facebook/android/FbDialog;->dismiss()V

    move v0, v4

    .line 149
    goto :goto_1

    .line 150
    :cond_5
    const-string v0, "touch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 151
    const/4 v0, 0x0

    goto :goto_1

    .line 154
    :cond_6
    iget-object v0, p0, Lcom/facebook/android/FbDialog$FbWebViewClient;->this$0:Lcom/facebook/android/FbDialog;

    invoke-virtual {v0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 156
    goto :goto_1
.end method
