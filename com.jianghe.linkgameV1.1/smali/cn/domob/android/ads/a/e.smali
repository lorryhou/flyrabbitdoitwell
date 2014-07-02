.class public Lcn/domob/android/ads/a/e;
.super Lcn/domob/android/ads/a;
.source "SourceFile"


# static fields
.field private static d:Lcn/domob/android/ads/d/e;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/a/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/a/e;->d:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 14
    invoke-direct {p0, p1, p3}, Lcn/domob/android/ads/a;-><init>(Landroid/content/Context;I)V

    .line 15
    sget-object v0, Lcn/domob/android/ads/a/e;->d:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiate DomobWebView with ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lcn/domob/android/ads/a/e;->e:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 29
    invoke-virtual {p0}, Lcn/domob/android/ads/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/domob/android/ads/d/d;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "domob.js"

    aput-object v3, v1, v2

    .line 31
    invoke-super {p0, v0, v1}, Lcn/domob/android/ads/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 21
    const-string v0, "NO_ID"

    iput-object v0, p0, Lcn/domob/android/ads/a/e;->e:Ljava/lang/String;

    .line 24
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/a/e;->e:Ljava/lang/String;

    return-object v0
.end method
