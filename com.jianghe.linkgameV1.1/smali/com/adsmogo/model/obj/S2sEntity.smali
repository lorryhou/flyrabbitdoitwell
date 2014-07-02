.class public Lcom/adsmogo/model/obj/S2sEntity;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/util/ArrayList;

.field private j:Ljava/util/ArrayList;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/ArrayList;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->d:I

    iput-object v1, p0, Lcom/adsmogo/model/obj/S2sEntity;->i:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/adsmogo/model/obj/S2sEntity;->j:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/adsmogo/model/obj/S2sEntity;->m:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->n:Z

    iput v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->q:I

    iput v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->s:I

    return-void
.end method


# virtual methods
.method public getAdSize()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->p:I

    return v0
.end method

.method public getAd_html()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAd_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getCc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getClk_url()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImp_url()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLa_type()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->d:I

    return v0
.end method

.method public getNetworks()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRm()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->g:I

    return v0
.end method

.method public getRmHtml()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->a:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->e:I

    return v0
.end method

.method public getVideoClkUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoClosable()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->s:I

    return v0
.end method

.method public getVideoExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoType()I
    .locals 1

    iget v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->q:I

    return v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getWh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->f:Ljava/lang/String;

    return-object v0
.end method

.method public isCc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/adsmogo/model/obj/S2sEntity;->n:Z

    return v0
.end method

.method public setAdSize(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->p:I

    return-void
.end method

.method public setAd_html(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->c:Ljava/lang/String;

    return-void
.end method

.method public setAd_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->b:Ljava/lang/String;

    return-void
.end method

.method public setAdid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->k:Ljava/lang/String;

    return-void
.end method

.method public setCc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->o:Ljava/lang/String;

    return-void
.end method

.method public setCc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->n:Z

    return-void
.end method

.method public setClk_url(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->j:Ljava/util/ArrayList;

    return-void
.end method

.method public setImp_url(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public setLa_type(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->d:I

    return-void
.end method

.method public setNetworks(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->m:Ljava/util/ArrayList;

    return-void
.end method

.method public setRm(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->g:I

    return-void
.end method

.method public setRmHtml(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->v:Ljava/lang/String;

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->h:Ljava/lang/String;

    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->l:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->a:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->e:I

    return-void
.end method

.method public setVideoClkUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->u:Ljava/lang/String;

    return-void
.end method

.method public setVideoClosable(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->s:I

    return-void
.end method

.method public setVideoExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->t:Ljava/lang/String;

    return-void
.end method

.method public setVideoType(I)V
    .locals 0

    iput p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->q:I

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->r:Ljava/lang/String;

    return-void
.end method

.method public setWh(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsmogo/model/obj/S2sEntity;->f:Ljava/lang/String;

    return-void
.end method
