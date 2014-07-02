.class public Lcom/miaozhen/mzmonitor/MZSdkProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "mzSdkProfilePrefs"

.field public static final b:Ljava/lang/String; = "mzProfileURI"

.field public static final c:Ljava/lang/String; = "http://js.miaozhen.com/mbm_sdk_config.xml"

.field private static final d:I = 0x64

.field private static final e:I = 0x93a80

.field private static final f:I = 0x14

.field private static final g:I = 0x15180

.field private static final h:I = 0x12c

.field private static final i:I = 0xf

.field private static final j:I = 0x1

.field private static final k:Ljava/lang/String; = "mzMaxLogItems"

.field private static final l:Ljava/lang/String; = "mzLogExpiresIn"

.field private static final m:Ljava/lang/String; = "mzMaxLogRetryTime"

.field private static final n:Ljava/lang/String; = "mzProfileExpiresIn"

.field private static final o:Ljava/lang/String; = "mzLocationExpiresIn"

.field private static final p:Ljava/lang/String; = "mzLocationServiceTimeout"

.field private static final q:Ljava/lang/String; = "mzProfileVersion"

.field private static final r:Ljava/lang/String; = "mzLatestLocation"

.field private static final s:Ljava/lang/String; = "mzProfileUpdateTimestamp"

.field private static final t:Ljava/lang/String; = "mzLocationUpdateTimestamp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 52
    .line 53
    const-string v0, "mzSdkProfilePrefs"

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    const-string v1, "mzMaxLogItems"

    .line 55
    const/16 v2, 0x64

    .line 54
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 56
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 74
    .line 75
    const-string v0, "mzSdkProfilePrefs"

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    const-string v1, "mzProfileURI"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method

.method public static b(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 60
    .line 61
    const-string v0, "mzSdkProfilePrefs"

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    const-string v1, "mzMaxLogRetryTime"

    .line 63
    const/16 v2, 0x14

    .line 62
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 64
    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 190
    const-string v0, "mzSdkProfilePrefs"

    const/4 v1, 0x0

    .line 189
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 192
    const-string v1, "mzLatestLocation"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    const-string v1, "mzLocationUpdateTimestamp"

    .line 194
    invoke-static {}, Lcom/miaozhen/mzmonitor/MZUtility;->a()J

    move-result-wide v2

    .line 193
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 197
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 68
    const-string v0, "mzSdkProfilePrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    const-string v1, "mzProfileVersion"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 70
    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    .line 83
    const-string v0, "mzSdkProfilePrefs"

    const/4 v1, 0x0

    .line 82
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    const-string v1, "mzLatestLocation"

    .line 85
    const-string v2, "[UNKNOWN]"

    .line 84
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    return-object v0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 90
    .line 91
    const-string v0, "mzSdkProfilePrefs"

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    const-string v1, "mzLocationServiceTimeout"

    const/16 v2, 0xf

    .line 92
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 94
    return v0
.end method

.method public static f(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 98
    .line 99
    const-string v0, "mzSdkProfilePrefs"

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    const-string v1, "mzLogExpiresIn"

    .line 101
    const v2, 0x93a80

    .line 100
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 102
    return v0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    .line 108
    const-string v2, "mzSdkProfilePrefs"

    .line 107
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 109
    invoke-static {}, Lcom/miaozhen/mzmonitor/MZUtility;->a()J

    move-result-wide v3

    .line 111
    const-string v5, "mzProfileUpdateTimestamp"

    .line 110
    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 112
    cmp-long v7, v5, v3

    if-nez v7, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    const-string v7, "mzProfileExpiresIn"

    .line 116
    const v8, 0x15180

    .line 115
    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 117
    sub-long/2addr v3, v5

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 125
    .line 127
    const-string v2, "mzSdkProfilePrefs"

    .line 126
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 128
    invoke-static {}, Lcom/miaozhen/mzmonitor/MZUtility;->a()J

    move-result-wide v3

    .line 130
    const-string v5, "mzLocationUpdateTimestamp"

    .line 129
    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 131
    cmp-long v7, v5, v3

    if-nez v7, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    const-string v7, "mzLocationExpiresIn"

    const/16 v8, 0x12c

    .line 134
    invoke-interface {v2, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 136
    sub-long/2addr v3, v5

    int-to-long v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 139
    const-string v3, "mzLatestLocation"

    const-string v4, "[UNKNOWN]"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    const-string v3, "[UNKNOWN]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/miaozhen/mzmonitor/MZSdkProfile$1;

    invoke-direct {v0, p0}, Lcom/miaozhen/mzmonitor/MZSdkProfile$1;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-virtual {v0}, Lcom/miaozhen/mzmonitor/MZSdkProfile$1;->start()V

    .line 185
    return-void
.end method
