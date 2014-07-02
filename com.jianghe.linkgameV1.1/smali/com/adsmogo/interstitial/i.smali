.class public final Lcom/adsmogo/interstitial/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/adsmogo/model/obj/Ration;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/adsmogo/util/GetUserInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adsmogo/interstitial/i;->c:Ljava/lang/String;

    const/16 v0, 0x138

    iput v0, p0, Lcom/adsmogo/interstitial/i;->f:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/interstitial/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/interstitial/i;->d:I

    return-void
.end method

.method public final a(Lcom/adsmogo/model/obj/Ration;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/interstitial/i;->e:Lcom/adsmogo/model/obj/Ration;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/interstitial/i;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/interstitial/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/interstitial/i;->g:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/interstitial/i;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/interstitial/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/adsmogo/interstitial/i;

    invoke-direct {v0}, Lcom/adsmogo/interstitial/i;-><init>()V

    iget v1, p0, Lcom/adsmogo/interstitial/i;->d:I

    iput v1, v0, Lcom/adsmogo/interstitial/i;->d:I

    iget-object v1, p0, Lcom/adsmogo/interstitial/i;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/adsmogo/interstitial/i;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsmogo/interstitial/i;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/adsmogo/interstitial/i;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsmogo/interstitial/i;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/adsmogo/interstitial/i;->c:Ljava/lang/String;

    iget v1, p0, Lcom/adsmogo/interstitial/i;->f:I

    iput v1, v0, Lcom/adsmogo/interstitial/i;->f:I

    iget-object v1, p0, Lcom/adsmogo/interstitial/i;->e:Lcom/adsmogo/model/obj/Ration;

    iput-object v1, v0, Lcom/adsmogo/interstitial/i;->e:Lcom/adsmogo/model/obj/Ration;

    iget v1, p0, Lcom/adsmogo/interstitial/i;->g:I

    iput v1, v0, Lcom/adsmogo/interstitial/i;->g:I

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/interstitial/i;->d:I

    return v0
.end method

.method public final e()Lcom/adsmogo/model/obj/Ration;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/interstitial/i;->e:Lcom/adsmogo/model/obj/Ration;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/interstitial/i;->g:I

    return v0
.end method
