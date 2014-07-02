.class public Lcn/domob/android/ads/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/ads/d$a;
    }
.end annotation


# static fields
.field private static a:Lcn/domob/android/ads/d/e;

.field private static b:Lcn/domob/android/ads/d;

.field private static d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcn/domob/android/ads/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcn/domob/android/ads/d/e;

    const-class v1, Lcn/domob/android/ads/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/d/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/ads/d;->a:Lcn/domob/android/ads/d/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    return-void
.end method

.method public static a()Lcn/domob/android/ads/d;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcn/domob/android/ads/d;->b:Lcn/domob/android/ads/d;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcn/domob/android/ads/d;->b:Lcn/domob/android/ads/d;

    .line 34
    :goto_0
    return-object v0

    .line 33
    :cond_0
    sget-object v0, Lcn/domob/android/ads/d;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "ActionReceiver needs to be initialized first."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Lcn/domob/android/ads/d$a;)V
    .locals 3

    .prologue
    .line 44
    sget-object v0, Lcn/domob/android/ads/d;->b:Lcn/domob/android/ads/d;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcn/domob/android/ads/d;

    invoke-direct {v0}, Lcn/domob/android/ads/d;-><init>()V

    sput-object v0, Lcn/domob/android/ads/d;->b:Lcn/domob/android/ads/d;

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 47
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/d;->b:Lcn/domob/android/ads/d;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 52
    sget-object v0, Lcn/domob/android/ads/d;->b:Lcn/domob/android/ads/d;

    iput-object p1, v0, Lcn/domob/android/ads/d;->c:Lcn/domob/android/ads/d$a;

    .line 54
    sget-object v0, Lcn/domob/android/ads/d;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "Finish to init action receiver."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-object v0, Lcn/domob/android/ads/d;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "Action receiver has already been initialized."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/n;)V
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcn/domob/android/ads/d;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/ads/d;->d:Ljava/util/Hashtable;

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcn/domob/android/ads/n;->c()Ljava/lang/String;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_1

    .line 135
    sget-object v1, Lcn/domob/android/ads/d;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_1
    sget-object v0, Lcn/domob/android/ads/d;->a:Lcn/domob/android/ads/d/e;

    const-string v1, "There is no package name in ad response."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 142
    sget-object v0, Lcn/domob/android/ads/d;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/ads/d;->d:Ljava/util/Hashtable;

    .line 146
    :cond_0
    sget-object v0, Lcn/domob/android/ads/d;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    sget-object v0, Lcn/domob/android/ads/d;->a:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcn/domob/android/ads/d;->d:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcn/domob/android/ads/d;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_1
    sget-object v0, Lcn/domob/android/ads/d;->a:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no key like "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in regPkgTalbe."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 63
    :try_start_0
    sget-object v0, Lcn/domob/android/ads/d;->d:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string v1, ""

    .line 69
    sget-object v2, Lcn/domob/android/ads/d;->a:Lcn/domob/android/ads/d/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 71
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 73
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 75
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    :try_start_2
    sget-object v0, Lcn/domob/android/ads/d;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    iget-object v0, p0, Lcn/domob/android/ads/d;->c:Lcn/domob/android/ads/d$a;

    if-eqz v0, :cond_2

    .line 87
    iget-object v1, p0, Lcn/domob/android/ads/d;->c:Lcn/domob/android/ads/d$a;

    sget-object v0, Lcn/domob/android/ads/d;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/n;

    invoke-interface {v1, v0}, Lcn/domob/android/ads/d$a;->a(Lcn/domob/android/ads/n;)V

    .line 90
    :cond_2
    sget-object v0, Lcn/domob/android/ads/d;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/n;

    invoke-virtual {v0}, Lcn/domob/android/ads/n;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    sget-object v0, Lcn/domob/android/ads/d;->a:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto run the app:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    iget-object v0, p0, Lcn/domob/android/ads/d;->c:Lcn/domob/android/ads/d$a;

    if-eqz v0, :cond_3

    .line 100
    iget-object v1, p0, Lcn/domob/android/ads/d;->c:Lcn/domob/android/ads/d$a;

    sget-object v0, Lcn/domob/android/ads/d;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/ads/n;

    invoke-interface {v1, v0}, Lcn/domob/android/ads/d$a;->b(Lcn/domob/android/ads/n;)V

    .line 116
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcn/domob/android/ads/d;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    sget-object v1, Lcn/domob/android/ads/d;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 76
    :catch_1
    move-exception v0

    .line 77
    :try_start_3
    sget-object v2, Lcn/domob/android/ads/d;->a:Lcn/domob/android/ads/d/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7cfb\u7edf\u65e0\u6cd5\u627e\u5230\u5305\u540d\u5bf9\u5e94App\uff0c\u8bf7\u786e\u8ba4\u8be5\u5305\u662f\u5426\u88ab\u5b89\u88c5 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    .line 78
    sget-object v1, Lcn/domob/android/ads/d;->a:Lcn/domob/android/ads/d/e;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/d/e;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 103
    :cond_4
    sget-object v0, Lcn/domob/android/ads/d;->a:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7cfb\u7edf\u65e0\u6cd5\u627e\u5230\u5305\u540d\u5bf9\u5e94App\uff0c\u8bf7\u786e\u8ba4\u8be5\u5305\u662f\u5426\u88ab\u5b89\u88c5 : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 107
    :cond_5
    sget-object v0, Lcn/domob/android/b/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 108
    if-eqz v0, :cond_3

    .line 109
    sget-object v1, Lcn/domob/android/b/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 118
    :cond_6
    sget-object v0, Lcn/domob/android/ads/d;->a:Lcn/domob/android/ads/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8be5\u5305\u540d\u6ca1\u6709\u88ab\u6ce8\u518c\uff0c\u4e0d\u8fdb\u884creport : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d/e;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
