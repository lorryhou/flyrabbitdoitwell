.class public Lgame/fruit/xingji/activity/XYCLIManager;
.super Ljava/lang/Object;
.source "XYCLIManager.java"


# static fields
.field public static curActivity:Lgame/fruit/xingji/activity/XYLinkPet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lgame/fruit/xingji/activity/XYCLIManager;->curActivity:Lgame/fruit/xingji/activity/XYLinkPet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 6

    .prologue
    .line 15
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, " --- getMacAddress ----"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 16
    const-string v1, ""

    .line 17
    .local v1, "macAddress":Ljava/lang/String;
    sget-object v3, Lgame/fruit/xingji/activity/XYCLIManager;->curActivity:Lgame/fruit/xingji/activity/XYLinkPet;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Lgame/fruit/xingji/activity/XYLinkPet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 18
    .local v2, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 19
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 22
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " --- getMacAddress ----"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    return-object v1

    .line 18
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public static hideAD(I)V
    .locals 3
    .param p0, "param"    # I

    .prologue
    .line 47
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " --- hideAd ----"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lgame/fruit/xingji/activity/XYCLIManager;->curActivity:Lgame/fruit/xingji/activity/XYLinkPet;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lgame/fruit/xingji/activity/XYCLIManager;->curActivity:Lgame/fruit/xingji/activity/XYLinkPet;

    new-instance v1, Lgame/fruit/xingji/activity/XYCLIManager$2;

    invoke-direct {v1}, Lgame/fruit/xingji/activity/XYCLIManager$2;-><init>()V

    invoke-virtual {v0, v1}, Lgame/fruit/xingji/activity/XYLinkPet;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
    :cond_0
    return-void
.end method

.method public static hideLoading()V
    .locals 2

    .prologue
    .line 97
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " --- hideLoading ----"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object v0, Lgame/fruit/xingji/activity/XYCLIManager;->curActivity:Lgame/fruit/xingji/activity/XYLinkPet;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lgame/fruit/xingji/activity/XYCLIManager;->curActivity:Lgame/fruit/xingji/activity/XYLinkPet;

    invoke-virtual {v0}, Lgame/fruit/xingji/activity/XYLinkPet;->hideLoading()V

    .line 102
    :cond_0
    return-void
.end method

.method public static initAD(I)V
    .locals 3
    .param p0, "param"    # I

    .prologue
    .line 28
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " --- initAD ----"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static showAD(I)V
    .locals 3
    .param p0, "fullad"    # I

    .prologue
    .line 33
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " --- showAD ----"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lgame/fruit/xingji/activity/XYCLIManager;->curActivity:Lgame/fruit/xingji/activity/XYLinkPet;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lgame/fruit/xingji/activity/XYCLIManager;->curActivity:Lgame/fruit/xingji/activity/XYLinkPet;

    new-instance v1, Lgame/fruit/xingji/activity/XYCLIManager$1;

    invoke-direct {v1}, Lgame/fruit/xingji/activity/XYCLIManager$1;-><init>()V

    invoke-virtual {v0, v1}, Lgame/fruit/xingji/activity/XYLinkPet;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 43
    :cond_0
    return-void
.end method

.method public static tryQuit()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " --- tryQuit ----"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lgame/fruit/xingji/activity/XYCLIManager;->curActivity:Lgame/fruit/xingji/activity/XYLinkPet;

    new-instance v1, Lgame/fruit/xingji/activity/XYCLIManager$3;

    invoke-direct {v1}, Lgame/fruit/xingji/activity/XYCLIManager$3;-><init>()V

    invoke-virtual {v0, v1}, Lgame/fruit/xingji/activity/XYLinkPet;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method
