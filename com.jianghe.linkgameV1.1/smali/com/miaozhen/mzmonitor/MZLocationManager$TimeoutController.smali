.class Lcom/miaozhen/mzmonitor/MZLocationManager$TimeoutController;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miaozhen/mzmonitor/MZLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeoutController"
.end annotation


# instance fields
.field final synthetic a:Lcom/miaozhen/mzmonitor/MZLocationManager;


# direct methods
.method constructor <init>(Lcom/miaozhen/mzmonitor/MZLocationManager;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/miaozhen/mzmonitor/MZLocationManager$TimeoutController;->a:Lcom/miaozhen/mzmonitor/MZLocationManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZLocationManager$TimeoutController;->a:Lcom/miaozhen/mzmonitor/MZLocationManager;

    invoke-static {v0}, Lcom/miaozhen/mzmonitor/MZLocationManager;->b(Lcom/miaozhen/mzmonitor/MZLocationManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miaozhen/mzmonitor/MZSdkProfile;->e(Landroid/content/Context;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 107
    iget-object v0, p0, Lcom/miaozhen/mzmonitor/MZLocationManager$TimeoutController;->a:Lcom/miaozhen/mzmonitor/MZLocationManager;

    invoke-static {v0}, Lcom/miaozhen/mzmonitor/MZLocationManager;->a(Lcom/miaozhen/mzmonitor/MZLocationManager;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
