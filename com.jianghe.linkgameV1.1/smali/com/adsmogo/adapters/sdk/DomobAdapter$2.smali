.class Lcom/adsmogo/adapters/sdk/DomobAdapter$2;
.super Ljava/lang/Object;
.source "DomobAdapter.java"

# interfaces
.implements Lcn/domob/android/ads/DomobAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adsmogo/adapters/sdk/DomobAdapter;->handle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;


# direct methods
.method constructor <init>(Lcom/adsmogo/adapters/sdk/DomobAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$2;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDomobAdClicked(Lcn/domob/android/ads/DomobAdView;)V
    .locals 0
    .param p1, "arg0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 177
    return-void
.end method

.method public onDomobAdFailed(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdManager$ErrorCode;)V
    .locals 3
    .param p1, "arg0"    # Lcn/domob/android/ads/DomobAdView;
    .param p2, "arg1"    # Lcn/domob/android/ads/DomobAdManager$ErrorCode;

    .prologue
    .line 182
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Domob Failed"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$2;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    # getter for: Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$1(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$2;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$2;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    # getter for: Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;
    invoke-static {v2}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$4(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Lcn/domob/android/ads/DomobAdView;

    move-result-object v2

    # invokes: Lcom/adsmogo/adapters/sdk/DomobAdapter;->sendResult(ZLandroid/view/ViewGroup;)V
    invoke-static {v0, v1, v2}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$5(Lcom/adsmogo/adapters/sdk/DomobAdapter;ZLandroid/view/ViewGroup;)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$2;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$6(Lcom/adsmogo/adapters/sdk/DomobAdapter;Lcn/domob/android/ads/DomobAdView;)V

    .line 187
    return-void
.end method

.method public onDomobAdOverlayDismissed(Lcn/domob/android/ads/DomobAdView;)V
    .locals 2
    .param p1, "arg0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 192
    const-string v0, "AdsMOGO SDK"

    .line 193
    const-string v1, "Domob onDomobAdOverlayDismissed"

    .line 192
    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public onDomobAdOverlayPresented(Lcn/domob/android/ads/DomobAdView;)V
    .locals 2
    .param p1, "arg0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 199
    const-string v0, "AdsMOGO SDK"

    .line 200
    const-string v1, "Domob onDomobAdOverlayPresented"

    .line 199
    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public onDomobAdRequiresCurrentContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDomobAdReturned(Lcn/domob/android/ads/DomobAdView;)V
    .locals 3
    .param p1, "arg0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 206
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Domob Success"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$2;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    # getter for: Lcom/adsmogo/adapters/sdk/DomobAdapter;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$1(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$2;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adsmogo/adapters/sdk/DomobAdapter$2;->this$0:Lcom/adsmogo/adapters/sdk/DomobAdapter;

    # getter for: Lcom/adsmogo/adapters/sdk/DomobAdapter;->adView:Lcn/domob/android/ads/DomobAdView;
    invoke-static {v2}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$4(Lcom/adsmogo/adapters/sdk/DomobAdapter;)Lcn/domob/android/ads/DomobAdView;

    move-result-object v2

    # invokes: Lcom/adsmogo/adapters/sdk/DomobAdapter;->sendResult(ZLandroid/view/ViewGroup;)V
    invoke-static {v0, v1, v2}, Lcom/adsmogo/adapters/sdk/DomobAdapter;->access$5(Lcom/adsmogo/adapters/sdk/DomobAdapter;ZLandroid/view/ViewGroup;)V

    .line 210
    :cond_0
    return-void
.end method

.method public onDomobLeaveApplication(Lcn/domob/android/ads/DomobAdView;)V
    .locals 2
    .param p1, "arg0"    # Lcn/domob/android/ads/DomobAdView;

    .prologue
    .line 215
    const-string v0, "AdsMOGO SDK"

    const-string v1, "Domob onDomobLeaveApplication"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    return-void
.end method
