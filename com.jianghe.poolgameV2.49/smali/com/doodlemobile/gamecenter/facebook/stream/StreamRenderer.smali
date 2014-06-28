.class Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;
.super Ljava/lang/Object;
.source "StreamRenderer.java"


# instance fields
.field private sb:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->sb:Ljava/lang/StringBuilder;

    .line 82
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    return-void
.end method

.method private append([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 534
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 535
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    :cond_0
    return-void
.end method

.method private doRender(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 106
    :try_start_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 107
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "<html><head>"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "<link rel=\"stylesheet\" href=\"file:///android_asset/stream.css\" type=\"text/css\">"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "<script src=\"file:///android_asset/stream.js\"></script>"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "</head>"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "<body>"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "<div id=\"header\">"

    aput-object v3, v1, v2

    .line 116
    invoke-direct {p0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append([Ljava/lang/String;)V

    .line 117
    const-string v1, "app://logout"

    const-string v2, "logout"

    invoke-direct {p0, v1, v2}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderStatusBox()V

    .line 121
    const-string v1, "<div id=\"posts\">"

    invoke-direct {p0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    move v1, v4

    .line 122
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 123
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderPost(Lorg/json/JSONObject;)V

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_0
    const-string v0, "</div></body></html>"

    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->getResult()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_1
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 130
    const-string v0, ""

    goto :goto_1
.end method

.method private getActions(Lorg/json/JSONObject;)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 427
    const-string v1, "actions"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 428
    if-eqz v1, :cond_0

    .line 429
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 430
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 431
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 432
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 429
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    :cond_0
    return-object v0
.end method

.method public static getDateFormat()Ljava/text/SimpleDateFormat;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'hh:mm:ssZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getProfileUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://touch.facebook.com/#/profile.php?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static render(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;

    invoke-direct {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;-><init>()V

    .line 49
    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->doRender(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private renderActionLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderActionLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 354
    return-void
.end method

.method private renderActionLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 366
    if-eqz p4, :cond_0

    const-string v0, ""

    .line 367
    :goto_0
    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "<div id=\""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string v3, "\" class=\"action_link "

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const/4 v0, 0x5

    const-string v2, "\">"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "<a href=\"#\" onclick=\""

    aput-object v2, v1, v0

    const/4 v0, 0x7

    aput-object p3, v1, v0

    const/16 v0, 0x8

    const-string v2, "(\'"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    aput-object p1, v1, v0

    const/16 v0, 0xa

    const-string v2, "\'); return false;\">"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    aput-object p2, v1, v0

    const/16 v0, 0xc

    const-string v2, "</a></div>"

    aput-object v2, v1, v0

    .line 372
    invoke-direct {p0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append([Ljava/lang/String;)V

    .line 373
    return-void

    .line 366
    :cond_0
    const-string v0, "hidden"

    goto :goto_0
.end method

.method private renderActionLinks(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const-string v4, "Like"

    const-string v3, "Comment"

    .line 329
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->getActions(Lorg/json/JSONObject;)Ljava/util/HashSet;

    move-result-object v0

    .line 330
    const-string v1, "<div class=\"action_links\">"

    invoke-direct {p0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 331
    const-string v1, "<div class=\"action_link\">"

    invoke-direct {p0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 332
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderTimeStamp(Lorg/json/JSONObject;)V

    .line 333
    const-string v1, "</div>"

    invoke-direct {p0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 334
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    const-string v2, "Comment"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    const-string v2, "Comment"

    const-string v2, "comment"

    invoke-direct {p0, v1, v3, v2}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderActionLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_0
    const-string v2, "Like"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 339
    const-string v2, "Like"

    const-string v2, "like"

    invoke-direct {p0, v1, v4, v2, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderActionLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 340
    const-string v2, "Unlike"

    const-string v3, "unlike"

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderActionLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 342
    const-string v0, "<div class=\"clear\"></div></div>"

    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 343
    return-void

    .line 340
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private renderAttachment(Lorg/json/JSONObject;)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v10, "</div>"

    const-string v9, ""

    .line 254
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v1, "link"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    const-string v2, "picture"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    const-string v3, "source"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 258
    const-string v4, "caption"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 259
    const-string v5, "description"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    aput-object v0, v6, v11

    aput-object v1, v6, v12

    const/4 v7, 0x2

    aput-object v2, v6, v7

    const/4 v7, 0x3

    aput-object v3, v6, v7

    const/4 v3, 0x4

    aput-object v4, v6, v3

    const/4 v3, 0x5

    aput-object v5, v6, v3

    .line 265
    array-length v3, v6

    move v7, v11

    :goto_0
    if-ge v7, v3, :cond_8

    aget-object v8, v6, v7

    .line 266
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    move v3, v12

    .line 272
    :goto_1
    if-nez v3, :cond_1

    .line 305
    :goto_2
    return-void

    .line 265
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 276
    :cond_1
    const-string v3, "<div class=\"attachment\">"

    invoke-direct {p0, v3}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 277
    const-string v3, ""

    if-eq v0, v9, :cond_2

    .line 278
    const-string v3, "<div class=\"title\">"

    invoke-direct {p0, v3}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 279
    if-eqz v1, :cond_6

    .line 280
    invoke-direct {p0, v1, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_3
    const-string v0, "</div>"

    invoke-direct {p0, v10}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 286
    :cond_2
    const-string v0, ""

    if-eq v4, v9, :cond_3

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<div class=\"caption\">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</div>"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 290
    :cond_3
    const-string v0, ""

    if-eq v2, v9, :cond_4

    .line 291
    const-string v0, "<div class=\"picture\">"

    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<img src=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 293
    const-string v2, ""

    if-eq v1, v9, :cond_7

    .line 294
    invoke-direct {p0, v1, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_4
    const-string v0, "</div>"

    invoke-direct {p0, v10}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 301
    :cond_4
    const-string v0, ""

    if-eq v5, v9, :cond_5

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<div class=\"description\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</div>"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 304
    :cond_5
    const-string v0, "<div class=\"clear\"></div></div>"

    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 282
    :cond_6
    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    goto :goto_3

    .line 296
    :cond_7
    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move v3, v11

    goto/16 :goto_1
.end method

.method private renderAuthor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 223
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<div class=\"profile_pic_container\">"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "<a href=\""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->getProfileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\"><img class=\"profile_pic\" src=\"http://graph.facebook.com/"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    const/4 v1, 0x5

    const-string v2, "/picture\"/></a>"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "</div>"

    aput-object v2, v0, v1

    .line 230
    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append([Ljava/lang/String;)V

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderProfileLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private renderComment(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 491
    const-string v0, "from"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 492
    if-nez v0, :cond_0

    .line 493
    const-string v0, "StreamRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comment missing from field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :goto_0
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    const-string v1, "<div class=\"comment\">"

    invoke-direct {p0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 502
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "&nbsp;"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string v2, "</div>"

    aput-object v2, v1, v0

    .line 507
    invoke-direct {p0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append([Ljava/lang/String;)V

    .line 508
    return-void

    .line 496
    :cond_0
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 497
    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-direct {p0, v1, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderAuthor(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private renderCommentBox(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 517
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "<div class=\"comment_box\" id=\"comment_box"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    const-string v3, "\">"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "<input id=\"comment_box_input"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const/4 v2, 0x5

    const-string v3, "\"/>"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "<button onclick=\"postComment(\'"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object v0, v1, v2

    const/16 v0, 0x8

    const-string v2, "\');\">Post</button>"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "<div class=\"clear\"></div>"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string v2, "</div>"

    aput-object v2, v1, v0

    .line 525
    invoke-direct {p0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append([Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method private renderComments(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<div class=\"comments\" id=\"comments"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 472
    const-string v0, "comments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_0

    .line 474
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_0

    .line 476
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 477
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 478
    invoke-direct {p0, v2}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderComment(Lorg/json/JSONObject;)V

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    :cond_0
    const-string v0, "</div>"

    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method private renderFrom(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 178
    const-string v0, "from"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 179
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-direct {p0, v0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderAuthor(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method private renderLikes(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "</div>"

    .line 444
    const-string v0, "likes"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 445
    if-lez v0, :cond_0

    .line 446
    if-ne v0, v5, :cond_1

    const-string v1, "person likes this"

    .line 449
    :goto_0
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "<div class=\"like_icon\">"

    aput-object v3, v2, v4

    const-string v3, "<img src=\"file:///android_asset/like_icon.png\"/>"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "</div>"

    aput-object v6, v2, v3

    const/4 v3, 0x3

    const-string v4, "<div class=\"num_likes\">"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x5

    const-string v3, " "

    aput-object v3, v2, v0

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "</div>"

    aput-object v6, v2, v0

    .line 459
    invoke-direct {p0, v2}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append([Ljava/lang/String;)V

    .line 461
    :cond_0
    return-void

    .line 446
    :cond_1
    const-string v1, "people like this"

    goto :goto_0
.end method

.method private renderLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 314
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<a href=\""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, "\">"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string v2, "</a>"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append([Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method private renderMessage(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 240
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "&nbsp;<span class=\"msg\">"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string v2, "</span>"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "<div class=\"clear\"></div>"

    aput-object v2, v1, v0

    .line 245
    invoke-direct {p0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append([Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private renderPost(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 158
    const-string v0, "<div class=\"post\">"

    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderFrom(Lorg/json/JSONObject;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderTo(Lorg/json/JSONObject;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderMessage(Lorg/json/JSONObject;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderAttachment(Lorg/json/JSONObject;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderActionLinks(Lorg/json/JSONObject;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderLikes(Lorg/json/JSONObject;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderComments(Lorg/json/JSONObject;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderCommentBox(Lorg/json/JSONObject;)V

    .line 167
    const-string v0, "</div>"

    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method private renderProfileLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->getProfileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static renderSingleComment(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;

    invoke-direct {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;-><init>()V

    .line 75
    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderComment(Lorg/json/JSONObject;)V

    .line 76
    invoke-direct {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->getResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static renderSinglePost(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;

    invoke-direct {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;-><init>()V

    .line 63
    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderPost(Lorg/json/JSONObject;)V

    .line 64
    invoke-direct {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->getResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private renderStatusBox()V
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "</div><div class=\"clear\"></div>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "<div id=\"status_box\">"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "<input id=\"status_input\" value=\" What\'s on your mind?\""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " onfocus=\"onStatusBoxFocus(this);\"/>"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "<button id=\"status_submit\" class=\"hidden\" onclick=\"updateStatus();\">Share</button>"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "<div class=\"clear\"></div>"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "</div>"

    aput-object v2, v0, v1

    .line 148
    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append([Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private renderTimeStamp(Lorg/json/JSONObject;)V
    .locals 14

    .prologue
    const-wide/16 v4, 0x3c

    const/4 v11, 0x0

    const-wide/16 v9, 0x0

    .line 381
    const-string v0, "created_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-static {}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    .line 383
    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v11}, Ljava/text/ParsePosition;-><init>(I)V

    .line 384
    invoke-virtual {v1, v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 385
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 387
    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 388
    div-long v2, v0, v4

    .line 389
    div-long v4, v2, v4

    .line 390
    const-wide/16 v6, 0x18

    div-long v6, v4, v6

    .line 394
    cmp-long v8, v6, v9

    if-lez v8, :cond_0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " day"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-wide v0, v6

    .line 407
    :goto_0
    const-wide/16 v3, 0x1

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    :goto_1
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "<div class=\"timestamp\">"

    aput-object v2, v1, v11

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string v2, " ago"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "</div>"

    aput-object v2, v1, v0

    .line 416
    invoke-direct {p0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append([Ljava/lang/String;)V

    .line 417
    return-void

    .line 397
    :cond_0
    cmp-long v6, v4, v9

    if-lez v6, :cond_1

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hour"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move-wide v0, v4

    goto :goto_0

    .line 400
    :cond_1
    cmp-long v4, v2, v9

    if-lez v4, :cond_2

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide v12, v2

    move-object v2, v0

    move-wide v0, v12

    goto :goto_0

    .line 405
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " second"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method private renderTo(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 192
    const-string v0, "to"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    .line 194
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 195
    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    const-string v2, " > "

    invoke-direct {p0, v2}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->append(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0, v0, v1}, Lcom/doodlemobile/gamecenter/facebook/stream/StreamRenderer;->renderProfileLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method
