.class Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;
.super Ljava/lang/Object;
.source "DoodleMobileAnaylise.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchRemoteConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)V
    .locals 0

    .prologue
    .line 950
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$1;)V
    .locals 0

    .prologue
    .line 949
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;-><init>(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 954
    const-string v0, ""

    .line 956
    :try_start_0
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1400(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 960
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1400(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 963
    :try_start_2
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->applicationVersion:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1502(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 968
    :goto_1
    :try_start_3
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 970
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    new-instance v3, Landroid/location/Criteria;

    invoke-direct {v3}, Landroid/location/Criteria;-><init>()V

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->locationCriteria:Landroid/location/Criteria;
    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1602(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Landroid/location/Criteria;)Landroid/location/Criteria;

    .line 971
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->locationCriteria:Landroid/location/Criteria;
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1600(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Landroid/location/Criteria;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 972
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    const/4 v3, 0x1

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->haveLocationPermission:Z
    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1702(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Z)Z

    .line 981
    :goto_2
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 983
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    const/4 v1, 0x1

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->haveNetworkStatePermission:Z
    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1802(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 988
    :goto_3
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->sync()V

    .line 989
    return-void

    .line 965
    :catch_0
    move-exception v2

    .line 966
    :try_start_4
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    const-string v3, "null"

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->applicationVersion:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1502(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 986
    :catch_1
    move-exception v0

    goto :goto_3

    .line 973
    :cond_0
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 975
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    new-instance v3, Landroid/location/Criteria;

    invoke-direct {v3}, Landroid/location/Criteria;-><init>()V

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->locationCriteria:Landroid/location/Criteria;
    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1602(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Landroid/location/Criteria;)Landroid/location/Criteria;

    .line 976
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    # getter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->locationCriteria:Landroid/location/Criteria;
    invoke-static {v2}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1600(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;)Landroid/location/Criteria;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 977
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    const/4 v3, 0x1

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->haveLocationPermission:Z
    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1702(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Z)Z

    goto :goto_2

    .line 979
    :cond_1
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    const/4 v3, 0x0

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->haveLocationPermission:Z
    invoke-static {v2, v3}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1702(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Z)Z

    goto :goto_2

    .line 985
    :cond_2
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise$FetchRemoteConfig;->this$0:Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;

    const/4 v1, 0x0

    # setter for: Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->haveNetworkStatePermission:Z
    invoke-static {v0, v1}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->access$1802(Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 957
    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method
