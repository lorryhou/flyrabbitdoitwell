.class final Lcn/domob/android/ads/c/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/c/l;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/c/l;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcn/domob/android/ads/c/m;->a:Lcn/domob/android/ads/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcn/domob/android/ads/c/m;->a:Lcn/domob/android/ads/c/l;

    invoke-virtual {v0}, Lcn/domob/android/ads/c/l;->e()Z

    move-result v0

    .line 64
    iget-object v1, p0, Lcn/domob/android/ads/c/m;->a:Lcn/domob/android/ads/c/l;

    invoke-static {v1}, Lcn/domob/android/ads/c/l;->a(Lcn/domob/android/ads/c/l;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 65
    iget-object v1, p0, Lcn/domob/android/ads/c/m;->a:Lcn/domob/android/ads/c/l;

    invoke-static {v1, v0}, Lcn/domob/android/ads/c/l;->a(Lcn/domob/android/ads/c/l;Z)Z

    .line 66
    iget-object v0, p0, Lcn/domob/android/ads/c/m;->a:Lcn/domob/android/ads/c/l;

    invoke-static {v0}, Lcn/domob/android/ads/c/l;->b(Lcn/domob/android/ads/c/l;)Lcn/domob/android/ads/c/s;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/c/m;->a:Lcn/domob/android/ads/c/l;

    invoke-static {v1}, Lcn/domob/android/ads/c/l;->a(Lcn/domob/android/ads/c/l;)Z

    move-result v1

    invoke-static {v1}, Lcn/domob/android/ads/c/t;->a(Z)Lcn/domob/android/ads/c/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/s;->a(Lcn/domob/android/ads/c/p;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/c/m;->a:Lcn/domob/android/ads/c/l;

    invoke-static {v0}, Lcn/domob/android/ads/c/l;->c(Lcn/domob/android/ads/c/l;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void
.end method
