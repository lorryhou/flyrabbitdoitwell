.class final Lcn/domob/android/ads/a/d$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/d;->i()V
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
    .line 541
    iput-object p1, p0, Lcn/domob/android/ads/a/d$11;->a:Lcn/domob/android/ads/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcn/domob/android/ads/a/d$11;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->l(Lcn/domob/android/ads/a/d;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 545
    return-void
.end method
