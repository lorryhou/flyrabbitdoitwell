.class public Lcn/domob/android/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/a/b$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/ads/d/e; = null

.field private static b:Ljava/lang/String; = null

.field private static c:I = 0x0

.field private static d:Ljava/lang/String; = null

.field private static e:Ljava/lang/String; = null

.field private static f:Ljava/lang/String; = null

.field private static g:Ljava/lang/String; = null

.field private static h:Ljava/lang/String; = null

.field private static i:Ljava/lang/String; = null

.field private static j:Ljava/lang/String; = null

.field private static k:Ljava/lang/String; = null

.field private static l:Ljava/lang/Boolean; = null

.field private static m:F = 0.0f

.field private static n:F = 0.0f

.field private static o:I = 0x0

.field private static p:I = 0x0

.field private static q:Ljava/lang/String; = null

.field private static final r:Ljava/lang/String; = "unknown"

.field private static final s:Ljava/lang/String; = "gprs"

.field private static final t:Ljava/lang/String; = "wifi"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    return-void
.end method

.method protected static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 292
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 295
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 296
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 298
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 299
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 307
    :goto_0
    return-object v0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    sget-object v1, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    .line 307
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    sget-object v0, Lcn/domob/android/a/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 119
    invoke-static {p0}, Lcn/domob/android/a/b;->z(Landroid/content/Context;)V

    .line 120
    sget-object v0, Lcn/domob/android/a/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/android/ads/d/d;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current package name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/domob/android/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    sget-object v0, Lcn/domob/android/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(IZ)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 513
    if-eqz p1, :cond_2

    .line 514
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, p0, :cond_1

    .line 523
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 517
    goto :goto_0

    .line 520
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v2, p0, :cond_0

    move v0, v1

    .line 523
    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 169
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_0

    .line 174
    sget-object v1, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already insalled pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return v0

    .line 177
    :catch_0
    move-exception v0

    .line 182
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcn/domob/android/a/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 130
    invoke-static {p0}, Lcn/domob/android/a/b;->z(Landroid/content/Context;)V

    .line 133
    :cond_0
    sget v0, Lcn/domob/android/a/b;->c:I

    return v0
.end method

.method protected static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 312
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static c()I
    .locals 1

    .prologue
    .line 487
    invoke-static {}, Lcn/domob/android/a/b$a;->a()Lcn/domob/android/a/b$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/a/b$a;->a(Lcn/domob/android/a/b$a;)I

    move-result v0

    return v0
.end method

.method protected static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcn/domob/android/a/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 138
    invoke-static {p0}, Lcn/domob/android/a/b;->z(Landroid/content/Context;)V

    .line 141
    :cond_0
    sget-object v0, Lcn/domob/android/a/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected static d()I
    .locals 1

    .prologue
    .line 491
    invoke-static {}, Lcn/domob/android/a/b$a;->a()Lcn/domob/android/a/b$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/a/b$a;->b(Lcn/domob/android/a/b$a;)I

    move-result v0

    return v0
.end method

.method protected static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcn/domob/android/a/b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 146
    invoke-static {p0}, Lcn/domob/android/a/b;->z(Landroid/content/Context;)V

    .line 149
    :cond_0
    sget-object v0, Lcn/domob/android/a/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected static e()I
    .locals 1

    .prologue
    .line 495
    invoke-static {}, Lcn/domob/android/a/b$a;->a()Lcn/domob/android/a/b$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/a/b$a;->c(Lcn/domob/android/a/b$a;)I

    move-result v0

    return v0
.end method

.method protected static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcn/domob/android/a/b;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/a/b;->k:Ljava/lang/String;

    .line 157
    :cond_0
    sget-object v0, Lcn/domob/android/a/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected static f()J
    .locals 2

    .prologue
    .line 499
    invoke-static {}, Lcn/domob/android/a/b$a;->a()Lcn/domob/android/a/b$a;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/a/b$a;->d(Lcn/domob/android/a/b$a;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 187
    :try_start_0
    sget-object v0, Lcn/domob/android/a/b;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 188
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 190
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/a/b;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    :goto_0
    sget-object v0, Lcn/domob/android/a/b;->f:Ljava/lang/String;

    return-object v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    sget-object v1, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    const-class v2, Lcn/domob/android/a/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get android ID."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    sget-object v1, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 968
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 202
    :try_start_0
    sget-object v0, Lcn/domob/android/a/b;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/a/b;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_0
    sget-object v0, Lcn/domob/android/a/b;->g:Ljava/lang/String;

    return-object v0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    sget-object v1, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    const-class v2, Lcn/domob/android/a/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get android ID."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    sget-object v1, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic h()Lcn/domob/android/ads/d/e;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    return-object v0
.end method

.method protected static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    sget-object v0, Lcn/domob/android/a/b;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 222
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 223
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/a/b;->h:Ljava/lang/String;

    .line 229
    :cond_0
    :goto_0
    sget-object v0, Lcn/domob/android/a/b;->h:Ljava/lang/String;

    return-object v0

    .line 225
    :cond_1
    const-string v0, "1.5"

    sput-object v0, Lcn/domob/android/a/b;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 239
    sget-object v0, Lcn/domob/android/a/b;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 240
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 241
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, ","

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/a/b;->i:Ljava/lang/String;

    .line 245
    :cond_0
    sget-object v0, Lcn/domob/android/a/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 249
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 250
    sget-object v0, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot access user\'s network type.  Permissions are not set."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    const-string v0, "unknown"

    .line 271
    :cond_0
    :goto_0
    return-object v0

    .line 255
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 257
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_3

    .line 260
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 261
    if-nez v1, :cond_2

    .line 262
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 263
    if-nez v0, :cond_0

    .line 266
    const-string v0, "gprs"

    goto :goto_0

    .line 267
    :cond_2
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    .line 268
    const-string v0, "wifi"

    goto :goto_0

    .line 271
    :cond_3
    const-string v0, "unknown"

    goto :goto_0
.end method

.method protected static k(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 279
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 281
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 283
    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    sget-object v2, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 286
    goto :goto_0
.end method

.method protected static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    :try_start_0
    sget-object v0, Lcn/domob/android/a/b;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 324
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 326
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/a/b;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_0
    :goto_0
    sget-object v0, Lcn/domob/android/a/b;->j:Ljava/lang/String;

    return-object v0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    sget-object v1, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 342
    const-string v0, "v"

    sput-object v0, Lcn/domob/android/a/b;->q:Ljava/lang/String;

    .line 343
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 347
    :cond_0
    const-string v0, "h"

    sput-object v0, Lcn/domob/android/a/b;->q:Ljava/lang/String;

    .line 350
    :cond_1
    sget-object v0, Lcn/domob/android/a/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method protected static n(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 362
    :try_start_0
    sget v0, Lcn/domob/android/a/b;->m:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 363
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 365
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 366
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 367
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcn/domob/android/a/b;->m:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :cond_0
    :goto_0
    sget v0, Lcn/domob/android/a/b;->m:F

    return v0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    sget-object v1, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static o(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 384
    :try_start_0
    sget v0, Lcn/domob/android/a/b;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 386
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcn/domob/android/a/b;->n:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :cond_0
    :goto_0
    sget v0, Lcn/domob/android/a/b;->n:F

    return v0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    sget-object v1, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected static p(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 410
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 412
    if-eqz v0, :cond_0

    .line 413
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcn/domob/android/a/b;->o:I

    .line 416
    :cond_0
    sget v0, Lcn/domob/android/a/b;->o:I

    return v0
.end method

.method protected static q(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 420
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcn/domob/android/a/b;->p:I

    .line 426
    :cond_0
    sget v0, Lcn/domob/android/a/b;->p:I

    return v0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 433
    .line 434
    invoke-static {p0}, Lcn/domob/android/a/b;->s(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v1

    .line 435
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 436
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 437
    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 442
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static s(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 448
    :try_start_0
    invoke-static {p0}, Lcn/domob/android/a/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    sget-object v0, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "network is wifi, don\'t read apn."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    move-object v0, v6

    .line 465
    :goto_0
    return-object v0

    .line 454
    :cond_0
    const-string v0, "content://telephony/carriers/preferapn"

    .line 455
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 456
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    sget-object v1, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 462
    goto :goto_0

    .line 463
    :catch_1
    move-exception v0

    .line 464
    sget-object v1, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 465
    goto :goto_0
.end method

.method protected static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 477
    invoke-static {}, Lcn/domob/android/a/b$a;->a()Lcn/domob/android/a/b$a;

    move-result-object v0

    .line 478
    invoke-static {v0, p0}, Lcn/domob/android/a/b$a;->a(Lcn/domob/android/a/b$a;Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    .line 479
    if-eqz v1, :cond_0

    .line 480
    invoke-static {v0, v1}, Lcn/domob/android/a/b$a;->a(Lcn/domob/android/a/b$a;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 483
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    invoke-static {p0}, Lcn/domob/android/ads/d/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 537
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 541
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static v(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    invoke-static {p0}, Lcn/domob/android/ads/d/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/domob/android/ads/d/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 555
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 556
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 559
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static w(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 570
    const-string v1, ""

    .line 572
    :try_start_0
    invoke-static {p0}, Lcn/domob/android/ads/d/d;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcn/domob/android/ads/d/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 574
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 575
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Landroid/net/wifi/ScanResult;

    move v3, v2

    .line 576
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 577
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    aput-object v0, v5, v3

    .line 576
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 579
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 581
    new-instance v0, Lcn/domob/android/a/b$1;

    invoke-direct {v0}, Lcn/domob/android/a/b$1;-><init>()V

    invoke-static {v5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 595
    array-length v4, v5

    move v0, v2

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v2, v5, v0

    .line 596
    iget-object v2, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 599
    :cond_1
    const-string v0, ","

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 605
    :goto_2
    return-object v0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    sget-object v2, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v2, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method protected static x(Landroid/content/Context;)[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 615
    sget-object v1, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    const-class v2, Lcn/domob/android/a/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "getLocationBasedService"

    invoke-virtual {v1, v2, v4}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "-1"

    aput-object v1, v4, v6

    const-string v1, "-1"

    aput-object v1, v4, v7

    const-string v1, "-1"

    aput-object v1, v4, v8

    const-string v1, "-1"

    aput-object v1, v4, v5

    .line 617
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Lcn/domob/android/ads/d/d;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Lcn/domob/android/ads/d/d;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    sget-object v1, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    const-string v2, "No permission to access locationBaseInfo"

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/d/e;->d(Ljava/lang/String;)V

    move-object v1, v4

    .line 664
    :goto_0
    return-object v1

    .line 623
    :cond_0
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 624
    if-eqz v1, :cond_3

    .line 625
    sget-object v2, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    const-class v5, Lcn/domob/android/a/b;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tManager is not null"

    invoke-virtual {v2, v5, v6}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    sget-object v2, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    const-class v5, Lcn/domob/android/a/b;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network Operator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    .line 629
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 630
    if-eqz v2, :cond_2

    .line 631
    packed-switch v5, :pswitch_data_0

    .line 648
    sget-object v2, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    const-string v5, "\u65e0\u6cd5\u83b7\u53d6\u57fa\u7ad9\u4fe1\u606f"

    invoke-virtual {v2, v5}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    :cond_1
    move v2, v3

    .line 650
    :goto_1
    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    .line 651
    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 653
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    .line 654
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 655
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    const/4 v5, 0x5

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 656
    const/4 v3, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    .line 657
    const/4 v2, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    :cond_3
    :goto_2
    move-object v1, v4

    .line 664
    goto/16 :goto_0

    .line 633
    :pswitch_0
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 634
    if-eqz v2, :cond_1

    .line 635
    move-object v0, v2

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    .line 636
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    goto :goto_1

    .line 640
    :pswitch_1
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    .line 641
    if-eqz v2, :cond_1

    .line 642
    move-object v0, v2

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    .line 643
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 660
    :catch_0
    move-exception v1

    .line 661
    sget-object v2, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 631
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static y(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 977
    sget-object v0, Lcn/domob/android/a/b;->l:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 978
    sget-object v0, Lcn/domob/android/a/b;->l:Ljava/lang/Boolean;

    .line 994
    :goto_0
    return-object v0

    .line 981
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 983
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 984
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isLayoutSizeAtLeast"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 985
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 986
    sput-object v0, Lcn/domob/android/a/b;->l:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :cond_1
    :goto_1
    sget-object v0, Lcn/domob/android/a/b;->l:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 992
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/domob/android/a/b;->l:Ljava/lang/Boolean;

    .line 994
    :cond_2
    sget-object v0, Lcn/domob/android/a/b;->l:Ljava/lang/Boolean;

    goto :goto_0

    .line 988
    :catch_0
    move-exception v0

    .line 989
    sget-object v1, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static z(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 88
    sget-object v0, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/a/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Start to get app info."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lcn/domob/android/a/b;->b:Ljava/lang/String;

    .line 96
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v2, Lcn/domob/android/a/b;->c:I

    .line 97
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcn/domob/android/a/b;->d:Ljava/lang/String;

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 104
    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/a/b;->e:Ljava/lang/String;

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    sput-object v0, Lcn/domob/android/a/b;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    sget-object v1, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    const-class v2, Lcn/domob/android/a/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed in getting app info."

    invoke-virtual {v1, v2, v3}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v1, Lcn/domob/android/a/b;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    :cond_3
    :try_start_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method
