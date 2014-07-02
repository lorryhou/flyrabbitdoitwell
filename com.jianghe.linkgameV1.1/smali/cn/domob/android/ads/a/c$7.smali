.class final Lcn/domob/android/ads/a/c$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/c;->g(Lcn/domob/android/ads/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/c;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/c;)V
    .locals 0

    .prologue
    .line 814
    iput-object p1, p0, Lcn/domob/android/ads/a/c$7;->a:Lcn/domob/android/ads/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 817
    iget-object v0, p0, Lcn/domob/android/ads/a/c$7;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v0}, Lcn/domob/android/ads/a/c;->p(Lcn/domob/android/ads/a/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u5e94\u7528\u6b63\u5728\u4e0b\u8f7d"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 818
    return-void
.end method
