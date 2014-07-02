.class public Lcom/miaozhen/mzmonitor/MZDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "0"

.field public static final b:Ljava/lang/String; = "1"

.field public static final c:Ljava/lang/String; = "2"

.field private static e:Lcom/miaozhen/mzmonitor/MZDeviceInfo;


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->e:Lcom/miaozhen/mzmonitor/MZDeviceInfo;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->d:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/miaozhen/mzmonitor/MZDeviceInfo;
    .locals 3

    .prologue
    .line 36
    const-class v1, Lcom/miaozhen/mzmonitor/MZDeviceInfo;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->e:Lcom/miaozhen/mzmonitor/MZDeviceInfo;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/miaozhen/mzmonitor/MZDeviceInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miaozhen/mzmonitor/MZDeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->e:Lcom/miaozhen/mzmonitor/MZDeviceInfo;

    .line 40
    :cond_0
    sget-object v0, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->e:Lcom/miaozhen/mzmonitor/MZDeviceInfo;

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->d:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 50
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miaozhen/mzmonitor/MZUtility;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    const-string v0, ""

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 65
    if-eqz v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    :goto_0
    return-object v0

    .line 68
    :cond_1
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    const-string v0, ""

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    const-string v1, "0"

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->d:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 96
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 100
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 101
    const-string v0, "1"

    .line 111
    :goto_0
    return-object v0

    .line 103
    :cond_0
    const-string v0, "2"

    goto :goto_0

    .line 106
    :cond_1
    const-string v0, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZDeviceInfo;->d:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 116
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 117
    if-nez v0, :cond_0

    const-string v0, "NULL"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
