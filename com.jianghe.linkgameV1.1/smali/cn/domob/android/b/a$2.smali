.class final Lcn/domob/android/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/b/a;->a(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/b/a;


# direct methods
.method constructor <init>(Lcn/domob/android/b/a;)V
    .locals 0

    .prologue
    .line 496
    iput-object p1, p0, Lcn/domob/android/b/a$2;->a:Lcn/domob/android/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcn/domob/android/b/a$2;->a:Lcn/domob/android/b/a;

    invoke-static {v0}, Lcn/domob/android/b/a;->n(Lcn/domob/android/b/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 501
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 506
    invoke-static {}, Lcn/domob/android/b/a;->e()Lcn/domob/android/ads/d/e;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/b/a$2;->a:Lcn/domob/android/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/b/a$2;->a:Lcn/domob/android/b/a;

    invoke-static {v3}, Lcn/domob/android/b/a;->b(Lcn/domob/android/b/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e0b\u8f7d\u7ebf\u7a0b\u51fa\u9519\uff0c\u9519\u8bef\u539f\u56e0\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/d/e;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcn/domob/android/b/a$2;->a:Lcn/domob/android/b/a;

    invoke-virtual {v0}, Lcn/domob/android/b/a;->b()V

    .line 508
    invoke-static {}, Lcn/domob/android/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcn/domob/android/b/a$2;->a:Lcn/domob/android/b/a;

    invoke-static {v0, p1}, Lcn/domob/android/b/a;->b(Lcn/domob/android/b/a;Ljava/lang/String;)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcn/domob/android/b/a$2;->a:Lcn/domob/android/b/a;

    invoke-static {v0}, Lcn/domob/android/b/a;->k(Lcn/domob/android/b/a;)Lcn/domob/android/b/c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcn/domob/android/b/a$2;->a:Lcn/domob/android/b/a;

    invoke-static {v0}, Lcn/domob/android/b/a;->k(Lcn/domob/android/b/a;)Lcn/domob/android/b/c;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1, p1}, Lcn/domob/android/b/c;->a(ILjava/lang/String;)V

    .line 514
    :cond_1
    return-void
.end method
