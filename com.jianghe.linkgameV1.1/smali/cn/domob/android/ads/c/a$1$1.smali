.class final Lcn/domob/android/ads/c/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/a$b;


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
    .line 92
    iput-object p1, p0, Lcn/domob/android/ads/c/a$1$1;->a:Lcn/domob/android/ads/c/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/a;)V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcn/domob/android/ads/c/a;->r()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Finished to load MRAID banner view."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcn/domob/android/ads/c/a$1$1;->a:Lcn/domob/android/ads/c/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/c/a$1;->b:Lcn/domob/android/ads/c/a;

    invoke-static {v0}, Lcn/domob/android/ads/c/a;->d(Lcn/domob/android/ads/c/a;)V

    .line 105
    return-void
.end method

.method public b(Lcn/domob/android/ads/a;)V
    .locals 3

    .prologue
    .line 109
    invoke-static {}, Lcn/domob/android/ads/c/a;->r()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "FAILED to load domob banner view."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcn/domob/android/ads/c/a$1$1;->a:Lcn/domob/android/ads/c/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/c/a$1;->b:Lcn/domob/android/ads/c/a;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v2, "Creative load failed."

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/c/a;->b(Lcn/domob/android/ads/c/a;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public c(Lcn/domob/android/ads/a;)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcn/domob/android/ads/c/a$1$1;->a:Lcn/domob/android/ads/c/a$1;

    iget-object v0, v0, Lcn/domob/android/ads/c/a$1;->b:Lcn/domob/android/ads/c/a;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v2, "Creative load timeout."

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/c/a;->a(Lcn/domob/android/ads/c/a;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    .line 99
    return-void
.end method
