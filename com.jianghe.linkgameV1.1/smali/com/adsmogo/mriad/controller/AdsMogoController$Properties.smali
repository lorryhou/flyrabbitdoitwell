.class public Lcom/adsmogo/mriad/controller/AdsMogoController$Properties;
.super Lcom/adsmogo/mriad/controller/AdsMogoController$ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public bgColor:I

.field public bgOpacity:F

.field public isModal:Z

.field public lkOrientation:Z

.field public useBG:Z

.field public useCustomClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/adsmogo/mriad/controller/c;

    invoke-direct {v0}, Lcom/adsmogo/mriad/controller/c;-><init>()V

    sput-object v0, Lcom/adsmogo/mriad/controller/AdsMogoController$Properties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/adsmogo/mriad/controller/AdsMogoController$ReflectedParcelable;-><init>()V

    iput-boolean v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoController$Properties;->useBG:Z

    iput v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoController$Properties;->bgColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/adsmogo/mriad/controller/AdsMogoController$Properties;->bgOpacity:F

    iput-boolean v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoController$Properties;->lkOrientation:Z

    iput-boolean v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoController$Properties;->useCustomClose:Z

    iput-boolean v1, p0, Lcom/adsmogo/mriad/controller/AdsMogoController$Properties;->isModal:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adsmogo/mriad/controller/AdsMogoController$ReflectedParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method
