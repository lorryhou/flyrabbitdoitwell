.class final Lcn/domob/android/ads/c/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/c/a;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/h$b;

.field final synthetic b:Lcn/domob/android/ads/c/a;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/c/a;Lcn/domob/android/ads/h$b;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcn/domob/android/ads/c/a$1;->b:Lcn/domob/android/ads/c/a;

    iput-object p2, p0, Lcn/domob/android/ads/c/a$1;->a:Lcn/domob/android/ads/h$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 87
    new-instance v0, Lcn/domob/android/ads/c/s;

    iget-object v1, p0, Lcn/domob/android/ads/c/a$1;->b:Lcn/domob/android/ads/c/a;

    invoke-static {v1}, Lcn/domob/android/ads/c/a;->a(Lcn/domob/android/ads/c/a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/s;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcn/domob/android/ads/c/a$1;->b:Lcn/domob/android/ads/c/a;

    invoke-static {v2}, Lcn/domob/android/ads/c/a;->b(Lcn/domob/android/ads/c/a;)Lcn/domob/android/ads/i;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/i;->a()I

    move-result v2

    iget-object v3, p0, Lcn/domob/android/ads/c/a$1;->b:Lcn/domob/android/ads/c/a;

    invoke-static {v3}, Lcn/domob/android/ads/c/a;->c(Lcn/domob/android/ads/c/a;)Lcn/domob/android/ads/i;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/i;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/s;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v1, p0, Lcn/domob/android/ads/c/a$1;->b:Lcn/domob/android/ads/c/a;

    invoke-static {v1, v0}, Lcn/domob/android/ads/c/a;->a(Lcn/domob/android/ads/c/a;Landroid/view/View;)Landroid/view/View;

    .line 92
    new-instance v1, Lcn/domob/android/ads/c/a$1$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/c/a$1$1;-><init>(Lcn/domob/android/ads/c/a$1;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/s;->a(Lcn/domob/android/ads/a$b;)V

    .line 116
    new-instance v1, Lcn/domob/android/ads/c/a$1$2;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/c/a$1$2;-><init>(Lcn/domob/android/ads/c/a$1;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/s;->a(Lcn/domob/android/ads/a$a;)V

    .line 125
    new-instance v1, Lcn/domob/android/ads/c/a$1$3;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/c/a$1$3;-><init>(Lcn/domob/android/ads/c/a$1;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/s;->a(Lcn/domob/android/ads/c/s$a;)V

    .line 145
    iget-object v1, p0, Lcn/domob/android/ads/c/a$1;->b:Lcn/domob/android/ads/c/a;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/s;->a(Lcn/domob/android/ads/a/d$b;)V

    .line 148
    new-instance v1, Lcn/domob/android/ads/c/a$1$4;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/c/a$1$4;-><init>(Lcn/domob/android/ads/c/a$1;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/s;->a(Lcn/domob/android/ads/c/s$g;)V

    .line 159
    new-instance v1, Lcn/domob/android/ads/c/a$1$5;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/c/a$1$5;-><init>(Lcn/domob/android/ads/c/a$1;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/s;->a(Lcn/domob/android/ads/c/s$f;)V

    .line 171
    iget-object v1, p0, Lcn/domob/android/ads/c/a$1;->a:Lcn/domob/android/ads/h$b;

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->f()Ljava/lang/String;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    invoke-static {}, Lcn/domob/android/ads/c/a;->r()Lcn/domob/android/ads/d/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get an MRAID view instance and load with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/c/a$1;->a:Lcn/domob/android/ads/h$b;

    invoke-virtual {v3}, Lcn/domob/android/ads/h$b;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcn/domob/android/ads/c/a$1;->a:Lcn/domob/android/ads/h$b;

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-static {}, Lcn/domob/android/ads/c/a;->r()Lcn/domob/android/ads/d/e;

    move-result-object v1

    const-string v2, "Get an MRAID view instance and load data = [%s] with base URL=[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/domob/android/ads/c/a$1;->a:Lcn/domob/android/ads/h$b;

    invoke-virtual {v5}, Lcn/domob/android/ads/h$b;->h()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcn/domob/android/ads/c/a$1;->a:Lcn/domob/android/ads/h$b;

    invoke-virtual {v5}, Lcn/domob/android/ads/h$b;->g()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcn/domob/android/ads/c/a$1;->a:Lcn/domob/android/ads/h$b;

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/c/a$1;->a:Lcn/domob/android/ads/h$b;

    invoke-virtual {v2}, Lcn/domob/android/ads/h$b;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_2
    invoke-static {}, Lcn/domob/android/ads/c/a;->r()Lcn/domob/android/ads/d/e;

    move-result-object v0

    const-string v1, "Content type is not available."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcn/domob/android/ads/c/a$1;->b:Lcn/domob/android/ads/c/a;

    sget-object v1, Lcn/domob/android/ads/DomobAdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    const-string v2, "Content type is illegal."

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/c/a;->c(Lcn/domob/android/ads/c/a;Lcn/domob/android/ads/DomobAdManager$ErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method
