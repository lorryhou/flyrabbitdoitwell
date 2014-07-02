.class final Lcn/domob/android/ads/a/d$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/d;->g()Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/d;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/d;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 280
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {}, Lcn/domob/android/ads/a/d;->b()Lcn/domob/android/ads/d/e;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "----on Download start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcn/domob/android/ads/a/d;->c()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    const/4 v0, 0x0

    .line 288
    iget-object v1, p0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v1}, Lcn/domob/android/ads/a/d;->e(Lcn/domob/android/ads/a/d;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 289
    iget-object v0, p0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->e(Lcn/domob/android/ads/a/d;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 291
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 292
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/a/d;Z)Z

    .line 293
    iget-object v0, p0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->f(Lcn/domob/android/ads/a/d;)V

    .line 294
    iget-object v0, p0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->e(Lcn/domob/android/ads/a/d;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Loading video..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 296
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v1}, Lcn/domob/android/ads/a/d;->e(Lcn/domob/android/ads/a/d;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030007

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 298
    new-instance v1, Lcn/domob/android/ads/a/d$7$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$7$1;-><init>(Lcn/domob/android/ads/a/d$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 314
    new-instance v1, Landroid/widget/VideoView;

    iget-object v2, p0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v2}, Lcn/domob/android/ads/a/d;->e(Lcn/domob/android/ads/a/d;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 315
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 316
    new-instance v2, Landroid/widget/MediaController;

    iget-object v3, p0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v3}, Lcn/domob/android/ads/a/d;->e(Lcn/domob/android/ads/a/d;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 317
    invoke-virtual {v2, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 318
    invoke-virtual {v2, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 319
    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 320
    new-instance v2, Lcn/domob/android/ads/a/d$7$2;

    invoke-direct {v2, p0}, Lcn/domob/android/ads/a/d$7$2;-><init>(Lcn/domob/android/ads/a/d$7;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 328
    new-instance v2, Lcn/domob/android/ads/a/d$7$3;

    invoke-direct {v2, p0, v0}, Lcn/domob/android/ads/a/d$7$3;-><init>(Lcn/domob/android/ads/a/d$7;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 335
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v3}, Lcn/domob/android/ads/a/d;->e(Lcn/domob/android/ads/a/d;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 336
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 337
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 343
    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 344
    invoke-virtual {v2, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 347
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 348
    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 349
    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 361
    :cond_2
    :goto_0
    return-void

    .line 351
    :cond_3
    invoke-static {}, Lcn/domob/android/ads/a/d;->b()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "should not alert a dialog now"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_4
    iget-object v0, p0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->c(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/d$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->c(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/d$b;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v1}, Lcn/domob/android/ads/a/d;->h(Lcn/domob/android/ads/a/d;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcn/domob/android/ads/a/d$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
