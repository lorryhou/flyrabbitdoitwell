.class public Lcom/fruitsmobile/basket/resources/TextureAtlas;
.super Ljava/lang/Object;
.source "TextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fruitsmobile/basket/resources/TextureAtlas$AtlasRegion;
    }
.end annotation


# static fields
.field private static tuple:[Ljava/lang/String;


# instance fields
.field private atlas_region:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fruitsmobile/basket/resources/TextureRegion;",
            ">;"
        }
    .end annotation
.end field

.field protected location:Lcom/fruitsmobile/basket/resources/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/fruitsmobile/basket/resources/TextureAtlas;->tuple:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fruitsmobile/basket/resources/Location;)V
    .locals 1
    .param p1, "location"    # Lcom/fruitsmobile/basket/resources/Location;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fruitsmobile/basket/resources/TextureAtlas;->atlas_region:Ljava/util/HashMap;

    .line 21
    iput-object p1, p0, Lcom/fruitsmobile/basket/resources/TextureAtlas;->location:Lcom/fruitsmobile/basket/resources/Location;

    .line 22
    invoke-direct {p0}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->init()V

    .line 23
    return-void
.end method

.method private init()V
    .locals 21

    .prologue
    .line 26
    const/4 v15, 0x0

    .line 28
    .local v15, "in":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fruitsmobile/basket/resources/TextureAtlas;->location:Lcom/fruitsmobile/basket/resources/Location;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/fruitsmobile/basket/resources/Location;->open()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 32
    :goto_0
    if-nez v15, :cond_0

    .line 33
    new-instance v18, Ljava/lang/RuntimeException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 110
    :goto_1
    return-void

    .line 29
    :catch_0
    move-exception v18

    move-object/from16 v14, v18

    .line 30
    .local v14, "e":Ljava/lang/Exception;
    const/4 v15, 0x0

    goto :goto_0

    .line 36
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/InputStreamReader;

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v19, 0x40

    invoke-direct/range {v17 .. v19}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 38
    .local v17, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 40
    .local v4, "texture":Lcom/fruitsmobile/basket/resources/Texture;
    :goto_2
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v16

    .line 41
    .local v16, "line":Ljava/lang/String;
    if-nez v16, :cond_1

    .line 105
    .end local v16    # "line":Ljava/lang/String;
    :goto_3
    :try_start_2
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 106
    :catch_1
    move-exception v14

    .line 107
    .local v14, "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 44
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v16    # "line":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_2

    .line 45
    const/4 v4, 0x0

    goto :goto_2

    .line 46
    :cond_2
    if-nez v4, :cond_3

    .line 48
    invoke-static/range {v17 .. v17}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->readValue(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 49
    invoke-static/range {v17 .. v17}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)V

    .line 53
    invoke-static/range {v17 .. v17}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->readValue(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 66
    invoke-static/range {v16 .. v16}, Lcom/forthblue/pool/PoolHelper;->loadTextureFromAsset(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v4

    goto :goto_2

    .line 70
    :cond_3
    invoke-static/range {v17 .. v17}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->readValue(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 72
    .local v5, "rotate":Z
    invoke-static/range {v17 .. v17}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)V

    .line 73
    sget-object v18, Lcom/fruitsmobile/basket/resources/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 74
    .local v6, "packed_x":I
    sget-object v18, Lcom/fruitsmobile/basket/resources/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 76
    .local v7, "packed_y":I
    invoke-static/range {v17 .. v17}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)V

    .line 77
    sget-object v18, Lcom/fruitsmobile/basket/resources/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 78
    .local v8, "packed_width":I
    sget-object v18, Lcom/fruitsmobile/basket/resources/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 80
    .local v9, "packed_height":I
    invoke-static/range {v17 .. v17}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)V

    .line 81
    sget-object v18, Lcom/fruitsmobile/basket/resources/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 82
    .local v12, "original_width":I
    sget-object v18, Lcom/fruitsmobile/basket/resources/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 84
    .local v13, "original_height":I
    invoke-static/range {v17 .. v17}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)V

    .line 85
    sget-object v18, Lcom/fruitsmobile/basket/resources/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 86
    .local v10, "offset_x":I
    sget-object v18, Lcom/fruitsmobile/basket/resources/TextureAtlas;->tuple:[Ljava/lang/String;

    const/16 v19, 0x1

    aget-object v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 88
    .local v11, "offset_y":I
    invoke-static/range {v17 .. v17}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->readValue(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 90
    new-instance v3, Lcom/fruitsmobile/basket/resources/TextureAtlas$AtlasRegion;

    invoke-direct/range {v3 .. v13}, Lcom/fruitsmobile/basket/resources/TextureAtlas$AtlasRegion;-><init>(Lcom/fruitsmobile/basket/resources/Texture;ZIIIIIIII)V

    .line 92
    .local v3, "region":Lcom/fruitsmobile/basket/resources/TextureAtlas$AtlasRegion;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fruitsmobile/basket/resources/TextureAtlas;->atlas_region:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 101
    .end local v3    # "region":Lcom/fruitsmobile/basket/resources/TextureAtlas$AtlasRegion;
    .end local v5    # "rotate":Z
    .end local v6    # "packed_x":I
    .end local v7    # "packed_y":I
    .end local v8    # "packed_width":I
    .end local v9    # "packed_height":I
    .end local v10    # "offset_x":I
    .end local v11    # "offset_y":I
    .end local v12    # "original_width":I
    .end local v13    # "original_height":I
    .end local v16    # "line":Ljava/lang/String;
    :catch_2
    move-exception v18

    move-object/from16 v14, v18

    .line 102
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method

.method private static readTuple(Ljava/io/BufferedReader;)V
    .locals 6
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 123
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "line":Ljava/lang/String;
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 125
    .local v0, "colon":I
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 126
    .local v1, "comma":I
    if-eq v0, v4, :cond_0

    if-eq v1, v4, :cond_0

    add-int/lit8 v3, v0, 0x1

    if-ge v1, v3, :cond_1

    .line 127
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid line in texture atlas: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_1
    sget-object v3, Lcom/fruitsmobile/basket/resources/TextureAtlas;->tuple:[Ljava/lang/String;

    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 129
    sget-object v3, Lcom/fruitsmobile/basket/resources/TextureAtlas;->tuple:[Ljava/lang/String;

    const/4 v4, 0x1

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 130
    return-void
.end method

.method private static readValue(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 5
    .param p0, "reader"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "line":Ljava/lang/String;
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 117
    .local v0, "colon":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 118
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invaild line in texture atlas: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fruitsmobile/basket/resources/TextureAtlas;->atlas_region:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/fruitsmobile/basket/resources/TextureAtlas;
    check-cast p0, Lcom/fruitsmobile/basket/resources/TextureRegion;

    return-object p0
.end method
