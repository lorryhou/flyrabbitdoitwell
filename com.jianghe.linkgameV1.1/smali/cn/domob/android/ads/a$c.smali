.class Lcn/domob/android/ads/a$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a;

.field private b:I


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a;)V
    .locals 1

    .prologue
    .line 126
    iput-object p1, p0, Lcn/domob/android/ads/a$c;->a:Lcn/domob/android/ads/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcn/domob/android/ads/a$c;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    :goto_0
    iget v0, p0, Lcn/domob/android/ads/a$c;->b:I

    iget-object v1, p0, Lcn/domob/android/ads/a$c;->a:Lcn/domob/android/ads/a;

    invoke-static {v1}, Lcn/domob/android/ads/a;->d(Lcn/domob/android/ads/a;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/a$c;->a:Lcn/domob/android/ads/a;

    invoke-static {v0}, Lcn/domob/android/ads/a;->e(Lcn/domob/android/ads/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 134
    iget v0, p0, Lcn/domob/android/ads/a$c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/domob/android/ads/a$c;->b:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-static {}, Lcn/domob/android/ads/a;->a()Lcn/domob/android/ads/d/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 140
    :cond_0
    iget v0, p0, Lcn/domob/android/ads/a$c;->b:I

    iget-object v1, p0, Lcn/domob/android/ads/a$c;->a:Lcn/domob/android/ads/a;

    invoke-static {v1}, Lcn/domob/android/ads/a;->d(Lcn/domob/android/ads/a;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/domob/android/ads/a$c;->a:Lcn/domob/android/ads/a;

    invoke-static {v0}, Lcn/domob/android/ads/a;->e(Lcn/domob/android/ads/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcn/domob/android/ads/a$c;->a:Lcn/domob/android/ads/a;

    invoke-static {v0}, Lcn/domob/android/ads/a;->a(Lcn/domob/android/ads/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    invoke-static {}, Lcn/domob/android/ads/a;->a()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "WebView \u52a0\u8f7d\u8d85\u65f6"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcn/domob/android/ads/a$c;->a:Lcn/domob/android/ads/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/a;->b(Lcn/domob/android/ads/a;Z)Z

    .line 144
    iget-object v0, p0, Lcn/domob/android/ads/a$c;->a:Lcn/domob/android/ads/a;

    invoke-static {v0}, Lcn/domob/android/ads/a;->f(Lcn/domob/android/ads/a;)V

    .line 145
    iget-object v0, p0, Lcn/domob/android/ads/a$c;->a:Lcn/domob/android/ads/a;

    invoke-static {v0}, Lcn/domob/android/ads/a;->g(Lcn/domob/android/ads/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcn/domob/android/ads/a$c;->a:Lcn/domob/android/ads/a;

    invoke-virtual {v0}, Lcn/domob/android/ads/a;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/a$c$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a$c$1;-><init>(Lcn/domob/android/ads/a$c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 155
    :cond_1
    return-void
.end method