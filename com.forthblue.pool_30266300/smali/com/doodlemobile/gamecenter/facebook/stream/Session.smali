.class public Lcom/doodlemobile/gamecenter/facebook/stream/Session;
.super Ljava/lang/Object;
.source "Session.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "app_id"

.field private static final EXPIRES:Ljava/lang/String; = "expires_in"

.field private static final KEY:Ljava/lang/String; = "facebook-session"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final TOKEN:Ljava/lang/String; = "access_token"

.field private static final UID:Ljava/lang/String; = "uid"

.field private static fbLoggingIn:Lcom/facebook/android/Facebook;

.field private static singleton:Lcom/doodlemobile/gamecenter/facebook/stream/Session;


# instance fields
.field private fb:Lcom/facebook/android/Facebook;

.field private name:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/android/Facebook;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->fb:Lcom/facebook/android/Facebook;

    .line 60
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->uid:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->name:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static clearSavedSession(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 151
    const-string v0, "facebook-session"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->singleton:Lcom/doodlemobile/gamecenter/facebook/stream/Session;

    .line 156
    return-void
.end method

.method public static restore(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/facebook/stream/Session;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 114
    sget-object v0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->singleton:Lcom/doodlemobile/gamecenter/facebook/stream/Session;

    if-eqz v0, :cond_1

    .line 115
    sget-object v0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->singleton:Lcom/doodlemobile/gamecenter/facebook/stream/Session;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->getFb()Lcom/facebook/android/Facebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->singleton:Lcom/doodlemobile/gamecenter/facebook/stream/Session;

    .line 142
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v5

    .line 118
    goto :goto_0

    .line 122
    :cond_1
    const-string v0, "facebook-session"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    const-string v1, "app_id"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    if-nez v1, :cond_2

    move-object v0, v5

    .line 128
    goto :goto_0

    .line 131
    :cond_2
    new-instance v2, Lcom/facebook/android/Facebook;

    invoke-direct {v2, v1}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v1, "access_token"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 133
    const-string v1, "expires_in"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 134
    const-string v1, "uid"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    const-string v3, "name"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    if-nez v0, :cond_4

    :cond_3
    move-object v0, v5

    .line 137
    goto :goto_0

    .line 140
    :cond_4
    new-instance v3, Lcom/doodlemobile/gamecenter/facebook/stream/Session;

    invoke-direct {v3, v2, v1, v0}, Lcom/doodlemobile/gamecenter/facebook/stream/Session;-><init>(Lcom/facebook/android/Facebook;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    sput-object v3, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->singleton:Lcom/doodlemobile/gamecenter/facebook/stream/Session;

    move-object v0, v3

    .line 142
    goto :goto_0
.end method

.method public static waitForAuthCallback(Lcom/facebook/android/Facebook;)V
    .locals 0

    .prologue
    .line 162
    sput-object p0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->fbLoggingIn:Lcom/facebook/android/Facebook;

    .line 163
    return-void
.end method

.method public static wakeupForAuthCallback()Lcom/facebook/android/Facebook;
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->fbLoggingIn:Lcom/facebook/android/Facebook;

    .line 170
    const/4 v1, 0x0

    sput-object v1, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->fbLoggingIn:Lcom/facebook/android/Facebook;

    .line 171
    return-object v0
.end method


# virtual methods
.method public getFb()Lcom/facebook/android/Facebook;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->fb:Lcom/facebook/android/Facebook;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public save(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 93
    const-string v0, "facebook-session"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 95
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->fb:Lcom/facebook/android/Facebook;

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string v1, "expires_in"

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->fb:Lcom/facebook/android/Facebook;

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string v1, "uid"

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->uid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string v1, "name"

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 99
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->fb:Lcom/facebook/android/Facebook;

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sput-object p0, Lcom/doodlemobile/gamecenter/facebook/stream/Session;->singleton:Lcom/doodlemobile/gamecenter/facebook/stream/Session;

    .line 102
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0
.end method
