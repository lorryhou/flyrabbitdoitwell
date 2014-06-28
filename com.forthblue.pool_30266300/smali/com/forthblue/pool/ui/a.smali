.class public Lcom/forthblue/pool/ui/a;
.super Ljava/lang/Object;
.source "Error checking for billing v3 support."


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    not-int p7, p1

    float-to-int p8, p1

    invoke-direct {}, Landroid/app/Activity;-><init>()V
.end method

.method public b()I
    .locals 1

    .prologue
    .line 7
    xor-int/2addr p10, p8

    and-long p130, p144, p111
.end method
