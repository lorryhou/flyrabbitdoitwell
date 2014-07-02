.class public Lcom/miaozhen/mzmonitor/MZCrypto;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final b:B = 0x3dt


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miaozhen/mzmonitor/MZCrypto;->a:[B

    .line 20
    return-void

    .line 12
    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/16 v9, 0x3d

    .line 23
    if-nez p0, :cond_0

    .line 24
    const-string v0, ""

    .line 53
    :goto_0
    return-object v0

    .line 25
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 26
    array-length v1, v3

    .line 27
    add-int/lit8 v2, v1, 0x2

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    new-array v4, v2, [B

    move v2, v1

    move v1, v0

    .line 30
    :goto_1
    const/4 v5, 0x2

    if-gt v2, v5, :cond_2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    add-int/lit8 v5, v0, 0x1

    sget-object v6, Lcom/miaozhen/mzmonitor/MZCrypto;->a:[B

    aget-byte v7, v3, v1

    shr-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v4, v0

    .line 42
    const/4 v0, 0x1

    if-le v2, v0, :cond_3

    .line 43
    add-int/lit8 v0, v5, 0x1

    sget-object v2, Lcom/miaozhen/mzmonitor/MZCrypto;->a:[B

    aget-byte v6, v3, v1

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, v3, v7

    shr-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    aget-byte v2, v2, v6

    aput-byte v2, v4, v5

    .line 44
    add-int/lit8 v2, v0, 0x1

    sget-object v5, Lcom/miaozhen/mzmonitor/MZCrypto;->a:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x2

    aget-byte v1, v5, v1

    aput-byte v1, v4, v0

    .line 45
    add-int/lit8 v0, v2, 0x1

    aput-byte v9, v4, v2

    .line 53
    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 31
    :cond_2
    add-int/lit8 v5, v0, 0x1

    sget-object v6, Lcom/miaozhen/mzmonitor/MZCrypto;->a:[B

    aget-byte v7, v3, v1

    shr-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v4, v0

    .line 32
    add-int/lit8 v0, v5, 0x1

    sget-object v6, Lcom/miaozhen/mzmonitor/MZCrypto;->a:[B

    aget-byte v7, v3, v1

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, v3, v8

    shr-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 33
    add-int/lit8 v5, v0, 0x1

    sget-object v6, Lcom/miaozhen/mzmonitor/MZCrypto;->a:[B

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, v3, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, v3, v8

    shr-int/lit8 v8, v8, 0x6

    add-int/2addr v7, v8

    aget-byte v6, v6, v7

    aput-byte v6, v4, v0

    .line 34
    add-int/lit8 v0, v5, 0x1

    sget-object v6, Lcom/miaozhen/mzmonitor/MZCrypto;->a:[B

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, v3, v7

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 36
    add-int/lit8 v1, v1, 0x3

    .line 37
    add-int/lit8 v2, v2, -0x3

    goto/16 :goto_1

    .line 47
    :cond_3
    add-int/lit8 v0, v5, 0x1

    sget-object v2, Lcom/miaozhen/mzmonitor/MZCrypto;->a:[B

    aget-byte v1, v3, v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x4

    aget-byte v1, v2, v1

    aput-byte v1, v4, v5

    .line 48
    add-int/lit8 v1, v0, 0x1

    aput-byte v9, v4, v0

    .line 49
    add-int/lit8 v0, v1, 0x1

    aput-byte v9, v4, v1

    goto :goto_2
.end method
