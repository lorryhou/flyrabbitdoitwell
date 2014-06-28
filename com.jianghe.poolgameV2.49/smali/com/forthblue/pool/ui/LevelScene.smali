.class public Lcom/forthblue/pool/ui/LevelScene;
.super Lcom/fruitsmobile/basket/Layer;
.source "LevelScene.java"

# interfaces
.implements Lcom/forthblue/pool/sprite/StaticImageButton$Handler;
.implements Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;


# static fields
.field public static final BUTTON_BACK:I = 0x2

.field private static final BUTTON_PAGE_NEXT:I = 0x1

.field private static final BUTTON_PAGE_PRE:I = 0x0

.field private static final FILE_NAME:Ljava/lang/String; = "LEVEL_DATA"

.field public static final MAX_TABLE:I = 0x7


# instance fields
.field private button_back:Lcom/forthblue/pool/sprite/StaticImageButton;

.field private button_page_next:Lcom/forthblue/pool/sprite/StaticImageButton;

.field private button_page_pre:Lcom/forthblue/pool/sprite/StaticImageButton;

.field private level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

.field private main:Lcom/forthblue/pool/Main;

.field private score:[[I

.field private score_loaded:Z

.field private table_selector:Lcom/forthblue/pool/ui/ScrollContainer;


# direct methods
.method public constructor <init>(Lcom/forthblue/pool/Main;)V
    .locals 31
    .param p1, "main"    # Lcom/forthblue/pool/Main;

    .prologue
    .line 35
    const/16 v5, 0x1e

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/Layer;-><init>(I)V

    .line 153
    const/4 v5, 0x7

    const/16 v6, 0x1e

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/LevelScene;->score:[[I

    .line 154
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/ui/LevelScene;->score_loaded:Z

    .line 36
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/LevelScene;->main:Lcom/forthblue/pool/Main;

    .line 38
    new-instance v22, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v5, 0x7f020015

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 39
    .local v22, "bg":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const/high16 v5, 0x3f800000

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setAlpha(F)V

    .line 40
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/LevelScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 43
    const-string v5, "menu_button.pack"

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTextureAtlas(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureAtlas;

    move-result-object v24

    .line 45
    .local v24, "menu_buttons":Lcom/fruitsmobile/basket/resources/TextureAtlas;
    new-instance v5, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v6, "button_page_pre"

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/LevelScene;->button_page_pre:Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_page_pre:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const v6, -0x3c784000

    const/high16 v7, 0x41c00000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_page_pre:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/high16 v6, 0x40400000

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->captureScale:F

    .line 48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_page_pre:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const v6, 0x3fa66666

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->insideScale:F

    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_page_pre:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const v6, 0x3f99999a

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->insideAlpha:F

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_page_pre:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/forthblue/pool/sprite/StaticImageButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_page_pre:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 53
    new-instance v5, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v6, "button_page_next"

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/LevelScene;->button_page_next:Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_page_next:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const v6, 0x4387c000

    const/high16 v7, 0x41c00000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_page_next:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/high16 v6, 0x40400000

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->captureScale:F

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_page_next:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const v6, 0x3fa66666

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->insideScale:F

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_page_next:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const v6, 0x3f99999a

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->insideAlpha:F

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_page_next:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/forthblue/pool/sprite/StaticImageButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_page_next:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 62
    new-instance v5, Lcom/forthblue/pool/ui/ScrollContainer;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Lcom/forthblue/pool/ui/ScrollContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    move-object v5, v0

    const/high16 v6, -0x3c380000

    const/high16 v7, -0x3c900000

    const v8, 0x45bb8000

    const/high16 v9, 0x43700000

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/forthblue/pool/ui/ScrollContainer;->setBound(FFFF)V

    .line 64
    const/16 v5, 0x8

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v23, v0

    .line 65
    .local v23, "ideal_pos":[F
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v10, v5, :cond_0

    .line 66
    mul-int/lit16 v5, v10, 0x320

    int-to-float v5, v5

    aput v5, v23, v10

    .line 65
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 68
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/ScrollContainer;->setIdealPos([F)V

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/ScrollContainer;->setPageIndexChangeListener(Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;)V

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/LevelScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 72
    new-instance v3, Lcom/forthblue/pool/sprite/TileTextureFont;

    const v5, 0x7f020065

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v4

    const/16 v5, 0xf

    const/16 v6, 0x16

    const/4 v7, 0x1

    const/16 v8, 0xc

    const-string v9, "0123456789-/"

    invoke-direct/range {v3 .. v9}, Lcom/forthblue/pool/sprite/TileTextureFont;-><init>(Lcom/fruitsmobile/basket/resources/Texture;IIIILjava/lang/String;)V

    .line 73
    .local v3, "font":Lcom/forthblue/pool/sprite/TileTextureFont;
    const/4 v5, 0x6

    new-array v11, v5, [F

    fill-array-data v11, :array_0

    .line 74
    .local v11, "offset_x":[F
    const/4 v5, 0x6

    new-array v12, v5, [F

    fill-array-data v12, :array_1

    .line 76
    .local v12, "offset_y":[F
    const-string v5, "stage_title_level"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v8

    .line 77
    .local v8, "level_pre":Lcom/fruitsmobile/basket/resources/TextureRegion;
    const-string v5, "title.pack"

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTextureAtlas(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureAtlas;

    move-result-object v5

    const-string v6, "stage_title_stage"

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    .line 79
    .local v6, "stage_pre":Lcom/fruitsmobile/basket/resources/TextureRegion;
    const/4 v10, 0x0

    :goto_1
    const/16 v5, 0x8

    if-ge v10, v5, :cond_2

    .line 80
    const/4 v5, 0x7

    if-ne v10, v5, :cond_1

    .line 81
    const/4 v5, 0x0

    const-string v7, "drawable"

    const-string v9, "table_x"

    invoke-static {v5, v7, v9}, Lcom/forthblue/pool/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .line 85
    .local v25, "resid":I
    :goto_2
    new-instance v4, Lcom/forthblue/pool/sprite/TableSelectButton;

    invoke-static/range {v25 .. v25}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stagetitle"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v24

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v7

    const-string v9, "star_b"

    move-object/from16 v0, v24

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v9

    move-object v13, v3

    invoke-direct/range {v4 .. v13}, Lcom/forthblue/pool/sprite/TableSelectButton;-><init>(Lcom/fruitsmobile/basket/resources/Texture;Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/fruitsmobile/basket/resources/TextureRegion;I[F[FLcom/forthblue/pool/sprite/TileTextureFont;)V

    .line 88
    .local v4, "table":Lcom/forthblue/pool/sprite/TableSelectButton;
    mul-int/lit16 v5, v10, 0x320

    add-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    const/high16 v7, 0x41b80000

    invoke-virtual {v4, v5, v7}, Lcom/forthblue/pool/sprite/TableSelectButton;->setPosition(FF)V

    .line 89
    const v5, 0x3fb33333

    iput v5, v4, Lcom/forthblue/pool/sprite/TableSelectButton;->insideAlpha:F

    .line 90
    add-int/lit8 v5, v10, 0xa

    iput v5, v4, Lcom/forthblue/pool/sprite/TableSelectButton;->id:I

    .line 91
    move-object/from16 v0, p0

    move-object v1, v4

    iput-object v0, v1, Lcom/forthblue/pool/sprite/TableSelectButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    move-object v5, v0

    invoke-virtual {v5, v4}, Lcom/forthblue/pool/ui/ScrollContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 79
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 83
    .end local v4    # "table":Lcom/forthblue/pool/sprite/TableSelectButton;
    .end local v25    # "resid":I
    :cond_1
    const/4 v5, 0x0

    const-string v7, "drawable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "table_"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    rem-int/lit8 v13, v10, 0x4

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v7, v9}, Lcom/forthblue/pool/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v25

    .restart local v25    # "resid":I
    goto :goto_2

    .line 97
    .end local v25    # "resid":I
    :cond_2
    new-instance v5, Lcom/forthblue/pool/ui/ScrollContainer;

    const/16 v6, 0x1e

    invoke-direct {v5, v6}, Lcom/forthblue/pool/ui/ScrollContainer;-><init>(I)V

    .end local v6    # "stage_pre":Lcom/fruitsmobile/basket/resources/TextureRegion;
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    move-object v5, v0

    const/high16 v6, -0x3c380000

    const/high16 v7, -0x3c900000

    const/high16 v8, 0x44960000

    const/high16 v9, 0x43700000

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/forthblue/pool/ui/ScrollContainer;->setBound(FFFF)V

    .line 99
    .end local v8    # "level_pre":Lcom/fruitsmobile/basket/resources/TextureRegion;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    invoke-virtual {v5, v6}, Lcom/forthblue/pool/ui/ScrollContainer;->setIdealPos([F)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/forthblue/pool/ui/ScrollContainer;->setVisible(Z)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/ScrollContainer;->setPageIndexChangeListener(Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/LevelScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 105
    const-string v5, "select_lock"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v27

    .line 106
    .local v27, "select_lock":Lcom/fruitsmobile/basket/resources/TextureRegion;
    const-string v5, "select_bg"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v26

    .line 107
    .local v26, "select_bg":Lcom/fruitsmobile/basket/resources/TextureRegion;
    const-string v5, "star_a"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v29

    .line 108
    .local v29, "star_a":Lcom/fruitsmobile/basket/resources/TextureRegion;
    const-string v5, "star_b"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v30

    .line 109
    .local v30, "star_b":Lcom/fruitsmobile/basket/resources/TextureRegion;
    new-instance v3, Lcom/forthblue/pool/sprite/TileTextureFont;

    .end local v3    # "font":Lcom/forthblue/pool/sprite/TileTextureFont;
    const v5, 0x7f020063

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v14

    const/16 v15, 0x10

    const/16 v16, 0x22

    const/16 v17, 0x22

    const/16 v18, 0x12

    const/16 v19, 0x1

    const/16 v20, 0xb

    const-string v21, "0123456789-"

    move-object v13, v3

    invoke-direct/range {v13 .. v21}, Lcom/forthblue/pool/sprite/TileTextureFont;-><init>(Lcom/fruitsmobile/basket/resources/Texture;IIIIIILjava/lang/String;)V

    .line 111
    .restart local v3    # "font":Lcom/forthblue/pool/sprite/TileTextureFont;
    const/4 v5, 0x4

    new-array v11, v5, [F

    .end local v11    # "offset_x":[F
    fill-array-data v11, :array_3

    .line 112
    .restart local v11    # "offset_x":[F
    const/4 v5, 0x4

    new-array v12, v5, [F

    .end local v12    # "offset_y":[F
    fill-array-data v12, :array_4

    .line 113
    .restart local v12    # "offset_y":[F
    const/4 v10, 0x0

    :goto_3
    const/16 v5, 0xf

    if-ge v10, v5, :cond_3

    .line 114
    new-instance v13, Lcom/forthblue/pool/sprite/LevelButton;

    move-object/from16 v14, v26

    move-object/from16 v15, v29

    move-object/from16 v16, v30

    move-object/from16 v17, v27

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v3

    invoke-direct/range {v13 .. v20}, Lcom/forthblue/pool/sprite/LevelButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/fruitsmobile/basket/resources/TextureRegion;[F[FLcom/forthblue/pool/sprite/TileTextureFont;)V

    .line 115
    .local v13, "level":Lcom/forthblue/pool/sprite/LevelButton;
    rem-int/lit8 v5, v10, 0x5

    mul-int/lit8 v5, v5, 0x64

    const/16 v6, 0xc8

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-int/lit8 v6, v10, 0x5

    mul-int/lit8 v6, v6, 0x5a

    const/16 v7, 0x46

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v13, v5, v6}, Lcom/forthblue/pool/sprite/LevelButton;->setPosition(FF)V

    .line 116
    const v5, 0x3f99999a

    iput v5, v13, Lcom/forthblue/pool/sprite/LevelButton;->captureScale:F

    .line 117
    const v5, 0x3f99999a

    iput v5, v13, Lcom/forthblue/pool/sprite/LevelButton;->insideAlpha:F

    .line 118
    add-int/lit8 v5, v10, 0x64

    iput v5, v13, Lcom/forthblue/pool/sprite/LevelButton;->id:I

    .line 119
    add-int/lit8 v5, v10, 0x1

    invoke-virtual {v13, v5}, Lcom/forthblue/pool/sprite/LevelButton;->setLevel(I)V

    .line 120
    move-object/from16 v0, p0

    move-object v1, v13

    iput-object v0, v1, Lcom/forthblue/pool/sprite/LevelButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    move-object v5, v0

    invoke-virtual {v5, v13}, Lcom/forthblue/pool/ui/ScrollContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 113
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 123
    .end local v13    # "level":Lcom/forthblue/pool/sprite/LevelButton;
    :cond_3
    const/4 v10, 0x0

    :goto_4
    const/16 v5, 0xf

    if-ge v10, v5, :cond_4

    .line 124
    new-instance v13, Lcom/forthblue/pool/sprite/LevelButton;

    move-object/from16 v14, v26

    move-object/from16 v15, v29

    move-object/from16 v16, v30

    move-object/from16 v17, v27

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v3

    invoke-direct/range {v13 .. v20}, Lcom/forthblue/pool/sprite/LevelButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/fruitsmobile/basket/resources/TextureRegion;[F[FLcom/forthblue/pool/sprite/TileTextureFont;)V

    .line 125
    .restart local v13    # "level":Lcom/forthblue/pool/sprite/LevelButton;
    rem-int/lit8 v5, v10, 0x5

    mul-int/lit8 v5, v5, 0x64

    const/16 v6, 0xc8

    sub-int/2addr v5, v6

    add-int/lit16 v5, v5, 0x320

    int-to-float v5, v5

    div-int/lit8 v6, v10, 0x5

    mul-int/lit8 v6, v6, 0x5a

    const/16 v7, 0x46

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v13, v5, v6}, Lcom/forthblue/pool/sprite/LevelButton;->setPosition(FF)V

    .line 126
    const v5, 0x3f99999a

    iput v5, v13, Lcom/forthblue/pool/sprite/LevelButton;->captureScale:F

    .line 127
    const v5, 0x3f99999a

    iput v5, v13, Lcom/forthblue/pool/sprite/LevelButton;->insideAlpha:F

    .line 128
    add-int/lit8 v5, v10, 0x73

    iput v5, v13, Lcom/forthblue/pool/sprite/LevelButton;->id:I

    .line 129
    add-int/lit8 v5, v10, 0x10

    invoke-virtual {v13, v5}, Lcom/forthblue/pool/sprite/LevelButton;->setLevel(I)V

    .line 130
    move-object/from16 v0, p0

    move-object v1, v13

    iput-object v0, v1, Lcom/forthblue/pool/sprite/LevelButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    move-object v5, v0

    invoke-virtual {v5, v13}, Lcom/forthblue/pool/ui/ScrollContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 123
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 136
    .end local v13    # "level":Lcom/forthblue/pool/sprite/LevelButton;
    :cond_4
    new-instance v28, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v5, 0x7f020001

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 137
    .local v28, "sprite":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const/high16 v5, 0x3f000000

    const/high16 v6, -0x3ee00000

    move-object/from16 v0, v28

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/LevelScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_page_pre:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/LevelScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_page_next:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/LevelScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 143
    new-instance v5, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v6, "button_back"

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/LevelScene;->button_back:Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_back:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_back:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/forthblue/pool/sprite/StaticImageButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_back:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const v6, -0x3c5d8000

    const/high16 v7, 0x434e0000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_back:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/high16 v6, 0x40000000

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->captureScale:F

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/LevelScene;->button_back:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/LevelScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 150
    return-void

    .line 73
    :array_0
    .array-data 4
        -0x3e35999a
        0x42fa0000
        -0x3d1e0000
        0x42840000
        -0x3d740000
        0x42b40000
    .end array-data

    .line 74
    :array_1
    .array-data 4
        -0x3ee80000
        -0x3ee80000
        0x42870000
        0x42870000
        0x42620000
        0x42620000
    .end array-data

    .line 99
    :array_2
    .array-data 4
        0x0
        0x44480000
    .end array-data

    .line 111
    :array_3
    .array-data 4
        -0x3e780000
        -0x3e500000
        0x0
        0x41b00000
    .end array-data

    .line 112
    :array_4
    .array-data 4
        -0x3e700000
        0x41b00000
        0x41b00000
        0x41b00000
    .end array-data
.end method


# virtual methods
.method public getTableIndex()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/ScrollContainer;->getPageIndex()I

    move-result v0

    return v0
.end method

.method public initLevelPanel(I)V
    .locals 8
    .param p1, "table_index"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 198
    const/4 v3, 0x0

    .line 199
    .local v3, "unlock_count":I
    if-ltz p1, :cond_0

    const/4 v4, 0x7

    if-lt p1, v4, :cond_1

    .line 218
    :cond_0
    return-void

    .line 202
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x1e

    if-ge v1, v4, :cond_0

    .line 203
    iget-object v4, p0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v4, v1}, Lcom/forthblue/pool/ui/ScrollContainer;->getChild(I)Lcom/fruitsmobile/basket/DrawableObject;

    move-result-object v4

    check-cast v4, Lcom/forthblue/pool/sprite/LevelButton;

    move-object v0, v4

    check-cast v0, Lcom/forthblue/pool/sprite/LevelButton;

    move-object v2, v0

    .line 204
    .local v2, "level_button":Lcom/forthblue/pool/sprite/LevelButton;
    iget-object v4, p0, Lcom/forthblue/pool/ui/LevelScene;->score:[[I

    aget-object v4, v4, p1

    aget v4, v4, v1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 205
    iget-object v4, p0, Lcom/forthblue/pool/ui/LevelScene;->score:[[I

    aget-object v4, v4, p1

    aget v4, v4, v1

    const v5, 0x5f5e100

    div-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lcom/forthblue/pool/sprite/LevelButton;->setStarCount(I)V

    .line 206
    invoke-virtual {v2, v7}, Lcom/forthblue/pool/sprite/LevelButton;->setUnlock(Z)V

    .line 207
    add-int/lit8 v3, v3, 0x1

    .line 202
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {v2, v6}, Lcom/forthblue/pool/sprite/LevelButton;->setStarCount(I)V

    .line 210
    sub-int v4, v1, v3

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    .line 211
    invoke-virtual {v2, v6}, Lcom/forthblue/pool/sprite/LevelButton;->setUnlock(Z)V

    goto :goto_1

    .line 213
    :cond_3
    invoke-virtual {v2, v7}, Lcom/forthblue/pool/sprite/LevelButton;->setUnlock(Z)V

    goto :goto_1
.end method

.method public initTable()V
    .locals 6

    .prologue
    .line 180
    iget-boolean v4, p0, Lcom/forthblue/pool/ui/LevelScene;->score_loaded:Z

    if-nez v4, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/forthblue/pool/ui/LevelScene;->loadPreference()V

    .line 184
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x7

    if-ge v0, v4, :cond_3

    .line 185
    const/4 v3, 0x0

    .line 186
    .local v3, "total_star_count":I
    const/4 v2, 0x0

    .line 187
    .local v2, "level_unlocked":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v4, 0x1e

    if-ge v1, v4, :cond_2

    .line 188
    iget-object v4, p0, Lcom/forthblue/pool/ui/LevelScene;->score:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 189
    iget-object v4, p0, Lcom/forthblue/pool/ui/LevelScene;->score:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    const v5, 0x5f5e100

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 190
    add-int/lit8 v2, v2, 0x1

    .line 187
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 193
    :cond_2
    iget-object v4, p0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v4, v0}, Lcom/forthblue/pool/ui/ScrollContainer;->getChild(I)Lcom/fruitsmobile/basket/DrawableObject;

    move-result-object v4

    check-cast v4, Lcom/forthblue/pool/sprite/TableSelectButton;

    check-cast v4, Lcom/forthblue/pool/sprite/TableSelectButton;

    invoke-virtual {v4, v2, v3}, Lcom/forthblue/pool/sprite/TableSelectButton;->setLevelUnLocked(II)V

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "j":I
    .end local v2    # "level_unlocked":I
    .end local v3    # "total_star_count":I
    :cond_3
    return-void
.end method

.method public loadPreference()V
    .locals 6

    .prologue
    .line 157
    iget-object v3, p0, Lcom/forthblue/pool/ui/LevelScene;->main:Lcom/forthblue/pool/Main;

    const-string v4, "LEVEL_DATA"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/forthblue/pool/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 158
    .local v2, "score_file":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_1

    .line 159
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v3, 0x1e

    if-ge v1, v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/forthblue/pool/ui/LevelScene;->score:[[I

    aget-object v3, v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SCORE_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v5, v0, 0x64

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "j":I
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/forthblue/pool/ui/LevelScene;->score_loaded:Z

    .line 164
    return-void
.end method

.method public onButtonClick(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 255
    if-ne p1, v1, :cond_2

    .line 256
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/ScrollContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/ScrollContainer;->gotoNextPage()Z

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/ScrollContainer;->gotoNextPage()Z

    goto :goto_0

    .line 261
    :cond_2
    if-nez p1, :cond_4

    .line 262
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/ScrollContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/ScrollContainer;->gotoPrePage()Z

    goto :goto_0

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/ScrollContainer;->gotoPrePage()Z

    goto :goto_0

    .line 267
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 268
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/ScrollContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 269
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0, v2}, Lcom/forthblue/pool/ui/ScrollContainer;->setVisible(Z)V

    .line 270
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/ScrollContainer;->setVisible(Z)V

    .line 271
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0, p0}, Lcom/forthblue/pool/ui/ScrollContainer;->setPageIndexChangeListener(Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;)V

    goto :goto_0

    .line 272
    :cond_5
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/ScrollContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->main:Lcom/forthblue/pool/Main;

    invoke-virtual {v0}, Lcom/forthblue/pool/Main;->backToMenu()V

    goto :goto_0

    .line 276
    :cond_6
    const/16 v0, 0x9

    if-le p1, v0, :cond_7

    const/16 v0, 0x11

    if-ge p1, v0, :cond_7

    .line 277
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0, v2}, Lcom/forthblue/pool/ui/ScrollContainer;->setVisible(Z)V

    .line 278
    const/16 v0, 0xa

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/forthblue/pool/ui/LevelScene;->initLevelPanel(I)V

    .line 279
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/ScrollContainer;->setVisible(Z)V

    .line 280
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/ScrollContainer;->init()V

    .line 281
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0, p0}, Lcom/forthblue/pool/ui/ScrollContainer;->setPageIndexChangeListener(Lcom/forthblue/pool/ui/ScrollContainer$PageIndexChangeListener;)V

    goto :goto_0

    .line 283
    :cond_7
    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->main:Lcom/forthblue/pool/Main;

    iget-object v1, p0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v1}, Lcom/forthblue/pool/ui/ScrollContainer;->getPageIndex()I

    move-result v1

    const/16 v2, 0x63

    sub-int v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/Main;->startGameInArcadeMode(II)V

    goto :goto_0
.end method

.method public onTouchDown(I)V
    .locals 7
    .param p1, "motionid"    # I

    .prologue
    const/high16 v6, 0x40000000

    .line 294
    invoke-static {p1}, Lcom/fruitsmobile/basket/MotionService;->getPoint(I)Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v0

    .line 296
    .local v0, "point":Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    iget v3, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->x:F

    iget v4, p0, Lcom/forthblue/pool/ui/LevelScene;->width:F

    div-float/2addr v4, v6

    sub-float v1, v3, v4

    .line 297
    .local v1, "x":F
    iget v3, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->y:F

    iget v4, p0, Lcom/forthblue/pool/ui/LevelScene;->height:F

    div-float/2addr v4, v6

    sub-float v2, v3, v4

    .line 299
    .local v2, "y":F
    iget-object v3, p0, Lcom/forthblue/pool/ui/LevelScene;->button_page_pre:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/forthblue/pool/ui/LevelScene;->button_page_pre:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v3, v1, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    iget-object v3, p0, Lcom/forthblue/pool/ui/LevelScene;->button_page_pre:Lcom/forthblue/pool/sprite/StaticImageButton;

    iget v4, p0, Lcom/forthblue/pool/ui/LevelScene;->width:F

    div-float/2addr v4, v6

    iget v5, p0, Lcom/forthblue/pool/ui/LevelScene;->height:F

    div-float/2addr v5, v6

    invoke-static {p1, v3, v4, v5}, Lcom/fruitsmobile/basket/MotionService;->startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;FF)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-object v3, p0, Lcom/forthblue/pool/ui/LevelScene;->button_page_next:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/forthblue/pool/ui/LevelScene;->button_page_next:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v3, v1, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 304
    iget-object v3, p0, Lcom/forthblue/pool/ui/LevelScene;->button_page_next:Lcom/forthblue/pool/sprite/StaticImageButton;

    iget v4, p0, Lcom/forthblue/pool/ui/LevelScene;->width:F

    div-float/2addr v4, v6

    iget v5, p0, Lcom/forthblue/pool/ui/LevelScene;->height:F

    div-float/2addr v5, v6

    invoke-static {p1, v3, v4, v5}, Lcom/fruitsmobile/basket/MotionService;->startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;FF)V

    goto :goto_0

    .line 307
    :cond_2
    iget-object v3, p0, Lcom/forthblue/pool/ui/LevelScene;->button_back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/forthblue/pool/ui/LevelScene;->button_back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v3, v1, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 308
    iget-object v3, p0, Lcom/forthblue/pool/ui/LevelScene;->button_back:Lcom/forthblue/pool/sprite/StaticImageButton;

    iget v4, p0, Lcom/forthblue/pool/ui/LevelScene;->width:F

    div-float/2addr v4, v6

    iget v5, p0, Lcom/forthblue/pool/ui/LevelScene;->height:F

    div-float/2addr v5, v6

    invoke-static {p1, v3, v4, v5}, Lcom/fruitsmobile/basket/MotionService;->startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;FF)V

    goto :goto_0

    .line 311
    :cond_3
    iget-object v3, p0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v3}, Lcom/forthblue/pool/ui/ScrollContainer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v3, v1, v2}, Lcom/forthblue/pool/ui/ScrollContainer;->isInside(FF)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 312
    iget-object v3, p0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    iget v4, p0, Lcom/forthblue/pool/ui/LevelScene;->width:F

    div-float/2addr v4, v6

    iget v5, p0, Lcom/forthblue/pool/ui/LevelScene;->height:F

    div-float/2addr v5, v6

    invoke-static {p1, v3, v4, v5}, Lcom/fruitsmobile/basket/MotionService;->startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;FF)V

    goto :goto_0

    .line 313
    :cond_4
    iget-object v3, p0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v3}, Lcom/forthblue/pool/ui/ScrollContainer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v3, v1, v2}, Lcom/forthblue/pool/ui/ScrollContainer;->isInside(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    iget-object v3, p0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    iget v4, p0, Lcom/forthblue/pool/ui/LevelScene;->width:F

    div-float/2addr v4, v6

    iget v5, p0, Lcom/forthblue/pool/ui/LevelScene;->height:F

    div-float/2addr v5, v6

    invoke-static {p1, v3, v4, v5}, Lcom/fruitsmobile/basket/MotionService;->startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;FF)V

    goto :goto_0
.end method

.method public pageIndexChange(Lcom/forthblue/pool/ui/ScrollContainer;I)V
    .locals 3
    .param p1, "container"    # Lcom/forthblue/pool/ui/ScrollContainer;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 231
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    if-ne p1, v0, :cond_3

    .line 232
    if-nez p2, :cond_1

    .line 233
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->button_page_pre:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v0, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 234
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->button_page_next:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->button_page_next:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v0, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 237
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->button_page_pre:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    goto :goto_0

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->button_page_next:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 240
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->button_page_pre:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    goto :goto_0

    .line 243
    :cond_3
    if-nez p2, :cond_4

    .line 244
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->button_page_pre:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v0, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 245
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->button_page_next:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    goto :goto_0

    .line 246
    :cond_4
    if-ne p2, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->button_page_pre:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 248
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->button_page_next:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v0, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    goto :goto_0
.end method

.method public saveScore(IIII)V
    .locals 5
    .param p1, "stage"    # I
    .param p2, "level"    # I
    .param p3, "score"    # I
    .param p4, "star"    # I

    .prologue
    .line 168
    const v2, 0x5f5e100

    mul-int/2addr v2, p4

    add-int/2addr p3, v2

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/forthblue/pool/ui/LevelScene;->score:[[I

    aget-object v2, v2, p1

    aget v2, v2, p2

    if-le p3, v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/forthblue/pool/ui/LevelScene;->score:[[I

    aget-object v2, v2, p1

    aput p3, v2, p2

    .line 171
    iget-object v2, p0, Lcom/forthblue/pool/ui/LevelScene;->main:Lcom/forthblue/pool/Main;

    const-string v3, "LEVEL_DATA"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/forthblue/pool/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 172
    .local v1, "score_file":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCORE_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, p1, 0x64

    add-int/2addr v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1    # "score_file":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 319
    iput p1, p0, Lcom/forthblue/pool/ui/LevelScene;->width:F

    .line 320
    iput p2, p0, Lcom/forthblue/pool/ui/LevelScene;->height:F

    .line 321
    return-void
.end method

.method public tick(J)V
    .locals 1
    .param p1, "timeSpan"    # J

    .prologue
    .line 221
    invoke-super {p0, p1, p2}, Lcom/fruitsmobile/basket/Layer;->tick(J)V

    .line 222
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/ScrollContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->table_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0, p1, p2}, Lcom/forthblue/pool/ui/ScrollContainer;->tick(J)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0}, Lcom/forthblue/pool/ui/ScrollContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/forthblue/pool/ui/LevelScene;->level_selector:Lcom/forthblue/pool/ui/ScrollContainer;

    invoke-virtual {v0, p1, p2}, Lcom/forthblue/pool/ui/ScrollContainer;->tick(J)V

    goto :goto_0
.end method
