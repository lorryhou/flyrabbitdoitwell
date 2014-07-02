.class public Lcom/adsmogo/controller/AdsMogoCore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsmogo/controller/listener/AdsMogoCoreListener;


# instance fields
.field protected a:Ljava/util/LinkedHashMap;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field public d:Lcom/adsmogo/adview/AdsMogoLayout;

.field public e:Z

.field protected f:Lcom/adsmogo/controller/count/AdsCount;

.field g:J

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Lcom/adsmogo/controller/l;

.field private n:Lcom/adsmogo/controller/listener/AdsMogoListener;

.field private o:Ljava/util/Timer;

.field private p:Z

.field private q:Z

.field private r:J

.field private s:Lcom/adsmogo/model/obj/AdsModel;

.field private t:I

.field private u:Ljava/util/Timer;

.field private v:Ljava/util/TimerTask;

.field private w:I


# direct methods
.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->h:Z

    iput-boolean v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->i:Z

    iput v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->j:I

    iput v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->k:I

    iput-boolean v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    iput-boolean v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->p:Z

    iput-boolean v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->q:Z

    iput-wide v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->g:J

    iput-wide v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->r:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->s:Lcom/adsmogo/model/obj/AdsModel;

    iput v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->t:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->w:I

    iput-object p1, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/controller/listener/AdsMogoListener;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->h:Z

    iput-boolean v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->i:Z

    iput v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->j:I

    iput v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->k:I

    iput-boolean v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    iput-boolean v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->p:Z

    iput-boolean v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->q:Z

    iput-wide v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->g:J

    iput-wide v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->r:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->s:Lcom/adsmogo/model/obj/AdsModel;

    iput v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->t:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->w:I

    iput-object p1, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iput-object p2, p0, Lcom/adsmogo/controller/AdsMogoCore;->n:Lcom/adsmogo/controller/listener/AdsMogoListener;

    new-instance v0, Lcom/adsmogo/controller/l;

    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-direct {v0, v1}, Lcom/adsmogo/controller/l;-><init>(Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;)V

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->m:Lcom/adsmogo/controller/l;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->o:Ljava/util/Timer;

    new-instance v1, Lcom/adsmogo/controller/count/AdsCount;

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/adsmogo/controller/count/AdsCount;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private a()Ljava/util/TimerTask;
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "initThirtyMinutesRefreshTimerTask"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->v:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/adsmogo/controller/AdsMogoCore;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->v:Ljava/util/TimerTask;

    :cond_0
    new-instance v0, Lcom/adsmogo/controller/a;

    invoke-direct {v0, p0}, Lcom/adsmogo/controller/a;-><init>(Lcom/adsmogo/controller/AdsMogoCore;)V

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->v:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->v:Ljava/util/TimerTask;

    return-object v0
.end method

.method private a(I)V
    .locals 6

    const/4 v2, 0x1

    const-string v1, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "core requestState:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "AdRequestStateFail"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->m:Lcom/adsmogo/controller/l;

    if-nez v0, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Core core rationManager is null"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "AdRequestStateSuccess"

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->j:I

    if-ne p1, v0, :cond_4

    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->m:Lcom/adsmogo/controller/l;

    invoke-virtual {v0}, Lcom/adsmogo/controller/l;->a()V

    :cond_3
    iget-boolean v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->m:Lcom/adsmogo/controller/l;

    invoke-virtual {v0}, Lcom/adsmogo/controller/l;->b()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "AdsMOGO SDK"

    const-string v1, "Sum of ration weights is 0 - no ads to be shown"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/adsmogo/controller/AdsMogoCore;->m:Lcom/adsmogo/controller/l;

    invoke-virtual {v3, v1}, Lcom/adsmogo/controller/l;->a(Z)Lcom/adsmogo/model/obj/Ration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    const-string v1, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "private void core ration -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adsmogo/controller/c;

    invoke-direct {v2, p0, v0}, Lcom/adsmogo/controller/c;-><init>(Lcom/adsmogo/controller/AdsMogoCore;Lcom/adsmogo/model/obj/Ration;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "AdsMOGO SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getNextRation err:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v0, v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v0}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    move-result-object v0

    iget v0, v0, Lcom/adsmogo/model/obj/Extra;->cycleTime:I

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->j:I

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/controller/AdsMogoCore;->a(II)V

    :cond_7
    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    invoke-virtual {v0}, Lcom/adsmogo/controller/count/AdsCount;->getNidAndType()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    invoke-virtual {v0, v2}, Lcom/adsmogo/controller/count/AdsCount;->setBk(I)V

    invoke-virtual {p0}, Lcom/adsmogo/controller/AdsMogoCore;->e()V

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->n:Lcom/adsmogo/controller/listener/AdsMogoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->n:Lcom/adsmogo/controller/listener/AdsMogoListener;

    invoke-interface {v0}, Lcom/adsmogo/controller/listener/AdsMogoListener;->onFailedReceiveAd()V

    goto/16 :goto_1
.end method

.method private a(II)V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->o:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->o:Ljava/util/Timer;

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->o:Ljava/util/Timer;

    new-instance v1, Lcom/adsmogo/controller/h;

    invoke-direct {v1, p0, p2}, Lcom/adsmogo/controller/h;-><init>(Lcom/adsmogo/controller/AdsMogoCore;I)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->g:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->r:J

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->a:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adsmogo/controller/d;

    invoke-direct {v2, p0, v0}, Lcom/adsmogo/controller/d;-><init>(Lcom/adsmogo/controller/AdsMogoCore;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->q:Z

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v0, v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v0}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    move-result-object v0

    iget v0, v0, Lcom/adsmogo/model/obj/Extra;->cycleTime:I

    mul-int/lit16 v0, v0, 0x3e8

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "After "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms in rotation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->j:I

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/controller/AdsMogoCore;->a(II)V

    invoke-virtual {p0}, Lcom/adsmogo/controller/AdsMogoCore;->e()V

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->n:Lcom/adsmogo/controller/listener/AdsMogoListener;

    if-eqz v0, :cond_1

    const-string v1, ""

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->a:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->getRation()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "\u8865\u4f59"

    :goto_0
    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->n:Lcom/adsmogo/controller/listener/AdsMogoListener;

    invoke-interface {v1, p1, v0}, Lcom/adsmogo/controller/listener/AdsMogoListener;->onReceiveAd(Landroid/view/ViewGroup;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, v0, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/controller/AdsMogoCore;)V
    .locals 2

    const-string v0, "AdsMOGO SDK"

    const-string v1, "banner core thirtyMinutesRefreshTimeOut"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-virtual {v0}, Lcom/adsmogo/adview/AdsMogoLayout;->a()V

    invoke-direct {p0}, Lcom/adsmogo/controller/AdsMogoCore;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/adsmogo/controller/AdsMogoCore;->h()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/adsmogo/controller/AdsMogoCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/controller/AdsMogoCore;->a(I)V

    return-void
.end method

.method private b()V
    .locals 4

    const-string v0, "AdsMOGO SDK"

    const-string v1, "banner core startThirtyMinutesRefreshTimer"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->u:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->u:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/adsmogo/controller/AdsMogoCore;->a()Ljava/util/TimerTask;

    move-result-object v1

    iget v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->w:I

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/adsmogo/controller/AdsMogoCore;->h()V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->u:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->u:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private i()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->v:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->v:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/adsmogo/controller/listener/AdsMogoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/AdsMogoCore;->n:Lcom/adsmogo/controller/listener/AdsMogoListener;

    return-void
.end method

.method protected a(Lcom/adsmogo/model/obj/Ration;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-virtual {p1}, Lcom/adsmogo/model/obj/Ration;->clone()Lcom/adsmogo/model/obj/Ration;

    move-result-object v2

    invoke-static {v0, v2, v7}, Lcom/adsmogo/adapters/b;->a(Lcom/adsmogo/interstitial/AdsMogoConfigInterface;Lcom/adsmogo/model/obj/Ration;Z)Lcom/adsmogo/adapters/AdsMogoAdapter;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    if-nez v0, :cond_0

    new-instance v3, Lcom/adsmogo/controller/count/AdsCount;

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/adsmogo/controller/count/AdsCount;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    :cond_0
    const/16 v0, 0x9

    iget v3, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    if-eq v0, v3, :cond_1

    const/16 v0, 0x1b

    iget v3, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    if-eq v0, v3, :cond_1

    const/16 v0, 0x2d

    iget v3, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    if-eq v0, v3, :cond_1

    const/16 v0, 0x30

    iget v3, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    if-eq v0, v3, :cond_1

    const/16 v0, 0x36

    iget v3, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    if-eq v0, v3, :cond_1

    iget v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    const/16 v3, 0x7d0

    if-eq v0, v3, :cond_1

    invoke-virtual {v2}, Lcom/adsmogo/adapters/AdsMogoAdapter;->isS2s()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    invoke-virtual {v2, v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setAdCount(Lcom/adsmogo/controller/count/AdsCount;)V

    :goto_0
    const-string v0, "request ad info: \nkey: %s\nnid: %s\ntype: %s\nname:%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p1, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    aput-object v4, v3, v7

    const/4 v4, 0x2

    iget v5, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "AdsMOGO SDK"

    invoke-static {v3, v0}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->finish()V

    :cond_2
    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->n:Lcom/adsmogo/controller/listener/AdsMogoListener;

    if-eqz v0, :cond_4

    const-string v0, ""

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "\u8865\u4f59"

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->n:Lcom/adsmogo/controller/listener/AdsMogoListener;

    invoke-interface {v1, v0}, Lcom/adsmogo/controller/listener/AdsMogoListener;->onRequestAd(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->a:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcom/adsmogo/controller/AdsMogoCore;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setAdsMogoCoreListener(Lcom/adsmogo/controller/listener/AdsMogoCoreListener;)V

    invoke-virtual {v2, p0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->setAdsMogoCore(Lcom/adsmogo/controller/AdsMogoCore;)V

    invoke-virtual {v2}, Lcom/adsmogo/adapters/AdsMogoAdapter;->handle()V

    :goto_3
    return-void

    :cond_5
    invoke-virtual {v2}, Lcom/adsmogo/adapters/AdsMogoAdapter;->isS2s()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p1, Lcom/adsmogo/model/obj/Ration;->isS2s:Z

    if-eqz v0, :cond_7

    iget v0, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    const/16 v3, 0x3e8

    if-lt v0, v3, :cond_6

    const/16 v3, 0x5dc

    if-ge v0, v3, :cond_6

    add-int/lit16 v0, v0, -0x3e8

    :cond_6
    iget-object v3, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    invoke-virtual {v3}, Lcom/adsmogo/controller/count/AdsCount;->getNidAndType()Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    invoke-virtual {v0}, Lcom/adsmogo/controller/count/AdsCount;->getNidAndType()Ljava/util/HashMap;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/adsmogo/model/obj/Ration;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    iget-object v0, p1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    const-string v0, "AdsMOGO SDK"

    const-string v2, "Request Adapter is null"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->w(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/adsmogo/controller/AdsMogoCore;->requestAdFail(Landroid/view/ViewGroup;)V

    goto/16 :goto_3
.end method

.method public adwoPuseRotate()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->i:Z

    const-string v0, "AdsMOGO SDK"

    const-string v1, "core adwoPuseRotate"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->c:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    iput-boolean v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->o:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->r:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->c:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->o:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->r:J

    goto :goto_0
.end method

.method public countClick(Lcom/adsmogo/model/obj/Ration;)V
    .locals 3

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->n:Lcom/adsmogo/controller/listener/AdsMogoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->n:Lcom/adsmogo/controller/listener/AdsMogoListener;

    invoke-interface {v0}, Lcom/adsmogo/controller/listener/AdsMogoListener;->onRealClickAd()V

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->a:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->q:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->q:Z

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->n:Lcom/adsmogo/controller/listener/AdsMogoListener;

    if-eqz v0, :cond_2

    const-string v0, ""

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u8865\u4f59"

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->n:Lcom/adsmogo/controller/listener/AdsMogoListener;

    invoke-interface {v1, v0}, Lcom/adsmogo/controller/listener/AdsMogoListener;->onClickAd(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adsmogo/controller/e;

    iget-object v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    invoke-direct {v1, p0, v2, p1}, Lcom/adsmogo/controller/e;-><init>(Lcom/adsmogo/controller/AdsMogoCore;Lcom/adsmogo/adview/AdsMogoLayout;Lcom/adsmogo/model/obj/Ration;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p1, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->h:Z

    iget-boolean v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    if-nez v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "core puseRotate"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->o:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->r:J

    :cond_0
    return-void
.end method

.method public e()V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    invoke-virtual {v2}, Lcom/adsmogo/controller/count/AdsCount;->getNidAndType()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v2, v2, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    :sswitch_0
    iget-object v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    iget-object v3, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v3, v3, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAppid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adsmogo/controller/count/AdsCount;->setAid(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    iget-object v3, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v3, v3, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v3, v3, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v3}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adsmogo/controller/count/AdsCount;->setCn(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    invoke-virtual {v2, v0}, Lcom/adsmogo/controller/count/AdsCount;->setAdtype(I)V

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    iget-object v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v2, v2, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v2}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adsmogo/controller/count/AdsCount;->setLc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/adsmogo/controller/f;

    iget-object v4, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    invoke-virtual {v4}, Lcom/adsmogo/controller/count/AdsCount;->clone()Lcom/adsmogo/controller/count/AdsCount;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0}, Lcom/adsmogo/controller/f;-><init>(Lcom/adsmogo/controller/AdsMogoCore;Lcom/adsmogo/controller/count/AdsCount;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_0
    iput-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    new-instance v1, Lcom/adsmogo/controller/count/AdsCount;

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/adsmogo/controller/count/AdsCount;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->f:Lcom/adsmogo/controller/count/AdsCount;

    return-void

    :sswitch_1
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xb

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method public f()Lcom/adsmogo/controller/listener/AdsMogoListener;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->n:Lcom/adsmogo/controller/listener/AdsMogoListener;

    return-object v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->a:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adapters/AdsMogoAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adsmogo/adapters/AdsMogoAdapter;->click()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/adsmogo/controller/AdsMogoCore;->countClick(Lcom/adsmogo/model/obj/Ration;)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "destroyThirtyMinutesRefresh"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->v:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adsmogo/controller/AdsMogoCore;->i()V

    iput-object v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->v:Ljava/util/TimerTask;

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->u:Ljava/util/Timer;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/adsmogo/controller/AdsMogoCore;->c()V

    iput-object v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->u:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method public playEnd()V
    .locals 0

    return-void
.end method

.method public requestAdFail(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/adsmogo/controller/g;

    invoke-direct {v1, p0, p1}, Lcom/adsmogo/controller/g;-><init>(Lcom/adsmogo/controller/AdsMogoCore;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->a:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v1, v1, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adsmogo/controller/b;

    invoke-direct {v2, p0, v0}, Lcom/adsmogo/controller/b;-><init>(Lcom/adsmogo/controller/AdsMogoCore;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->t:I

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->l:Ljava/lang/String;

    invoke-direct {p0, v3, v3}, Lcom/adsmogo/controller/AdsMogoCore;->a(II)V

    return-void
.end method

.method public requestAdSuccess(Landroid/view/ViewGroup;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x3

    const/4 v3, 0x1

    iput v3, p0, Lcom/adsmogo/controller/AdsMogoCore;->t:I

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->adsMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsmogo/adview/AdsMogoLayout;

    iget-boolean v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v1

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    new-instance v0, Lcom/adsmogo/model/obj/AdsModel;

    invoke-direct {v0, v4, v4}, Lcom/adsmogo/model/obj/AdsModel;-><init>(II)V

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->s:Lcom/adsmogo/model/obj/AdsModel;

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->s:Lcom/adsmogo/model/obj/AdsModel;

    invoke-virtual {v0, p1}, Lcom/adsmogo/model/obj/AdsModel;->setAdView(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->s:Lcom/adsmogo/model/obj/AdsModel;

    invoke-virtual {v0, p2}, Lcom/adsmogo/model/obj/AdsModel;->setType(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v1}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->isRotate_DEFINED_AD()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AdsMOGO SDK"

    const-string v2, "GETINFO_DEFINED_AD not Rotate"

    invoke-static {v1, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    iput-boolean v3, p0, Lcom/adsmogo/controller/AdsMogoCore;->p:Z

    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->s:Lcom/adsmogo/model/obj/AdsModel;

    iget-object v1, v0, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/adsmogo/adview/s;

    invoke-direct {v2, v0, p1, p2}, Lcom/adsmogo/adview/s;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Landroid/view/ViewGroup;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lcom/adsmogo/controller/AdsMogoCore;->a(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_1
    iput-boolean v5, p0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    iput-boolean v5, p0, Lcom/adsmogo/controller/AdsMogoCore;->p:Z

    goto :goto_1
.end method

.method public requestAdSuccess(Landroid/view/ViewGroup;III)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput v3, p0, Lcom/adsmogo/controller/AdsMogoCore;->t:I

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->adsMogoLayoutReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adsmogo/adview/AdsMogoLayout;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_1

    new-instance v0, Lcom/adsmogo/model/obj/AdsModel;

    invoke-direct {v0, p3, p4}, Lcom/adsmogo/model/obj/AdsModel;-><init>(II)V

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->s:Lcom/adsmogo/model/obj/AdsModel;

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->s:Lcom/adsmogo/model/obj/AdsModel;

    invoke-virtual {v0, p1}, Lcom/adsmogo/model/obj/AdsModel;->setAdView(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->s:Lcom/adsmogo/model/obj/AdsModel;

    invoke-virtual {v0, p2}, Lcom/adsmogo/model/obj/AdsModel;->setType(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    iget-object v0, v1, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->isRotate_DEFINED_AD()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AdsMOGO SDK"

    const-string v2, "GETINFO_DEFINED_AD not Rotate"

    invoke-static {v0, v2}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    iput-boolean v3, p0, Lcom/adsmogo/controller/AdsMogoCore;->p:Z

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->s:Lcom/adsmogo/model/obj/AdsModel;

    iget-object v6, v1, Lcom/adsmogo/adview/AdsMogoLayout;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/adsmogo/adview/s;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/adsmogo/adview/s;-><init>(Lcom/adsmogo/adview/AdsMogoLayout;Landroid/view/ViewGroup;III)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lcom/adsmogo/controller/AdsMogoCore;->a(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    iput-boolean v4, p0, Lcom/adsmogo/controller/AdsMogoCore;->p:Z

    goto :goto_1
.end method

.method public startRotate(Z)V
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v8, -0x3

    const/4 v7, 0x0

    const/4 v0, 0x1

    const-string v4, "AdsMOGO SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isWindowFocus :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "AdsMOGO SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "adWindowFocus :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/adsmogo/controller/AdsMogoCore;->h:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " adMOGOStart:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/adsmogo/controller/AdsMogoCore;->i:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->h:Z

    :goto_0
    iget-boolean v4, p0, Lcom/adsmogo/controller/AdsMogoCore;->h:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/adsmogo/controller/AdsMogoCore;->i:Z

    if-nez v4, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput-boolean v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->i:Z

    goto :goto_0

    :cond_2
    const-string v4, "AdsMOGO SDK"

    const-string v5, "core startRotate"

    invoke-static {v4, v5}, Lcom/adsmogo/util/L;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v4, p0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    if-nez v4, :cond_3

    const-string v0, "AdsMOGO SDK"

    const-string v1, "startRotate not Stop"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v4, v4, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v4}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->getAdType()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v4, v4, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    invoke-virtual {v4}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->isRotate_DEFINED_AD()Z

    move-result v4

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/adsmogo/controller/AdsMogoCore;->p:Z

    if-eqz v4, :cond_4

    const-string v0, "AdsMOGO SDK"

    const-string v1, "GETINFO_DEFINED_AD not Rotate"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->e:Z

    iget v4, p0, Lcom/adsmogo/controller/AdsMogoCore;->t:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    iget-object v4, p0, Lcom/adsmogo/controller/AdsMogoCore;->c:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/adsmogo/controller/AdsMogoCore;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/adsmogo/controller/AdsMogoCore;->c:Ljava/lang/String;

    if-eq v4, v5, :cond_7

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->s:Lcom/adsmogo/model/obj/AdsModel;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->s:Lcom/adsmogo/model/obj/AdsModel;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->s:Lcom/adsmogo/model/obj/AdsModel;

    invoke-virtual {v0}, Lcom/adsmogo/model/obj/AdsModel;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/adsmogo/controller/AdsMogoCore;->s:Lcom/adsmogo/model/obj/AdsModel;

    invoke-virtual {v2}, Lcom/adsmogo/model/obj/AdsModel;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/adsmogo/controller/AdsMogoCore;->s:Lcom/adsmogo/model/obj/AdsModel;

    invoke-virtual {v3}, Lcom/adsmogo/model/obj/AdsModel;->getAdView()Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/adsmogo/controller/AdsMogoCore;->s:Lcom/adsmogo/model/obj/AdsModel;

    invoke-virtual {v4}, Lcom/adsmogo/model/obj/AdsModel;->getType()I

    move-result v4

    const-string v5, "AdsMOGO SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "adModel is not null,type > "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/adsmogo/controller/AdsMogoCore;->s:Lcom/adsmogo/model/obj/AdsModel;

    if-le v0, v8, :cond_5

    if-le v2, v8, :cond_5

    invoke-virtual {p0, v3, v4, v0, v2}, Lcom/adsmogo/controller/AdsMogoCore;->requestAdSuccess(Landroid/view/ViewGroup;III)V

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    :try_start_1
    invoke-virtual {p0, v3, v4}, Lcom/adsmogo/controller/AdsMogoCore;->requestAdSuccess(Landroid/view/ViewGroup;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdsMOGO SDK"

    const-string v1, "curFailAdapterKey = curReqAdapterKey"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/adsmogo/controller/AdsMogoCore;->requestAdFail(Landroid/view/ViewGroup;)V

    goto/16 :goto_1

    :cond_7
    iget-object v4, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v4, v4, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v4, v4, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v4}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    move-result-object v4

    iget v4, v4, Lcom/adsmogo/model/obj/Extra;->improveClick:I

    if-ne v4, v0, :cond_9

    :goto_3
    iget-wide v4, p0, Lcom/adsmogo/controller/AdsMogoCore;->r:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_a

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->d:Lcom/adsmogo/adview/AdsMogoLayout;

    iget-object v0, v0, Lcom/adsmogo/adview/AdsMogoLayout;->configCenter:Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;

    iget-object v0, v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-virtual {v0}, Lcom/adsmogo/model/AdsMogoConfigDataList;->getCurConfigData()Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigData;->getExtra()Lcom/adsmogo/model/obj/Extra;

    move-result-object v0

    iget v0, v0, Lcom/adsmogo/model/obj/Extra;->cycleTime:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iget-wide v4, p0, Lcom/adsmogo/controller/AdsMogoCore;->r:J

    iget-wide v6, p0, Lcom/adsmogo/controller/AdsMogoCore;->g:J

    sub-long/2addr v4, v6

    sub-long/2addr v0, v4

    const-string v4, "AdsMOGO SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "surplusTime > "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    cmp-long v4, v0, v2

    if-gez v4, :cond_8

    move-wide v0, v2

    :cond_8
    const-string v2, "AdsMOGO SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "surplus Time > "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    long-to-int v0, v0

    iget v1, p0, Lcom/adsmogo/controller/AdsMogoCore;->j:I

    invoke-direct {p0, v0, v1}, Lcom/adsmogo/controller/AdsMogoCore;->a(II)V

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto :goto_3

    :cond_a
    const-string v0, "AdsMOGO SDK"

    const-string v1, "this core"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_2
    iget v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->j:I

    invoke-direct {p0, v0}, Lcom/adsmogo/controller/AdsMogoCore;->a(I)V

    const-string v0, "AdsMOGO SDK"

    const-string v1, "initThirtyMinutesRefreshTimer"

    invoke-static {v0, v1}, Lcom/adsmogo/util/L;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->u:Ljava/util/Timer;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/adsmogo/controller/AdsMogoCore;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->u:Ljava/util/Timer;

    :cond_b
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/controller/AdsMogoCore;->u:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/adsmogo/controller/AdsMogoCore;->a()Ljava/util/TimerTask;

    invoke-direct {p0}, Lcom/adsmogo/controller/AdsMogoCore;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AdsMOGO SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Core core err:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/adsmogo/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
