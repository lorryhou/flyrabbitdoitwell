.class public Lcom/doodlemobile/gamecenter/api/Des;
.super Ljava/lang/Object;
.source "Des.java"


# static fields
.field public static key:Ljava/security/Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "1234567890ABCDEF"

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/api/Des;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/gamecenter/api/Des;->key:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDesCode([B)[B
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    :try_start_0
    const-string v1, "DES/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 87
    const/4 v2, 0x2

    sget-object v3, Lcom/doodlemobile/gamecenter/api/Des;->key:Ljava/security/Key;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 88
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 94
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static getDesString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 50
    .line 52
    const-string v0, ""

    .line 55
    :try_start_0
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 56
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/api/Des;->getDesCode([B)[B

    move-result-object v1

    .line 57
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 64
    :goto_0
    return-object v0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    throw v0
.end method

.method private static getEncCode([B)[B
    .locals 4

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 71
    :try_start_0
    const-string v1, "DES/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 72
    const/4 v2, 0x1

    sget-object v3, Lcom/doodlemobile/gamecenter/api/Des;->key:Ljava/security/Key;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 74
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static getEncString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    .line 35
    const-string v0, ""

    .line 37
    :try_start_0
    const-string v1, "UTF8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/api/Des;->getEncCode([B)[B

    move-result-object v1

    .line 40
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/utils/Base64;->encode([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 47
    :goto_0
    return-object v0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    throw v0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 5

    .prologue
    .line 14
    const/4 v0, 0x0

    .line 16
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 17
    const/16 v2, 0x8

    new-array v2, v2, [B

    .line 19
    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 20
    aget-byte v4, v1, v3

    aput-byte v4, v2, v3

    .line 19
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "DES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 28
    :goto_1
    return-object v0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
