.class public Lcom/miaozhen/mzmonitor/MZCacheHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "mzmonitor"

.field private static final b:Ljava/lang/String; = "mzcaches"

.field private static final c:I = 0x3

.field private static e:Lcom/miaozhen/mzmonitor/MZCacheHandler;


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/miaozhen/mzmonitor/MZCacheHandler;->e:Lcom/miaozhen/mzmonitor/MZCacheHandler;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/miaozhen/mzmonitor/MZCacheHandler;->d:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/miaozhen/mzmonitor/MZCacheHandler;
    .locals 3

    .prologue
    .line 34
    const-class v1, Lcom/miaozhen/mzmonitor/MZCacheHandler;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/miaozhen/mzmonitor/MZCacheHandler;->e:Lcom/miaozhen/mzmonitor/MZCacheHandler;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/miaozhen/mzmonitor/MZCacheHandler;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miaozhen/mzmonitor/MZCacheHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miaozhen/mzmonitor/MZCacheHandler;->e:Lcom/miaozhen/mzmonitor/MZCacheHandler;

    .line 38
    :cond_0
    sget-object v0, Lcom/miaozhen/mzmonitor/MZCacheHandler;->e:Lcom/miaozhen/mzmonitor/MZCacheHandler;

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 92
    const-string v0, "MZSDK:20130601"

    const-string v1, "REMOVE_OLDEST_CACHE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;

    iget-object v2, p0, Lcom/miaozhen/mzmonitor/MZCacheHandler;->d:Landroid/content/Context;

    const-string v3, "mzmonitor"

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;-><init>(Lcom/miaozhen/mzmonitor/MZCacheHandler;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 94
    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 95
    const-string v2, "SELECT * FROM mzcaches ORDER BY timestamp ASC LIMIT 1"

    invoke-virtual {v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 96
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const-string v3, "DELETE FROM mzcaches WHERE timestamp = ? AND url = ?"

    .line 98
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timestamp"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "url"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 97
    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 101
    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;->close()V

    .line 102
    return-void
.end method

.method public a(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->a()V

    .line 64
    :cond_0
    const-string v0, "MZSDK:20130601"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "INSERT: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;

    iget-object v2, p0, Lcom/miaozhen/mzmonitor/MZCacheHandler;->d:Landroid/content/Context;

    const-string v3, "mzmonitor"

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;-><init>(Lcom/miaozhen/mzmonitor/MZCacheHandler;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 66
    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->e()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->a(I)V

    .line 68
    const-string v2, "mzcaches"

    invoke-virtual {p1}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->f()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 69
    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;->close()V

    .line 70
    return-void
.end method

.method public a(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;Z)V
    .locals 1

    .prologue
    .line 43
    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {p0, p1}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->d(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->c(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->d(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    invoke-virtual {p0, p1}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->f(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {p0, p1}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->c(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->b(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)V

    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p0, p1}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->a(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)V

    goto :goto_0
.end method

.method public b(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)V
    .locals 10

    .prologue
    .line 73
    const-string v0, "MZSDK:20130601"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v0, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;

    iget-object v2, p0, Lcom/miaozhen/mzmonitor/MZCacheHandler;->d:Landroid/content/Context;

    const-string v3, "mzmonitor"

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;-><init>(Lcom/miaozhen/mzmonitor/MZCacheHandler;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 75
    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->e()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->a(I)V

    .line 77
    const-string v2, "mzcaches"

    invoke-virtual {p1}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->f()Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "timestamp = ? AND url = ?"

    .line 78
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->d()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 77
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;->close()V

    .line 80
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->c()I

    move-result v0

    iget-object v1, p0, Lcom/miaozhen/mzmonitor/MZCacheHandler;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/miaozhen/mzmonitor/MZSdkProfile;->a(Landroid/content/Context;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 141
    const-string v1, "MZSDK:20130601"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CACHE_SIZE: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return v0
.end method

.method public c(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)V
    .locals 9

    .prologue
    .line 83
    const-string v0, "MZSDK:20130601"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELETE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;

    iget-object v2, p0, Lcom/miaozhen/mzmonitor/MZCacheHandler;->d:Landroid/content/Context;

    const-string v3, "mzmonitor"

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;-><init>(Lcom/miaozhen/mzmonitor/MZCacheHandler;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 85
    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 86
    const-string v2, "mzcaches"

    const-string v3, "timestamp = ? AND url = ?"

    .line 87
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->d()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 86
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;->close()V

    .line 89
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miaozhen/mzmonitor/MZCacheDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 146
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 147
    new-instance v0, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;

    iget-object v2, p0, Lcom/miaozhen/mzmonitor/MZCacheHandler;->d:Landroid/content/Context;

    const-string v3, "mzmonitor"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;-><init>(Lcom/miaozhen/mzmonitor/MZCacheHandler;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 148
    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 149
    const-string v2, "mzcaches"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "timestamp"

    aput-object v7, v3, v6

    const/4 v6, 0x1

    const-string v7, "url"

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-string v7, "times"

    aput-object v7, v3, v6

    const-string v6, "panelId"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "userId"

    aput-object v6, v3, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 150
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 152
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 163
    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;->close()V

    .line 164
    return-object v9

    .line 153
    :cond_1
    new-instance v2, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;

    invoke-direct {v2}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;-><init>()V

    .line 154
    const-string v3, "url"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->a(Ljava/lang/String;)V

    .line 155
    const-string v3, "timestamp"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->a(J)V

    .line 156
    const-string v3, "times"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->a(I)V

    .line 157
    const-string v3, "panelId"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->b(Ljava/lang/String;)V

    .line 158
    const-string v3, "userId"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->c(Ljava/lang/String;)V

    .line 159
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public d(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 105
    .line 106
    new-instance v0, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;

    iget-object v2, p0, Lcom/miaozhen/mzmonitor/MZCacheHandler;->d:Landroid/content/Context;

    const-string v3, "mzmonitor"

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;-><init>(Lcom/miaozhen/mzmonitor/MZCacheHandler;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 107
    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 108
    const-string v2, "SELECT * FROM mzcaches WHERE timestamp = ? and url = ?"

    .line 109
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->d()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p1}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 108
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 110
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    .line 113
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 114
    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;->close()V

    .line 115
    return v1

    :cond_0
    move v1, v7

    goto :goto_0
.end method

.method public e(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)Z
    .locals 6

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->d()J

    move-result-wide v0

    .line 120
    iget-object v2, p0, Lcom/miaozhen/mzmonitor/MZCacheHandler;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/miaozhen/mzmonitor/MZSdkProfile;->f(Landroid/content/Context;)I

    move-result v2

    int-to-long v2, v2

    .line 121
    invoke-static {}, Lcom/miaozhen/mzmonitor/MZUtility;->a()J

    move-result-wide v4

    .line 122
    sub-long v0, v4, v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)Z
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/miaozhen/mzmonitor/MZCacheDescriptor;->e()I

    move-result v0

    iget-object v1, p0, Lcom/miaozhen/mzmonitor/MZCacheHandler;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/miaozhen/mzmonitor/MZSdkProfile;->b(Landroid/content/Context;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miaozhen/mzmonitor/MZCacheHandler;->e(Lcom/miaozhen/mzmonitor/MZCacheDescriptor;)Z

    move-result v0

    goto :goto_0
.end method
