.class final Lcn/domob/android/ads/a/d$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/d$7;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/d$7;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/d$7;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcn/domob/android/ads/a/d$7$1;->a:Lcn/domob/android/ads/a/d$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 301
    invoke-static {}, Lcn/domob/android/ads/a/d;->b()Lcn/domob/android/ads/d/e;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/d$7$1;->a:Lcn/domob/android/ads/a/d$7;

    iget-object v1, v1, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    const-string v2, "Video dialog dismissed."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcn/domob/android/ads/a/d$7$1;->a:Lcn/domob/android/ads/a/d$7;

    iget-object v0, v0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/a/d;Z)Z

    .line 304
    iget-object v0, p0, Lcn/domob/android/ads/a/d$7$1;->a:Lcn/domob/android/ads/a/d$7;

    iget-object v0, v0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->g(Lcn/domob/android/ads/a/d;)V

    .line 307
    iget-object v0, p0, Lcn/domob/android/ads/a/d$7$1;->a:Lcn/domob/android/ads/a/d$7;

    iget-object v0, v0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->h(Lcn/domob/android/ads/a/d;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcn/domob/android/ads/a/d$7$1;->a:Lcn/domob/android/ads/a/d$7;

    iget-object v0, v0, Lcn/domob/android/ads/a/d$7;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->i(Lcn/domob/android/ads/a/d;)V

    .line 311
    :cond_0
    return-void
.end method
