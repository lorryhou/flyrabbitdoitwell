.class final Lcn/domob/android/ads/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/x;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/x;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/x;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 111
    invoke-static {}, Lcn/domob/android/ads/x;->I()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Start to load Splash Ad page."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    iget-object v0, v0, Lcn/domob/android/ads/x;->e:Lcn/domob/android/ads/h;

    invoke-virtual {v0}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcn/domob/android/ads/h$b;->c()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    iget-object v2, v2, Lcn/domob/android/ads/x;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->s(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 114
    invoke-virtual {v0}, Lcn/domob/android/ads/h$b;->d()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    iget-object v2, v2, Lcn/domob/android/ads/x;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/a/a;->s(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v2, v0

    .line 115
    iget-object v0, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    iget-object v0, v0, Lcn/domob/android/ads/x;->d:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/DomobAdView;->a(II)V

    .line 117
    iget-object v0, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    iget-object v0, v0, Lcn/domob/android/ads/x;->d:Lcn/domob/android/ads/DomobAdView;

    check-cast v0, Lcn/domob/android/ads/y;

    invoke-virtual {v0}, Lcn/domob/android/ads/y;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    new-instance v3, Lcn/domob/android/ads/z;

    iget-object v4, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    iget-object v4, v4, Lcn/domob/android/ads/x;->a:Landroid/content/Context;

    new-instance v5, Lcn/domob/android/ads/i;

    invoke-direct {v5, v1, v2}, Lcn/domob/android/ads/i;-><init>(II)V

    iget-object v1, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    iget-object v1, v1, Lcn/domob/android/ads/x;->e:Lcn/domob/android/ads/h;

    iget-object v2, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    invoke-direct {v3, v4, v5, v1, v2}, Lcn/domob/android/ads/z;-><init>(Landroid/content/Context;Lcn/domob/android/ads/i;Lcn/domob/android/ads/h;Lcn/domob/android/ads/e;)V

    iput-object v3, v0, Lcn/domob/android/ads/x;->g:Lcn/domob/android/ads/j;

    .line 124
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    iget-object v0, v0, Lcn/domob/android/ads/x;->g:Lcn/domob/android/ads/j;

    iget-object v1, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/j;->a(Lcn/domob/android/ads/j$a;)V

    .line 125
    iget-object v0, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    iget-object v0, v0, Lcn/domob/android/ads/x;->g:Lcn/domob/android/ads/j;

    invoke-virtual {v0}, Lcn/domob/android/ads/j;->a()V

    .line 126
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    new-instance v3, Lcn/domob/android/ads/v;

    iget-object v4, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    iget-object v4, v4, Lcn/domob/android/ads/x;->a:Landroid/content/Context;

    new-instance v5, Lcn/domob/android/ads/i;

    invoke-direct {v5, v1, v2}, Lcn/domob/android/ads/i;-><init>(II)V

    iget-object v1, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    iget-object v1, v1, Lcn/domob/android/ads/x;->e:Lcn/domob/android/ads/h;

    iget-object v2, p0, Lcn/domob/android/ads/x$1;->a:Lcn/domob/android/ads/x;

    invoke-direct {v3, v4, v5, v1, v2}, Lcn/domob/android/ads/v;-><init>(Landroid/content/Context;Lcn/domob/android/ads/i;Lcn/domob/android/ads/h;Lcn/domob/android/ads/e;)V

    iput-object v3, v0, Lcn/domob/android/ads/x;->g:Lcn/domob/android/ads/j;

    goto :goto_0
.end method
