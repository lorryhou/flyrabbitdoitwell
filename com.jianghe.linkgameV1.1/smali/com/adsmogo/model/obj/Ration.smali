.class public Lcom/adsmogo/model/obj/Ration;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public cc:Ljava/lang/String;

.field public isCc:Z

.field public isClicked:Z

.field public isS2s:Z

.field public isVideo:I

.field public key:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nid:Ljava/lang/String;

.field public priority:I

.field public tag:Ljava/lang/String;

.field public testmodel:Z

.field public timeOut:I

.field public type:I

.field public videoend:I

.field public videoplaytime:Ljava/lang/String;

.field public weight:D


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    iput v2, p0, Lcom/adsmogo/model/obj/Ration;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adsmogo/model/obj/Ration;->weight:D

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    iput v2, p0, Lcom/adsmogo/model/obj/Ration;->priority:I

    iput-boolean v2, p0, Lcom/adsmogo/model/obj/Ration;->testmodel:Z

    iput-boolean v2, p0, Lcom/adsmogo/model/obj/Ration;->isClicked:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/Ration;->tag:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/adsmogo/model/obj/Ration;->isS2s:Z

    iput-boolean v2, p0, Lcom/adsmogo/model/obj/Ration;->isCc:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/Ration;->cc:Ljava/lang/String;

    iput v2, p0, Lcom/adsmogo/model/obj/Ration;->videoend:I

    iput v2, p0, Lcom/adsmogo/model/obj/Ration;->isVideo:I

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/Ration;->videoplaytime:Ljava/lang/String;

    iput v2, p0, Lcom/adsmogo/model/obj/Ration;->timeOut:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/adsmogo/model/obj/Ration;
    .locals 3

    new-instance v0, Lcom/adsmogo/model/obj/Ration;

    invoke-direct {v0}, Lcom/adsmogo/model/obj/Ration;-><init>()V

    iget-object v1, p0, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    iput-object v1, v0, Lcom/adsmogo/model/obj/Ration;->nid:Ljava/lang/String;

    iget v1, p0, Lcom/adsmogo/model/obj/Ration;->type:I

    iput v1, v0, Lcom/adsmogo/model/obj/Ration;->type:I

    iget-object v1, p0, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/adsmogo/model/obj/Ration;->name:Ljava/lang/String;

    iget-wide v1, p0, Lcom/adsmogo/model/obj/Ration;->weight:D

    iput-wide v1, v0, Lcom/adsmogo/model/obj/Ration;->weight:D

    iget-object v1, p0, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    iput-object v1, v0, Lcom/adsmogo/model/obj/Ration;->key:Ljava/lang/String;

    iget v1, p0, Lcom/adsmogo/model/obj/Ration;->priority:I

    iput v1, v0, Lcom/adsmogo/model/obj/Ration;->priority:I

    iget-boolean v1, p0, Lcom/adsmogo/model/obj/Ration;->testmodel:Z

    iput-boolean v1, v0, Lcom/adsmogo/model/obj/Ration;->testmodel:Z

    iget-boolean v1, p0, Lcom/adsmogo/model/obj/Ration;->isClicked:Z

    iput-boolean v1, v0, Lcom/adsmogo/model/obj/Ration;->isClicked:Z

    iget-object v1, p0, Lcom/adsmogo/model/obj/Ration;->tag:Ljava/lang/String;

    iput-object v1, v0, Lcom/adsmogo/model/obj/Ration;->tag:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/adsmogo/model/obj/Ration;->isS2s:Z

    iput-boolean v1, v0, Lcom/adsmogo/model/obj/Ration;->isS2s:Z

    iget-boolean v1, p0, Lcom/adsmogo/model/obj/Ration;->isCc:Z

    iput-boolean v1, v0, Lcom/adsmogo/model/obj/Ration;->isCc:Z

    iget-object v1, p0, Lcom/adsmogo/model/obj/Ration;->cc:Ljava/lang/String;

    iput-object v1, v0, Lcom/adsmogo/model/obj/Ration;->cc:Ljava/lang/String;

    iget v1, p0, Lcom/adsmogo/model/obj/Ration;->videoend:I

    iput v1, v0, Lcom/adsmogo/model/obj/Ration;->videoend:I

    iget v1, p0, Lcom/adsmogo/model/obj/Ration;->isVideo:I

    iput v1, v0, Lcom/adsmogo/model/obj/Ration;->isVideo:I

    iget-object v1, p0, Lcom/adsmogo/model/obj/Ration;->videoplaytime:Ljava/lang/String;

    iput-object v1, v0, Lcom/adsmogo/model/obj/Ration;->videoplaytime:Ljava/lang/String;

    iget-object v1, p0, Lcom/adsmogo/model/obj/Ration;->videoplaytime:Ljava/lang/String;

    iput-object v1, v0, Lcom/adsmogo/model/obj/Ration;->videoplaytime:Ljava/lang/String;

    iget v1, p0, Lcom/adsmogo/model/obj/Ration;->timeOut:I

    iput v1, v0, Lcom/adsmogo/model/obj/Ration;->timeOut:I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/adsmogo/model/obj/Ration;->clone()Lcom/adsmogo/model/obj/Ration;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/adsmogo/model/obj/Ration;)I
    .locals 2

    iget v0, p1, Lcom/adsmogo/model/obj/Ration;->priority:I

    iget v1, p0, Lcom/adsmogo/model/obj/Ration;->priority:I

    if-ge v1, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/adsmogo/model/obj/Ration;->priority:I

    if-le v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/adsmogo/model/obj/Ration;

    invoke-virtual {p0, p1}, Lcom/adsmogo/model/obj/Ration;->compareTo(Lcom/adsmogo/model/obj/Ration;)I

    move-result v0

    return v0
.end method
