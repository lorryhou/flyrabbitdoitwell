.class final Lcn/domob/android/ads/e$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/e;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/e;

.field final synthetic b:Lcn/domob/android/ads/e;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/e;Lcn/domob/android/ads/e;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcn/domob/android/ads/e$1;->b:Lcn/domob/android/ads/e;

    iput-object p2, p0, Lcn/domob/android/ads/e$1;->a:Lcn/domob/android/ads/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 439
    :try_start_0
    sget-boolean v0, Lcn/domob/android/ads/k;->a:Z

    if-nez v0, :cond_0

    .line 440
    invoke-static {}, Lcn/domob/android/ads/e;->I()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Start to load config request"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 441
    new-instance v0, Lcn/domob/android/ads/k;

    iget-object v1, p0, Lcn/domob/android/ads/e$1;->a:Lcn/domob/android/ads/e;

    invoke-direct {v0, v1}, Lcn/domob/android/ads/k;-><init>(Lcn/domob/android/ads/e;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/k;->a()V

    .line 444
    :cond_0
    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/e$1;->b:Lcn/domob/android/ads/e;

    iget-object v1, v1, Lcn/domob/android/ads/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/f;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 445
    iget-object v0, p0, Lcn/domob/android/ads/e$1;->b:Lcn/domob/android/ads/e;

    invoke-static {v0}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    iget-object v0, p0, Lcn/domob/android/ads/e$1;->a:Lcn/domob/android/ads/e;

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->b()V

    .line 447
    invoke-static {}, Lcn/domob/android/ads/e;->I()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Load after schedule request."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcn/domob/android/ads/e$1;->b:Lcn/domob/android/ads/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/e;Z)Z

    .line 449
    new-instance v0, Lcn/domob/android/ads/g;

    iget-object v1, p0, Lcn/domob/android/ads/e$1;->a:Lcn/domob/android/ads/e;

    invoke-direct {v0, v1}, Lcn/domob/android/ads/g;-><init>(Lcn/domob/android/ads/e;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/g;->a()V

    .line 469
    :goto_0
    return-void

    .line 451
    :cond_1
    invoke-static {}, Lcn/domob/android/ads/e;->I()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "An ad is requesting."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lcn/domob/android/c/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 462
    invoke-static {}, Lcn/domob/android/ads/e;->I()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Config request is ongoing, ignore this time"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_2
    :try_start_1
    invoke-static {}, Lcn/domob/android/ads/e;->I()Lcn/domob/android/ads/d/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad has been disabled currently. Disable expire time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Lcn/domob/android/ads/f;->a()Lcn/domob/android/ads/f;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/f;->c()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Lcn/domob/android/c/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 465
    :catch_1
    move-exception v0

    .line 466
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
