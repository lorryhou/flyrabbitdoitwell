.class public Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/Hashtable;

.field public static b:Ljava/util/Hashtable;


# instance fields
.field public adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

.field private c:Landroid/view/ViewGroup;

.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->b:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->f:Z

    iput-boolean v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->i:Z

    iput-boolean v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->o:Z

    new-instance v0, Lcom/adsmogo/model/AdsMogoConfigDataList;

    invoke-direct {v0}, Lcom/adsmogo/model/AdsMogoConfigDataList;-><init>()V

    iput-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->adsMogoConfigDataList:Lcom/adsmogo/model/AdsMogoConfigDataList;

    return-void
.end method


# virtual methods
.method public getAdType()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->k:I

    return v0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->e:I

    return v0
.end method

.method public getLatitudeAndlongitude()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getMogoLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->p:Landroid/location/Location;

    return-object v0
.end method

.method public getPngSize()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->g:I

    return v0
.end method

.method public getView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->d:I

    return v0
.end method

.method public isExpressMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->h:Z

    return v0
.end method

.method public isRotate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->i:Z

    return v0
.end method

.method public isRotate_DEFINED_AD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->f:Z

    return v0
.end method

.method public isSendDataed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->o:Z

    return v0
.end method

.method public setAdType(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->k:I

    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->j:Ljava/lang/String;

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->l:Ljava/lang/String;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->m:Ljava/lang/String;

    return-void
.end method

.method public setExpressMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->h:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->e:I

    return-void
.end method

.method public setLatitudeAndlongitude(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->n:Ljava/lang/String;

    return-void
.end method

.method public setMogoLocation(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->p:Landroid/location/Location;

    return-void
.end method

.method public setPngSize(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->g:I

    return-void
.end method

.method public setRotate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->i:Z

    return-void
.end method

.method public setRotate_DEFINED_AD(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->f:Z

    return-void
.end method

.method public setSendDataed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->o:Z

    return-void
.end method

.method public setView(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->c:Landroid/view/ViewGroup;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/controller/adsmogoconfigsource/AdsMogoConfigCenter;->d:I

    return-void
.end method
