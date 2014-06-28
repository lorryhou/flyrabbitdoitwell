.class public Lcom/forthblue/pool/util/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/forthblue/pool/util/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;,
        Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;,
        Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v1, p0, Lcom/forthblue/pool/util/IabHelper;->mDebugLog:Z

    .line 77
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/forthblue/pool/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Lcom/forthblue/pool/util/IabHelper;->mSetupDone:Z

    .line 84
    iput-boolean v1, p0, Lcom/forthblue/pool/util/IabHelper;->mAsyncInProgress:Z

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/forthblue/pool/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/forthblue/pool/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/forthblue/pool/util/IabHelper;->mContext:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcom/forthblue/pool/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 157
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 7
    .param p0, "code"    # I

    .prologue
    const/16 v5, -0x3e8

    const-string v6, "/"

    .line 652
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v4, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error"

    const-string v4, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    if-gt p0, v5, :cond_1

    .line 659
    sub-int v2, v5, p0

    .line 660
    .local v2, "index":I
    if-ltz v2, :cond_0

    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 661
    aget-object v3, v1, v2

    .line 667
    .end local v2    # "index":I
    :goto_0
    return-object v3

    .line 663
    .restart local v2    # "index":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 664
    .end local v2    # "index":I
    :cond_1
    if-ltz p0, :cond_2

    array-length v3, v0

    if-lt p0, v3, :cond_3

    .line 665
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 667
    :cond_3
    aget-object v3, v0, p0

    goto :goto_0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 2
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/forthblue/pool/util/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_0

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 676
    :cond_0
    return-void
.end method

.method consume(Lcom/forthblue/pool/util/Purchase;)V
    .locals 8
    .param p1, "itemInfo"    # Lcom/forthblue/pool/util/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/forthblue/pool/util/IabException;
        }
    .end annotation

    .prologue
    .line 563
    const-string v4, "consume"

    invoke-virtual {p0, v4}, Lcom/forthblue/pool/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 565
    :try_start_0
    invoke-virtual {p1}, Lcom/forthblue/pool/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/forthblue/pool/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 567
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 568
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t consume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/forthblue/pool/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 569
    new-instance v4, Lcom/forthblue/pool/util/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/forthblue/pool/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 581
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/forthblue/pool/util/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/forthblue/pool/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 572
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Consuming sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 573
    iget-object v4, p0, Lcom/forthblue/pool/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/forthblue/pool/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 574
    .local v1, "response":I
    if-nez v1, :cond_2

    .line 575
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully consumed sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 583
    return-void

    .line 577
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error consuming consuming sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/forthblue/pool/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 578
    new-instance v4, Lcom/forthblue/pool/util/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error consuming sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/forthblue/pool/util/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public consumeAsync(Lcom/forthblue/pool/util/Purchase;Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;)V
    .locals 2
    .param p1, "purchase"    # Lcom/forthblue/pool/util/Purchase;
    .param p2, "listener"    # Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;

    .prologue
    .line 625
    const-string v1, "consume"

    invoke-virtual {p0, v1}, Lcom/forthblue/pool/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 627
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/forthblue/pool/util/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/forthblue/pool/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;Lcom/forthblue/pool/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 629
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/forthblue/pool/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/forthblue/pool/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/forthblue/pool/util/Purchase;",
            ">;",
            "Lcom/forthblue/pool/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 640
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/forthblue/pool/util/Purchase;>;"
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 641
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/forthblue/pool/util/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;Lcom/forthblue/pool/util/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 642
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;Lcom/forthblue/pool/util/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 7
    .param p2, "singleListener"    # Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/forthblue/pool/util/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/forthblue/pool/util/Purchase;",
            ">;",
            "Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;",
            "Lcom/forthblue/pool/util/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 830
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/forthblue/pool/util/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 831
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 832
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/forthblue/pool/util/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/forthblue/pool/util/IabHelper$3;-><init>(Lcom/forthblue/pool/util/IabHelper;Ljava/util/List;Lcom/forthblue/pool/util/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/forthblue/pool/util/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 861
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/forthblue/pool/util/IabHelper;->mSetupDone:Z

    .line 247
    iget-object v0, p0, Lcom/forthblue/pool/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    .line 248
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/forthblue/pool/util/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/forthblue/pool/util/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/forthblue/pool/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 251
    :cond_0
    iput-object v2, p0, Lcom/forthblue/pool/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 252
    iput-object v2, p0, Lcom/forthblue/pool/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 253
    iput-object v2, p0, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 255
    :cond_1
    return-void
.end method

.method public enableDebugLogging(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/forthblue/pool/util/IabHelper;->mDebugLog:Z

    .line 170
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/forthblue/pool/util/IabHelper;->mDebugLog:Z

    .line 165
    iput-object p2, p0, Lcom/forthblue/pool/util/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 166
    return-void
.end method

.method flagEndAsync()V
    .locals 2

    .prologue
    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/forthblue/pool/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 729
    const-string v0, ""

    iput-object v0, p0, Lcom/forthblue/pool/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 730
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/forthblue/pool/util/IabHelper;->mAsyncInProgress:Z

    .line 731
    return-void
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 2
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/forthblue/pool/util/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_0

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t start async operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") because another async operation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/forthblue/pool/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is in progress."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 725
    :goto_0
    return-void

    .line 722
    :cond_0
    iput-object p1, p0, Lcom/forthblue/pool/util/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/forthblue/pool/util/IabHelper;->mAsyncInProgress:Z

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 681
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 682
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 683
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 684
    const/4 v1, 0x0

    .line 688
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 685
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 686
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 687
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 688
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 690
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/forthblue/pool/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/forthblue/pool/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 692
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 699
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 700
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 701
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/forthblue/pool/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 702
    const/4 v1, 0x0

    .line 706
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return v1

    .line 703
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 704
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 705
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 706
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 708
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/forthblue/pool/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/forthblue/pool/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 710
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 367
    iget v8, p0, Lcom/forthblue/pool/util/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_0

    .line 368
    const/4 v8, 0x0

    .line 446
    :goto_0
    return v8

    .line 370
    :cond_0
    const-string v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/forthblue/pool/util/IabHelper;->flagEndAsync()V

    .line 375
    if-nez p3, :cond_2

    .line 376
    const-string v8, "Null data in IAB activity result."

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 377
    new-instance v6, Lcom/forthblue/pool/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Null data in IAB result"

    invoke-direct {v6, v8, v9}, Lcom/forthblue/pool/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 378
    .local v6, "result":Lcom/forthblue/pool/util/IabResult;
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_1

    .line 379
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/forthblue/pool/util/IabResult;Lcom/forthblue/pool/util/Purchase;)V

    .line 380
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 383
    .end local v6    # "result":Lcom/forthblue/pool/util/IabResult;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/forthblue/pool/util/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 384
    .local v5, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_a

    if-nez v5, :cond_a

    .line 388
    const-string v8, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 389
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 390
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 391
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 393
    if-eqz v4, :cond_3

    if-nez v0, :cond_5

    .line 394
    :cond_3
    const-string v8, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 395
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 396
    new-instance v6, Lcom/forthblue/pool/util/IabResult;

    const/16 v8, -0x3f0

    const-string v9, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v6, v8, v9}, Lcom/forthblue/pool/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 397
    .restart local v6    # "result":Lcom/forthblue/pool/util/IabResult;
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_4

    .line 398
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/forthblue/pool/util/IabResult;Lcom/forthblue/pool/util/Purchase;)V

    .line 399
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 402
    .end local v6    # "result":Lcom/forthblue/pool/util/IabResult;
    :cond_5
    const/4 v2, 0x0

    .line 404
    .local v2, "purchase":Lcom/forthblue/pool/util/Purchase;
    :try_start_0
    new-instance v3, Lcom/forthblue/pool/util/Purchase;

    invoke-direct {v3, v4, v0}, Lcom/forthblue/pool/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v2    # "purchase":Lcom/forthblue/pool/util/Purchase;
    .local v3, "purchase":Lcom/forthblue/pool/util/Purchase;
    :try_start_1
    invoke-virtual {v3}, Lcom/forthblue/pool/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 408
    .local v7, "sku":Ljava/lang/String;
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v8, v4, v0}, Lcom/forthblue/pool/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 409
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase signature verification FAILED for sku "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 410
    new-instance v6, Lcom/forthblue/pool/util/IabResult;

    const/16 v8, -0x3eb

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signature verification failed for sku "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/forthblue/pool/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 411
    .restart local v6    # "result":Lcom/forthblue/pool/util/IabResult;
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_6

    .line 412
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v8, v6, v3}, Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/forthblue/pool/util/IabResult;Lcom/forthblue/pool/util/Purchase;)V

    .line 413
    :cond_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 415
    .end local v6    # "result":Lcom/forthblue/pool/util/IabResult;
    :cond_7
    const-string v8, "Purchase signature successfully verified."

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 425
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 426
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lcom/forthblue/pool/util/IabResult;

    const/4 v10, 0x0

    const-string v11, "Success"

    invoke-direct {v9, v10, v11}, Lcom/forthblue/pool/util/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v3}, Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/forthblue/pool/util/IabResult;Lcom/forthblue/pool/util/Purchase;)V

    .line 446
    .end local v3    # "purchase":Lcom/forthblue/pool/util/Purchase;
    .end local v7    # "sku":Ljava/lang/String;
    :cond_8
    :goto_1
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 416
    .restart local v2    # "purchase":Lcom/forthblue/pool/util/Purchase;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 417
    .local v1, "e":Lorg/json/JSONException;
    :goto_2
    const-string v8, "Failed to parse purchase data."

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 419
    new-instance v6, Lcom/forthblue/pool/util/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Failed to parse purchase data."

    invoke-direct {v6, v8, v9}, Lcom/forthblue/pool/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 420
    .restart local v6    # "result":Lcom/forthblue/pool/util/IabResult;
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_9

    .line 421
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/forthblue/pool/util/IabResult;Lcom/forthblue/pool/util/Purchase;)V

    .line 422
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 428
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Lcom/forthblue/pool/util/Purchase;
    .end local v6    # "result":Lcom/forthblue/pool/util/IabResult;
    :cond_a
    const/4 v8, -0x1

    if-ne p2, v8, :cond_b

    .line 430
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/forthblue/pool/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 431
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 432
    new-instance v6, Lcom/forthblue/pool/util/IabResult;

    const-string v8, "Problem purchashing item."

    invoke-direct {v6, v5, v8}, Lcom/forthblue/pool/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 433
    .restart local v6    # "result":Lcom/forthblue/pool/util/IabResult;
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/forthblue/pool/util/IabResult;Lcom/forthblue/pool/util/Purchase;)V

    goto :goto_1

    .line 435
    .end local v6    # "result":Lcom/forthblue/pool/util/IabResult;
    :cond_b
    if-nez p2, :cond_c

    .line 436
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase canceled - Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/forthblue/pool/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 437
    new-instance v6, Lcom/forthblue/pool/util/IabResult;

    const/16 v8, -0x3ed

    const-string v9, "User canceled."

    invoke-direct {v6, v8, v9}, Lcom/forthblue/pool/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 438
    .restart local v6    # "result":Lcom/forthblue/pool/util/IabResult;
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 439
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/forthblue/pool/util/IabResult;Lcom/forthblue/pool/util/Purchase;)V

    goto/16 :goto_1

    .line 441
    .end local v6    # "result":Lcom/forthblue/pool/util/IabResult;
    :cond_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase failed. Result code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/forthblue/pool/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 442
    new-instance v6, Lcom/forthblue/pool/util/IabResult;

    const/16 v8, -0x3ee

    const-string v9, "Unknown purchase response."

    invoke-direct {v6, v8, v9}, Lcom/forthblue/pool/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 443
    .restart local v6    # "result":Lcom/forthblue/pool/util/IabResult;
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_8

    .line 444
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/forthblue/pool/util/IabResult;Lcom/forthblue/pool/util/Purchase;)V

    goto/16 :goto_1

    .line 416
    .end local v6    # "result":Lcom/forthblue/pool/util/IabResult;
    .restart local v3    # "purchase":Lcom/forthblue/pool/util/Purchase;
    :catch_1
    move-exception v8

    move-object v1, v8

    move-object v2, v3

    .end local v3    # "purchase":Lcom/forthblue/pool/util/Purchase;
    .restart local v2    # "purchase":Lcom/forthblue/pool/util/Purchase;
    goto/16 :goto_2
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    .prologue
    .line 284
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/forthblue/pool/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 15
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;

    .prologue
    .line 309
    const-string v3, "launchPurchaseFlow"

    invoke-virtual {p0, v3}, Lcom/forthblue/pool/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 310
    const-string v3, "launchPurchaseFlow"

    invoke-virtual {p0, v3}, Lcom/forthblue/pool/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 314
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Constructing buy intent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 315
    iget-object v3, p0, Lcom/forthblue/pool/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/forthblue/pool/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "inapp"

    move-object/from16 v6, p2

    move-object/from16 v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    .line 316
    .local v10, "buyIntentBundle":Landroid/os/Bundle;
    invoke-virtual {p0, v10}, Lcom/forthblue/pool/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v13

    .line 317
    .local v13, "response":I
    if-eqz v13, :cond_0

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to buy item, Error response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v13}, Lcom/forthblue/pool/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/forthblue/pool/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 320
    new-instance v14, Lcom/forthblue/pool/util/IabResult;

    const-string v3, "Unable to buy item"

    invoke-direct {v14, v13, v3}, Lcom/forthblue/pool/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 321
    .local v14, "result":Lcom/forthblue/pool/util/IabResult;
    if-eqz p4, :cond_0

    .line 322
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move-object v1, v14

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/forthblue/pool/util/IabResult;Lcom/forthblue/pool/util/Purchase;)V

    .line 325
    .end local v14    # "result":Lcom/forthblue/pool/util/IabResult;
    :cond_0
    const-string v3, "BUY_INTENT"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    .line 326
    .local v12, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launching buy intent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Request code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 327
    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Lcom/forthblue/pool/util/IabHelper;->mRequestCode:I

    .line 328
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/util/IabHelper;->mPurchaseListener:Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 329
    invoke-virtual {v12}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v3, p1

    move/from16 v5, p3

    invoke-virtual/range {v3 .. v9}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 346
    .end local v10    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v12    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v13    # "response":I
    :cond_1
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v3

    move-object v11, v3

    .line 332
    .local v11, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/forthblue/pool/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v11}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 335
    new-instance v14, Lcom/forthblue/pool/util/IabResult;

    const/16 v3, -0x3ec

    const-string v4, "Failed to send intent."

    invoke-direct {v14, v3, v4}, Lcom/forthblue/pool/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 336
    .restart local v14    # "result":Lcom/forthblue/pool/util/IabResult;
    if-eqz p4, :cond_1

    .line 337
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move-object v1, v14

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/forthblue/pool/util/IabResult;Lcom/forthblue/pool/util/Purchase;)V

    goto :goto_0

    .line 338
    .end local v11    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v14    # "result":Lcom/forthblue/pool/util/IabResult;
    :catch_1
    move-exception v3

    move-object v11, v3

    .line 339
    .local v11, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/forthblue/pool/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    .line 342
    new-instance v14, Lcom/forthblue/pool/util/IabResult;

    const/16 v3, -0x3e9

    const-string v4, "Remote exception while starting purchase flow"

    invoke-direct {v14, v3, v4}, Lcom/forthblue/pool/util/IabResult;-><init>(ILjava/lang/String;)V

    .line 343
    .restart local v14    # "result":Lcom/forthblue/pool/util/IabResult;
    if-eqz p4, :cond_1

    .line 344
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move-object v1, v14

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Lcom/forthblue/pool/util/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/forthblue/pool/util/IabResult;Lcom/forthblue/pool/util/Purchase;)V

    goto :goto_0
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/forthblue/pool/util/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/forthblue/pool/util/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/forthblue/pool/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 873
    iget-object v0, p0, Lcom/forthblue/pool/util/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return-void
.end method

.method public queryInventory(ZLjava/util/List;)Lcom/forthblue/pool/util/Inventory;
    .locals 7
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/forthblue/pool/util/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/forthblue/pool/util/IabException;
        }
    .end annotation

    .prologue
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v5, -0x3ea

    const-string v6, "Error parsing JSON response while refreshing inventory."

    .line 463
    const-string v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/forthblue/pool/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 465
    :try_start_0
    new-instance v1, Lcom/forthblue/pool/util/Inventory;

    invoke-direct {v1}, Lcom/forthblue/pool/util/Inventory;-><init>()V

    .line 466
    .local v1, "inv":Lcom/forthblue/pool/util/Inventory;
    invoke-virtual {p0, v1}, Lcom/forthblue/pool/util/IabHelper;->queryPurchases(Lcom/forthblue/pool/util/Inventory;)I

    move-result v2

    .line 467
    .local v2, "r":I
    if-eqz v2, :cond_0

    .line 468
    new-instance v3, Lcom/forthblue/pool/util/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/forthblue/pool/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 478
    .end local v1    # "inv":Lcom/forthblue/pool/util/Inventory;
    .end local v2    # "r":I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/forthblue/pool/util/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/forthblue/pool/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 471
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/forthblue/pool/util/Inventory;
    .restart local v2    # "r":I
    :cond_0
    if-eqz p1, :cond_1

    .line 472
    :try_start_1
    invoke-virtual {p0, v1, p2}, Lcom/forthblue/pool/util/IabHelper;->querySkuDetails(Lcom/forthblue/pool/util/Inventory;Ljava/util/List;)I

    move-result v2

    .line 473
    if-eqz v2, :cond_1

    .line 474
    new-instance v3, Lcom/forthblue/pool/util/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/forthblue/pool/util/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 480
    .end local v1    # "inv":Lcom/forthblue/pool/util/Inventory;
    .end local v2    # "r":I
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 481
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/forthblue/pool/util/IabException;

    const-string v4, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v5, v6, v0}, Lcom/forthblue/pool/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 482
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 483
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v3, Lcom/forthblue/pool/util/IabException;

    const-string v4, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v5, v6, v0}, Lcom/forthblue/pool/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 484
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 485
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Lcom/forthblue/pool/util/IabException;

    const-string v4, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v5, v6, v0}, Lcom/forthblue/pool/util/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 477
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "inv":Lcom/forthblue/pool/util/Inventory;
    .restart local v2    # "r":I
    :cond_1
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 545
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/forthblue/pool/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 546
    return-void
.end method

.method public queryInventoryAsync(ZLcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 1
    .param p1, "querySkuDetails"    # Z
    .param p2, "listener"    # Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;

    .prologue
    .line 549
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/forthblue/pool/util/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;)V

    .line 550
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;)V
    .locals 7
    .param p1, "querySkuDetails"    # Z
    .param p3, "listener"    # Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 518
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 519
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/util/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 520
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/util/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 521
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/forthblue/pool/util/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/forthblue/pool/util/IabHelper$2;-><init>(Lcom/forthblue/pool/util/IabHelper;ZLjava/util/List;Landroid/os/Handler;Lcom/forthblue/pool/util/IabHelper$QueryInventoryFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 542
    return-void
.end method

.method queryPurchases(Lcom/forthblue/pool/util/Inventory;)I
    .locals 22
    .param p1, "inv"    # Lcom/forthblue/pool/util/Inventory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 735
    const-string v18, "Querying owned items..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 736
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package name: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/util/IabHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 737
    const/4 v6, 0x1

    .line 738
    .local v6, "hasMore":Z
    const/16 v17, 0x0

    .line 739
    .local v17, "verificationFailed":Z
    const/4 v5, 0x0

    .line 742
    .local v5, "continueToken":Ljava/lang/String;
    :cond_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Calling getPurchases with continuation token: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/util/IabHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "inapp"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 745
    .local v8, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v13

    .line 746
    .local v13, "response":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Owned items response: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 747
    if-eqz v13, :cond_1

    .line 748
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getPurchases() failed: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v13}, Lcom/forthblue/pool/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    move/from16 v18, v13

    .line 788
    :goto_0
    return v18

    .line 751
    :cond_1
    const-string v18, "INAPP_PURCHASE_ITEM_LIST"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, "INAPP_PURCHASE_DATA_LIST"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, "INAPP_DATA_SIGNATURE_LIST"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 753
    :cond_2
    const-string v18, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 754
    const/16 v18, -0x3ea

    goto :goto_0

    .line 757
    :cond_3
    const-string v18, "INAPP_PURCHASE_ITEM_LIST"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 758
    .local v9, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v18, "INAPP_PURCHASE_DATA_LIST"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 759
    .local v12, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v18, "INAPP_DATA_SIGNATURE_LIST"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 761
    .local v15, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    move v0, v7

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 762
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 763
    .local v11, "purchaseData":Ljava/lang/String;
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 764
    .local v14, "signature":Ljava/lang/String;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 765
    .local v16, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/util/IabHelper;->mSignatureBase64:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v11

    move-object v2, v14

    invoke-static {v0, v1, v2}, Lcom/forthblue/pool/util/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 766
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Sku is owned: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 767
    new-instance v10, Lcom/forthblue/pool/util/Purchase;

    invoke-direct {v10, v11, v14}, Lcom/forthblue/pool/util/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    .local v10, "purchase":Lcom/forthblue/pool/util/Purchase;
    invoke-virtual {v10}, Lcom/forthblue/pool/util/Purchase;->getToken()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 770
    const-string v18, "BUG: empty/null token!"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 771
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Purchase data: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 775
    :cond_4
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/Inventory;->addPurchase(Lcom/forthblue/pool/util/Purchase;)V

    .line 761
    .end local v10    # "purchase":Lcom/forthblue/pool/util/Purchase;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 777
    :cond_5
    const-string v18, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 778
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   Purchase data: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 779
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   Signature: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 780
    const/16 v17, 0x1

    goto :goto_2

    .line 784
    .end local v11    # "purchaseData":Ljava/lang/String;
    .end local v14    # "signature":Ljava/lang/String;
    .end local v16    # "sku":Ljava/lang/String;
    :cond_6
    const-string v18, "INAPP_CONTINUATION_TOKEN"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 785
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Continuation token: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 786
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 788
    if-eqz v17, :cond_7

    const/16 v18, -0x3eb

    goto/16 :goto_0

    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0
.end method

.method querySkuDetails(Lcom/forthblue/pool/util/Inventory;Ljava/util/List;)I
    .locals 12
    .param p1, "inv"    # Lcom/forthblue/pool/util/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/forthblue/pool/util/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 792
    .local p2, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "Querying SKU details."

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 793
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v6, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/forthblue/pool/util/Inventory;->getAllOwnedSkus()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 795
    if-eqz p2, :cond_0

    .line 796
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 798
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 799
    const-string v8, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 800
    const/4 v8, 0x0

    .line 825
    :goto_0
    return v8

    .line 803
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 804
    .local v2, "querySkus":Landroid/os/Bundle;
    const-string v8, "ITEM_ID_LIST"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 805
    iget-object v8, p0, Lcom/forthblue/pool/util/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/forthblue/pool/util/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "inapp"

    invoke-interface {v8, v9, v10, v11, v2}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 807
    .local v5, "skuDetails":Landroid/os/Bundle;
    const-string v8, "DETAILS_LIST"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 808
    invoke-virtual {p0, v5}, Lcom/forthblue/pool/util/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v3

    .line 809
    .local v3, "response":I
    if-eqz v3, :cond_2

    .line 810
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSkuDetails() failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/forthblue/pool/util/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    move v8, v3

    .line 811
    goto :goto_0

    .line 813
    :cond_2
    const-string v8, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 814
    const/16 v8, -0x3ea

    goto :goto_0

    .line 818
    .end local v3    # "response":I
    :cond_3
    const-string v8, "DETAILS_LIST"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 820
    .local v4, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 821
    .local v7, "thisResponse":Ljava/lang/String;
    new-instance v0, Lcom/forthblue/pool/util/SkuDetails;

    invoke-direct {v0, v7}, Lcom/forthblue/pool/util/SkuDetails;-><init>(Ljava/lang/String;)V

    .line 822
    .local v0, "d":Lcom/forthblue/pool/util/SkuDetails;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got sku details: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p1, v0}, Lcom/forthblue/pool/util/Inventory;->addSkuDetails(Lcom/forthblue/pool/util/SkuDetails;)V

    goto :goto_1

    .line 825
    .end local v0    # "d":Lcom/forthblue/pool/util/SkuDetails;
    .end local v7    # "thisResponse":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public startSetup(Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/forthblue/pool/util/IabHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    const-string v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/util/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 200
    new-instance v0, Lcom/forthblue/pool/util/IabHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/forthblue/pool/util/IabHelper$1;-><init>(Lcom/forthblue/pool/util/IabHelper;Lcom/forthblue/pool/util/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lcom/forthblue/pool/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 236
    iget-object v0, p0, Lcom/forthblue/pool/util/IabHelper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/forthblue/pool/util/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 237
    return-void
.end method
