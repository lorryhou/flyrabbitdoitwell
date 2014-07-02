.class Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miaozhen/mzmonitor/MZCacheHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MZSQLiteHelper"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS mzcaches (timestamp LONG PRIMARY KEY, url VARCHAR, times INTEGER, panelId VARCHAR, userId VARCHAR)"


# instance fields
.field final synthetic b:Lcom/miaozhen/mzmonitor/MZCacheHandler;


# direct methods
.method public constructor <init>(Lcom/miaozhen/mzmonitor/MZCacheHandler;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/miaozhen/mzmonitor/MZCacheHandler$MZSQLiteHelper;->b:Lcom/miaozhen/mzmonitor/MZCacheHandler;

    .line 173
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 174
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 178
    const-string v0, "CREATE TABLE IF NOT EXISTS mzcaches (timestamp LONG PRIMARY KEY, url VARCHAR, times INTEGER, panelId VARCHAR, userId VARCHAR)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 184
    return-void
.end method
