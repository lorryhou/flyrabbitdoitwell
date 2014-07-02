.class Lcn/domob/android/ads/x;
.super Lcn/domob/android/ads/e;
.source "SourceFile"


# static fields
.field private static H:Lcn/domob/android/ads/d/e;


# instance fields
.field private I:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/x;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/x;->H:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method public constructor <init>(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/ads/e;-><init>(Lcn/domob/android/ads/DomobAdView;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/ads/x;->I:Z

    .line 21
    sget-object v0, Lcn/domob/android/ads/x;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "Init Splash controller."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method static synthetic I()Lcn/domob/android/ads/d/e;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcn/domob/android/ads/x;->H:Lcn/domob/android/ads/d/e;

    return-object v0
.end method


# virtual methods
.method protected A()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcn/domob/android/ads/x;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/x$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/x$1;-><init>(Lcn/domob/android/ads/x;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method protected J()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcn/domob/android/ads/x;->I:Z

    return v0
.end method

.method public a(Lcn/domob/android/ads/h;I)V
    .locals 5

    .prologue
    .line 26
    sget-object v0, Lcn/domob/android/ads/x;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "An ad response is received by splash controller."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 27
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcn/domob/android/ads/x;->d:Lcn/domob/android/ads/DomobAdView;

    check-cast v0, Lcn/domob/android/ads/y;

    invoke-virtual {v0}, Lcn/domob/android/ads/y;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 32
    sget-object v0, Lcn/domob/android/ads/x;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "There is a cached ad witch is about to be show."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1, p2}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;I)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 40
    invoke-virtual {p1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/h$b;->f()Ljava/lang/String;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    new-instance v0, Lcn/domob/android/ads/m;

    iget-object v1, p0, Lcn/domob/android/ads/x;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h$b;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/domob/android/ads/m;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/ads/m$a;)V

    .line 45
    invoke-virtual {v0}, Lcn/domob/android/ads/m;->c()V

    .line 47
    invoke-virtual {v0}, Lcn/domob/android/ads/m;->e()Ljava/lang/String;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcn/domob/android/ads/h;->a()Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 53
    const-string v1, "ad"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    const-string v3, "ct"

    const-string v4, "content"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v3, "content"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    sget-object v1, Lcn/domob/android/ads/x;->H:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modified ad response after downloading ad content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 64
    invoke-static {v0}, Lcn/domob/android/ads/h;->a(Ljava/lang/String;)Lcn/domob/android/ads/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 78
    :cond_3
    sget-object v0, Lcn/domob/android/ads/x;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "There is a new ad witch is about to be inserted into DB."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcn/domob/android/ads/G;

    invoke-direct {v0}, Lcn/domob/android/ads/G;-><init>()V

    .line 80
    invoke-virtual {p1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/G;->b(Ljava/lang/String;)V

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h$b;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h$b;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/G;->d(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcn/domob/android/ads/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/G;->c(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->s()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/G;->a(J)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/G;->b(J)V

    .line 86
    iget-object v1, p0, Lcn/domob/android/ads/x;->a:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/a/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/G;->a(Ljava/lang/String;)V

    .line 87
    new-instance v1, Lcn/domob/android/ads/c;

    invoke-direct {v1}, Lcn/domob/android/ads/c;-><init>()V

    iget-object v2, p0, Lcn/domob/android/ads/x;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/ads/c;->a(Landroid/content/Context;Lcn/domob/android/ads/G;)Z

    .line 90
    invoke-super {p0, p1, p2}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;I)V

    goto/16 :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    sget-object v1, Lcn/domob/android/ads/x;->H:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    .line 67
    sget-object v0, Lcn/domob/android/ads/x;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "Failed to modify response."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 71
    :cond_4
    sget-object v0, Lcn/domob/android/ads/x;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "Failed to download creative content. This AD response won\'t be saved."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    :cond_5
    invoke-virtual {p1}, Lcn/domob/android/ads/h;->e()Lcn/domob/android/ads/h$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcn/domob/android/ads/x;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "There is a error info response."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 93
    const-string v0, "DomobSDK"

    const-string v1, "Response contains error info. Error code is [%d-%s] and error content is [%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcn/domob/android/ads/h;->e()Lcn/domob/android/ads/h$c;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/h$c;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcn/domob/android/ads/h;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcn/domob/android/ads/h;->e()Lcn/domob/android/ads/h$c;

    move-result-object v4

    invoke-virtual {v4}, Lcn/domob/android/ads/h$c;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 100
    :cond_6
    invoke-super {p0, p1, p2}, Lcn/domob/android/ads/e;->a(Lcn/domob/android/ads/h;I)V

    goto/16 :goto_0
.end method

.method protected a(Lcn/domob/android/ads/h;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcn/domob/android/ads/x;->a(Lcn/domob/android/ads/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method protected a(Lcn/domob/android/ads/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 138
    sget-object v0, Lcn/domob/android/ads/x;->H:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to splash.Report fail event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcn/domob/android/ads/w;

    iget-object v1, p0, Lcn/domob/android/ads/x;->a:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/ads/x;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcn/domob/android/ads/w;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 141
    new-instance v4, Lcn/domob/android/ads/w$c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcn/domob/android/ads/w$c;-><init>(Lcn/domob/android/ads/w;)V

    .line 142
    iput-object p3, v4, Lcn/domob/android/ads/w$c;->h:Ljava/lang/String;

    .line 145
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 146
    invoke-virtual {p1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/h$b;->l()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {p1}, Lcn/domob/android/ads/h;->d()Lcn/domob/android/ads/h$b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/h$b;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcn/domob/android/ads/w$c;->a:Ljava/lang/String;

    .line 151
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 152
    :cond_0
    const-string v1, "http://e.domob.cn/event_report"

    .line 155
    :cond_1
    sget-object v2, Lcn/domob/android/ads/w$h;->i:Lcn/domob/android/ads/w$h;

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/w;->a(Ljava/lang/String;Lcn/domob/android/ads/w$h;Ljava/lang/String;Lcn/domob/android/ads/w$c;Ljava/util/HashMap;)V

    .line 156
    return-void

    :cond_2
    move-object v1, v5

    goto :goto_0
.end method

.method public b(Lcn/domob/android/ads/j;)V
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcn/domob/android/ads/x;->H:Lcn/domob/android/ads/d/e;

    const-string v1, "All done for splash!"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 161
    iget-boolean v0, p0, Lcn/domob/android/ads/x;->I:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/ads/x;->d:Lcn/domob/android/ads/DomobAdView;

    check-cast v0, Lcn/domob/android/ads/y;

    invoke-virtual {v0}, Lcn/domob/android/ads/y;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/ads/x;->I:Z

    .line 163
    iget-object v0, p0, Lcn/domob/android/ads/x;->g:Lcn/domob/android/ads/j;

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/x;->a(Lcn/domob/android/ads/j;)V

    .line 164
    iget-object v0, p0, Lcn/domob/android/ads/x;->d:Lcn/domob/android/ads/DomobAdView;

    check-cast v0, Lcn/domob/android/ads/y;

    invoke-virtual {v0}, Lcn/domob/android/ads/y;->q()V

    .line 166
    :cond_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcn/domob/android/ads/x;->d:Lcn/domob/android/ads/DomobAdView;

    check-cast v0, Lcn/domob/android/ads/u;

    invoke-virtual {v0}, Lcn/domob/android/ads/u;->n()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method
