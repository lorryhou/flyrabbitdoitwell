.class public Lcn/domob/android/ads/w$f;
.super Lcn/domob/android/ads/w$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:J

.field final synthetic j:Lcn/domob/android/ads/w;


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/w;)V
    .locals 1

    .prologue
    .line 109
    iput-object p1, p0, Lcn/domob/android/ads/w$f;->j:Lcn/domob/android/ads/w;

    invoke-direct {p0, p1}, Lcn/domob/android/ads/w$a;-><init>(Lcn/domob/android/ads/w;)V

    .line 114
    const-string v0, "s"

    iput-object v0, p0, Lcn/domob/android/ads/w$f;->h:Ljava/lang/String;

    return-void
.end method
