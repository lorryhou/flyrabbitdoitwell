.class public Loms/GameEngine/DataAccess;
.super Ljava/lang/Object;
.source "DataAccess.java"


# static fields
.field public static inputStream:Ljava/io/DataInputStream;


# instance fields
.field hFile:Ljava/io/File;

.field public inputFileLen:I

.field public outputFileLen:I

.field public outputStream:Ljava/io/DataOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Loms/GameEngine/DataAccess;->inputStream:Ljava/io/DataInputStream;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Loms/GameEngine/DataAccess;->hFile:Ljava/io/File;

    .line 26
    iput v0, p0, Loms/GameEngine/DataAccess;->inputFileLen:I

    .line 27
    iput-object v1, p0, Loms/GameEngine/DataAccess;->outputStream:Ljava/io/DataOutputStream;

    .line 28
    iput v0, p0, Loms/GameEngine/DataAccess;->outputFileLen:I

    .line 23
    return-void
.end method


# virtual methods
.method public CloseInputFile()V
    .locals 2

    .prologue
    .line 59
    const/4 v1, 0x0

    iput v1, p0, Loms/GameEngine/DataAccess;->inputFileLen:I

    .line 61
    :try_start_0
    sget-object v1, Loms/GameEngine/DataAccess;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public CloseOutputFile()V
    .locals 2

    .prologue
    .line 96
    const/4 v1, 0x0

    iput v1, p0, Loms/GameEngine/DataAccess;->outputFileLen:I

    .line 98
    :try_start_0
    iget-object v1, p0, Loms/GameEngine/DataAccess;->outputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public OpenInputFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v3, 0x1

    .line 35
    .local v3, "ret":Z
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 36
    .local v2, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v4, Loms/GameEngine/DataAccess;->inputStream:Ljava/io/DataInputStream;

    .line 37
    sget-object v4, Loms/GameEngine/DataAccess;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v4

    iput v4, p0, Loms/GameEngine/DataAccess;->inputFileLen:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    .end local v2    # "in":Ljava/io/FileInputStream;
    :goto_0
    return v3

    .line 38
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e1":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 41
    const/4 v3, 0x0

    goto :goto_0

    .line 42
    .end local v1    # "e1":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public OpenOutFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v3, 0x1

    .line 74
    .local v3, "ret":Z
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 75
    .local v2, "out":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 76
    .local v0, "bout":Ljava/io/BufferedOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Loms/GameEngine/DataAccess;->outputStream:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "bout":Ljava/io/BufferedOutputStream;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 77
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 80
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public read([B)V
    .locals 2
    .param p1, "buffer"    # [B

    .prologue
    .line 51
    :try_start_0
    sget-object v1, Loms/GameEngine/DataAccess;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B

    .prologue
    .line 88
    :try_start_0
    iget-object v1, p0, Loms/GameEngine/DataAccess;->outputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
