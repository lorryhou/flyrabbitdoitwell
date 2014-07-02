.class public Lcn/domob/android/ads/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/h$b$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/h;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Lcn/domob/android/ads/h$b$a;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:F

.field private s:F

.field private t:J

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:I


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/h;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 216
    iput-object p1, p0, Lcn/domob/android/ads/h$b;->a:Lcn/domob/android/ads/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcn/domob/android/ads/h$b;->x:I

    .line 217
    if-eqz p2, :cond_1

    .line 218
    const-string v0, "id"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/h$b;->b:Ljava/lang/String;

    .line 219
    const-string v0, "format"

    const-string v1, "domob"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/h$b;->c:Ljava/lang/String;

    .line 220
    const-string v0, "ct"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/h$b;->d:Ljava/lang/String;

    .line 221
    const-string v0, "url"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/h$b;->e:Ljava/lang/String;

    .line 222
    const-string v0, "base_url"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/h$b;->f:Ljava/lang/String;

    .line 223
    const-string v0, "content"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/h$b;->g:Ljava/lang/String;

    .line 224
    const-string v0, "width"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/h$b;->h:I

    .line 225
    const-string v0, "height"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/h$b;->i:I

    .line 227
    const-string v0, "expandable"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    new-instance v1, Lcn/domob/android/ads/h$b$a;

    invoke-direct {v1, p0, v0}, Lcn/domob/android/ads/h$b$a;-><init>(Lcn/domob/android/ads/h$b;Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcn/domob/android/ads/h$b;->j:Lcn/domob/android/ads/h$b$a;

    .line 232
    :cond_0
    const-string v0, "click_tracker"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/h$b;->k:Ljava/lang/String;

    .line 233
    const-string v0, "imp_tracker"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/h$b;->l:Ljava/lang/String;

    .line 234
    const-string v0, "event_tracker"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/h$b;->m:Ljava/lang/String;

    .line 235
    const-string v0, "tracker"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/h$b;->n:Ljava/lang/String;

    .line 236
    const-string v0, "animation"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/h$b;->o:I

    .line 237
    const-string v0, "o"

    const-string v1, "v"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/h$b;->p:Ljava/lang/String;

    .line 238
    const-string v0, "cls_btn"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/h$b;->q:Z

    .line 239
    const-string v0, "imp_min"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/domob/android/ads/h$b;->r:F

    .line 240
    const-string v0, "imp_min"

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/domob/android/ads/h$b;->r:F

    .line 241
    const-string v0, "imp_cls"

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/domob/android/ads/h$b;->s:F

    .line 242
    const-string v0, "expire"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/32 v3, 0x2a300

    add-long/2addr v1, v3

    invoke-virtual {p2, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/domob/android/ads/h$b;->t:J

    .line 246
    const-string v0, "rc"

    invoke-virtual {p2, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/domob/android/ads/h$b;->u:Z

    .line 247
    const-string v0, "pkg"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/h$b;->v:Ljava/lang/String;

    .line 248
    const-string v0, "mz_url"

    invoke-virtual {p2, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/h$b;->w:Ljava/lang/String;

    .line 250
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcn/domob/android/ads/h$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 408
    iput p1, p0, Lcn/domob/android/ads/h$b;->x:I

    .line 409
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcn/domob/android/ads/h$b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcn/domob/android/ads/h$b;->h:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcn/domob/android/ads/h$b;->i:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcn/domob/android/ads/h$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcn/domob/android/ads/h$b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcn/domob/android/ads/h$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcn/domob/android/ads/h$b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Lcn/domob/android/ads/h$b$a;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcn/domob/android/ads/h$b;->j:Lcn/domob/android/ads/h$b$a;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcn/domob/android/ads/h$b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcn/domob/android/ads/h$b;->l:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcn/domob/android/ads/h$b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcn/domob/android/ads/h$b;->n:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcn/domob/android/ads/h$b;->o:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcn/domob/android/ads/h$b;->p:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcn/domob/android/ads/h$b;->q:Z

    return v0
.end method

.method public q()F
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcn/domob/android/ads/h$b;->r:F

    return v0
.end method

.method public r()F
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcn/domob/android/ads/h$b;->s:F

    return v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 385
    iget-wide v0, p0, Lcn/domob/android/ads/h$b;->t:J

    return-wide v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcn/domob/android/ads/h$b;->u:Z

    return v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcn/domob/android/ads/h$b;->v:Ljava/lang/String;

    return-object v0
.end method

.method public v()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lcn/domob/android/ads/h$b;->x:I

    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcn/domob/android/ads/h$b;->w:Ljava/lang/String;

    return-object v0
.end method
