.class Lcom/forthblue/pool/util/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/forthblue/pool/util/IabHelper;->startSetup(Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/forthblue/pool/util/IabHelper;

.field final synthetic val$listener:Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/forthblue/pool/util/IabHelper;Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/forthblue/pool/util/IabHelper$1;->this$0:Lcom/forthblue/pool/util/IabHelper;

    iput-object p2, p0, Lcom/forthblue/pool/util/IabHelper$1;->val$listener:Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 209
    iget-object v3, p0, Lcom/forthblue/pool/util/IabHelper$1;->this$0:Lcom/forthblue/pool/util/IabHelper;

    const-string v4, "Billing service connected."

    invoke-virtual {v3, v4}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 210
    iget-object v3, p0, Lcom/forthblue/pool/util/IabHelper$1;->this$0:Lcom/forthblue/pool/util/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v4

    iput-object v4, v3, Lcom/forthblue/pool/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 211
    iget-object v3, p0, Lcom/forthblue/pool/util/IabHelper$1;->this$0:Lcom/forthblue/pool/util/IabHelper;

    iget-object v3, v3, Lcom/forthblue/pool/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/forthblue/pool/util/IabHelper$1;->this$0:Lcom/forthblue/pool/util/IabHelper;

    const-string v4, "Checking for in-app billing 3 support."

    invoke-virtual {v3, v4}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 214
    iget-object v3, p0, Lcom/forthblue/pool/util/IabHelper$1;->this$0:Lcom/forthblue/pool/util/IabHelper;

    iget-object v3, v3, Lcom/forthblue/pool/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    const-string v5, "inapp"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 215
    .local v2, "response":I
    if-eqz v2, :cond_1

    .line 216
    iget-object v3, p0, Lcom/forthblue/pool/util/IabHelper$1;->val$listener:Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/forthblue/pool/util/IabHelper$1;->val$listener:Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/forthblue/pool/util/IabResult;

    const-string v5, "Error checking for billing v3 support."

    invoke-direct {v4, v2, v5}, Lcom/forthblue/pool/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/forthblue/pool/util/IabResult;)V

    .line 233
    .end local v2    # "response":I
    :cond_0
    :goto_0
    return-void

    .line 220
    .restart local v2    # "response":I
    :cond_1
    iget-object v3, p0, Lcom/forthblue/pool/util/IabHelper$1;->this$0:Lcom/forthblue/pool/util/IabHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In-app billing version 3 supported for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 221
    iget-object v3, p0, Lcom/forthblue/pool/util/IabHelper$1;->this$0:Lcom/forthblue/pool/util/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/forthblue/pool/util/IabHelper;->mSetupDone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v2    # "response":I
    :goto_1
    iget-object v3, p0, Lcom/forthblue/pool/util/IabHelper$1;->val$listener:Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/forthblue/pool/util/IabHelper$1;->val$listener:Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/forthblue/pool/util/IabResult;

    const/4 v5, 0x0

    const-string v6, "Setup successful."

    invoke-direct {v4, v5, v6}, Lcom/forthblue/pool/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/forthblue/pool/util/IabResult;)V

    goto :goto_0

    .line 222
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/forthblue/pool/util/IabHelper$1;->val$listener:Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_2

    .line 224
    iget-object v3, p0, Lcom/forthblue/pool/util/IabHelper$1;->val$listener:Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/forthblue/pool/util/IabResult;

    const/16 v5, -0x3e9

    const-string v6, "RemoteException while setting up in-app billing."

    invoke-direct {v4, v5, v6}, Lcom/forthblue/pool/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/forthblue/pool/util/IabResult;)V

    .line 227
    :cond_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/forthblue/pool/util/IabHelper$1;->this$0:Lcom/forthblue/pool/util/IabHelper;

    const-string v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/forthblue/pool/util/IabHelper$1;->this$0:Lcom/forthblue/pool/util/IabHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/forthblue/pool/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 205
    return-void
.end method
