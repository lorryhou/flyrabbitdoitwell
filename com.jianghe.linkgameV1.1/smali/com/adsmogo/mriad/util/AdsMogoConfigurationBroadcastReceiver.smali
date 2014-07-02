.class public Lcom/adsmogo/mriad/util/AdsMogoConfigurationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/adsmogo/mriad/util/AdsMogoConfigurationBroadcastReceiver;->a:Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;

    invoke-virtual {p1}, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/adsmogo/mriad/util/AdsMogoConfigurationBroadcastReceiver;->b:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/mriad/util/AdsMogoConfigurationBroadcastReceiver;->a:Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;

    invoke-virtual {v0}, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->getOrientation()I

    move-result v0

    iget v1, p0, Lcom/adsmogo/mriad/util/AdsMogoConfigurationBroadcastReceiver;->b:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/adsmogo/mriad/util/AdsMogoConfigurationBroadcastReceiver;->b:I

    iget-object v0, p0, Lcom/adsmogo/mriad/util/AdsMogoConfigurationBroadcastReceiver;->a:Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;

    iget v1, p0, Lcom/adsmogo/mriad/util/AdsMogoConfigurationBroadcastReceiver;->b:I

    invoke-virtual {v0, v1}, Lcom/adsmogo/mriad/controller/AdsMogoDisplayController;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method
