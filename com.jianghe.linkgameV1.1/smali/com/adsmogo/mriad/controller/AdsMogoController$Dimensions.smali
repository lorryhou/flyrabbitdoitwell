.class public Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;
.super Lcom/adsmogo/mriad/controller/AdsMogoController$ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public h:I

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/adsmogo/mriad/controller/a;

    invoke-direct {v0}, Lcom/adsmogo/mriad/controller/a;-><init>()V

    sput-object v0, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/adsmogo/mriad/controller/AdsMogoController$ReflectedParcelable;-><init>()V

    iput v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->x:I

    iput v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->y:I

    iput v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->w:I

    iput v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoController$Dimensions;->h:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/mriad/controller/AdsMogoController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method
