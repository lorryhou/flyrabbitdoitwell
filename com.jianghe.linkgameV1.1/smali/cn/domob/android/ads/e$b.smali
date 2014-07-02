.class Lcn/domob/android/ads/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/e;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/e;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcn/domob/android/ads/e$b;->a:Lcn/domob/android/ads/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcn/domob/android/ads/e$b;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->i()V

    .line 166
    return-void
.end method
