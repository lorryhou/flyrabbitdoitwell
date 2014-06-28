.class public Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;
.super Landroid/app/Activity;
.source "MoreGamesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;,
        Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyPreference;,
        Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;
    }
.end annotation


# static fields
.field private static final CACHE_HOURS:J = 0x18L

.field private static final SERVER_MOREGAMES_URL:Ljava/lang/String; = "http://featured.perfectionholic.com:8080/moregames/index.html"

.field private static final TAG:Ljava/lang/String; = "MoreGamesActivity"

.field private static mWebView:Landroid/webkit/WebView;


# instance fields
.field private appInfo:Landroid/content/pm/ApplicationInfo;

.field private mActivity:Landroid/app/Activity;

.field private mInstalledAllDMPkgName:Ljava/lang/String;

.field private mPkgName:Ljava/lang/String;

.field private mPreference:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyPreference;

.field private mSdkVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 272
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mSdkVersion:Ljava/lang/String;

    .line 273
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mInstalledAllDMPkgName:Ljava/lang/String;

    .line 274
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mPkgName:Ljava/lang/String;

    .line 275
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 277
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mPreference:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyPreference;

    return-void
.end method

.method private OpenNetWork()V
    .locals 3

    .prologue
    .line 230
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    const-string v1, "\u65e0\u7f51\u7edc"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u60a8\u73b0\u5728\u8981\u53bb\u8bbe\u7f6e\u7f51\u7edc?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 233
    const-string v1, "\u662f"

    new-instance v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$4;

    invoke-direct {v2, p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$4;-><init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5426"

    new-instance v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$3;

    invoke-direct {v2, p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$3;-><init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 264
    return-void
.end method

.method static synthetic access$100()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mInstalledAllDMPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->OpenNetWork()V

    return-void
.end method

.method private initDMAppId(Landroid/content/Context;)V
    .locals 7

    .prologue
    const-string v0, "doodle_mobile_appid"

    const-string v0, "="

    .line 280
    const/4 v1, 0x0

    .line 283
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mSdkVersion:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mPkgName:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 288
    if-nez v0, :cond_9

    .line 289
    const-string v0, "com.doodlemobile"

    move-object v2, v0

    .line 291
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 293
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 294
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 310
    :cond_1
    :goto_3
    if-eqz v0, :cond_2

    :try_start_1
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 311
    :cond_2
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    const-string v1, "\"doodle_mobile_appid\" not found in the Android Manifest xml."

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 334
    :catch_1
    move-exception v0

    .line 335
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 337
    :goto_4
    return-void

    .line 297
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mInstalledAllDMPkgName:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mPkgName:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 301
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "doodle_mobile_appid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 302
    if-nez v0, :cond_1

    .line 303
    :try_start_3
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "doodle_mobile_appid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_3

    .line 314
    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 316
    if-eqz v0, :cond_6

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_6

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_6

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "doodle_mobile_appid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 317
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mInstalledAllDMPkgName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 318
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 320
    :cond_6
    if-eqz v0, :cond_5

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->isInstalledTheseGames(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 321
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mInstalledAllDMPkgName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 322
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 326
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 327
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 328
    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 330
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mInstalledAllDMPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mInstalledAllDMPkgName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    .line 305
    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_2

    :cond_9
    move-object v2, v0

    goto/16 :goto_0
.end method

.method private initMoreGames()V
    .locals 5

    .prologue
    .line 67
    const/4 v0, 0x2

    :try_start_0
    const-string v1, "moregames"

    const-string v2, "Appear"

    const-string v3, "MoreGamesActivity"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    .line 71
    sget-object v0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->setContentView(Landroid/view/View;)V

    .line 74
    sget-object v0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 75
    sget-object v0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;-><init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$1;)V

    const-string v2, "doodle"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;-><init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 77
    sget-object v0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$1;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$1;-><init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 88
    sget-object v0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$2;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$2;-><init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 99
    sget-object v0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 103
    invoke-direct {p0, v0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->setWebSettingsCache(Landroid/webkit/WebSettings;)V

    .line 106
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "http://bbs.anzhi.com/forum-324-1.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isInstalledTheseGames(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 342
    const-string v0, "com.tapglider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "x.JewelsDeluxe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.threed.bowling"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.wordsmobile.RollerBall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.a1.game.vszombies"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sniper.activity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.shootbubble.bubbledexlue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.forthblue.pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.candydroid.breakblock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.junerking.ninjia"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkAvailable(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    if-nez p1, :cond_0

    move v0, v1

    .line 226
    :goto_0
    return v0

    .line 218
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 219
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move v0, v1

    .line 226
    goto :goto_0
.end method

.method private setWebSettingsCache(Landroid/webkit/WebSettings;)V
    .locals 6

    .prologue
    .line 146
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 147
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 148
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mPreference:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyPreference;

    invoke-virtual {v2}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyPreference;->getPreferDate()J

    move-result-wide v2

    .line 149
    sub-long v2, v0, v2

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    .line 151
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v4}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x18

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 152
    sget-object v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 153
    sget-object v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearHistory()V

    .line 154
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mPreference:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyPreference;

    invoke-virtual {v2, v0, v1}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyPreference;->setPreferDate(J)V

    .line 161
    :goto_0
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 51
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 53
    iput-object p0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mActivity:Landroid/app/Activity;

    .line 56
    :try_start_0
    new-instance v0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyPreference;

    invoke-direct {v0, p0, p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyPreference;-><init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mPreference:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyPreference;

    .line 57
    invoke-direct {p0, p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->initDMAppId(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->initMoreGames()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 269
    return-void
.end method
