.class final Lcn/domob/android/ads/t$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/t;->a(Landroid/view/View;Lcn/domob/android/ads/t$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/t;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/t;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcn/domob/android/ads/t$2;->a:Lcn/domob/android/ads/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 368
    iget-object v0, p0, Lcn/domob/android/ads/t$2;->a:Lcn/domob/android/ads/t;

    invoke-static {v0}, Lcn/domob/android/ads/t;->a(Lcn/domob/android/ads/t;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcn/domob/android/ads/t$2;->a:Lcn/domob/android/ads/t;

    invoke-static {v0}, Lcn/domob/android/ads/t;->a(Lcn/domob/android/ads/t;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 371
    :cond_0
    return-void
.end method
