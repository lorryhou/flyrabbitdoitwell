.class final Lcn/domob/android/ads/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcn/domob/android/ads/d/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 22
    invoke-static {p1}, Lcn/domob/android/ads/d/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/d/b;

    move-result-object v0

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_ad_alive_time < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 28
    :try_start_0
    const-string v1, "domob_splash_ad_cache_res"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/d/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 30
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "there are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expired ad"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 31
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 32
    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 33
    const-string v3, "_ad_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_ad_id=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    const-string v4, "domob_splash_ad_cache_res"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Lcn/domob/android/ads/d/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 37
    sget-object v5, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete the expired ad: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 38
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "helper.delete return is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v3, "there is no expired ad"

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    :cond_1
    if-eqz v2, :cond_2

    .line 48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_2
    if-eqz v0, :cond_3

    .line 51
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    .line 54
    :cond_3
    :goto_1
    return-void

    .line 43
    :catch_0
    move-exception v1

    move-object v2, v6

    .line 44
    :goto_2
    :try_start_2
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    .line 45
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v3, "Error happened when delete the expires ad."

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/d/e;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    if-eqz v2, :cond_4

    .line 48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_4
    if-eqz v0, :cond_3

    .line 51
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    goto :goto_1

    .line 47
    :catchall_0
    move-exception v1

    move-object v2, v6

    :goto_3
    if-eqz v2, :cond_5

    .line 48
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 50
    :cond_5
    if-eqz v0, :cond_6

    .line 51
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    :cond_6
    throw v1

    .line 47
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 43
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 173
    invoke-static {p1}, Lcn/domob/android/ads/d/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/d/b;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_ad_id=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    const-string v2, "domob_splash_ad_cache_res"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcn/domob/android/ads/d/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 176
    if-lez v1, :cond_0

    .line 177
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ad succuss"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 179
    :cond_0
    if-eqz v0, :cond_1

    .line 180
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    .line 182
    :cond_1
    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    .prologue
    .line 436
    invoke-static {p1}, Lcn/domob/android/ads/d/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/d/b;

    move-result-object v1

    .line 437
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 439
    if-eqz p3, :cond_0

    .line 440
    :try_start_0
    const-string v2, "local_path"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-eqz v2, :cond_1

    .line 444
    const-string v2, "ts"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 447
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 448
    const-string v2, "alias_info"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alias= \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcn/domob/android/ads/d/b;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :cond_2
    if-eqz v1, :cond_3

    .line 456
    invoke-virtual {v1}, Lcn/domob/android/ads/d/b;->b()V

    .line 459
    :cond_3
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    :try_start_1
    sget-object v2, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    .line 453
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v2, "Failed to update alias info."

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    if-eqz v1, :cond_3

    .line 456
    invoke-virtual {v1}, Lcn/domob/android/ads/d/b;->b()V

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 456
    invoke-virtual {v1}, Lcn/domob/android/ads/d/b;->b()V

    :cond_4
    throw v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 563
    :try_start_0
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 564
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success to delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error happened when deleting file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 576
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Lcn/domob/android/ads/G;)Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 125
    invoke-virtual {p2}, Lcn/domob/android/ads/G;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "SplashAd validate failed, ignoring the insert"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 169
    :cond_0
    :goto_0
    return v6

    .line 129
    :cond_1
    invoke-static {p1}, Lcn/domob/android/ads/d/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/d/b;

    move-result-object v0

    .line 135
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 136
    const-string v1, "_ad_id"

    invoke-virtual {p2}, Lcn/domob/android/ads/G;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "_ad_content"

    invoke-virtual {p2}, Lcn/domob/android/ads/G;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "_ad_alive_time"

    invoke-virtual {p2}, Lcn/domob/android/ads/G;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 139
    const-string v1, "_enter_db_time"

    invoke-virtual {p2}, Lcn/domob/android/ads/G;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 140
    const-string v1, "_ad_type"

    invoke-virtual {p2}, Lcn/domob/android/ads/G;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v1, "_orientation"

    invoke-virtual {p2}, Lcn/domob/android/ads/G;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :try_start_0
    const-string v1, "domob_splash_ad_cache_res"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/d/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 147
    if-eqz v2, :cond_6

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 148
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v3, "one column ad is already in cache, so just update it"

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 149
    const-string v1, "domob_splash_ad_cache_res"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v8, v3, v4}, Lcn/domob/android/ads/d/b;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 150
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 151
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    :cond_2
    if-gez v1, :cond_5

    move v1, v6

    .line 162
    :goto_1
    if-eqz v2, :cond_3

    .line 163
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_3
    if-eqz v0, :cond_4

    .line 166
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    :cond_4
    move v6, v1

    goto :goto_0

    .line 153
    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    .line 155
    :cond_6
    :try_start_2
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v3, "no ad is in the cache, so need to be inserted"

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 156
    const-string v1, "domob_splash_ad_cache_res"

    invoke-virtual {v0, v1, v8}, Lcn/domob/android/ads/d/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v6

    .line 162
    if-eqz v2, :cond_7

    .line 163
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_7
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    goto/16 :goto_0

    .line 158
    :catch_0
    move-exception v1

    move-object v2, v7

    .line 159
    :goto_2
    :try_start_3
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    .line 160
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v3, "error occured in insertOrUpdate function"

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    if-eqz v2, :cond_8

    .line 163
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_8
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    goto/16 :goto_0

    .line 162
    :catchall_0
    move-exception v1

    move-object v2, v7

    :goto_3
    if-eqz v2, :cond_9

    .line 163
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_9
    if-eqz v0, :cond_a

    .line 166
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    :cond_a
    throw v1

    .line 162
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 158
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 321
    invoke-static {p1}, Lcn/domob/android/ads/d/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/d/b;

    move-result-object v3

    .line 324
    :try_start_0
    const-string v4, "SELECT * FROM %s WHERE %s=\"%s\" AND %s=\"%s\""

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "creative_alias"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "creative_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    const-string v7, "alias"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object p3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 327
    sget-object v5, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCreativeHasAlias sql:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 328
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcn/domob/android/ads/d/b;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 330
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-lez v4, :cond_2

    .line 336
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 339
    :cond_0
    if-eqz v3, :cond_1

    .line 340
    invoke-virtual {v3}, Lcn/domob/android/ads/d/b;->b()V

    .line 344
    :cond_1
    :goto_0
    return v0

    .line 336
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 337
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 339
    :cond_3
    if-eqz v3, :cond_4

    .line 340
    invoke-virtual {v3}, Lcn/domob/android/ads/d/b;->b()V

    :cond_4
    :goto_1
    move v0, v1

    .line 344
    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    :try_start_1
    sget-object v4, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v4, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 337
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 339
    :cond_5
    if-eqz v3, :cond_4

    .line 340
    invoke-virtual {v3}, Lcn/domob/android/ads/d/b;->b()V

    goto :goto_1

    .line 336
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 337
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 339
    :cond_6
    if-eqz v3, :cond_7

    .line 340
    invoke-virtual {v3}, Lcn/domob/android/ads/d/b;->b()V

    :cond_7
    throw v0
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 192
    .line 193
    invoke-static {p1}, Lcn/domob/android/ads/d/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/d/b;

    move-result-object v0

    .line 196
    :try_start_0
    const-string v1, "creative_alias"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "creative_id=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/d/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 199
    if-eqz v2, :cond_9

    .line 200
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 201
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There are "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " records in DB with creativeID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    move v3, v8

    .line 203
    :goto_0
    if-ge v3, v1, :cond_6

    .line 204
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 205
    const-string v4, "alias"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 206
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 208
    invoke-virtual {p0, p1, v4}, Lcn/domob/android/ads/c;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 209
    invoke-virtual {p0, p1, v4}, Lcn/domob/android/ads/c;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    if-nez v5, :cond_2

    .line 212
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Local path of resource "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is not available."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0, p1, v4}, Lcn/domob/android/ads/c;->g(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_0
    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    :cond_1
    move v0, v6

    .line 238
    :goto_1
    return v0

    .line 216
    :cond_2
    :try_start_2
    sget-object v7, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Local location of resource "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " is "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 203
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    :cond_3
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v3, "Alias %s is in table creative_alias but not in alias_info."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 230
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 231
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_4
    if-eqz v0, :cond_5

    .line 234
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    :cond_5
    move v0, v6

    goto :goto_1

    .line 230
    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 231
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_7
    if-eqz v0, :cond_8

    .line 234
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    :cond_8
    move v0, v1

    goto :goto_1

    .line 230
    :cond_9
    if-eqz v2, :cond_a

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_a

    .line 231
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_a
    if-eqz v0, :cond_b

    .line 234
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    :cond_b
    :goto_2
    move v0, v6

    .line 238
    goto :goto_1

    .line 227
    :catch_0
    move-exception v1

    move-object v2, v7

    .line 228
    :goto_3
    :try_start_3
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 230
    if-eqz v2, :cond_c

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_c

    .line 231
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_c
    if-eqz v0, :cond_b

    .line 234
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    goto :goto_2

    .line 230
    :catchall_0
    move-exception v1

    move-object v2, v7

    :goto_4
    if-eqz v2, :cond_d

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_d

    .line 231
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_d
    if-eqz v0, :cond_e

    .line 234
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    :cond_e
    throw v1

    .line 230
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 227
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method protected b(Landroid/content/Context;)Lcn/domob/android/ads/G;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 64
    .line 65
    invoke-static {p1}, Lcn/domob/android/ads/d/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/d/b;

    move-result-object v0

    .line 71
    :try_start_0
    const-string v1, "domob_splash_ad_cache_res"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/d/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 72
    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 73
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There are "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " available cached splash  ad"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 74
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 76
    new-instance v2, Lcn/domob/android/ads/G;

    invoke-direct {v2}, Lcn/domob/android/ads/G;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    :try_start_2
    const-string v1, "_ad_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 80
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/G;->b(Ljava/lang/String;)V

    .line 82
    const-string v1, "_ad_content"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 83
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/G;->c(Ljava/lang/String;)V

    .line 85
    const-string v1, "_ad_alive_time"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 86
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcn/domob/android/ads/G;->a(J)V

    .line 88
    const-string v1, "_enter_db_time"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 89
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcn/domob/android/ads/G;->b(J)V

    .line 91
    const-string v1, "_ad_type"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 92
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/G;->d(Ljava/lang/String;)V

    .line 94
    const-string v1, "_orientation"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 95
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/G;->a(Ljava/lang/String;)V

    .line 97
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v4, "succeed to get a SplashAd"

    invoke-virtual {v1, v4}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    .line 105
    :goto_0
    if-eqz v3, :cond_0

    .line 106
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_0
    if-eqz v0, :cond_5

    .line 109
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    move-object v0, v1

    .line 112
    :goto_1
    return-object v0

    .line 99
    :cond_1
    :try_start_3
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v2, "no such type ad in cache"

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v6

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v6

    .line 102
    :goto_2
    :try_start_4
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v3, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    .line 103
    sget-object v2, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v3, "error occured in getSplashCacheAd"

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 105
    if-eqz v6, :cond_2

    .line 106
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_2
    if-eqz v0, :cond_5

    .line 109
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    move-object v0, v1

    goto :goto_1

    .line 105
    :catchall_0
    move-exception v1

    move-object v3, v6

    :goto_3
    if-eqz v3, :cond_3

    .line 106
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_3
    if-eqz v0, :cond_4

    .line 109
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    :cond_4
    throw v1

    .line 105
    :catchall_1
    move-exception v1

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v3, v6

    goto :goto_3

    .line 101
    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, v6

    move-object v6, v3

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v6, v3

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method protected b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 378
    invoke-static {p2}, Lcn/domob/android/ads/d/d;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    invoke-static {p1}, Lcn/domob/android/ads/d/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/d/b;

    move-result-object v1

    .line 382
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 383
    const-string v2, "alias"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    if-eqz p3, :cond_0

    .line 385
    const-string v2, "local_path"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_0
    const-string v2, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 389
    const-string v2, "alias_info"

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/ads/d/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    if-eqz v1, :cond_1

    .line 395
    invoke-virtual {v1}, Lcn/domob/android/ads/d/b;->b()V

    .line 399
    :cond_1
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    :try_start_1
    sget-object v2, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    .line 392
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v2, "Failed to insert alias info."

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    if-eqz v1, :cond_1

    .line 395
    invoke-virtual {v1}, Lcn/domob/android/ads/d/b;->b()V

    goto :goto_0

    .line 394
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 395
    invoke-virtual {v1}, Lcn/domob/android/ads/d/b;->b()V

    :cond_2
    throw v0
.end method

.method protected c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 249
    invoke-static {p1}, Lcn/domob/android/ads/d/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/d/b;

    move-result-object v0

    .line 253
    :try_start_0
    const-string v1, "alias_info"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alias= \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/d/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 256
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 257
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 259
    const-string v1, "local_path"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 260
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 267
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 268
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_0
    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    :cond_1
    move-object v0, v1

    .line 275
    :goto_0
    return-object v0

    .line 267
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 268
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_3
    if-eqz v0, :cond_4

    .line 271
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    :cond_4
    :goto_1
    move-object v0, v6

    .line 275
    goto :goto_0

    .line 264
    :catch_0
    move-exception v1

    move-object v2, v6

    .line 265
    :goto_2
    :try_start_2
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 267
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 268
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_5
    if-eqz v0, :cond_4

    .line 271
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    goto :goto_1

    .line 267
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 268
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_6
    if-eqz v0, :cond_7

    .line 271
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    :cond_7
    throw v1

    .line 267
    :catchall_1
    move-exception v1

    move-object v6, v2

    goto :goto_3

    .line 264
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method protected c(Landroid/content/Context;)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 504
    invoke-static {p1}, Lcn/domob/android/ads/d/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/d/b;

    move-result-object v0

    .line 507
    :try_start_0
    const-string v1, "alias_info"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "alias"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "local_path"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "ts"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "ts"

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/d/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 510
    if-eqz v2, :cond_1

    .line 511
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 512
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alias number stored in DB is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 513
    const/16 v3, 0xa

    if-le v1, v3, :cond_5

    .line 514
    add-int/lit8 v3, v1, -0xa

    .line 515
    sget-object v4, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v5, "Alias number=%d is larger than max=%d, %d to delete."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v8

    const/4 v1, 0x1

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v1

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 519
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v1, v7

    .line 520
    :goto_0
    if-ge v1, v3, :cond_0

    .line 521
    const-string v4, "alias"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 522
    const-string v5, "local_path"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 523
    const-string v6, "ts"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 525
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 526
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 527
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 528
    sget-object v8, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v9, "Alias to delete: %s selected/inserted at %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p0, v5}, Lcn/domob/android/ads/c;->a(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0, p1, v4}, Lcn/domob/android/ads/c;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 533
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 538
    :cond_0
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v3, "Finish to delete old resources."

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 547
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 548
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 550
    :cond_2
    if-eqz v0, :cond_3

    .line 551
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    .line 554
    :cond_3
    :goto_2
    return-void

    .line 520
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    :cond_5
    :try_start_2
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v3, "There is no need to delete resources."

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 543
    :catch_0
    move-exception v1

    .line 544
    :goto_3
    :try_start_3
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    .line 545
    sget-object v1, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v3, "Failed to delete resources."

    invoke-virtual {v1, v3}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 547
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 548
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 550
    :cond_6
    if-eqz v0, :cond_3

    .line 551
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    goto :goto_2

    .line 547
    :catchall_0
    move-exception v1

    move-object v2, v6

    :goto_4
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 548
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 550
    :cond_7
    if-eqz v0, :cond_8

    .line 551
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    :cond_8
    throw v1

    .line 547
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 543
    :catch_1
    move-exception v1

    move-object v2, v6

    goto :goto_3
.end method

.method protected c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 409
    invoke-static {p2}, Lcn/domob/android/ads/d/d;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcn/domob/android/ads/d/d;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    invoke-static {p1}, Lcn/domob/android/ads/d/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/d/b;

    move-result-object v1

    .line 413
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 414
    const-string v2, "alias"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v2, "creative_id"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v2, "creative_alias"

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/ads/d/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {v1}, Lcn/domob/android/ads/d/b;->b()V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    :try_start_1
    sget-object v2, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    .line 419
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v2, "Failed to insert creative-alias."

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {v1}, Lcn/domob/android/ads/d/b;->b()V

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 422
    invoke-virtual {v1}, Lcn/domob/android/ads/d/b;->b()V

    :cond_1
    throw v0
.end method

.method protected d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 286
    invoke-static {p1}, Lcn/domob/android/ads/d/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/d/b;

    move-result-object v0

    .line 289
    :try_start_0
    const-string v1, "alias_info"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alias= \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/d/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 292
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 293
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 295
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/c;->f(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 296
    const/4 v1, 0x1

    .line 301
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 302
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_0
    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    :cond_1
    move v0, v1

    .line 309
    :goto_0
    return v0

    .line 301
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 302
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_3
    if-eqz v0, :cond_4

    .line 305
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    .line 309
    :cond_4
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    move-object v2, v6

    .line 299
    :goto_2
    :try_start_2
    sget-object v3, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v3, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 301
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 302
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_5
    if-eqz v0, :cond_4

    .line 305
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    goto :goto_1

    .line 301
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_6

    .line 302
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_6
    if-eqz v0, :cond_7

    .line 305
    invoke-virtual {v0}, Lcn/domob/android/ads/d/b;->b()V

    :cond_7
    throw v1

    .line 301
    :catchall_1
    move-exception v1

    move-object v6, v2

    goto :goto_3

    .line 298
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method protected e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 356
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/c;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 358
    :cond_0
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "Alias %s is in DB but the local path is null."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 368
    :goto_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 360
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    invoke-virtual {p0, p1, p2}, Lcn/domob/android/ads/c;->g(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 468
    invoke-static {p2}, Lcn/domob/android/ads/d/d;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 470
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcn/domob/android/ads/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 472
    :cond_0
    return-void
.end method

.method protected g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 481
    invoke-static {p2}, Lcn/domob/android/ads/d/d;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete alias:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 483
    invoke-static {p1}, Lcn/domob/android/ads/d/b;->a(Landroid/content/Context;)Lcn/domob/android/ads/d/b;

    move-result-object v1

    .line 485
    :try_start_0
    const-string v0, "alias_info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alias= \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcn/domob/android/ads/d/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    if-eqz v1, :cond_0

    .line 492
    invoke-virtual {v1}, Lcn/domob/android/ads/d/b;->b()V

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 487
    :catch_0
    move-exception v0

    .line 488
    :try_start_1
    sget-object v2, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    .line 489
    sget-object v0, Lcn/domob/android/ads/c;->a:Lcn/domob/android/ads/d/e;

    const-string v2, "Failed to delete alias info."

    invoke-virtual {v0, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    if-eqz v1, :cond_0

    .line 492
    invoke-virtual {v1}, Lcn/domob/android/ads/d/b;->b()V

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    .line 492
    invoke-virtual {v1}, Lcn/domob/android/ads/d/b;->b()V

    :cond_1
    throw v0
.end method
