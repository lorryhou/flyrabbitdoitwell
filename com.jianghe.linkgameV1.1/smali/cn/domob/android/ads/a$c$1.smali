.class final Lcn/domob/android/ads/a$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a$c;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a$c;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcn/domob/android/ads/a$c$1;->a:Lcn/domob/android/ads/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcn/domob/android/ads/a$c$1;->a:Lcn/domob/android/ads/a$c;

    iget-object v0, v0, Lcn/domob/android/ads/a$c;->a:Lcn/domob/android/ads/a;

    invoke-virtual {v0}, Lcn/domob/android/ads/a;->stopLoading()V

    .line 150
    return-void
.end method
