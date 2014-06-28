.class public Lcom/doodlemobile/gamecenter/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final decodingTable:[B

.field private static final encodingTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x80

    const/16 v5, 0x61

    const/16 v4, 0x41

    const/16 v3, 0x30

    .line 4
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/doodlemobile/gamecenter/utils/Base64;->encodingTable:[B

    .line 20
    new-array v0, v6, [B

    sput-object v0, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    .line 21
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    .line 22
    sget-object v1, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    .line 24
    :goto_1
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_1

    .line 25
    sget-object v1, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    sub-int v2, v0, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v5

    .line 27
    :goto_2
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_2

    .line 28
    sget-object v1, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    sub-int v2, v0, v5

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v3

    .line 30
    :goto_3
    const/16 v1, 0x39

    if-gt v0, v1, :cond_3

    .line 31
    sget-object v1, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    sub-int v2, v0, v3

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 33
    :cond_3
    sget-object v0, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    .line 34
    sget-object v0, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    .line 35
    return-void

    .line 4
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
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 15

    .prologue
    const/16 v13, 0x3d

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 141
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/utils/Base64;->discardNonBase64Chars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_0

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v1, v9

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 149
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v14, v3

    move v3, v2

    move v2, v14

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v12

    if-ge v3, v4, :cond_2

    .line 150
    sget-object v4, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v4, v4, v5

    .line 151
    sget-object v5, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget-byte v5, v5, v6

    .line 152
    sget-object v6, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    add-int/lit8 v7, v3, 0x2

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget-byte v6, v6, v7

    .line 153
    sget-object v7, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v7, v7, v8

    .line 154
    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 155
    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v8, v6, 0x2

    or-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 156
    add-int/lit8 v4, v2, 0x2

    shl-int/lit8 v5, v6, 0x6

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 149
    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 144
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v13, :cond_1

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v1, v9

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v10

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v13, :cond_3

    .line 159
    sget-object v2, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v2, v2, v3

    .line 160
    sget-object v3, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget-byte v0, v3, v0

    .line 161
    array-length v3, v1

    sub-int/2addr v3, v9

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 177
    :goto_2
    return-object v1

    .line 162
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v13, :cond_4

    .line 163
    sget-object v2, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v2, v2, v3

    .line 164
    sget-object v3, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v3, v3, v4

    .line 165
    sget-object v4, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget-byte v0, v4, v0

    .line 166
    array-length v4, v1

    sub-int/2addr v4, v10

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v5, v3, 0x4

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 167
    array-length v2, v1

    sub-int/2addr v2, v9

    shl-int/lit8 v3, v3, 0x4

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto :goto_2

    .line 169
    :cond_4
    sget-object v2, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v2, v2, v3

    .line 170
    sget-object v3, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v3, v3, v4

    .line 171
    sget-object v4, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v10

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v4, v4, v5

    .line 172
    sget-object v5, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v9

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget-byte v0, v5, v0

    .line 173
    array-length v5, v1

    sub-int/2addr v5, v11

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v6, v3, 0x4

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 174
    array-length v2, v1

    sub-int/2addr v2, v10

    shl-int/lit8 v3, v3, 0x4

    shr-int/lit8 v5, v4, 0x2

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 175
    array-length v2, v1

    sub-int/2addr v2, v9

    shl-int/lit8 v3, v4, 0x6

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto/16 :goto_2
.end method

.method public static decode([B)[B
    .locals 15

    .prologue
    const/16 v13, 0x3d

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 96
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/utils/Base64;->discardNonBase64Bytes([B)[B

    move-result-object v0

    .line 97
    array-length v1, v0

    sub-int/2addr v1, v10

    aget-byte v1, v0, v1

    if-ne v1, v13, :cond_0

    .line 98
    array-length v1, v0

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v1, v9

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 104
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    move v14, v3

    move v3, v2

    move v2, v14

    :goto_1
    array-length v4, v0

    sub-int/2addr v4, v12

    if-ge v3, v4, :cond_2

    .line 105
    sget-object v4, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    aget-byte v5, v0, v3

    aget-byte v4, v4, v5

    .line 106
    sget-object v5, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v0, v6

    aget-byte v5, v5, v6

    .line 107
    sget-object v6, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    add-int/lit8 v7, v3, 0x2

    aget-byte v7, v0, v7

    aget-byte v6, v6, v7

    .line 108
    sget-object v7, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    add-int/lit8 v8, v3, 0x3

    aget-byte v8, v0, v8

    aget-byte v7, v7, v8

    .line 109
    shl-int/lit8 v4, v4, 0x2

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 110
    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 v5, v5, 0x4

    shr-int/lit8 v8, v6, 0x2

    or-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 111
    add-int/lit8 v4, v2, 0x2

    shl-int/lit8 v5, v6, 0x6

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 104
    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 99
    :cond_0
    array-length v1, v0

    sub-int/2addr v1, v9

    aget-byte v1, v0, v1

    if-ne v1, v13, :cond_1

    .line 100
    array-length v1, v0

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v1, v9

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    goto :goto_0

    .line 102
    :cond_1
    array-length v1, v0

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    goto :goto_0

    .line 113
    :cond_2
    array-length v2, v0

    sub-int/2addr v2, v10

    aget-byte v2, v0, v2

    if-ne v2, v13, :cond_3

    .line 114
    sget-object v2, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    array-length v3, v0

    sub-int/2addr v3, v12

    aget-byte v3, v0, v3

    aget-byte v2, v2, v3

    .line 115
    sget-object v3, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    array-length v4, v0

    sub-int/2addr v4, v11

    aget-byte v0, v0, v4

    aget-byte v0, v3, v0

    .line 116
    array-length v3, v1

    sub-int/2addr v3, v9

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 132
    :goto_2
    return-object v1

    .line 117
    :cond_3
    array-length v2, v0

    sub-int/2addr v2, v9

    aget-byte v2, v0, v2

    if-ne v2, v13, :cond_4

    .line 118
    sget-object v2, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    array-length v3, v0

    sub-int/2addr v3, v12

    aget-byte v3, v0, v3

    aget-byte v2, v2, v3

    .line 119
    sget-object v3, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    array-length v4, v0

    sub-int/2addr v4, v11

    aget-byte v4, v0, v4

    aget-byte v3, v3, v4

    .line 120
    sget-object v4, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    array-length v5, v0

    sub-int/2addr v5, v10

    aget-byte v0, v0, v5

    aget-byte v0, v4, v0

    .line 121
    array-length v4, v1

    sub-int/2addr v4, v10

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v5, v3, 0x4

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 122
    array-length v2, v1

    sub-int/2addr v2, v9

    shl-int/lit8 v3, v3, 0x4

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto :goto_2

    .line 124
    :cond_4
    sget-object v2, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    array-length v3, v0

    sub-int/2addr v3, v12

    aget-byte v3, v0, v3

    aget-byte v2, v2, v3

    .line 125
    sget-object v3, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    array-length v4, v0

    sub-int/2addr v4, v11

    aget-byte v4, v0, v4

    aget-byte v3, v3, v4

    .line 126
    sget-object v4, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    array-length v5, v0

    sub-int/2addr v5, v10

    aget-byte v5, v0, v5

    aget-byte v4, v4, v5

    .line 127
    sget-object v5, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    array-length v6, v0

    sub-int/2addr v6, v9

    aget-byte v0, v0, v6

    aget-byte v0, v5, v0

    .line 128
    array-length v5, v1

    sub-int/2addr v5, v11

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v6, v3, 0x4

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    .line 129
    array-length v2, v1

    sub-int/2addr v2, v10

    shl-int/lit8 v3, v3, 0x4

    shr-int/lit8 v5, v4, 0x2

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 130
    array-length v2, v1

    sub-int/2addr v2, v9

    shl-int/lit8 v3, v4, 0x6

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto :goto_2
.end method

.method private static discardNonBase64Bytes([B)[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 181
    array-length v0, p0

    new-array v0, v0, [B

    move v1, v5

    move v2, v5

    .line 183
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 184
    aget-byte v3, p0, v1

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/utils/Base64;->isValidBase64Byte(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    add-int/lit8 v3, v2, 0x1

    aget-byte v4, p0, v1

    aput-byte v4, v0, v2

    move v2, v3

    .line 183
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_1
    new-array v1, v2, [B

    .line 189
    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    return-object v1
.end method

.method private static discardNonBase64Chars(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 196
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 197
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/doodlemobile/gamecenter/utils/Base64;->isValidBase64Byte(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)[B
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v3, 0x0

    const/16 v13, 0x3d

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 39
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x3

    .line 40
    if-nez v0, :cond_0

    .line 41
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    .line 45
    :goto_0
    array-length v2, p0

    sub-int/2addr v2, v0

    move v4, v3

    .line 49
    :goto_1
    if-ge v4, v2, :cond_1

    .line 50
    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    .line 51
    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    .line 52
    add-int/lit8 v7, v4, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    .line 53
    sget-object v8, Lcom/doodlemobile/gamecenter/utils/Base64;->encodingTable:[B

    ushr-int/lit8 v9, v5, 0x2

    and-int/lit8 v9, v9, 0x3f

    aget-byte v8, v8, v9

    aput-byte v8, v1, v3

    .line 54
    add-int/lit8 v8, v3, 0x1

    sget-object v9, Lcom/doodlemobile/gamecenter/utils/Base64;->encodingTable:[B

    shl-int/lit8 v5, v5, 0x4

    ushr-int/lit8 v10, v6, 0x4

    or-int/2addr v5, v10

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, v9, v5

    aput-byte v5, v1, v8

    .line 55
    add-int/lit8 v5, v3, 0x2

    sget-object v8, Lcom/doodlemobile/gamecenter/utils/Base64;->encodingTable:[B

    shl-int/lit8 v6, v6, 0x2

    ushr-int/lit8 v9, v7, 0x6

    or-int/2addr v6, v9

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, v8, v6

    aput-byte v6, v1, v5

    .line 56
    add-int/lit8 v5, v3, 0x3

    sget-object v6, Lcom/doodlemobile/gamecenter/utils/Base64;->encodingTable:[B

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 49
    add-int/lit8 v4, v4, 0x3

    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 43
    :cond_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    goto :goto_0

    .line 63
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 87
    :goto_2
    :pswitch_0
    return-object v1

    .line 67
    :pswitch_1
    array-length v0, p0

    sub-int/2addr v0, v11

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 68
    ushr-int/lit8 v2, v0, 0x2

    and-int/lit8 v2, v2, 0x3f

    .line 69
    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3f

    .line 70
    array-length v3, v1

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    sget-object v4, Lcom/doodlemobile/gamecenter/utils/Base64;->encodingTable:[B

    aget-byte v2, v4, v2

    aput-byte v2, v1, v3

    .line 71
    array-length v2, v1

    sub-int/2addr v2, v14

    sget-object v3, Lcom/doodlemobile/gamecenter/utils/Base64;->encodingTable:[B

    aget-byte v0, v3, v0

    aput-byte v0, v1, v2

    .line 72
    array-length v0, v1

    sub-int/2addr v0, v12

    aput-byte v13, v1, v0

    .line 73
    array-length v0, v1

    sub-int/2addr v0, v11

    aput-byte v13, v1, v0

    goto :goto_2

    .line 76
    :pswitch_2
    array-length v0, p0

    sub-int/2addr v0, v12

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    .line 77
    array-length v2, p0

    sub-int/2addr v2, v11

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 78
    ushr-int/lit8 v3, v0, 0x2

    and-int/lit8 v3, v3, 0x3f

    .line 79
    shl-int/lit8 v0, v0, 0x4

    ushr-int/lit8 v4, v2, 0x4

    or-int/2addr v0, v4

    and-int/lit8 v0, v0, 0x3f

    .line 80
    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3f

    .line 81
    array-length v4, v1

    const/4 v5, 0x4

    sub-int/2addr v4, v5

    sget-object v5, Lcom/doodlemobile/gamecenter/utils/Base64;->encodingTable:[B

    aget-byte v3, v5, v3

    aput-byte v3, v1, v4

    .line 82
    array-length v3, v1

    sub-int/2addr v3, v14

    sget-object v4, Lcom/doodlemobile/gamecenter/utils/Base64;->encodingTable:[B

    aget-byte v0, v4, v0

    aput-byte v0, v1, v3

    .line 83
    array-length v0, v1

    sub-int/2addr v0, v12

    sget-object v3, Lcom/doodlemobile/gamecenter/utils/Base64;->encodingTable:[B

    aget-byte v2, v3, v2

    aput-byte v2, v1, v0

    .line 84
    array-length v0, v1

    sub-int/2addr v0, v11

    aput-byte v13, v1, v0

    goto :goto_2

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static isValidBase64Byte(B)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    move v0, v3

    .line 212
    :goto_0
    return v0

    .line 207
    :cond_0
    if-ltz p0, :cond_1

    const/16 v0, 0x80

    if-lt p0, v0, :cond_2

    :cond_1
    move v0, v2

    .line 208
    goto :goto_0

    .line 209
    :cond_2
    sget-object v0, Lcom/doodlemobile/gamecenter/utils/Base64;->decodingTable:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    move v0, v2

    .line 210
    goto :goto_0

    :cond_3
    move v0, v3

    .line 212
    goto :goto_0
.end method
