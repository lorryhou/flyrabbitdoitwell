.class final Lcn/domob/android/ads/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/d;->a()Landroid/app/Dialog;
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
    .line 191
    iput-object p1, p0, Lcn/domob/android/ads/a/d$1;->a:Lcn/domob/android/ads/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 194
    iget-object v0, p0, Lcn/domob/android/ads/a/d$1;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->b(Lcn/domob/android/ads/a/d;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/d$1;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v1}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/a/d;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcn/domob/android/ads/a/d$1;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->c(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/d$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcn/domob/android/ads/a/d$1;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->c(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/d$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/a/d$b;->q()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/a/d$1;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->d(Lcn/domob/android/ads/a/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcn/domob/android/ads/a/d$1;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->c(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/d$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcn/domob/android/ads/a/d$1;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->c(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/d$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/a/d$b;->p()V

    .line 206
    :cond_1
    return-void
.end method
