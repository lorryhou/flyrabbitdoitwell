.class public Lcom/Wuzla/game/Block_AD/C_BlockRecordData;
.super Ljava/lang/Object;
.source "C_BlockRecordData.java"


# static fields
.field private static final DefaultUserScore:[I

.field private static final FILENAME:Ljava/lang/String; = "BlockData.ini"

.field public static final USERRECORDMAX:I = 0x4c

.field private static cLib:Loms/GameEngine/C_Lib;

.field public static mMusic:[B

.field public static mUserScore:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/16 v2, 0x100

    .line 16
    const/16 v0, 0x4c

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 18
    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    aput v2, v0, v3

    .line 16
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->DefaultUserScore:[I

    .line 43
    new-array v0, v3, [B

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->mMusic:[B

    .line 9
    return-void
.end method

.method public constructor <init>(Loms/GameEngine/C_Lib;)V
    .locals 1
    .param p1, "clib"    # Loms/GameEngine/C_Lib;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x4c

    new-array v0, v0, [I

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->mUserScore:[I

    .line 48
    sput-object p1, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->cLib:Loms/GameEngine/C_Lib;

    .line 49
    invoke-virtual {p0}, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->LoadRecord()V

    .line 50
    return-void
.end method

.method public static SaveRecord()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 119
    new-instance v5, Loms/GameEngine/DataAccess;

    invoke-direct {v5}, Loms/GameEngine/DataAccess;-><init>()V

    .line 121
    .local v5, "userData":Loms/GameEngine/DataAccess;
    const/16 v6, 0x132

    new-array v0, v6, [B

    .line 125
    .local v0, "buffer":[B
    sget-object v6, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v6}, Loms/GameEngine/C_Lib;->getMediaManager()Loms/GameEngine/MediaManager;

    move-result-object v6

    invoke-virtual {v6}, Loms/GameEngine/MediaManager;->GetMediaStatus()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_0
    int-to-byte v6, v6

    aput-byte v6, v0, v8

    .line 129
    sget-object v6, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v6}, Loms/GameEngine/C_Lib;->getMediaManager()Loms/GameEngine/MediaManager;

    move-result-object v6

    invoke-virtual {v6}, Loms/GameEngine/MediaManager;->GetSoundStatus()Z

    move-result v6

    if-eqz v6, :cond_0

    move v8, v7

    :cond_0
    int-to-byte v6, v8

    aput-byte v6, v0, v7

    .line 130
    const/4 v1, 0x2

    .line 131
    .local v1, "bufferIdx":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v6, 0x4c

    if-lt v2, v6, :cond_3

    .line 139
    sget-object v6, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v6}, Loms/GameEngine/C_Lib;->getMContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "BlockData.ini"

    invoke-virtual {v5, v6, v7}, Loms/GameEngine/DataAccess;->OpenOutFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    invoke-virtual {v5, v0}, Loms/GameEngine/DataAccess;->write([B)V

    .line 141
    invoke-virtual {v5}, Loms/GameEngine/DataAccess;->CloseOutputFile()V

    .line 143
    :cond_1
    return-void

    .end local v1    # "bufferIdx":I
    .end local v2    # "i":I
    :cond_2
    move v6, v8

    .line 125
    goto :goto_0

    .line 132
    .restart local v1    # "bufferIdx":I
    .restart local v2    # "i":I
    :cond_3
    const/16 v4, 0xff

    .line 133
    .local v4, "shift":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    const/4 v6, 0x4

    if-lt v3, v6, :cond_4

    .line 137
    add-int/lit8 v1, v1, 0x4

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 134
    :cond_4
    add-int v6, v1, v3

    sget-object v7, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->mUserScore:[I

    aget v7, v7, v2

    and-int/2addr v7, v4

    mul-int/lit8 v8, v3, 0x8

    shr-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 135
    shl-int/lit8 v4, v4, 0x8

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method


# virtual methods
.method public LoadRecord()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 63
    new-instance v8, Loms/GameEngine/DataAccess;

    invoke-direct {v8}, Loms/GameEngine/DataAccess;-><init>()V

    .line 64
    .local v8, "userData":Loms/GameEngine/DataAccess;
    sget-object v9, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v9}, Loms/GameEngine/C_Lib;->getMContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "BlockData.ini"

    invoke-virtual {v8, v9, v10}, Loms/GameEngine/DataAccess;->OpenInputFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 66
    iget v0, v8, Loms/GameEngine/DataAccess;->inputFileLen:I

    .line 67
    .local v0, "Len":I
    const/16 v1, 0x132

    .line 68
    .local v1, "MAXBuff":I
    if-le v1, v0, :cond_1

    .line 70
    sub-int v2, v1, v0

    .line 71
    .local v2, "Var":I
    add-int v9, v0, v2

    new-array v3, v9, [B

    .line 72
    .local v3, "buffer":[B
    invoke-virtual {v8, v3}, Loms/GameEngine/DataAccess;->read([B)V

    .line 73
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v2, :cond_0

    .line 85
    .end local v2    # "Var":I
    .end local v5    # "i":I
    :goto_1
    aget-byte v9, v3, v11

    if-ne v9, v12, :cond_2

    .line 86
    sget-object v9, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v9}, Loms/GameEngine/C_Lib;->getMediaManager()Loms/GameEngine/MediaManager;

    move-result-object v9

    invoke-virtual {v9, v12}, Loms/GameEngine/MediaManager;->SetMediaEnable(Z)V

    .line 92
    :goto_2
    aget-byte v9, v3, v12

    if-ne v9, v12, :cond_3

    .line 93
    sget-object v9, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v9}, Loms/GameEngine/C_Lib;->getMediaManager()Loms/GameEngine/MediaManager;

    move-result-object v9

    invoke-virtual {v9, v12}, Loms/GameEngine/MediaManager;->SetSoundEnable(Z)V

    .line 97
    :goto_3
    const/4 v4, 0x2

    .line 98
    .local v4, "bufferIdx":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    const/16 v9, 0x4c

    if-lt v5, v9, :cond_4

    .line 107
    invoke-virtual {v8}, Loms/GameEngine/DataAccess;->CloseInputFile()V

    .line 113
    .end local v0    # "Len":I
    .end local v1    # "MAXBuff":I
    .end local v3    # "buffer":[B
    .end local v4    # "bufferIdx":I
    .end local v5    # "i":I
    :goto_5
    return-void

    .line 74
    .restart local v0    # "Len":I
    .restart local v1    # "MAXBuff":I
    .restart local v2    # "Var":I
    .restart local v3    # "buffer":[B
    .restart local v5    # "i":I
    :cond_0
    add-int v9, v0, v5

    aput-byte v11, v3, v9

    .line 73
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "Var":I
    .end local v3    # "buffer":[B
    .end local v5    # "i":I
    :cond_1
    new-array v3, v0, [B

    .line 79
    .restart local v3    # "buffer":[B
    invoke-virtual {v8, v3}, Loms/GameEngine/DataAccess;->read([B)V

    goto :goto_1

    .line 88
    :cond_2
    sget-object v9, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v9}, Loms/GameEngine/C_Lib;->getMediaManager()Loms/GameEngine/MediaManager;

    move-result-object v9

    invoke-virtual {v9, v11}, Loms/GameEngine/MediaManager;->SetMediaEnable(Z)V

    goto :goto_2

    .line 95
    :cond_3
    sget-object v9, Lcom/Wuzla/game/Block_AD/C_OPhoneApp;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v9}, Loms/GameEngine/C_Lib;->getMediaManager()Loms/GameEngine/MediaManager;

    move-result-object v9

    invoke-virtual {v9, v11}, Loms/GameEngine/MediaManager;->SetSoundEnable(Z)V

    goto :goto_3

    .line 99
    .restart local v4    # "bufferIdx":I
    .restart local v5    # "i":I
    :cond_4
    sget-object v9, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->mUserScore:[I

    aput v11, v9, v5

    .line 100
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_6
    const/4 v9, 0x4

    if-lt v6, v9, :cond_5

    .line 105
    add-int/lit8 v4, v4, 0x4

    .line 98
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 101
    :cond_5
    add-int v9, v4, v6

    aget-byte v9, v3, v9

    and-int/lit16 v7, v9, 0xff

    .line 102
    .local v7, "temp":I
    mul-int/lit8 v9, v6, 0x8

    shl-int/2addr v7, v9

    .line 103
    sget-object v9, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->mUserScore:[I

    aget v10, v9, v5

    add-int/2addr v10, v7

    aput v10, v9, v5

    .line 100
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 110
    .end local v0    # "Len":I
    .end local v1    # "MAXBuff":I
    .end local v3    # "buffer":[B
    .end local v4    # "bufferIdx":I
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "temp":I
    :cond_6
    invoke-virtual {p0}, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->ResetRecord()V

    .line 111
    invoke-static {}, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->SaveRecord()V

    goto :goto_5
.end method

.method public ResetRecord()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x4c

    if-lt v0, v1, :cond_0

    .line 56
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->mMusic:[B

    const/4 v2, 0x0

    aput-byte v3, v1, v2

    .line 57
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->mMusic:[B

    aput-byte v3, v1, v3

    .line 58
    return-void

    .line 54
    :cond_0
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->mUserScore:[I

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->DefaultUserScore:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public UpdataRecord()V
    .locals 0

    .prologue
    .line 148
    invoke-static {}, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->SaveRecord()V

    .line 149
    return-void
.end method
