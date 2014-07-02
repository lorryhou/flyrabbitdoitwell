.class final Lcn/domob/android/ads/c/a$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/c/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/c/a$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/c/a$1;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/c/a$1;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcn/domob/android/ads/c/a$1$3;->a:Lcn/domob/android/ads/c/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcn/domob/android/ads/c/a$1$3;->a:Lcn/domob/android/ads/c/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/c/a$1;->b:Lcn/domob/android/ads/c/a;

    invoke-static {v0}, Lcn/domob/android/ads/c/a;->e(Lcn/domob/android/ads/c/a;)I

    .line 130
    iget-object v0, p0, Lcn/domob/android/ads/c/a$1$3;->a:Lcn/domob/android/ads/c/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/c/a$1;->b:Lcn/domob/android/ads/c/a;

    invoke-static {v0}, Lcn/domob/android/ads/c/a;->f(Lcn/domob/android/ads/c/a;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcn/domob/android/ads/c/a$1$3;->a:Lcn/domob/android/ads/c/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/c/a$1;->b:Lcn/domob/android/ads/c/a;

    invoke-static {v0}, Lcn/domob/android/ads/c/a;->g(Lcn/domob/android/ads/c/a;)V

    .line 133
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method
