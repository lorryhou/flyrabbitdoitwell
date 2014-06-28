.class public Lcom/forthblue/pool/ui/MenuScene;
.super Lcom/fruitsmobile/basket/Layer;
.source "MenuScene.java"

# interfaces
.implements Lcom/forthblue/pool/sprite/StaticImageButton$Handler;


# static fields
.field public static final BUTTON_ID_ARCADE_MODE:I = 0x5

.field public static final BUTTON_ID_BACK:I = 0xa

.field public static final BUTTON_ID_HIGHSCORE:I = 0x4

.field public static final BUTTON_ID_MODE8:I = 0x65

.field public static final BUTTON_ID_MODE8_2PLAYER:I = 0x6b

.field public static final BUTTON_ID_MODE8_PRACTICE:I = 0x67

.field public static final BUTTON_ID_MODE8_VSAI:I = 0x69

.field public static final BUTTON_ID_MODE9:I = 0x66

.field public static final BUTTON_ID_MODE9_2PLAYER:I = 0x6c

.field public static final BUTTON_ID_MODE9_PRACTICE:I = 0x68

.field public static final BUTTON_ID_MODE9_VSAI:I = 0x6a

.field public static final BUTTON_ID_RATING_GAME:I = 0x6

.field public static final BUTTON_ID_RESETALL:I = 0xb

.field public static final BUTTON_ID_SETTING:I = 0x3

.field public static final BUTTON_ID_SINGLE_PLAY:I = 0x1

.field public static final BUTTON_ID_STICK_FIVE:I = 0x86

.field public static final BUTTON_ID_STICK_FOUR:I = 0x85

.field public static final BUTTON_ID_STICK_ONE:I = 0x82

.field public static final BUTTON_ID_STICK_THREE:I = 0x84

.field public static final BUTTON_ID_STICK_TWO:I = 0x83

.field public static final BUTTON_ID_SUBMIT_SCORE:I = 0xc

.field public static final BUTTON_ID_TABLE_FOUR:I = 0x7b

.field public static final BUTTON_ID_TABLE_ONE:I = 0x78

.field public static final BUTTON_ID_TABLE_THREE:I = 0x7a

.field public static final BUTTON_ID_TABLE_TWO:I = 0x79

.field public static final BUTTON_ID_VSAI:I = 0x2

.field static final PREFS_NAME:Ljava/lang/String; = "Highscore"

.field public static final STATE_HIGHSCORE:I = 0x4

.field public static final STATE_MAINMENU:I = 0x0

.field public static final STATE_SETTING:I = 0x3

.field public static final STATE_SINGLE_MODE:I = 0x1

.field public static final STATE_STICK_CHOOSE:I = 0x6

.field public static final STATE_TABLE_CHOOSE:I = 0x5

.field public static final STATE_VSAI_MODE:I = 0x2

.field static pitchonsPos:[F

.field static touchArea:[F

.field static touchResult:[I


# instance fields
.field bIsEasterEggs:Z

.field back:Lcom/forthblue/pool/sprite/StaticImageButton;

.field buttons:[Lcom/forthblue/pool/sprite/StaticImageButton;

.field public difficulty:I

.field difficultyback:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field private easterEggs:Lcom/fruitsmobile/basket/interfaces/Motionable;

.field public enteringstate:I

.field guide_arrow:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field highscore:Lcom/fruitsmobile/basket/SimpleContainer;

.field public highscoreValue:[I

.field public laststate:I

.field public leavingstate:I

.field main:Lcom/forthblue/pool/Main;

.field mainmenu:Lcom/fruitsmobile/basket/SimpleContainer;

.field pitchon_on_stick:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field pitchon_on_table:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field pitchons:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field resetall:Lcom/forthblue/pool/sprite/StaticImageButton;

.field rule:I

.field scores:[Lcom/forthblue/pool/sprite/IntegerSprite;

.field setting:Lcom/fruitsmobile/basket/SimpleContainer;

.field public show_aim_out_line:Z

.field single_mode:Lcom/fruitsmobile/basket/SimpleContainer;

.field single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

.field public state:I

.field stick_choose:Lcom/fruitsmobile/basket/SimpleContainer;

.field sticks:[Lcom/forthblue/pool/sprite/StaticImageButton;

.field submit:Lcom/forthblue/pool/sprite/StaticImageButton;

.field tableChoose:Lcom/fruitsmobile/basket/SimpleContainer;

.field tables:[Lcom/forthblue/pool/sprite/StaticImageButton;

.field title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field vsai_mode:Lcom/fruitsmobile/basket/SimpleContainer;

.field vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 637
    const/16 v0, 0x12

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/forthblue/pool/ui/MenuScene;->pitchonsPos:[F

    .line 645
    const/16 v0, 0x30

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/forthblue/pool/ui/MenuScene;->touchArea:[F

    .line 661
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/forthblue/pool/ui/MenuScene;->touchResult:[I

    return-void

    .line 637
    :array_0
    .array-data 4
        0x420c0000
        -0x3d580000
        0x43230000
        -0x3d580000
        0x420c0000
        -0x3e080000
        0x43230000
        -0x3e080000
        -0x3d700000
        0x41b00000
        0x420c0000
        0x41b00000
        0x43230000
        0x41b00000
        0x420c0000
        0x42960000
        0x43230000
        0x42960000
    .end array-data

    .line 645
    :array_1
    .array-data 4
        0x41700000
        -0x3d2a0000
        0x43070000
        -0x3d740000
        0x430f0000
        -0x3d2a0000
        0x436e0000
        -0x3d740000
        0x41700000
        -0x3da80000
        0x43070000
        -0x3e780000
        0x430f0000
        -0x3da80000
        0x436e0000
        -0x3e780000
        -0x3d4a0000
        -0x40800000
        0x40c00000
        0x42100000
        0x41700000
        -0x40800000
        0x43070000
        0x42100000
        0x430f0000
        -0x40800000
        0x436e0000
        0x42100000
        -0x3c748000
        0x42e00000
        -0x3d4c0000
        0x43480000
        -0x3d4c0000
        0x42e00000
        0x42c60000
        0x43480000
        0x42c60000
        0x42e00000
        0x43900000
        0x43480000
        0x41700000
        0x42500000
        0x43070000
        0x42da0000
        0x430f0000
        0x42500000
        0x436e0000
        0x42da0000
    .end array-data

    .line 661
    :array_2
    .array-data 4
        0x0
        0x1
        0x0
        0x0
        0x1
        0x1
        0x1
        0x0
        0x2
        0x0
        0x2
        0x1
        0x2
        0x2
        0x3
        0x0
        0x6
        0x0
        0x4
        0x0
        0x5
        0x1
        0x5
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/forthblue/pool/Main;)V
    .locals 32
    .param p1, "main"    # Lcom/forthblue/pool/Main;

    .prologue
    .line 123
    const/16 v5, 0x64

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/Layer;-><init>(I)V

    .line 70
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/MenuScene;->leavingstate:I

    .line 71
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/MenuScene;->enteringstate:I

    .line 72
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/MenuScene;->state:I

    .line 73
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/MenuScene;->laststate:I

    .line 75
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/ui/MenuScene;->bIsEasterEggs:Z

    .line 120
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/MenuScene;->rule:I

    .line 506
    new-instance v5, Lcom/forthblue/pool/ui/MenuScene$2;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/forthblue/pool/ui/MenuScene$2;-><init>(Lcom/forthblue/pool/ui/MenuScene;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->easterEggs:Lcom/fruitsmobile/basket/interfaces/Motionable;

    .line 663
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/MenuScene;->difficulty:I

    .line 664
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/ui/MenuScene;->show_aim_out_line:Z

    .line 957
    const/16 v5, 0x12

    new-array v5, v5, [I

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    .line 124
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    .line 128
    new-instance v12, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v5, 0x7f020015

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v5

    invoke-direct {v12, v5}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 129
    .local v12, "bg":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const/high16 v5, 0x3f800000

    invoke-virtual {v12, v5}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setAlpha(F)V

    .line 130
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/MenuScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 133
    const-string v5, "menu_button.pack"

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTextureAtlas(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureAtlas;

    move-result-object v20

    .line 136
    .local v20, "menu_buttons":Lcom/fruitsmobile/basket/resources/TextureAtlas;
    new-instance v5, Lcom/fruitsmobile/basket/SimpleContainer;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->mainmenu:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->mainmenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/MenuScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 140
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const-string v6, "title.pack"

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTextureAtlas(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureAtlas;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    const/high16 v7, -0x3cea0000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->mainmenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 146
    const/4 v5, 0x6

    new-array v5, v5, [Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->buttons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 147
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/4 v5, 0x0

    const-string v6, "button_xsingle"

    aput-object v6, v25, v5

    const/4 v5, 0x1

    const-string v6, "button_vs_mode"

    aput-object v6, v25, v5

    const/4 v5, 0x2

    const-string v6, "button_xarcade"

    aput-object v6, v25, v5

    const/4 v5, 0x3

    const-string v6, "button_xsetting"

    aput-object v6, v25, v5

    const/4 v5, 0x4

    const-string v6, "button_xhighscore"

    aput-object v6, v25, v5

    const/4 v5, 0x5

    const-string v6, "button_xrate"

    aput-object v6, v25, v5

    .line 156
    .local v25, "t_names":[Ljava/lang/String;
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    .line 165
    .local v18, "ids":[I
    const/16 v5, 0xc

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_1

    .line 174
    .local v22, "position":[F
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    const/4 v5, 0x6

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_0

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->buttons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    new-instance v6, Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v7, v25, v17

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v6, v5, v17

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->mainmenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->buttons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v6, v0

    aget-object v6, v6, v17

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->buttons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v17

    aget v6, v18, v17

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->buttons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v17

    mul-int/lit8 v6, v17, 0x2

    aget v6, v22, v6

    mul-int/lit8 v7, v17, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v7, v22, v7

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->buttons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v17

    const v6, 0x3f99999a

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->insideScale:F

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->buttons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v17

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/forthblue/pool/sprite/StaticImageButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 174
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 184
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->mainmenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 188
    new-instance v5, Lcom/fruitsmobile/basket/SimpleContainer;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->single_mode:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_mode:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/MenuScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 191
    new-instance v12, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .end local v12    # "bg":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const v5, 0x7f020003

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v5

    invoke-direct {v12, v5}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 192
    .restart local v12    # "bg":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const/4 v5, 0x0

    const/high16 v6, -0x3f000000

    invoke-virtual {v12, v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 193
    const/high16 v5, 0x3f800000

    invoke-virtual {v12, v5}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setAlpha(F)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_mode:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    invoke-virtual {v5, v12}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 196
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x0

    new-instance v7, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v8, "button_xmode8ball"

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v7, v5, v6

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x1

    new-instance v7, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v8, "button_xmode9ball"

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v7, v5, v6

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x2

    new-instance v7, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v8, "button_xmode8ball"

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v7, v5, v6

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x3

    new-instance v7, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v8, "button_xmode9ball"

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v7, v5, v6

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x67

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/16 v6, 0x68

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/16 v6, 0x65

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/16 v6, 0x66

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 208
    const/16 v17, 0x0

    :goto_1
    const/4 v5, 0x4

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_1

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v17

    const v6, 0x3f28f5c3

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->insideAlpha:F

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v17

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/forthblue/pool/sprite/StaticImageButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_mode:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v6, v0

    aget-object v6, v6, v17

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 208
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 214
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/high16 v6, -0x3d040000

    const/high16 v7, -0x3e100000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/high16 v6, 0x42e20000

    const/high16 v7, -0x3e100000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/high16 v6, -0x3d040000

    const/high16 v7, 0x42dc0000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/high16 v6, 0x42e20000

    const/high16 v7, 0x42dc0000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->single_mode:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 224
    new-instance v5, Lcom/fruitsmobile/basket/SimpleContainer;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->vsai_mode:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_mode:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/MenuScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 227
    new-instance v12, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .end local v12    # "bg":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const v5, 0x7f020004

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v5

    invoke-direct {v12, v5}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 228
    .restart local v12    # "bg":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const/4 v5, 0x0

    const/high16 v6, -0x3f000000

    invoke-virtual {v12, v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 229
    const/high16 v5, 0x3f800000

    invoke-virtual {v12, v5}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setAlpha(F)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_mode:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    invoke-virtual {v5, v12}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 232
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x0

    new-instance v7, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v8, "button_xmode8ball"

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v7, v5, v6

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x1

    new-instance v7, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v8, "button_xmode9ball"

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v7, v5, v6

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x2

    new-instance v7, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v8, "button_xmode8ball"

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v7, v5, v6

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x3

    new-instance v7, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v8, "button_xmode9ball"

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v7, v5, v6

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/16 v6, 0x69

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/16 v6, 0x6a

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/16 v6, 0x6b

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/16 v6, 0x6c

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 244
    const/16 v17, 0x0

    :goto_2
    const/4 v5, 0x4

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_2

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v17

    const v6, 0x3f28f5c3

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->insideAlpha:F

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v17

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/forthblue/pool/sprite/StaticImageButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_mode:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v6, v0

    aget-object v6, v6, v17

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 244
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 250
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/high16 v6, -0x3d040000

    const/high16 v7, -0x3e380000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/high16 v6, 0x42e20000

    const/high16 v7, -0x3e380000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/high16 v6, -0x3d040000

    const/high16 v7, 0x42e60000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/high16 v6, 0x42e20000

    const/high16 v7, 0x42e60000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->vsai_mode:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 260
    new-instance v5, Lcom/fruitsmobile/basket/SimpleContainer;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->setting:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->setting:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/MenuScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 263
    new-instance v11, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v5, 0x7f020002

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v5

    invoke-direct {v11, v5}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 264
    .local v11, "back":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const/4 v5, 0x0

    const/high16 v6, -0x3f000000

    invoke-virtual {v11, v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->setting:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    invoke-virtual {v5, v11}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->setting:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 269
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->pitchons:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 271
    const-string v5, "pitchon"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v27

    .line 272
    .local v27, "texture":Lcom/fruitsmobile/basket/resources/TextureRegion;
    const/16 v17, 0x0

    :goto_3
    const/4 v5, 0x4

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_3

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->pitchons:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    new-instance v6, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v6, v5, v17

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->setting:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->pitchons:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    aget-object v6, v6, v17

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 272
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 276
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/forthblue/pool/ui/MenuScene;->resetPitchons()V

    .line 279
    new-instance v5, Lcom/forthblue/pool/ui/MenuScene$1;

    const-string v6, "guide.pack"

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTextureAtlas(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureAtlas;

    move-result-object v6

    const-string v7, "arrow"

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/forthblue/pool/ui/MenuScene$1;-><init>(Lcom/forthblue/pool/ui/MenuScene;Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->guide_arrow:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->guide_arrow:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/high16 v6, -0x3d380000

    const/high16 v7, -0x3d900000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->guide_arrow:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/MenuScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 309
    new-instance v5, Lcom/fruitsmobile/basket/SimpleContainer;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->tableChoose:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->tableChoose:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/MenuScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->tableChoose:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 313
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->tables:[Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 314
    const-string v5, "small_table_pack"

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTextureAtlas(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureAtlas;

    move-result-object v26

    .line 316
    .local v26, "table_pack":Lcom/fruitsmobile/basket/resources/TextureAtlas;
    const/high16 v28, -0x3cbd0000

    .line 317
    .local v28, "x":F
    const/16 v17, 0x0

    :goto_4
    const/4 v5, 0x4

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_4

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->tables:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    new-instance v6, Lcom/forthblue/pool/sprite/StaticImageButton;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "table_small_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v26

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v6, v5, v17

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->tables:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v17

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/forthblue/pool/sprite/StaticImageButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->tables:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v17

    add-int/lit8 v6, v17, 0x78

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->tables:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v17

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0x82

    move v6, v0

    int-to-float v6, v6

    add-float v6, v6, v28

    const/high16 v7, 0x41a00000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->tables:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v17

    const v6, 0x3f99999a

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->insideScale:F

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->tableChoose:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->tables:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v6, v0

    aget-object v6, v6, v17

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 317
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 326
    :cond_4
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const-string v6, "pitchon"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->pitchon_on_table:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->pitchon_on_table:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    invoke-direct/range {p0 .. p0}, Lcom/forthblue/pool/ui/MenuScene;->_getTableChoosed()I

    move-result v6

    mul-int/lit16 v6, v6, 0x82

    add-int/lit16 v6, v6, -0xc3

    int-to-float v6, v6

    const/high16 v7, 0x41a00000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->tableChoose:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->pitchon_on_table:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 332
    new-instance v5, Lcom/fruitsmobile/basket/SimpleContainer;

    const/16 v6, 0xb

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->stick_choose:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->stick_choose:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/MenuScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->stick_choose:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 336
    const-string v5, "pitch_background"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v21

    .line 338
    .local v21, "pitch_background":Lcom/fruitsmobile/basket/resources/TextureRegion;
    const/16 v5, 0xa

    new-array v5, v5, [Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->sticks:[Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 339
    const-string v5, "stick_pack"

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTextureAtlas(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureAtlas;

    move-result-object v24

    .line 340
    .local v24, "stick_pack":Lcom/fruitsmobile/basket/resources/TextureAtlas;
    const/16 v17, 0x0

    :goto_5
    const/4 v5, 0x5

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_5

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->sticks:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    new-instance v6, Lcom/forthblue/pool/sprite/StaticImageButton;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stick_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v24

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v6, v5, v17

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->sticks:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v17

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/forthblue/pool/sprite/StaticImageButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->sticks:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v17

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x82

    move v6, v0

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->sticks:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v17

    const/high16 v6, -0x3d560000

    mul-int/lit8 v7, v17, 0x34

    const/16 v8, 0x64

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->sticks:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v17

    const v6, 0x3f99999a

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->insideScale:F

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->stick_choose:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->sticks:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v6, v0

    aget-object v6, v6, v17

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->sticks:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    add-int/lit8 v6, v17, 0x5

    new-instance v7, Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v7, v5, v6

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->sticks:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    add-int/lit8 v6, v17, 0x5

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/forthblue/pool/sprite/StaticImageButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->sticks:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    add-int/lit8 v6, v17, 0x5

    aget-object v5, v5, v6

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x82

    move v6, v0

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->sticks:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    add-int/lit8 v6, v17, 0x5

    aget-object v5, v5, v6

    const/high16 v6, 0x435c0000

    mul-int/lit8 v7, v17, 0x34

    const/16 v8, 0x64

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->stick_choose:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->sticks:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v6, v0

    add-int/lit8 v7, v17, 0x5

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 340
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_5

    .line 354
    :cond_5
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const-string v6, "pitchon"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->pitchon_on_stick:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->pitchon_on_stick:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/high16 v6, 0x435c0000

    invoke-direct/range {p0 .. p0}, Lcom/forthblue/pool/ui/MenuScene;->_getStickChoosed()I

    move-result v7

    mul-int/lit8 v7, v7, 0x34

    const/16 v8, 0x6a

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->stick_choose:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->pitchon_on_stick:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 361
    new-instance v5, Lcom/fruitsmobile/basket/SimpleContainer;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->highscore:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->highscore:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/MenuScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->highscore:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 365
    new-instance v11, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .end local v11    # "back":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const/high16 v5, 0x7f020000

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v5

    invoke-direct {v11, v5}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 366
    .restart local v11    # "back":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const/4 v5, 0x0

    const/high16 v6, -0x3ef00000

    invoke-virtual {v11, v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->highscore:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    invoke-virtual {v5, v11}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 369
    new-instance v5, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v6, "button_resetall"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->resetall:Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->resetall:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/high16 v6, 0x42f00000

    const/high16 v7, -0x3d1e0000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->resetall:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/forthblue/pool/sprite/StaticImageButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->resetall:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/16 v6, 0xb

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->highscore:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->resetall:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 375
    new-instance v5, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v6, "button_highscore"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->submit:Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->submit:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/high16 v6, 0x43610000

    const/high16 v7, -0x3d1e0000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->submit:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/forthblue/pool/sprite/StaticImageButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->submit:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/16 v6, 0xc

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->highscore:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->submit:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 381
    const/high16 v29, -0x3e380000

    .line 382
    .local v29, "xbase":F
    const/high16 v31, -0x3ef00000

    .line 383
    .local v31, "ybase":F
    const/high16 v15, 0x42c40000

    .line 384
    .local v15, "dx":F
    const/high16 v16, 0x424c0000

    .line 386
    .local v16, "dy":F
    const/4 v13, 0x0

    .line 387
    .local v13, "c":I
    const/16 v5, 0xc

    new-array v5, v5, [Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->scores:[Lcom/forthblue/pool/sprite/IntegerSprite;

    .line 389
    new-instance v4, Lcom/forthblue/pool/sprite/TileTextureFont;

    const v5, 0x7f020066

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v5

    const/16 v6, 0x19

    const/16 v7, 0x2d

    const/4 v8, 0x1

    const/16 v9, 0xb

    const-string v10, "0123456789/"

    invoke-direct/range {v4 .. v10}, Lcom/forthblue/pool/sprite/TileTextureFont;-><init>(Lcom/fruitsmobile/basket/resources/Texture;IIIILjava/lang/String;)V

    .line 391
    .local v4, "font":Lcom/forthblue/pool/sprite/TileTextureFont;
    const/16 v17, 0x0

    :goto_6
    const/4 v5, 0x4

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_7

    .line 392
    move/from16 v0, v17

    int-to-float v0, v0

    move v5, v0

    mul-float v5, v5, v16

    add-float v30, v31, v5

    .line 393
    .local v30, "y":F
    const/16 v19, 0x0

    .local v19, "j":I
    move v14, v13

    .end local v13    # "c":I
    .local v14, "c":I
    :goto_7
    const/4 v5, 0x3

    move/from16 v0, v19

    move v1, v5

    if-ge v0, v1, :cond_6

    .line 394
    move/from16 v0, v19

    int-to-float v0, v0

    move v5, v0

    mul-float/2addr v5, v15

    add-float v28, v29, v5

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->scores:[Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    add-int/lit8 v13, v14, 0x1

    .end local v14    # "c":I
    .restart local v13    # "c":I
    new-instance v23, Lcom/forthblue/pool/sprite/IntegerSprite;

    const-string v6, ""

    const/16 v7, 0x14

    move-object/from16 v0, v23

    move-object v1, v6

    move-object v2, v4

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/forthblue/pool/sprite/IntegerSprite;-><init>(Ljava/lang/CharSequence;Lcom/forthblue/pool/sprite/TileTextureFont;I)V

    aput-object v23, v5, v14

    .line 397
    .local v23, "score":Lcom/forthblue/pool/sprite/IntegerSprite;
    move/from16 v0, v28

    move-object/from16 v1, v23

    iput v0, v1, Lcom/forthblue/pool/sprite/IntegerSprite;->x:F

    .line 398
    move/from16 v0, v30

    move-object/from16 v1, v23

    iput v0, v1, Lcom/forthblue/pool/sprite/IntegerSprite;->y:F

    .line 399
    const/4 v5, 0x5

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/forthblue/pool/sprite/IntegerSprite;->anchor:I

    .line 400
    const/high16 v5, -0x3f000000

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/forthblue/pool/sprite/IntegerSprite;->distance:F

    .line 401
    const/4 v5, 0x0

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/IntegerSprite;->setFillZero(Z)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->highscore:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 393
    add-int/lit8 v19, v19, 0x1

    move v14, v13

    .end local v13    # "c":I
    .restart local v14    # "c":I
    goto :goto_7

    .line 391
    .end local v23    # "score":Lcom/forthblue/pool/sprite/IntegerSprite;
    :cond_6
    add-int/lit8 v17, v17, 0x1

    move v13, v14

    .end local v14    # "c":I
    .restart local v13    # "c":I
    goto :goto_6

    .line 409
    .end local v19    # "j":I
    .end local v30    # "y":F
    :cond_7
    new-instance v5, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v6, "button_back"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/MenuScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/16 v6, 0xa

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/forthblue/pool/sprite/StaticImageButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const v6, -0x3c5d8000

    const/high16 v7, 0x434e0000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/high16 v6, 0x40000000

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->captureScale:F

    .line 420
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    .line 422
    invoke-direct/range {p0 .. p0}, Lcom/forthblue/pool/ui/MenuScene;->_loadScore()V

    .line 423
    return-void

    .line 156
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x5
        0x3
        0x4
        0x6
    .end array-data

    .line 165
    :array_1
    .array-data 4
        -0x3c5d0000
        0x42640000
        -0x3cf20000
        0x42a00000
        0x0
        0x42800000
        0x430e0000
        0x41f00000
        0x438f0000
        0x429c0000
        -0x3c520000
        -0x3cea0000
    .end array-data
.end method

.method private _getStickChoosed()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1026
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    const-string v2, "Highscore"

    invoke-virtual {v1, v2, v3}, Lcom/forthblue/pool/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1027
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "STICK"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private _getTableChoosed()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1015
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    const-string v2, "Highscore"

    invoke-virtual {v1, v2, v3}, Lcom/forthblue/pool/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1016
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "TABLE"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private _loadScore()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1002
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    const-string v3, "Highscore"

    invoke-virtual {v2, v3, v8}, Lcom/forthblue/pool/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1003
    .local v1, "settings":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    .line 1004
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0

    .line 1003
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1006
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 1007
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->scores:[Lcom/forthblue/pool/sprite/IntegerSprite;

    aget-object v2, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/sprite/IntegerSprite;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1009
    :cond_1
    const/4 v0, 0x6

    :goto_2
    const/16 v2, 0xc

    if-ge v0, v2, :cond_2

    .line 1010
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->scores:[Lcom/forthblue/pool/sprite/IntegerSprite;

    aget-object v2, v2, v0

    const-string v3, "%d/%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    add-int/lit8 v7, v0, 0x6

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/sprite/IntegerSprite;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1012
    :cond_2
    return-void
.end method

.method private _saveScore()V
    .locals 6

    .prologue
    .line 993
    iget-object v3, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    const-string v4, "Highscore"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/forthblue/pool/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 994
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 995
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x12

    if-ge v1, v3, :cond_0

    .line 996
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    aget v4, v4, v1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 995
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 998
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 999
    return-void
.end method

.method private _setStickChoose(I)V
    .locals 5
    .param p1, "x"    # I

    .prologue
    .line 1031
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->pitchon_on_stick:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const/high16 v2, 0x435c0000

    mul-int/lit8 v3, p1, 0x34

    const/16 v4, 0x6a

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 1032
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    const-string v2, "Highscore"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/forthblue/pool/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1033
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "STICK"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1034
    return-void
.end method

.method private _setTableChoose(I)V
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 1020
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->pitchon_on_table:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    mul-int/lit16 v2, p1, 0x82

    add-int/lit16 v2, v2, -0xc3

    int-to-float v2, v2

    const/high16 v3, 0x41a00000

    invoke-virtual {v1, v2, v3}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 1021
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    const-string v2, "Highscore"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/forthblue/pool/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1022
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "TABLE"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1023
    return-void
.end method

.method private disableAllButtons(Z)V
    .locals 3
    .param p1, "touchable"    # Z

    .prologue
    const v2, 0x3f19999a

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->buttons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->buttons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->buttons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setTouchable(ZF)V

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setTouchable(ZF)V

    .line 101
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_3
    return-void
.end method

.method private enteringState(IJ)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "timeSpan"    # J

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 496
    .local v0, "bStillEntering":Z
    if-nez v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/forthblue/pool/ui/MenuScene;->finishEntering()V

    .line 499
    :cond_0
    return-void
.end method

.method private getSettingTouchType(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 686
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/forthblue/pool/ui/MenuScene;->touchArea:[F

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_1

    .line 687
    sget-object v1, Lcom/forthblue/pool/ui/MenuScene;->touchArea:[F

    mul-int/lit8 v2, v0, 0x4

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/forthblue/pool/ui/MenuScene;->touchArea:[F

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x2

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    sget-object v1, Lcom/forthblue/pool/ui/MenuScene;->touchArea:[F

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/forthblue/pool/ui/MenuScene;->touchArea:[F

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x3

    aget v1, v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    move v1, v0

    .line 691
    :goto_1
    return v1

    .line 686
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private leavingState(IJ)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "timeSpan"    # J

    .prologue
    const/4 v2, 0x0

    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "bStillLeaving":Z
    packed-switch p1, :pswitch_data_0

    .line 485
    :goto_0
    if-nez v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/forthblue/pool/ui/MenuScene;->finishLeaving()V

    .line 488
    :cond_0
    return-void

    .line 456
    :pswitch_0
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->mainmenu:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 457
    invoke-static {}, Lcom/forthblue/pool/DoodleHelper;->hideFeatureIcon()V

    goto :goto_0

    .line 460
    :pswitch_1
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->setting:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 461
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v1, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    goto :goto_0

    .line 464
    :pswitch_2
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->single_mode:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 465
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v1, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    goto :goto_0

    .line 468
    :pswitch_3
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->vsai_mode:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 469
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v1, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    goto :goto_0

    .line 472
    :pswitch_4
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v1, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 473
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->highscore:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    goto :goto_0

    .line 476
    :pswitch_5
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v1, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 477
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->tableChoose:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    goto :goto_0

    .line 480
    :pswitch_6
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v1, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 481
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->stick_choose:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private processSettingTouch(FF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 695
    invoke-direct {p0, p1, p2}, Lcom/forthblue/pool/ui/MenuScene;->getSettingTouchType(FF)I

    move-result v0

    .line 696
    .local v0, "procType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 723
    :goto_0
    return-void

    .line 698
    :cond_0
    sget-object v1, Lcom/forthblue/pool/ui/MenuScene;->touchResult:[I

    mul-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 722
    :goto_1
    invoke-virtual {p0}, Lcom/forthblue/pool/ui/MenuScene;->resetPitchons()V

    goto :goto_0

    .line 700
    :pswitch_0
    sget-object v1, Lcom/forthblue/pool/ui/MenuScene;->touchResult:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-eqz v1, :cond_1

    move v1, v4

    :goto_2
    invoke-static {v1}, Lcom/fruitsmobile/basket/audio/SoundManager;->setMusicOn(Z)V

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_2

    .line 703
    :pswitch_1
    sget-object v1, Lcom/forthblue/pool/ui/MenuScene;->touchResult:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-eqz v1, :cond_2

    move v1, v4

    :goto_3
    invoke-static {v1}, Lcom/fruitsmobile/basket/audio/SoundManager;->setSoundOn(Z)V

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_3

    .line 706
    :pswitch_2
    sget-object v1, Lcom/forthblue/pool/ui/MenuScene;->touchResult:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/forthblue/pool/ui/MenuScene;->difficulty:I

    goto :goto_1

    .line 709
    :pswitch_3
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    goto :goto_1

    .line 712
    :pswitch_4
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    goto :goto_1

    .line 715
    :pswitch_5
    sget-object v1, Lcom/forthblue/pool/ui/MenuScene;->touchResult:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    if-eqz v1, :cond_3

    move v1, v4

    :goto_4
    iput-boolean v1, p0, Lcom/forthblue/pool/ui/MenuScene;->show_aim_out_line:Z

    .line 716
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-boolean v2, p0, Lcom/forthblue/pool/ui/MenuScene;->show_aim_out_line:Z

    invoke-virtual {v1, v2}, Lcom/forthblue/pool/Main;->setAimOutLineVisible(Z)V

    goto :goto_1

    :cond_3
    move v1, v3

    .line 715
    goto :goto_4

    .line 719
    :pswitch_6
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    goto :goto_1

    .line 698
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateState(IJ)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "timeSpan"    # J

    .prologue
    .line 502
    .line 504
    return-void
.end method


# virtual methods
.method public changeState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 773
    iget v0, p0, Lcom/forthblue/pool/ui/MenuScene;->state:I

    iput v0, p0, Lcom/forthblue/pool/ui/MenuScene;->leavingstate:I

    iput v0, p0, Lcom/forthblue/pool/ui/MenuScene;->laststate:I

    .line 774
    iput p1, p0, Lcom/forthblue/pool/ui/MenuScene;->enteringstate:I

    .line 775
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/ui/MenuScene;->state:I

    .line 777
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-boolean v0, v0, Lcom/forthblue/pool/Main;->guideShowed:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/forthblue/pool/ui/MenuScene;->enteringstate:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/forthblue/pool/ui/MenuScene;->enteringstate:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->guide_arrow:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 779
    iget v0, p0, Lcom/forthblue/pool/ui/MenuScene;->enteringstate:I

    if-nez v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->guide_arrow:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const/high16 v1, -0x3cef0000

    const/high16 v2, -0x3dfc0000

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 788
    :goto_0
    return-void

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->guide_arrow:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const/high16 v1, -0x3d240000

    const/high16 v2, -0x3d1a0000

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    goto :goto_0

    .line 786
    :cond_2
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->guide_arrow:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    goto :goto_0
.end method

.method public finishEntering()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 730
    iget v0, p0, Lcom/forthblue/pool/ui/MenuScene;->enteringstate:I

    iput v0, p0, Lcom/forthblue/pool/ui/MenuScene;->state:I

    .line 731
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/ui/MenuScene;->enteringstate:I

    .line 732
    iget v0, p0, Lcom/forthblue/pool/ui/MenuScene;->state:I

    packed-switch v0, :pswitch_data_0

    .line 770
    :goto_0
    return-void

    .line 734
    :pswitch_0
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->mainmenu:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 735
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->setting:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 736
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->vsai_mode:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 737
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->single_mode:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 738
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->highscore:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 739
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->tableChoose:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 740
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->stick_choose:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 741
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v0, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 742
    invoke-static {}, Lcom/forthblue/pool/DoodleHelper;->showFeatureIcon()V

    goto :goto_0

    .line 745
    :pswitch_1
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->setting:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 746
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    goto :goto_0

    .line 749
    :pswitch_2
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->single_mode:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 750
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    goto :goto_0

    .line 753
    :pswitch_3
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->vsai_mode:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 754
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    goto :goto_0

    .line 757
    :pswitch_4
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 758
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->highscore:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    goto :goto_0

    .line 761
    :pswitch_5
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 762
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->tableChoose:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    goto :goto_0

    .line 766
    :pswitch_6
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 767
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->stick_choose:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    goto :goto_0

    .line 732
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public finishLeaving()V
    .locals 1

    .prologue
    .line 726
    const/4 v0, -0x1

    iput v0, p0, Lcom/forthblue/pool/ui/MenuScene;->leavingstate:I

    .line 727
    return-void
.end method

.method public getBestScore()I
    .locals 4

    .prologue
    .line 1037
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 1038
    .local v1, "max":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_1

    .line 1039
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_0

    .line 1040
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    aget v1, v2, v0

    .line 1038
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1043
    :cond_1
    return v1
.end method

.method public onButtonClick(I)V
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 791
    sparse-switch p1, :sswitch_data_0

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 793
    :sswitch_0
    invoke-static {}, Lcom/forthblue/pool/DoodleHelper;->ratingGame()V

    goto :goto_0

    .line 796
    :sswitch_1
    invoke-virtual {p0, v3}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    goto :goto_0

    .line 799
    :sswitch_2
    iput-boolean v4, p0, Lcom/forthblue/pool/ui/MenuScene;->bIsEasterEggs:Z

    .line 800
    invoke-virtual {p0, v6}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    goto :goto_0

    .line 803
    :sswitch_3
    invoke-virtual {p0, v7}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    goto :goto_0

    .line 806
    :sswitch_4
    iget v2, p0, Lcom/forthblue/pool/ui/MenuScene;->state:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/forthblue/pool/ui/MenuScene;->state:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/forthblue/pool/ui/MenuScene;->state:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 807
    :cond_1
    invoke-virtual {p0, v7}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    goto :goto_0

    .line 808
    :cond_2
    iget v2, p0, Lcom/forthblue/pool/ui/MenuScene;->state:I

    if-eqz v2, :cond_0

    .line 809
    invoke-virtual {p0, v4}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    goto :goto_0

    .line 813
    :sswitch_5
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    new-instance v3, Lcom/forthblue/pool/ui/MenuScene$3;

    invoke-direct {v3, p0}, Lcom/forthblue/pool/ui/MenuScene$3;-><init>(Lcom/forthblue/pool/ui/MenuScene;)V

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/Main;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 826
    :sswitch_6
    invoke-static {}, Lcom/forthblue/pool/DoodleHelper;->hideFeatureIcon()V

    .line 827
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    invoke-virtual {v2}, Lcom/forthblue/pool/Main;->backToLevelLayer()V

    goto :goto_0

    .line 830
    :sswitch_7
    invoke-virtual {p0}, Lcom/forthblue/pool/ui/MenuScene;->getBestScore()I

    move-result v2

    invoke-static {v2}, Lcom/forthblue/pool/DoodleHelper;->submitScoreAndOpenLeaderBoards(I)V

    goto :goto_0

    .line 833
    :sswitch_8
    iput v4, p0, Lcom/forthblue/pool/ui/MenuScene;->rule:I

    .line 834
    invoke-virtual {p0, v4}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    .line 835
    sput-boolean v3, Lcom/forthblue/pool/rules/RuleImplBase;->isPractice:Z

    .line 836
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-object v2, v2, Lcom/forthblue/pool/Main;->rule8:Lcom/forthblue/pool/rules/Time8Ball1P;

    iget v3, p0, Lcom/forthblue/pool/ui/MenuScene;->difficulty:I

    iput v3, v2, Lcom/forthblue/pool/rules/Time8Ball1P;->difficulty:I

    .line 837
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-object v3, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-object v3, v3, Lcom/forthblue/pool/Main;->rule8:Lcom/forthblue/pool/rules/Time8Ball1P;

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/Main;->startGame(Lcom/forthblue/pool/rules/PoolRule;)V

    goto :goto_0

    .line 841
    :sswitch_9
    iput v4, p0, Lcom/forthblue/pool/ui/MenuScene;->rule:I

    .line 842
    invoke-virtual {p0, v4}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    .line 843
    sput-boolean v4, Lcom/forthblue/pool/rules/RuleImplBase;->isPractice:Z

    .line 844
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-object v2, v2, Lcom/forthblue/pool/Main;->rule8:Lcom/forthblue/pool/rules/Time8Ball1P;

    iget v3, p0, Lcom/forthblue/pool/ui/MenuScene;->difficulty:I

    iput v3, v2, Lcom/forthblue/pool/rules/Time8Ball1P;->difficulty:I

    .line 845
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-object v3, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-object v3, v3, Lcom/forthblue/pool/Main;->rule8:Lcom/forthblue/pool/rules/Time8Ball1P;

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/Main;->startGame(Lcom/forthblue/pool/rules/PoolRule;)V

    goto :goto_0

    .line 849
    :sswitch_a
    iput v3, p0, Lcom/forthblue/pool/ui/MenuScene;->rule:I

    .line 850
    invoke-virtual {p0, v4}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    .line 851
    sput-boolean v3, Lcom/forthblue/pool/rules/RuleImplBase;->isPractice:Z

    .line 852
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-object v2, v2, Lcom/forthblue/pool/Main;->rule9:Lcom/forthblue/pool/rules/Time9Ball1P;

    iget v3, p0, Lcom/forthblue/pool/ui/MenuScene;->difficulty:I

    iput v3, v2, Lcom/forthblue/pool/rules/Time9Ball1P;->difficulty:I

    .line 853
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-object v3, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-object v3, v3, Lcom/forthblue/pool/Main;->rule9:Lcom/forthblue/pool/rules/Time9Ball1P;

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/Main;->startGame(Lcom/forthblue/pool/rules/PoolRule;)V

    goto/16 :goto_0

    .line 857
    :sswitch_b
    iput v3, p0, Lcom/forthblue/pool/ui/MenuScene;->rule:I

    .line 858
    invoke-virtual {p0, v4}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    .line 859
    sput-boolean v4, Lcom/forthblue/pool/rules/RuleImplBase;->isPractice:Z

    .line 860
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-object v2, v2, Lcom/forthblue/pool/Main;->rule9:Lcom/forthblue/pool/rules/Time9Ball1P;

    iget v3, p0, Lcom/forthblue/pool/ui/MenuScene;->difficulty:I

    iput v3, v2, Lcom/forthblue/pool/rules/Time9Ball1P;->difficulty:I

    .line 861
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-object v3, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-object v3, v3, Lcom/forthblue/pool/Main;->rule9:Lcom/forthblue/pool/rules/Time9Ball1P;

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/Main;->startGame(Lcom/forthblue/pool/rules/PoolRule;)V

    goto/16 :goto_0

    .line 865
    :sswitch_c
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-boolean v2, v2, Lcom/forthblue/pool/Main;->guideShowed:Z

    if-eqz v2, :cond_4

    .line 866
    iput v5, p0, Lcom/forthblue/pool/ui/MenuScene;->rule:I

    .line 867
    sput-boolean v3, Lcom/forthblue/pool/rules/RuleImplBase;->isPractice:Z

    .line 868
    invoke-virtual {p0, v4}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    .line 869
    new-instance v1, Lcom/forthblue/pool/rules/Vsai8Ball;

    invoke-direct {v1}, Lcom/forthblue/pool/rules/Vsai8Ball;-><init>()V

    .line 870
    .local v1, "rule":Lcom/forthblue/pool/rules/Vsai8Ball;
    iget v2, p0, Lcom/forthblue/pool/ui/MenuScene;->difficulty:I

    iput v2, v1, Lcom/forthblue/pool/rules/Vsai8Ball;->difficulty:I

    .line 871
    iget-boolean v2, p0, Lcom/forthblue/pool/ui/MenuScene;->bIsEasterEggs:Z

    if-eqz v2, :cond_3

    move v2, v4

    :goto_1
    sput v2, Lcom/forthblue/pool/rules/VsaiRuleBase;->not_ai_player_count:I

    .line 872
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    invoke-virtual {v2, v1}, Lcom/forthblue/pool/Main;->startGame(Lcom/forthblue/pool/rules/PoolRule;)V

    goto/16 :goto_0

    :cond_3
    move v2, v3

    .line 871
    goto :goto_1

    .line 874
    .end local v1    # "rule":Lcom/forthblue/pool/rules/Vsai8Ball;
    :cond_4
    iput v5, p0, Lcom/forthblue/pool/ui/MenuScene;->rule:I

    .line 875
    invoke-virtual {p0, v4}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    .line 876
    sput-boolean v3, Lcom/forthblue/pool/rules/RuleImplBase;->isPractice:Z

    .line 877
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-object v3, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-object v3, v3, Lcom/forthblue/pool/Main;->tutorial_rule:Lcom/forthblue/pool/rules/TutorialRule;

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/Main;->startGame(Lcom/forthblue/pool/rules/PoolRule;)V

    goto/16 :goto_0

    .line 882
    :sswitch_d
    iput v5, p0, Lcom/forthblue/pool/ui/MenuScene;->rule:I

    .line 883
    sput-boolean v3, Lcom/forthblue/pool/rules/RuleImplBase;->isPractice:Z

    .line 884
    invoke-virtual {p0, v4}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    .line 886
    new-instance v1, Lcom/forthblue/pool/rules/Vsai9Ball;

    invoke-direct {v1}, Lcom/forthblue/pool/rules/Vsai9Ball;-><init>()V

    .line 887
    .local v1, "rule":Lcom/forthblue/pool/rules/Vsai9Ball;
    iget v2, p0, Lcom/forthblue/pool/ui/MenuScene;->difficulty:I

    iput v2, v1, Lcom/forthblue/pool/rules/Vsai9Ball;->difficulty:I

    .line 888
    iget-boolean v2, p0, Lcom/forthblue/pool/ui/MenuScene;->bIsEasterEggs:Z

    if-eqz v2, :cond_5

    move v2, v4

    :goto_2
    sput v2, Lcom/forthblue/pool/rules/VsaiRuleBase;->not_ai_player_count:I

    .line 889
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    invoke-virtual {v2, v1}, Lcom/forthblue/pool/Main;->startGame(Lcom/forthblue/pool/rules/PoolRule;)V

    goto/16 :goto_0

    :cond_5
    move v2, v3

    .line 888
    goto :goto_2

    .line 893
    .end local v1    # "rule":Lcom/forthblue/pool/rules/Vsai9Ball;
    :sswitch_e
    iput v5, p0, Lcom/forthblue/pool/ui/MenuScene;->rule:I

    .line 894
    sput-boolean v3, Lcom/forthblue/pool/rules/RuleImplBase;->isPractice:Z

    .line 895
    invoke-virtual {p0, v4}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    .line 897
    new-instance v1, Lcom/forthblue/pool/rules/Vsai8Ball;

    invoke-direct {v1}, Lcom/forthblue/pool/rules/Vsai8Ball;-><init>()V

    .line 898
    .local v1, "rule":Lcom/forthblue/pool/rules/Vsai8Ball;
    iget v2, p0, Lcom/forthblue/pool/ui/MenuScene;->difficulty:I

    iput v2, v1, Lcom/forthblue/pool/rules/Vsai8Ball;->difficulty:I

    .line 899
    sput v6, Lcom/forthblue/pool/rules/VsaiRuleBase;->not_ai_player_count:I

    .line 900
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    invoke-virtual {v2, v1}, Lcom/forthblue/pool/Main;->startGame(Lcom/forthblue/pool/rules/PoolRule;)V

    goto/16 :goto_0

    .line 904
    .end local v1    # "rule":Lcom/forthblue/pool/rules/Vsai8Ball;
    :sswitch_f
    iput v5, p0, Lcom/forthblue/pool/ui/MenuScene;->rule:I

    .line 905
    sput-boolean v3, Lcom/forthblue/pool/rules/RuleImplBase;->isPractice:Z

    .line 906
    invoke-virtual {p0, v4}, Lcom/forthblue/pool/ui/MenuScene;->changeState(I)V

    .line 908
    new-instance v1, Lcom/forthblue/pool/rules/Vsai9Ball;

    invoke-direct {v1}, Lcom/forthblue/pool/rules/Vsai9Ball;-><init>()V

    .line 909
    .local v1, "rule":Lcom/forthblue/pool/rules/Vsai9Ball;
    iget v2, p0, Lcom/forthblue/pool/ui/MenuScene;->difficulty:I

    iput v2, v1, Lcom/forthblue/pool/rules/Vsai9Ball;->difficulty:I

    .line 910
    sput v6, Lcom/forthblue/pool/rules/VsaiRuleBase;->not_ai_player_count:I

    .line 911
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    invoke-virtual {v2, v1}, Lcom/forthblue/pool/Main;->startGame(Lcom/forthblue/pool/rules/PoolRule;)V

    goto/16 :goto_0

    .line 915
    .end local v1    # "rule":Lcom/forthblue/pool/rules/Vsai9Ball;
    :sswitch_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    const/4 v2, 0x6

    if-ge v0, v2, :cond_6

    .line 916
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->scores:[Lcom/forthblue/pool/sprite/IntegerSprite;

    aget-object v2, v2, v0

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/sprite/IntegerSprite;->setText(Ljava/lang/CharSequence;)V

    .line 915
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 918
    :cond_6
    const/4 v0, 0x6

    :goto_4
    const/16 v2, 0xc

    if-ge v0, v2, :cond_7

    .line 919
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->scores:[Lcom/forthblue/pool/sprite/IntegerSprite;

    aget-object v2, v2, v0

    const-string v3, "0/0"

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/sprite/IntegerSprite;->setText(Ljava/lang/CharSequence;)V

    .line 918
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 921
    :cond_7
    const/4 v0, 0x6

    :goto_5
    const/16 v2, 0x12

    if-ge v0, v2, :cond_8

    .line 922
    iget-object v2, p0, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    aput v4, v2, v0

    .line 921
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 924
    :cond_8
    invoke-direct {p0}, Lcom/forthblue/pool/ui/MenuScene;->_saveScore()V

    goto/16 :goto_0

    .line 927
    .end local v0    # "i":I
    :sswitch_11
    invoke-direct {p0, v4}, Lcom/forthblue/pool/ui/MenuScene;->_setTableChoose(I)V

    goto/16 :goto_0

    .line 930
    :sswitch_12
    invoke-direct {p0, v3}, Lcom/forthblue/pool/ui/MenuScene;->_setTableChoose(I)V

    goto/16 :goto_0

    .line 933
    :sswitch_13
    invoke-direct {p0, v6}, Lcom/forthblue/pool/ui/MenuScene;->_setTableChoose(I)V

    goto/16 :goto_0

    .line 936
    :sswitch_14
    invoke-direct {p0, v7}, Lcom/forthblue/pool/ui/MenuScene;->_setTableChoose(I)V

    goto/16 :goto_0

    .line 940
    :sswitch_15
    invoke-direct {p0, v4}, Lcom/forthblue/pool/ui/MenuScene;->_setStickChoose(I)V

    goto/16 :goto_0

    .line 943
    :sswitch_16
    invoke-direct {p0, v3}, Lcom/forthblue/pool/ui/MenuScene;->_setStickChoose(I)V

    goto/16 :goto_0

    .line 946
    :sswitch_17
    invoke-direct {p0, v6}, Lcom/forthblue/pool/ui/MenuScene;->_setStickChoose(I)V

    goto/16 :goto_0

    .line 949
    :sswitch_18
    invoke-direct {p0, v7}, Lcom/forthblue/pool/ui/MenuScene;->_setStickChoose(I)V

    goto/16 :goto_0

    .line 952
    :sswitch_19
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/forthblue/pool/ui/MenuScene;->_setStickChoose(I)V

    goto/16 :goto_0

    .line 791
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_0
        0xa -> :sswitch_4
        0xb -> :sswitch_10
        0xc -> :sswitch_7
        0x65 -> :sswitch_9
        0x66 -> :sswitch_b
        0x67 -> :sswitch_8
        0x68 -> :sswitch_a
        0x69 -> :sswitch_c
        0x6a -> :sswitch_d
        0x6b -> :sswitch_e
        0x6c -> :sswitch_f
        0x78 -> :sswitch_11
        0x79 -> :sswitch_12
        0x7a -> :sswitch_13
        0x7b -> :sswitch_14
        0x82 -> :sswitch_15
        0x83 -> :sswitch_16
        0x84 -> :sswitch_17
        0x85 -> :sswitch_18
        0x86 -> :sswitch_19
    .end sparse-switch
.end method

.method public onLose(II)V
    .locals 7
    .param p1, "rule"    # I
    .param p2, "difficulty"    # I

    .prologue
    .line 967
    mul-int/lit8 v1, p1, 0x3

    add-int v0, v1, p2

    .line 968
    .local v0, "p":I
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    add-int/lit8 v2, v0, 0xc

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 969
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->scores:[Lcom/forthblue/pool/sprite/IntegerSprite;

    add-int/lit8 v2, v0, 0x6

    aget-object v1, v1, v2

    const-string v2, "%d/%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    add-int/lit8 v6, v0, 0x6

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    add-int/lit8 v6, v0, 0xc

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/forthblue/pool/sprite/IntegerSprite;->setText(Ljava/lang/CharSequence;)V

    .line 970
    invoke-direct {p0}, Lcom/forthblue/pool/ui/MenuScene;->_saveScore()V

    .line 971
    return-void
.end method

.method public onTouchDown(I)V
    .locals 11
    .param p1, "index"    # I

    .prologue
    const/high16 v9, 0x41c00000

    const/high16 v10, 0x40000000

    .line 536
    invoke-static {p1}, Lcom/fruitsmobile/basket/MotionService;->getPoint(I)Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v4

    .line 538
    .local v4, "point":Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    iget v7, v4, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->x:F

    iget v8, p0, Lcom/forthblue/pool/ui/MenuScene;->width:F

    div-float/2addr v8, v10

    sub-float v5, v7, v8

    .line 539
    .local v5, "x":F
    iget v7, v4, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->y:F

    iget v8, p0, Lcom/forthblue/pool/ui/MenuScene;->height:F

    div-float/2addr v8, v10

    sub-float v6, v7, v8

    .line 541
    .local v6, "y":F
    const/4 v0, 0x0

    .line 542
    .local v0, "button":Lcom/forthblue/pool/sprite/StaticImageButton;
    iget v7, p0, Lcom/forthblue/pool/ui/MenuScene;->state:I

    packed-switch v7, :pswitch_data_0

    .line 632
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 633
    iget v7, p0, Lcom/forthblue/pool/ui/MenuScene;->width:F

    div-float/2addr v7, v10

    iget v8, p0, Lcom/forthblue/pool/ui/MenuScene;->height:F

    div-float/2addr v8, v10

    invoke-static {p1, v0, v7, v8}, Lcom/fruitsmobile/basket/MotionService;->startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;FF)V

    .line 635
    :cond_1
    :goto_1
    return-void

    .line 544
    :pswitch_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->buttons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    array-length v7, v7

    if-ge v3, v7, :cond_2

    .line 545
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->buttons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v7, v7, v3

    invoke-virtual {v7, v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 546
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->buttons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v0, v7, v3

    .line 553
    :cond_2
    const/high16 v7, 0x43650000

    add-float v1, v5, v7

    .line 554
    .local v1, "dx":F
    const/high16 v7, 0x43130000

    add-float v2, v6, v7

    .line 555
    .local v2, "dy":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v9

    if-gez v7, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v9

    if-gez v7, :cond_0

    .line 556
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->easterEggs:Lcom/fruitsmobile/basket/interfaces/Motionable;

    iget v8, p0, Lcom/forthblue/pool/ui/MenuScene;->width:F

    div-float/2addr v8, v10

    iget v9, p0, Lcom/forthblue/pool/ui/MenuScene;->height:F

    div-float/2addr v9, v10

    invoke-static {p1, v7, v8, v9}, Lcom/fruitsmobile/basket/MotionService;->startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;FF)V

    goto :goto_1

    .line 544
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 562
    .end local v3    # "i":I
    :pswitch_1
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v7, v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 563
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 564
    goto :goto_0

    .line 566
    :cond_4
    invoke-direct {p0, v5, v6}, Lcom/forthblue/pool/ui/MenuScene;->processSettingTouch(FF)V

    goto :goto_0

    .line 569
    :pswitch_2
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v7, v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 570
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 571
    goto :goto_0

    .line 573
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    array-length v7, v7

    if-ge v3, v7, :cond_0

    .line 574
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v7, v7, v3

    invoke-virtual {v7, v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 575
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->single_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v0, v7, v3

    .line 576
    goto :goto_0

    .line 573
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 581
    .end local v3    # "i":I
    :pswitch_3
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v7, v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 582
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 583
    goto/16 :goto_0

    .line 585
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    array-length v7, v7

    if-ge v3, v7, :cond_0

    .line 586
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v7, v7, v3

    invoke-virtual {v7, v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 587
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v0, v7, v3

    .line 588
    goto/16 :goto_0

    .line 585
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 593
    .end local v3    # "i":I
    :pswitch_4
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v7, v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 594
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 595
    goto/16 :goto_0

    .line 597
    :cond_9
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->resetall:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v7, v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 598
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->resetall:Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 599
    goto/16 :goto_0

    .line 601
    :cond_a
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->submit:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v7, v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 602
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->submit:Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 603
    goto/16 :goto_0

    .line 607
    :pswitch_5
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v7, v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 608
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 609
    goto/16 :goto_0

    .line 611
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5
    const/4 v7, 0x4

    if-ge v3, v7, :cond_0

    .line 612
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->tables:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v7, v7, v3

    invoke-virtual {v7, v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 613
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->tables:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v0, v7, v3

    .line 614
    goto/16 :goto_0

    .line 611
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 619
    .end local v3    # "i":I
    :pswitch_6
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v7, v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 620
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->back:Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 621
    goto/16 :goto_0

    .line 623
    :cond_d
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    const/16 v7, 0xa

    if-ge v3, v7, :cond_0

    .line 624
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->sticks:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v7, v7, v3

    invoke-virtual {v7, v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 625
    iget-object v7, p0, Lcom/forthblue/pool/ui/MenuScene;->sticks:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v0, v7, v3

    .line 626
    goto/16 :goto_0

    .line 623
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 542
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onWin(II)V
    .locals 7
    .param p1, "rule"    # I
    .param p2, "difficulty"    # I

    .prologue
    .line 960
    mul-int/lit8 v1, p1, 0x3

    add-int v0, v1, p2

    .line 961
    .local v0, "p":I
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    add-int/lit8 v2, v0, 0x6

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 962
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->scores:[Lcom/forthblue/pool/sprite/IntegerSprite;

    add-int/lit8 v2, v0, 0x6

    aget-object v1, v1, v2

    const-string v2, "%d/%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    add-int/lit8 v6, v0, 0x6

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    add-int/lit8 v6, v0, 0xc

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/forthblue/pool/sprite/IntegerSprite;->setText(Ljava/lang/CharSequence;)V

    .line 963
    invoke-direct {p0}, Lcom/forthblue/pool/ui/MenuScene;->_saveScore()V

    .line 964
    return-void
.end method

.method public resetPitchons()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 667
    invoke-static {}, Lcom/fruitsmobile/basket/audio/SoundManager;->isMusicOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->pitchons:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v0, v0, v2

    sget-object v1, Lcom/forthblue/pool/ui/MenuScene;->pitchonsPos:[F

    aget v1, v1, v2

    sget-object v2, Lcom/forthblue/pool/ui/MenuScene;->pitchonsPos:[F

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 672
    :goto_0
    invoke-static {}, Lcom/fruitsmobile/basket/audio/SoundManager;->isSoundOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->pitchons:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v0, v0, v3

    sget-object v1, Lcom/forthblue/pool/ui/MenuScene;->pitchonsPos:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    sget-object v2, Lcom/forthblue/pool/ui/MenuScene;->pitchonsPos:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 677
    :goto_1
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->pitchons:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v0, v0, v5

    sget-object v1, Lcom/forthblue/pool/ui/MenuScene;->pitchonsPos:[F

    iget v2, p0, Lcom/forthblue/pool/ui/MenuScene;->difficulty:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x8

    aget v1, v1, v2

    sget-object v2, Lcom/forthblue/pool/ui/MenuScene;->pitchonsPos:[F

    iget v3, p0, Lcom/forthblue/pool/ui/MenuScene;->difficulty:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x9

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 678
    iget-boolean v0, p0, Lcom/forthblue/pool/ui/MenuScene;->show_aim_out_line:Z

    if-eqz v0, :cond_2

    .line 679
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->pitchons:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v0, v0, v4

    sget-object v1, Lcom/forthblue/pool/ui/MenuScene;->pitchonsPos:[F

    const/16 v2, 0xe

    aget v1, v1, v2

    sget-object v2, Lcom/forthblue/pool/ui/MenuScene;->pitchonsPos:[F

    const/16 v3, 0xf

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 683
    :goto_2
    return-void

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->pitchons:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v0, v0, v2

    sget-object v1, Lcom/forthblue/pool/ui/MenuScene;->pitchonsPos:[F

    aget v1, v1, v5

    sget-object v2, Lcom/forthblue/pool/ui/MenuScene;->pitchonsPos:[F

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    goto :goto_0

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->pitchons:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v0, v0, v3

    sget-object v1, Lcom/forthblue/pool/ui/MenuScene;->pitchonsPos:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    sget-object v2, Lcom/forthblue/pool/ui/MenuScene;->pitchonsPos:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    goto :goto_1

    .line 681
    :cond_2
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->pitchons:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v0, v0, v4

    sget-object v1, Lcom/forthblue/pool/ui/MenuScene;->pitchonsPos:[F

    const/16 v2, 0x10

    aget v1, v1, v2

    sget-object v2, Lcom/forthblue/pool/ui/MenuScene;->pitchonsPos:[F

    const/16 v3, 0x11

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    goto :goto_2
.end method

.method public saveScore(I)Z
    .locals 4
    .param p1, "score"    # I

    .prologue
    const/4 v3, 0x0

    .line 975
    iget v1, p0, Lcom/forthblue/pool/ui/MenuScene;->rule:I

    if-gez v1, :cond_0

    move v1, v3

    .line 987
    :goto_0
    return v1

    .line 978
    :cond_0
    iget v1, p0, Lcom/forthblue/pool/ui/MenuScene;->rule:I

    mul-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/forthblue/pool/ui/MenuScene;->difficulty:I

    add-int v0, v1, v2

    .line 979
    .local v0, "p":I
    if-ltz v0, :cond_1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    .line 980
    :cond_1
    const/4 v0, 0x0

    .line 981
    :cond_2
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_3

    move v1, v3

    .line 982
    goto :goto_0

    .line 983
    :cond_3
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->highscoreValue:[I

    aput p1, v1, v0

    .line 984
    iget-object v1, p0, Lcom/forthblue/pool/ui/MenuScene;->scores:[Lcom/forthblue/pool/sprite/IntegerSprite;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/forthblue/pool/sprite/IntegerSprite;->setText(Ljava/lang/CharSequence;)V

    .line 986
    invoke-direct {p0}, Lcom/forthblue/pool/ui/MenuScene;->_saveScore()V

    .line 987
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSize(FF)V
    .locals 4
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v1, 0x5

    const/high16 v3, -0x3cea0000

    .line 427
    iput p1, p0, Lcom/forthblue/pool/ui/MenuScene;->width:F

    .line 428
    iput p2, p0, Lcom/forthblue/pool/ui/MenuScene;->height:F

    .line 429
    const/high16 v0, 0x44480000

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->buttons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v0, v0, v1

    const/high16 v1, -0x3cf20000

    const/high16 v2, -0x3d900000

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 431
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 436
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->buttons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v0, v0, v1

    const/high16 v1, -0x3c520000

    invoke-virtual {v0, v1, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 434
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const/high16 v1, 0x41200000

    invoke-virtual {v0, v1, v3}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    const v3, 0x3f19999a

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 109
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->main:Lcom/forthblue/pool/Main;

    iget-boolean v0, v0, Lcom/forthblue/pool/Main;->guideShowed:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0, v1}, Lcom/forthblue/pool/ui/MenuScene;->disableAllButtons(Z)V

    .line 111
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->guide_arrow:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 118
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-direct {p0, v2}, Lcom/forthblue/pool/ui/MenuScene;->disableAllButtons(Z)V

    .line 115
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->buttons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setTouchable(ZF)V

    .line 116
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->vsai_modes:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setTouchable(ZF)V

    goto :goto_0
.end method

.method public tick(J)V
    .locals 2
    .param p1, "timeSpan"    # J

    .prologue
    const/4 v1, -0x1

    .line 440
    iget v0, p0, Lcom/forthblue/pool/ui/MenuScene;->leavingstate:I

    if-eq v0, v1, :cond_2

    .line 441
    iget v0, p0, Lcom/forthblue/pool/ui/MenuScene;->leavingstate:I

    invoke-direct {p0, v0, p1, p2}, Lcom/forthblue/pool/ui/MenuScene;->leavingState(IJ)V

    .line 447
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->guide_arrow:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/forthblue/pool/ui/MenuScene;->guide_arrow:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, p1, p2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->tick(J)V

    .line 450
    :cond_1
    return-void

    .line 442
    :cond_2
    iget v0, p0, Lcom/forthblue/pool/ui/MenuScene;->enteringstate:I

    if-eq v0, v1, :cond_3

    .line 443
    iget v0, p0, Lcom/forthblue/pool/ui/MenuScene;->enteringstate:I

    invoke-direct {p0, v0, p1, p2}, Lcom/forthblue/pool/ui/MenuScene;->enteringState(IJ)V

    goto :goto_0

    .line 444
    :cond_3
    iget v0, p0, Lcom/forthblue/pool/ui/MenuScene;->state:I

    if-eq v0, v1, :cond_0

    .line 445
    iget v0, p0, Lcom/forthblue/pool/ui/MenuScene;->state:I

    invoke-direct {p0, v0, p1, p2}, Lcom/forthblue/pool/ui/MenuScene;->updateState(IJ)V

    goto :goto_0
.end method
