.class final Lcn/domob/android/ads/t$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/t;->a(Landroid/view/View;Lcn/domob/android/ads/t$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcn/domob/android/ads/t$d;

.field final synthetic c:Lcn/domob/android/ads/t;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/t;Landroid/view/View;Lcn/domob/android/ads/t$d;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcn/domob/android/ads/t$1;->c:Lcn/domob/android/ads/t;

    iput-object p2, p0, Lcn/domob/android/ads/t$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcn/domob/android/ads/t$1;->b:Lcn/domob/android/ads/t$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 265
    iget-object v0, p0, Lcn/domob/android/ads/t$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 266
    iget-object v0, p0, Lcn/domob/android/ads/t$1;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0}, Lcn/domob/android/ads/t$d;->e(Lcn/domob/android/ads/t$d;)Lcn/domob/android/ads/t$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcn/domob/android/ads/t$1;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0}, Lcn/domob/android/ads/t$d;->e(Lcn/domob/android/ads/t$d;)Lcn/domob/android/ads/t$c;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/t$c;->a()V

    .line 270
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/t$1;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0}, Lcn/domob/android/ads/t$d;->f(Lcn/domob/android/ads/t$d;)Lcn/domob/android/ads/t$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcn/domob/android/ads/t$1;->b:Lcn/domob/android/ads/t$d;

    invoke-static {v0}, Lcn/domob/android/ads/t$d;->f(Lcn/domob/android/ads/t$d;)Lcn/domob/android/ads/t$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/t$b;->c()V

    .line 273
    :cond_1
    return-void
.end method
