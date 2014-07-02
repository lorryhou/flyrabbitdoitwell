.class public Lcom/adsmogo/model/obj/Extra;
.super Ljava/lang/Object;


# instance fields
.field public SDKversion:I

.field public adFirst:I

.field public bgColor:Ljava/lang/String;

.field public closeAdOn:I

.field public cycleTime:I

.field public improveClick:I

.field public locationOn:I

.field public packageName:Ljava/lang/String;

.field public rate:Ljava/lang/String;

.field public textColor:Ljava/lang/String;

.field public timestamp:Ljava/lang/String;

.field public transition:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/adsmogo/model/obj/Extra;->locationOn:I

    const-string v0, "000000"

    iput-object v0, p0, Lcom/adsmogo/model/obj/Extra;->bgColor:Ljava/lang/String;

    const-string v0, "FFFFFF"

    iput-object v0, p0, Lcom/adsmogo/model/obj/Extra;->textColor:Ljava/lang/String;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/adsmogo/model/obj/Extra;->cycleTime:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/adsmogo/model/obj/Extra;->transition:I

    iput v2, p0, Lcom/adsmogo/model/obj/Extra;->improveClick:I

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/Extra;->timestamp:Ljava/lang/String;

    iput v1, p0, Lcom/adsmogo/model/obj/Extra;->version:I

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/Extra;->packageName:Ljava/lang/String;

    iput v1, p0, Lcom/adsmogo/model/obj/Extra;->SDKversion:I

    iput v1, p0, Lcom/adsmogo/model/obj/Extra;->adFirst:I

    iput v1, p0, Lcom/adsmogo/model/obj/Extra;->closeAdOn:I

    const-string v0, ""

    iput-object v0, p0, Lcom/adsmogo/model/obj/Extra;->rate:Ljava/lang/String;

    return-void
.end method
