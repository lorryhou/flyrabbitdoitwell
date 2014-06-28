.class public Lcom/forthblue/pool/ui/GameScene;
.super Lcom/fruitsmobile/basket/Layer;
.source "GameScene.java"

# interfaces
.implements Lcom/forthblue/pool/rules/LevelRule$EventListener;
.implements Lcom/forthblue/pool/sprite/StaticImageButton$Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    }
.end annotation


# static fields
.field public static final BUTTON_ID_BACKTOMENU:I = 0x3

.field public static final BUTTON_ID_BACKTOMENU1:I = 0x5

.field public static final BUTTON_ID_CONTINUE:I = 0x2

.field public static final BUTTON_ID_END_CONTINUE:I = 0x8

.field public static final BUTTON_ID_GUIDE:I = 0x6

.field public static final BUTTON_ID_NO:I = 0xc

.field public static final BUTTON_ID_PAUSE:I = 0x1

.field public static final BUTTON_ID_REPLAY:I = 0x4

.field public static final BUTTON_ID_SUBMITSCORE:I = 0x7

.field public static final BUTTON_ID_YES:I = 0xb

.field public static final BUTTON_SALE_0:I = 0x64

.field public static final BUTTON_SALE_1:I = 0x65

.field public static final BUTTON_SALE_2:I = 0x66

.field public static final BUTTON_SALE_3:I = 0x67

.field public static final BUTTON_SALE_4:I = 0x68

.field public static final BUTTON_SALE_5:I = 0x69

.field public static final MAX_REWARD_CONTAINER_CAPACITY:I = 0x1e

.field public static final MODE_LEVEL:I = 0x2

.field public static final MODE_TIME:I = 0x0

.field public static final MODE_TUTORIAL:I = 0x3

.field public static final MODE_VS:I = 0x1

.field public static final REWARD_FAST:I = 0x1

.field public static final REWARD_SLOW:I = 0x0

.field public static final TEXTURE_BALL:I = 0x6

.field public static final TEXTURE_COMBO:I = 0x5

.field public static final TEXTURE_CUE:I = 0x1

.field public static final TEXTURE_EXCELLETN:I = 0x4

.field public static final TEXTURE_FOUL:I = 0x0

.field public static final TEXTURE_GREAT:I = 0x3

.field public static final TEXTURE_NICE:I = 0x2


# instance fields
.field public adjustHandler:Lcom/fruitsmobile/basket/interfaces/Motionable;

.field public aimAngle:F

.field aimBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field aimLine:Lcom/forthblue/pool/sprite/AimLine;

.field aimPosition:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field public aimPx:F

.field public aimPy:F

.field public aimStrength:F

.field public aimTargetX:F

.field public aimTargetY:F

.field private aim_angle_accel:F

.field private aim_stable_for_time:Z

.field private bg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field public bigPBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field public bigPPosition:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field private button_sale:[Lcom/forthblue/pool/sprite/SaleButton;

.field continue_a:Lcom/fruitsmobile/basket/resources/TextureRegion;

.field continue_b:Lcom/fruitsmobile/basket/resources/TextureRegion;

.field public currentBallMotionId:I

.field public dAngle:F

.field dalpha:F

.field private disableLight:Lcom/fruitsmobile/basket/DrawableObject;

.field public dv:F

.field private effect_x_offset:[F

.field private effect_y_offset:[F

.field private enableLight:Lcom/fruitsmobile/basket/DrawableObject;

.field flashleft:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field flashright:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field freeBallMotionHandler:Lcom/fruitsmobile/basket/interfaces/Motionable;

.field private free_count:Lcom/forthblue/pool/sprite/BitmapFontSprite;

.field public freeball:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field public freeball_na:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field public freeballconfirming:Z

.field public freeballtarget:Lcom/forthblue/pool/engine/PoolBall;

.field public gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

.field public gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

.field gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

.field game_over_score:Lcom/forthblue/pool/sprite/IntegerSprite;

.field public guide:Lcom/forthblue/pool/sprite/StaticImageButton;

.field public guideback:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field private hole_effect:[Lcom/forthblue/pool/sprite/HoleEffectSprite;

.field private hole_effect_pos_setted:Z

.field private hole_effect_texture:[Lcom/fruitsmobile/basket/resources/Texture;

.field public honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field public honorsTexture:[Lcom/fruitsmobile/basket/resources/Texture;

.field honortime:J

.field honortype:I

.field lastAlpha:F

.field lastButtonId:I

.field private lastX:I

.field public last_rule:Lcom/forthblue/pool/rules/PoolRule;

.field level_board:Lcom/fruitsmobile/basket/SimpleContainer;

.field level_complete_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field level_cue_count:Lcom/forthblue/pool/sprite/IntegerSprite;

.field level_failed_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field level_score:Lcom/forthblue/pool/sprite/IntegerSprite;

.field level_score_bg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field main:Lcom/forthblue/pool/Main;

.field private mode:I

.field public newbest:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field outLine:Lcom/forthblue/pool/sprite/AimLine;

.field public pBallHandler:Lcom/fruitsmobile/basket/interfaces/Motionable;

.field private panel_shop:Lcom/fruitsmobile/basket/SimpleContainer;

.field particle:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

.field pauseButton:Lcom/forthblue/pool/sprite/StaticImageButton;

.field public pauseMenu:Lcom/fruitsmobile/basket/SimpleContainer;

.field pauseMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

.field private paused:Z

.field private pending_reward_array:[I

.field private pending_reward_count:I

.field private pending_time:J

.field player_1_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field player_2_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field player_icon_left:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field player_icon_right:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field public playericons:[Lcom/fruitsmobile/basket/resources/Texture;

.field potballleft:Lcom/fruitsmobile/basket/SimpleContainer;

.field potballright:Lcom/fruitsmobile/basket/SimpleContainer;

.field pouler:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field poulerbg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field private random:Ljava/util/Random;

.field region_a:Lcom/fruitsmobile/basket/resources/TextureRegion;

.field region_b:Lcom/fruitsmobile/basket/resources/TextureRegion;

.field region_c:Lcom/fruitsmobile/basket/resources/TextureRegion;

.field private reward_container:Lcom/fruitsmobile/basket/SimpleContainer;

.field reward_font:Lcom/forthblue/pool/sprite/TileTextureFont;

.field public reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

.field public rule:Lcom/forthblue/pool/rules/PoolRule;

.field score:Lcom/forthblue/pool/sprite/IntegerSprite;

.field score_board:Lcom/fruitsmobile/basket/SimpleContainer;

.field score_font:Lcom/forthblue/pool/sprite/TileTextureFont;

.field shakeStrength:F

.field shakeTime:F

.field public show_aim_out_line:Z

.field private sprite_hand:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field private star_count:I

.field star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field private star_got_x:[F

.field private star_got_y:[F

.field stick:Lcom/forthblue/pool/sprite/PoolStick;

.field stickShadow:Lcom/forthblue/pool/sprite/PoolStick;

.field strengthbar:Lcom/forthblue/pool/sprite/StrengthBar;

.field public table:Lcom/forthblue/pool/engine/PoolTable;

.field timeMinute:Lcom/forthblue/pool/sprite/IntegerSprite;

.field timeSecond:Lcom/forthblue/pool/sprite/IntegerSprite;

.field time_up_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field private touch_screened:Z

.field upper_words:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field vs_board:Lcom/fruitsmobile/basket/SimpleContainer;

.field you_lose_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

.field you_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;


# direct methods
.method public constructor <init>(Lcom/forthblue/pool/Main;)V
    .locals 34
    .param p1, "main"    # Lcom/forthblue/pool/Main;

    .prologue
    .line 283
    const/16 v5, 0x1e

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/Layer;-><init>(I)V

    .line 92
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->mode:I

    .line 117
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/ui/GameScene;->paused:Z

    .line 137
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 139
    const/4 v5, 0x7

    new-array v5, v5, [Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->pouler:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 146
    const/4 v5, 0x6

    new-array v5, v5, [Lcom/forthblue/pool/sprite/SaleButton;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->button_sale:[Lcom/forthblue/pool/sprite/SaleButton;

    .line 149
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/ui/GameScene;->show_aim_out_line:Z

    .line 251
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->lastX:I

    .line 796
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->star_count:I

    .line 814
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->shakeTime:F

    const/high16 v5, 0x40a00000

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->shakeStrength:F

    .line 815
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->lastAlpha:F

    const/high16 v5, 0x3f800000

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->dalpha:F

    .line 817
    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->star_got_x:[F

    .line 818
    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->star_got_y:[F

    .line 819
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/forthblue/pool/ui/GameScene;->pending_time:J

    .line 1476
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/ui/GameScene;->touch_screened:Z

    .line 1543
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/ui/GameScene;->aim_stable_for_time:Z

    .line 1544
    const v5, -0x41b33333

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aim_angle_accel:F

    .line 1548
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimPx:F

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    .line 1549
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    .line 1551
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimTargetX:F

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimTargetY:F

    .line 1617
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->currentBallMotionId:I

    .line 1618
    new-instance v5, Lcom/forthblue/pool/ui/GameScene$5;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/forthblue/pool/ui/GameScene$5;-><init>(Lcom/forthblue/pool/ui/GameScene;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->pBallHandler:Lcom/fruitsmobile/basket/interfaces/Motionable;

    .line 1660
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->dAngle:F

    .line 1662
    new-instance v5, Lcom/forthblue/pool/ui/GameScene$6;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/forthblue/pool/ui/GameScene$6;-><init>(Lcom/forthblue/pool/ui/GameScene;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->adjustHandler:Lcom/fruitsmobile/basket/interfaces/Motionable;

    .line 1687
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/ui/GameScene;->freeballconfirming:Z

    .line 1690
    new-instance v5, Lcom/forthblue/pool/ui/GameScene$7;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/forthblue/pool/ui/GameScene$7;-><init>(Lcom/forthblue/pool/ui/GameScene;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->freeBallMotionHandler:Lcom/fruitsmobile/basket/interfaces/Motionable;

    .line 1957
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->lastButtonId:I

    .line 2000
    new-instance v5, Lcom/forthblue/pool/ui/GameScene$10;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/forthblue/pool/ui/GameScene$10;-><init>(Lcom/forthblue/pool/ui/GameScene;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->enableLight:Lcom/fruitsmobile/basket/DrawableObject;

    .line 2046
    new-instance v5, Lcom/forthblue/pool/ui/GameScene$11;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/forthblue/pool/ui/GameScene$11;-><init>(Lcom/forthblue/pool/ui/GameScene;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->disableLight:Lcom/fruitsmobile/basket/DrawableObject;

    .line 2074
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    .line 2134
    const/4 v5, 0x6

    new-array v5, v5, [Lcom/forthblue/pool/sprite/HoleEffectSprite;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->hole_effect:[Lcom/forthblue/pool/sprite/HoleEffectSprite;

    .line 2135
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/fruitsmobile/basket/resources/Texture;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->hole_effect_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    .line 2136
    const/4 v5, 0x6

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->effect_x_offset:[F

    .line 2137
    const/4 v5, 0x6

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->effect_y_offset:[F

    .line 2138
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/ui/GameScene;->hole_effect_pos_setted:Z

    .line 2185
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->pending_reward_count:I

    .line 2186
    const/16 v5, 0xa

    new-array v5, v5, [I

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->pending_reward_array:[I

    .line 284
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/forthblue/pool/ui/GameScene;->_getTableChoosed()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->lastX:I

    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->lastX:I

    move v5, v0

    if-ltz v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->lastX:I

    move v5, v0

    const/4 v6, 0x3

    if-le v5, v6, :cond_1

    .line 288
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->lastX:I

    .line 289
    :cond_1
    const/4 v5, 0x0

    const-string v6, "drawable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bg_table_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->lastX:I

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/forthblue/pool/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v26

    .line 290
    .local v26, "resid":I
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-static/range {v26 .. v26}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->bg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->bg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 294
    const/4 v5, 0x7

    new-array v5, v5, [Lcom/fruitsmobile/basket/resources/Texture;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v5, v0

    const/4 v6, 0x0

    const v7, 0x7f020081

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    aput-object v7, v5, v6

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v5, v0

    const/4 v6, 0x1

    const v7, 0x7f02007f

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    aput-object v7, v5, v6

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v5, v0

    const/4 v6, 0x2

    const v7, 0x7f020083

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    aput-object v7, v5, v6

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v5, v0

    const/4 v6, 0x3

    const v7, 0x7f020082

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    aput-object v7, v5, v6

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v5, v0

    const/4 v6, 0x4

    const v7, 0x7f020080

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    aput-object v7, v5, v6

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v5, v0

    const/4 v6, 0x5

    const v7, 0x7f02007e

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    aput-object v7, v5, v6

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v5, v0

    const/4 v6, 0x6

    const v7, 0x7f02007d

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    aput-object v7, v5, v6

    .line 302
    new-instance v5, Lcom/forthblue/pool/sprite/TileTextureFont;

    const v6, 0x7f020064

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    const/16 v7, 0x18

    const/16 v8, 0x28

    const/16 v9, 0x28

    const/16 v10, 0x1e

    const/4 v11, 0x1

    const/16 v12, 0xc

    const-string v13, "1234567890+-"

    invoke-direct/range {v5 .. v13}, Lcom/forthblue/pool/sprite/TileTextureFont;-><init>(Lcom/fruitsmobile/basket/resources/Texture;IIIIIILjava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->reward_font:Lcom/forthblue/pool/sprite/TileTextureFont;

    .line 305
    new-instance v5, Lcom/forthblue/pool/sprite/TileTextureFont;

    const v6, 0x7f020063

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    const/16 v7, 0x10

    const/16 v8, 0x22

    const/16 v9, 0x22

    const/16 v10, 0x12

    const/4 v11, 0x1

    const/16 v12, 0xb

    const-string v13, "0123456789-"

    invoke-direct/range {v5 .. v13}, Lcom/forthblue/pool/sprite/TileTextureFont;-><init>(Lcom/fruitsmobile/basket/resources/Texture;IIIIIILjava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->score_font:Lcom/forthblue/pool/sprite/TileTextureFont;

    .line 308
    new-instance v5, Lcom/fruitsmobile/basket/SimpleContainer;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->score_board:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 312
    new-instance v27, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v5, 0x7f02001d

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v5

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 313
    .local v27, "scorebg":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const/high16 v5, 0x43380000

    const/high16 v6, -0x3cb00000

    move-object/from16 v0, v27

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 316
    new-instance v31, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v5, 0x7f02001e

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 317
    .local v31, "timebg":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const/high16 v5, -0x3ca20000

    const/high16 v6, -0x3cb40000

    move-object/from16 v0, v31

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 320
    new-instance v5, Lcom/forthblue/pool/sprite/IntegerSprite;

    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score_font:Lcom/forthblue/pool/sprite/TileTextureFont;

    move-object v7, v0

    const/4 v8, 0x2

    invoke-direct {v5, v6, v7, v8}, Lcom/forthblue/pool/sprite/IntegerSprite;-><init>(Ljava/lang/CharSequence;Lcom/forthblue/pool/sprite/TileTextureFont;I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->timeMinute:Lcom/forthblue/pool/sprite/IntegerSprite;

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->timeMinute:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/high16 v6, -0x3cc20000

    iput v6, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->x:F

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->timeMinute:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/high16 v6, -0x3ca00000

    iput v6, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->y:F

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->timeMinute:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->timeMinute:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    const v7, 0x3f666666

    iput v7, v6, Lcom/forthblue/pool/sprite/IntegerSprite;->scaley:F

    iput v7, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->scalex:F

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->timeMinute:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 326
    new-instance v5, Lcom/forthblue/pool/sprite/IntegerSprite;

    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score_font:Lcom/forthblue/pool/sprite/TileTextureFont;

    move-object v7, v0

    const/4 v8, 0x2

    invoke-direct {v5, v6, v7, v8}, Lcom/forthblue/pool/sprite/IntegerSprite;-><init>(Ljava/lang/CharSequence;Lcom/forthblue/pool/sprite/TileTextureFont;I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->timeSecond:Lcom/forthblue/pool/sprite/IntegerSprite;

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->timeSecond:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/high16 v6, -0x3cf60000

    iput v6, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->x:F

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->timeSecond:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/high16 v6, -0x3ca00000

    iput v6, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->y:F

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->timeSecond:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->timeSecond:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    const v7, 0x3f666666

    iput v7, v6, Lcom/forthblue/pool/sprite/IntegerSprite;->scaley:F

    iput v7, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->scalex:F

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->timeSecond:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 332
    new-instance v5, Lcom/forthblue/pool/sprite/IntegerSprite;

    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score_font:Lcom/forthblue/pool/sprite/TileTextureFont;

    move-object v7, v0

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/forthblue/pool/sprite/IntegerSprite;-><init>(Ljava/lang/CharSequence;Lcom/forthblue/pool/sprite/TileTextureFont;I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/forthblue/pool/sprite/IntegerSprite;->setFillZero(Z)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->anchor:I

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/high16 v6, 0x432e0000

    iput v6, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->x:F

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/high16 v6, -0x3ca00000

    iput v6, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->y:F

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    const v7, 0x3f666666

    iput v7, v6, Lcom/forthblue/pool/sprite/IntegerSprite;->scaley:F

    iput v7, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->scalex:F

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 341
    new-instance v5, Lcom/fruitsmobile/basket/SimpleContainer;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->level_board:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 344
    new-instance v27, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .end local v27    # "scorebg":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const v5, 0x7f02001d

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v5

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 345
    .restart local v27    # "scorebg":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const/high16 v5, 0x43380000

    const/high16 v6, -0x3cb00000

    move-object/from16 v0, v27

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 348
    new-instance v15, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v5, 0x7f02001a

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v5

    invoke-direct {v15, v5}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 349
    .local v15, "cur_bg":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const/high16 v5, -0x3ca20000

    const/high16 v6, -0x3cb40000

    invoke-virtual {v15, v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    invoke-virtual {v5, v15}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 352
    new-instance v5, Lcom/forthblue/pool/ui/GameScene$3;

    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score_font:Lcom/forthblue/pool/sprite/TileTextureFont;

    move-object v7, v0

    const/4 v8, 0x3

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/forthblue/pool/ui/GameScene$3;-><init>(Lcom/forthblue/pool/ui/GameScene;Ljava/lang/CharSequence;Lcom/forthblue/pool/sprite/TileTextureFont;I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->level_cue_count:Lcom/forthblue/pool/sprite/IntegerSprite;

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_cue_count:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/forthblue/pool/sprite/IntegerSprite;->setFillZero(Z)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_cue_count:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/4 v6, 0x5

    iput v6, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->anchor:I

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_cue_count:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/high16 v6, -0x3ce60000

    iput v6, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->x:F

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_cue_count:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/high16 v6, -0x3cb30000

    iput v6, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->y:F

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_cue_count:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const v6, 0x3fa66666

    iput v6, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->alpha:F

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_cue_count:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 392
    new-instance v5, Lcom/forthblue/pool/sprite/IntegerSprite;

    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score_font:Lcom/forthblue/pool/sprite/TileTextureFont;

    move-object v7, v0

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/forthblue/pool/sprite/IntegerSprite;-><init>(Ljava/lang/CharSequence;Lcom/forthblue/pool/sprite/TileTextureFont;I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->level_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/forthblue/pool/sprite/IntegerSprite;->setFillZero(Z)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->anchor:I

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/high16 v6, 0x432e0000

    iput v6, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->x:F

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/high16 v6, -0x3c9e0000

    iput v6, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->y:F

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 401
    new-instance v5, Lcom/fruitsmobile/basket/SimpleContainer;

    const/16 v6, 0xc

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->vs_board:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->vs_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 403
    new-instance v23, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v5, 0x7f02001c

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v5

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 404
    .local v23, "player_right":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const/high16 v5, 0x43290000

    const/high16 v6, -0x3cb00000

    move-object/from16 v0, v23

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->vs_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 407
    new-instance v22, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v5, 0x7f02001b

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 408
    .local v22, "player_left":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const/high16 v5, -0x3ca20000

    const/high16 v6, -0x3cb00000

    move-object/from16 v0, v22

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->vs_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 411
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/fruitsmobile/basket/resources/Texture;

    const/4 v6, 0x0

    const v7, 0x7f020070

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f020071

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const v7, 0x7f020072

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->playericons:[Lcom/fruitsmobile/basket/resources/Texture;

    .line 413
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->playericons:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->player_icon_left:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->player_icon_left:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const v6, -0x3c598000

    const/high16 v7, -0x3cb10000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 415
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->playericons:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->player_icon_right:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->player_icon_right:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/high16 v6, 0x438c0000

    const/high16 v7, -0x3cb10000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 418
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v6, 0x7f02001f

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->flashleft:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->flashleft:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const v6, -0x3ca18000

    const/high16 v7, -0x3cb00000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 420
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v6, 0x7f020020

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->flashright:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->flashright:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const v6, 0x432a8000

    const/high16 v7, -0x3cb00000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->vs_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->player_icon_left:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->vs_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->player_icon_right:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->vs_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->flashleft:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->vs_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->flashright:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->vs_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->enableLight:Lcom/fruitsmobile/basket/DrawableObject;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 429
    new-instance v5, Lcom/fruitsmobile/basket/SimpleContainer;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->potballleft:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->potballleft:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    const/high16 v6, -0x3c6a0000

    iput v6, v5, Lcom/fruitsmobile/basket/SimpleContainer;->centerx:F

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->potballleft:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    const/high16 v6, -0x3cb00000

    iput v6, v5, Lcom/fruitsmobile/basket/SimpleContainer;->centery:F

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->vs_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->potballleft:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 434
    new-instance v5, Lcom/fruitsmobile/basket/SimpleContainer;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->potballright:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->potballright:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    const/high16 v6, 0x43760000

    iput v6, v5, Lcom/fruitsmobile/basket/SimpleContainer;->centerx:F

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->potballright:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    const/high16 v6, -0x3cb00000

    iput v6, v5, Lcom/fruitsmobile/basket/SimpleContainer;->centery:F

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->vs_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->potballright:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->vs_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->disableLight:Lcom/fruitsmobile/basket/DrawableObject;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 443
    new-instance v5, Lcom/forthblue/pool/sprite/StaticImageButton;

    const v6, 0x7f02006f

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->pauseButton:Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseButton:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/high16 v6, -0x3e280000

    const/high16 v7, -0x3cac0000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseButton:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseButton:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/forthblue/pool/sprite/StaticImageButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseButton:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 451
    new-instance v5, Lcom/fruitsmobile/basket/SimpleContainer;

    const/16 v6, 0x28

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->hole_effect_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v5, v0

    const/4 v6, 0x0

    const v7, 0x7f020060

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    aput-object v7, v5, v6

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->hole_effect_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v5, v0

    const/4 v6, 0x1

    const v7, 0x7f020061

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    aput-object v7, v5, v6

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->hole_effect_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v5, v0

    const/4 v6, 0x2

    const v7, 0x7f02005f

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    aput-object v7, v5, v6

    .line 457
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    const/4 v5, 0x6

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_2

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->hole_effect:[Lcom/forthblue/pool/sprite/HoleEffectSprite;

    move-object v5, v0

    new-instance v6, Lcom/forthblue/pool/sprite/HoleEffectSprite;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->hole_effect_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Lcom/forthblue/pool/sprite/HoleEffectSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    aput-object v6, v5, v20

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->hole_effect:[Lcom/forthblue/pool/sprite/HoleEffectSprite;

    move-object v6, v0

    aget-object v6, v6, v20

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 457
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 463
    :cond_2
    new-instance v5, Lcom/forthblue/pool/engine/PoolTable;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/forthblue/pool/engine/PoolTable;-><init>(Lcom/fruitsmobile/basket/Layer;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v5, v0

    const/high16 v6, -0x3e280000

    iput v6, v5, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v5, v0

    const/high16 v6, 0x3f800000

    iput v6, v5, Lcom/forthblue/pool/engine/PoolTable;->centery:F

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v5, v0

    const v6, 0x44274000

    iput v6, v5, Lcom/forthblue/pool/engine/PoolTable;->windoww:F

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v5, v0

    const v6, 0x43b88000

    iput v6, v5, Lcom/forthblue/pool/engine/PoolTable;->windowh:F

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 473
    new-instance v5, Lcom/forthblue/pool/sprite/StrengthBar;

    const v6, 0x7f020073

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/forthblue/pool/sprite/StrengthBar;-><init>(Lcom/fruitsmobile/basket/resources/Texture;Lcom/forthblue/pool/ui/GameScene;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->strengthbar:Lcom/forthblue/pool/sprite/StrengthBar;

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->strengthbar:Lcom/forthblue/pool/sprite/StrengthBar;

    move-object v5, v0

    const v6, 0x43a7c000

    const/high16 v7, 0x41280000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StrengthBar;->setPosition(FF)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->strengthbar:Lcom/forthblue/pool/sprite/StrengthBar;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 478
    const-string v5, "stick_pack"

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTextureAtlas(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureAtlas;

    move-result-object v29

    .line 481
    .local v29, "stick_pack":Lcom/fruitsmobile/basket/resources/TextureAtlas;
    new-instance v5, Lcom/forthblue/pool/sprite/PoolStick;

    const-string v6, "stick_shadow"

    move-object/from16 v0, v29

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/forthblue/pool/sprite/PoolStick;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/forthblue/pool/ui/GameScene;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->stickShadow:Lcom/forthblue/pool/sprite/PoolStick;

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stickShadow:Lcom/forthblue/pool/sprite/PoolStick;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 486
    new-instance v5, Lcom/forthblue/pool/sprite/PoolStick;

    const-string v6, "stick_1"

    move-object/from16 v0, v29

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/forthblue/pool/sprite/PoolStick;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/forthblue/pool/ui/GameScene;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->stick:Lcom/forthblue/pool/sprite/PoolStick;

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stick:Lcom/forthblue/pool/sprite/PoolStick;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 491
    new-instance v5, Lcom/forthblue/pool/sprite/AimLine;

    const v6, 0x7f020021

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/forthblue/pool/sprite/AimLine;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimLine:Lcom/forthblue/pool/sprite/AimLine;

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/forthblue/pool/sprite/AimLine;->setVisible(Z)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 496
    new-instance v5, Lcom/forthblue/pool/sprite/AimLine;

    const v6, 0x7f020021

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/forthblue/pool/sprite/AimLine;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->outLine:Lcom/forthblue/pool/sprite/AimLine;

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->outLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/forthblue/pool/sprite/AimLine;->setVisible(Z)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->outLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 501
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v6, 0x7f020022

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 507
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v6, 0x7f020067

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->freeball:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->freeball:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->freeball:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 511
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v6, 0x7f020062

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->freeball_na:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->freeball_na:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->freeball_na:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 517
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v6, 0x7f020025

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimPosition:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimPosition:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimPosition:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 523
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v6, 0x7f02008d

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->bigPBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->bigPBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->bigPBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 528
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v6, 0x7f020024

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->bigPPosition:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->bigPPosition:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->bigPPosition:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 534
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/fruitsmobile/basket/resources/Texture;

    const/4 v6, 0x0

    const v7, 0x7f02006b

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f02006c

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const v7, 0x7f02006a

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->honorsTexture:[Lcom/fruitsmobile/basket/resources/Texture;

    .line 537
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->honorsTexture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 543
    new-instance v5, Lcom/fruitsmobile/basket/SimpleContainer;

    const/16 v6, 0x1e

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->reward_container:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_container:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 546
    const-string v5, "gameendbutton.pack"

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTextureAtlas(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureAtlas;

    move-result-object v18

    .line 547
    .local v18, "game_end_buttons":Lcom/fruitsmobile/basket/resources/TextureAtlas;
    const-string v5, "title.pack"

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTextureAtlas(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureAtlas;

    move-result-object v33

    .line 550
    .local v33, "title_pack":Lcom/fruitsmobile/basket/resources/TextureAtlas;
    new-instance v5, Lcom/fruitsmobile/basket/SimpleContainer;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->pauseMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 555
    new-instance v21, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const-string v5, "pause"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    .line 556
    .local v21, "pauseTitle":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const/high16 v5, -0x3e300000

    const/high16 v6, -0x3d5c0000

    move-object/from16 v0, v21

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 559
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->pauseMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x0

    new-instance v7, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v8, "button_end_continue"

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v7, v5, v6

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x2

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x1

    new-instance v7, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v8, "button_end_backtomenu"

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v7, v5, v6

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x3

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x2

    new-instance v7, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v8, "button_end_playagain"

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v7, v5, v6

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x4

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 569
    const/16 v20, 0x0

    :goto_1
    const/4 v5, 0x3

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_3

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v20

    const/high16 v6, -0x3e000000

    mul-int/lit8 v7, v20, 0x3c

    add-int/lit8 v7, v7, -0xe

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v20

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/forthblue/pool/sprite/StaticImageButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v20

    const v6, 0x3f99999a

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->insideAlpha:F

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v20

    const/high16 v6, 0x3fc00000

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->captureScale:F

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v6, v0

    aget-object v6, v6, v20

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 569
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 579
    :cond_3
    new-instance v5, Lcom/fruitsmobile/basket/SimpleContainer;

    const/16 v6, 0x15

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 585
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v6, 0x7f02007a

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->time_up_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->time_up_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/high16 v6, -0x3e000000

    const/high16 v7, -0x3d420000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->time_up_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 590
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v6, 0x7f02007c

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->you_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->you_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/high16 v6, -0x3e000000

    const/high16 v7, -0x3d380000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->you_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->you_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 595
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v6, 0x7f02007b

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->you_lose_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->you_lose_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/high16 v6, -0x3e000000

    const/high16 v7, -0x3d380000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->you_lose_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->you_lose_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 601
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v6, 0x7f020078

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->player_1_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->player_1_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/high16 v6, -0x3e000000

    const/high16 v7, -0x3d380000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->player_1_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->player_1_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 606
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v6, 0x7f020079

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->player_2_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->player_2_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/high16 v6, -0x3e000000

    const/high16 v7, -0x3d380000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->player_2_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->player_2_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 612
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v6, 0x7f020075

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->level_complete_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_complete_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/high16 v6, -0x3e000000

    const/high16 v7, -0x3d240000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_complete_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_complete_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 617
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v6, 0x7f020076

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->level_failed_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_failed_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/high16 v6, -0x3e000000

    const/high16 v7, -0x3d380000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_failed_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 621
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v6, 0x7f020074

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->level_score_bg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_score_bg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/high16 v6, -0x3e000000

    const/high16 v7, -0x3db40000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_score_bg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_score_bg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 626
    new-instance v5, Lcom/forthblue/pool/sprite/IntegerSprite;

    const-string v6, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score_font:Lcom/forthblue/pool/sprite/TileTextureFont;

    move-object v7, v0

    const/4 v8, 0x6

    invoke-direct {v5, v6, v7, v8}, Lcom/forthblue/pool/sprite/IntegerSprite;-><init>(Ljava/lang/CharSequence;Lcom/forthblue/pool/sprite/TileTextureFont;I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->game_over_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->game_over_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/forthblue/pool/sprite/IntegerSprite;->setFillZero(Z)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->game_over_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->anchor:I

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->game_over_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/high16 v6, -0x3de80000

    iput v6, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->x:F

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->game_over_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v5, v0

    const/high16 v6, -0x3d780000

    iput v6, v5, Lcom/forthblue/pool/sprite/IntegerSprite;->y:F

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->game_over_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 633
    const/16 v20, 0x0

    :goto_2
    const/4 v5, 0x3

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_4

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    new-instance v6, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v7, 0x7f020086

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    aput-object v6, v5, v20

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    aget-object v6, v6, v20

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    aget-object v5, v5, v20

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 633
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 638
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/high16 v6, 0x429b0000

    const/high16 v7, -0x3db40000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/high16 v6, 0x42d50000

    const/high16 v7, -0x3db40000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/high16 v6, 0x43070000

    const/high16 v7, -0x3db40000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 643
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const v6, 0x7f020077

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->newbest:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->newbest:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/high16 v6, 0x43460000

    const/high16 v7, -0x3d240000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->newbest:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 647
    const-string v5, "button_end_continue"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->continue_a:Lcom/fruitsmobile/basket/resources/TextureRegion;

    .line 648
    const-string v5, "button_end_continuex"

    move-object/from16 v0, v33

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->continue_b:Lcom/fruitsmobile/basket/resources/TextureRegion;

    .line 650
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x0

    new-instance v7, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v8, "button_end_replay"

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v7, v5, v6

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x4

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x1

    new-instance v7, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v8, "button_end_backtomenu"

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v7, v5, v6

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x5

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x2

    new-instance v7, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v8, "button_end_continue"

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v7, v5, v6

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/16 v6, 0x8

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x3

    new-instance v7, Lcom/forthblue/pool/sprite/StaticImageButton;

    const-string v8, "button_end_playagain"

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v7, v5, v6

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x4

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 663
    const/16 v20, 0x0

    :goto_3
    const/4 v5, 0x4

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_5

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v20

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/forthblue/pool/sprite/StaticImageButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v20

    const v6, 0x3f99999a

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->insideAlpha:F

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    aget-object v5, v5, v20

    const/high16 v6, 0x3fc00000

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->captureScale:F

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v6, v0

    aget-object v6, v6, v20

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 663
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 671
    :cond_5
    new-instance v5, Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    const/16 v6, 0x32

    const v7, 0x7f020085

    invoke-static {v7}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;-><init>(ILcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->particle:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->particle:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->update:Z

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->particle:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 675
    const-string v5, "guide.pack"

    invoke-static {v5}, Lcom/forthblue/pool/PoolHelper;->loadTextureAtlas(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureAtlas;

    move-result-object v19

    .line 677
    .local v19, "game_guide":Lcom/fruitsmobile/basket/resources/TextureAtlas;
    move-object/from16 v28, v18

    .line 679
    .local v28, "shop":Lcom/fruitsmobile/basket/resources/TextureAtlas;
    const/16 v5, 0xc

    move v0, v5

    new-array v0, v0, [Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-object/from16 v17, v0

    const/4 v5, 0x0

    const-string v6, "("

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    aput-object v6, v17, v5

    const/4 v5, 0x1

    const-string v6, ")"

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    aput-object v6, v17, v5

    const/4 v5, 0x2

    const-string v6, "0"

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    aput-object v6, v17, v5

    const/4 v5, 0x3

    const-string v6, "1"

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    aput-object v6, v17, v5

    const/4 v5, 0x4

    const-string v6, "2"

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    aput-object v6, v17, v5

    const/4 v5, 0x5

    const-string v6, "3"

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    aput-object v6, v17, v5

    const/4 v5, 0x6

    const-string v6, "4"

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    aput-object v6, v17, v5

    const/4 v5, 0x7

    const-string v6, "5"

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    aput-object v6, v17, v5

    const/16 v5, 0x8

    const-string v6, "6"

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    aput-object v6, v17, v5

    const/16 v5, 0x9

    const-string v6, "7"

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    aput-object v6, v17, v5

    const/16 v5, 0xa

    const-string v6, "8"

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    aput-object v6, v17, v5

    const/16 v5, 0xb

    const-string v6, "9"

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    aput-object v6, v17, v5

    .line 682
    .local v17, "fontx":[Lcom/fruitsmobile/basket/resources/TextureRegion;
    new-instance v5, Lcom/forthblue/pool/sprite/BitmapFontSprite;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/forthblue/pool/sprite/BitmapFontSprite;-><init>(Lcom/forthblue/pool/sprite/TileTextureFont;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->free_count:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->free_count:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    move-object v5, v0

    const-string v6, "()0123456789"

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/sprite/BitmapFontSprite;->setRegion([Lcom/fruitsmobile/basket/resources/TextureRegion;Ljava/lang/String;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->free_count:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    move-object v5, v0

    const/high16 v6, 0x428c0000

    iput v6, v5, Lcom/forthblue/pool/sprite/BitmapFontSprite;->x:F

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->free_count:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    move-object v5, v0

    const/high16 v6, 0x42c00000

    iput v6, v5, Lcom/forthblue/pool/sprite/BitmapFontSprite;->y:F

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->free_count:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 688
    const-string v5, "bg"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v14

    .line 689
    .local v14, "bg":Lcom/fruitsmobile/basket/resources/TextureRegion;
    const/4 v5, 0x4

    move v0, v5

    new-array v0, v0, [Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-object/from16 v16, v0

    const/4 v5, 0x0

    const-string v6, "pc"

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    aput-object v6, v16, v5

    const/4 v5, 0x1

    const-string v6, "p1"

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    aput-object v6, v16, v5

    const/4 v5, 0x2

    const-string v6, "p4"

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    aput-object v6, v16, v5

    const/4 v5, 0x3

    const-string v6, "p9"

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    aput-object v6, v16, v5

    .line 691
    .local v16, "fonts":[Lcom/fruitsmobile/basket/resources/TextureRegion;
    new-instance v5, Lcom/fruitsmobile/basket/SimpleContainer;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->panel_shop:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 693
    new-instance v32, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const-string v5, "titlescore"

    move-object/from16 v0, v33

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v5

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    .line 694
    .local v32, "title":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    const/high16 v5, -0x3e380000

    const/high16 v6, -0x3d240000

    move-object/from16 v0, v32

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->panel_shop:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 697
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v24, v0

    fill-array-data v24, :array_4

    .line 698
    .local v24, "pos_x":[F
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v25, v0

    fill-array-data v25, :array_5

    .line 699
    .local v25, "pos_y":[F
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/4 v5, 0x0

    const-string v6, "c1"

    aput-object v6, v30, v5

    const/4 v5, 0x1

    const-string v6, "c4"

    aput-object v6, v30, v5

    const/4 v5, 0x2

    const-string v6, "c9"

    aput-object v6, v30, v5

    const/4 v5, 0x3

    const-string v6, "c19"

    aput-object v6, v30, v5

    const/4 v5, 0x4

    const-string v6, "c49"

    aput-object v6, v30, v5

    const/4 v5, 0x5

    const-string v6, "c99"

    aput-object v6, v30, v5

    .line 700
    .local v30, "text":[Ljava/lang/String;
    const/16 v20, 0x0

    :goto_4
    const/4 v5, 0x6

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_6

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->button_sale:[Lcom/forthblue/pool/sprite/SaleButton;

    move-object v5, v0

    new-instance v6, Lcom/forthblue/pool/sprite/SaleButton;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v7

    const-string v8, "c149"

    move-object v0, v6

    move-object v1, v14

    move-object v2, v7

    move-object/from16 v3, v16

    move-object v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/forthblue/pool/sprite/SaleButton;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;Lcom/fruitsmobile/basket/resources/TextureRegion;[Lcom/fruitsmobile/basket/resources/TextureRegion;Ljava/lang/String;)V

    aput-object v6, v5, v20

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->button_sale:[Lcom/forthblue/pool/sprite/SaleButton;

    move-object v5, v0

    aget-object v5, v5, v20

    add-int/lit8 v6, v20, 0x64

    iput v6, v5, Lcom/forthblue/pool/sprite/SaleButton;->id:I

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->button_sale:[Lcom/forthblue/pool/sprite/SaleButton;

    move-object v5, v0

    aget-object v5, v5, v20

    aget-object v6, v30, v20

    invoke-virtual {v5, v6}, Lcom/forthblue/pool/sprite/SaleButton;->setText(Ljava/lang/String;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->button_sale:[Lcom/forthblue/pool/sprite/SaleButton;

    move-object v5, v0

    aget-object v5, v5, v20

    const v6, 0x3f8ccccd

    iput v6, v5, Lcom/forthblue/pool/sprite/SaleButton;->insideScale:F

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->button_sale:[Lcom/forthblue/pool/sprite/SaleButton;

    move-object v5, v0

    aget-object v5, v5, v20

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/forthblue/pool/sprite/SaleButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->button_sale:[Lcom/forthblue/pool/sprite/SaleButton;

    move-object v5, v0

    aget-object v5, v5, v20

    aget v6, v24, v20

    const/high16 v7, 0x41c80000

    sub-float/2addr v6, v7

    aget v7, v25, v20

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/SaleButton;->setPosition(FF)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->panel_shop:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->button_sale:[Lcom/forthblue/pool/sprite/SaleButton;

    move-object v6, v0

    aget-object v6, v6, v20

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 700
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_4

    .line 709
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->panel_shop:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 713
    const/16 v20, 0x0

    :goto_5
    const/4 v5, 0x7

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_7

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pouler:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    new-instance v6, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const-string v7, "pouler2"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    aput-object v6, v5, v20

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pouler:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    aget-object v5, v5, v20

    const v6, 0x43a7c000

    mul-int/lit8 v7, v20, 0x1e

    add-int/lit8 v7, v7, -0x46

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pouler:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    aget-object v5, v5, v20

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pouler:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    aget-object v5, v5, v20

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 713
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 719
    :cond_7
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const-string v6, "pouler1"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->poulerbg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->poulerbg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const v6, 0x43a7c000

    const/high16 v7, 0x41280000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->poulerbg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->poulerbg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 724
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const-string v6, "finger"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->sprite_hand:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->sprite_hand:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->sprite_hand:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 728
    const-string v5, "text1"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->region_a:Lcom/fruitsmobile/basket/resources/TextureRegion;

    .line 729
    const-string v5, "text2"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->region_b:Lcom/fruitsmobile/basket/resources/TextureRegion;

    .line 730
    const-string v5, "text3"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->region_c:Lcom/fruitsmobile/basket/resources/TextureRegion;

    .line 731
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->region_a:Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->upper_words:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->upper_words:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    const/high16 v7, -0x3cfe0000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->upper_words:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->upper_words:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 736
    new-instance v5, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const-string v6, "guideback"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->guideback:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->guideback:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/high16 v6, -0x3de40000

    const/high16 v7, 0x42680000

    invoke-virtual {v5, v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->guideback:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->guideback:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 742
    new-instance v5, Lcom/forthblue/pool/sprite/StaticImageButton;

    const v6, 0x7f020068

    invoke-static {v6}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->guide:Lcom/forthblue/pool/sprite/StaticImageButton;

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->guide:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/4 v6, 0x6

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->id:I

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->guide:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    iput-object v0, v1, Lcom/forthblue/pool/sprite/StaticImageButton;->handler:Lcom/forthblue/pool/sprite/StaticImageButton$Handler;

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->guide:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const v6, 0x3f19999a

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->insideAlpha:F

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->guide:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const v6, 0x3fa66666

    iput v6, v5, Lcom/forthblue/pool/sprite/StaticImageButton;->captureScale:F

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->guide:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    const/high16 v6, 0x43a60000

    const/high16 v7, -0x3cac0000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->guide:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 751
    return-void

    .line 817
    :array_0
    .array-data 4
        0x429b0000
        0x42d50000
        0x43070000
    .end array-data

    .line 818
    :array_1
    .array-data 4
        -0x3db40000
        -0x3db40000
        -0x3db40000
    .end array-data

    .line 2136
    :array_2
    .array-data 4
        -0x40800000
        -0x40800000
        0x0
        0x40000000
        0x0
        0x0
    .end array-data

    .line 2137
    :array_3
    .array-data 4
        0x40800000
        0x3f800000
        0x3f800000
        -0x40800000
        0x0
        0x0
    .end array-data

    .line 697
    :array_4
    .array-data 4
        -0x3cb80000
        0x0
        0x43480000
        -0x3cb80000
        0x0
        0x43480000
    .end array-data

    .line 698
    :array_5
    .array-data 4
        -0x3e600000
        -0x3e600000
        -0x3e600000
        0x42b40000
        0x42b40000
        0x42b40000
    .end array-data
.end method

.method private _getStickChoosed()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2130
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    const-string v2, "Highscore"

    invoke-virtual {v1, v2, v3}, Lcom/forthblue/pool/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2131
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

    .line 2125
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    const-string v2, "Highscore"

    invoke-virtual {v1, v2, v3}, Lcom/forthblue/pool/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2126
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "TABLE"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method static synthetic access$000(Lcom/forthblue/pool/ui/GameScene;)Lcom/fruitsmobile/basket/SimpleContainer;
    .locals 1
    .param p0, "x0"    # Lcom/forthblue/pool/ui/GameScene;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->reward_container:Lcom/fruitsmobile/basket/SimpleContainer;

    return-object v0
.end method

.method private hideArcadeGameEndSprites()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 754
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->level_complete_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 755
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->level_failed_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 756
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->level_score_bg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 758
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->game_over_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    invoke-virtual {v1, v2}, Lcom/forthblue/pool/sprite/IntegerSprite;->setVisible(Z)V

    .line 760
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 760
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 763
    :cond_0
    return-void
.end method

.method private hideVsComputerGameEndSprites()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 771
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->you_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 772
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->you_lose_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 773
    return-void
.end method

.method private hideVsPlayerGameEndSprites()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 766
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->player_1_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 767
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->player_2_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 768
    return-void
.end method

.method private isInAdjust(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1871
    const/high16 v1, 0x41e00000

    add-float/2addr p1, v1

    .line 1872
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1873
    .local v0, "px":F
    const/high16 v1, 0x433e0000

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    const/high16 v1, 0x42800000

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    const/high16 v1, 0x434c0000

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 1874
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 1875
    const v1, 0x3c23d70a

    iput v1, p0, Lcom/forthblue/pool/ui/GameScene;->dAngle:F

    .line 1879
    :goto_0
    const/4 v1, 0x1

    .line 1881
    :goto_1
    return v1

    .line 1877
    :cond_0
    const v1, -0x43dc28f6

    iput v1, p0, Lcom/forthblue/pool/ui/GameScene;->dAngle:F

    goto :goto_0

    .line 1881
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private resetHonor(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 786
    iput p1, p0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    .line 787
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->honorsTexture:[Lcom/fruitsmobile/basket/resources/Texture;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setTexture(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 788
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v1, v1, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setX(F)V

    .line 789
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v1, v1, Lcom/forthblue/pool/engine/PoolTable;->centery:F

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setY(F)V

    .line 790
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 791
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setAlpha(F)V

    .line 792
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/forthblue/pool/ui/GameScene;->honortime:J

    .line 793
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/fruitsmobile/basket/audio/SoundManager;->playSound(I)V

    .line 794
    return-void
.end method

.method private resetNewBestIcon()V
    .locals 4

    .prologue
    const/high16 v3, 0x40800000

    .line 776
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->newbest:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->getTexture()Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v0

    .line 777
    .local v0, "t":Lcom/fruitsmobile/basket/resources/Texture;
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->newbest:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/resources/Texture;->getImageWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setWidth(F)V

    .line 778
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->newbest:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/resources/Texture;->getImageHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setHeight(F)V

    .line 779
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->newbest:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    const/high16 v2, 0x3e800000

    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setAlpha(F)V

    .line 780
    return-void
.end method

.method private resetStars(I)V
    .locals 5
    .param p1, "star_count"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 799
    iput p1, p0, Lcom/forthblue/pool/ui/GameScene;->star_count:I

    .line 800
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 801
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 800
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    :cond_0
    iput v3, p0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    .line 805
    if-gtz p1, :cond_1

    .line 812
    :goto_1
    return-void

    .line 808
    :cond_1
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 809
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 810
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v1, v1, v4

    invoke-virtual {v1, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 811
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v1, v1, v3

    invoke-virtual {v1, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    goto :goto_1
.end method

.method private setGameEndButton(IZ)V
    .locals 10
    .param p1, "count"    # I
    .param p2, "level_mode"    # Z

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/high16 v7, -0x3e000000

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 822
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->free_count:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    invoke-virtual {v2, v6}, Lcom/forthblue/pool/sprite/BitmapFontSprite;->setVisible(Z)V

    .line 823
    if-ne p1, v8, :cond_3

    .line 824
    if-nez p2, :cond_0

    .line 825
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v8

    invoke-virtual {v2, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 826
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v9

    invoke-virtual {v2, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 827
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 828
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v5

    invoke-virtual {v2, v5}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 829
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v6

    const/high16 v3, -0x3ee00000

    invoke-virtual {v2, v7, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 830
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v5

    const/high16 v3, 0x42500000

    invoke-virtual {v2, v7, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 861
    :goto_0
    return-void

    .line 832
    :cond_0
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->free_count:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    invoke-virtual {v2, v5}, Lcom/forthblue/pool/sprite/BitmapFontSprite;->setVisible(Z)V

    .line 833
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    iget-wide v0, v2, Lcom/forthblue/pool/Main;->free_count:J

    .line 834
    .local v0, "xcount":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const-wide/16 v2, 0x0

    move-wide v0, v2

    .line 835
    :cond_1
    const-wide/16 v2, 0x3e7

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    const-wide/16 v2, 0x3e7

    move-wide v0, v2

    .line 836
    :cond_2
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->free_count:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/sprite/BitmapFontSprite;->setText(Ljava/lang/String;)V

    .line 837
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v9

    invoke-virtual {v2, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 838
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 839
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v5

    invoke-virtual {v2, v5}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 840
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 842
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/forthblue/pool/ui/GameScene;->continue_b:Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setTextureRegion(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    .line 844
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v6

    const/high16 v3, -0x3ea00000

    invoke-virtual {v2, v7, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 845
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v5

    const/high16 v3, 0x42380000

    invoke-virtual {v2, v7, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 846
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v8

    const/high16 v3, 0x42d40000

    invoke-virtual {v2, v7, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    goto :goto_0

    .line 849
    .end local v0    # "xcount":J
    :cond_3
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v6

    invoke-virtual {v2, v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 851
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v5

    invoke-virtual {v2, v5}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 852
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v8

    invoke-virtual {v2, v5}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 853
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v9

    invoke-virtual {v2, v5}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 855
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v8

    iget-object v3, p0, Lcom/forthblue/pool/ui/GameScene;->continue_a:Lcom/fruitsmobile/basket/resources/TextureRegion;

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setTextureRegion(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    .line 857
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v8

    const/high16 v3, 0x40a00000

    invoke-virtual {v2, v7, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 858
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v5

    const/high16 v3, 0x42820000

    invoke-virtual {v2, v7, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    .line 859
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    aget-object v2, v2, v9

    const/high16 v3, 0x42fa0000

    invoke-virtual {v2, v7, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setPosition(FF)V

    goto/16 :goto_0
.end method


# virtual methods
.method public calcAimTarget()V
    .locals 25

    .prologue
    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/forthblue/pool/engine/PoolTable;->calcAimTarget(F)F

    move-result v18

    .line 1555
    .local v18, "t":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/fruitsmobile/basket/math/MathUtil;->cos(F)F

    move-result v20

    mul-float v20, v20, v18

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimTargetX:F

    .line 1556
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/fruitsmobile/basket/math/MathUtil;->sin(F)F

    move-result v20

    mul-float v20, v20, v18

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimTargetY:F

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    move-object/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Lcom/forthblue/pool/rules/PoolRule;->getClickTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;)I

    move-result v21

    aget-object v3, v20, v21

    .line 1560
    .local v3, "ball":Lcom/forthblue/pool/engine/PoolBall;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    move/from16 v20, v0

    move-object v0, v3

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v5, v20, v21

    .line 1561
    .local v5, "ballx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->centery:F

    move/from16 v20, v0

    move-object v0, v3

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->scaley:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v7, v20, v21

    .line 1563
    .local v7, "bally":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/forthblue/pool/rules/PoolRule;->getBallRadius()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    move/from16 v21, v0

    mul-float v4, v20, v21

    .line 1565
    .local v4, "ballr":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stick:Lcom/forthblue/pool/sprite/PoolStick;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/sprite/PoolStick;->setPosition(FF)V

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stick:Lcom/forthblue/pool/sprite/PoolStick;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/forthblue/pool/sprite/PoolStick;->setAngle(F)V

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stickShadow:Lcom/forthblue/pool/sprite/PoolStick;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/forthblue/pool/sprite/PoolStick;->setVisible(Z)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stickShadow:Lcom/forthblue/pool/sprite/PoolStick;

    move-object/from16 v20, v0

    const/high16 v21, 0x40a00000

    add-float v21, v21, v5

    const/high16 v22, 0x40e00000

    add-float v22, v22, v7

    invoke-virtual/range {v20 .. v22}, Lcom/forthblue/pool/sprite/PoolStick;->setPosition(FF)V

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stickShadow:Lcom/forthblue/pool/sprite/PoolStick;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/forthblue/pool/sprite/PoolStick;->setAngle(F)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1573
    const/high16 v20, 0x40000000

    mul-float v15, v4, v20

    .line 1574
    .local v15, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v15

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setSize(FF)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimTargetX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v21, v21, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimTargetY:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->scaley:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    add-float v22, v22, v7

    invoke-virtual/range {v20 .. v22}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 1577
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/fruitsmobile/basket/math/MathUtil;->cos(F)F

    move-result v20

    mul-float v20, v20, v4

    const v21, 0x3f99999a

    mul-float v10, v20, v21

    .line 1578
    .local v10, "cos":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/fruitsmobile/basket/math/MathUtil;->sin(F)F

    move-result v20

    mul-float v20, v20, v4

    const v21, 0x3f99999a

    mul-float v16, v20, v21

    .line 1580
    .local v16, "sin":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->getX()F

    move-result v20

    sub-float v20, v20, v5

    const/high16 v21, 0x40000000

    mul-float v21, v21, v10

    sub-float v20, v20, v21

    mul-float v20, v20, v10

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_1

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/forthblue/pool/sprite/AimLine;->setVisible(Z)V

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->outLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/forthblue/pool/sprite/AimLine;->setVisible(Z)V

    .line 1588
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/forthblue/pool/ui/GameScene;->show_aim_out_line:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/forthblue/pool/engine/PoolTable;->getLastAimBallIndex()I

    move-result v11

    .line 1591
    .local v11, "lastAimBallIndex":I
    const/16 v20, -0x1

    move v0, v11

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    move-object/from16 v20, v0

    aget-object v19, v20, v11

    .line 1593
    .local v19, "targetBall":Lcom/forthblue/pool/engine/PoolBall;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    move/from16 v20, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v6, v20, v21

    .line 1594
    .local v6, "ballxx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->centery:F

    move/from16 v20, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->scaley:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v8, v20, v21

    .line 1595
    .local v8, "ballyy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->getX()F

    move-result v20

    sub-float v13, v6, v20

    .line 1596
    .local v13, "lengthx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->getY()F

    move-result v20

    sub-float v14, v8, v20

    .line 1597
    .local v14, "lengthy":F
    mul-float v20, v13, v13

    mul-float v21, v14, v14

    add-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Lcom/fruitsmobile/basket/math/MathUtil;->sqrt(F)F

    move-result v12

    .line 1598
    .local v12, "length":F
    div-float v20, v13, v12

    mul-float v20, v20, v4

    const v21, 0x3fa66666

    mul-float v9, v20, v21

    .line 1599
    .local v9, "ccos":F
    div-float v20, v14, v12

    mul-float v20, v20, v4

    const v21, 0x3fa66666

    mul-float v17, v20, v21

    .line 1600
    .local v17, "ssin":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->outLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/forthblue/pool/sprite/AimLine;->setVisible(Z)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->outLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object/from16 v20, v0

    add-float v21, v6, v9

    add-float v22, v8, v17

    const v23, 0x400ccccd

    mul-float v23, v23, v13

    add-float v23, v23, v6

    const v24, 0x400ccccd

    mul-float v24, v24, v14

    add-float v24, v24, v8

    invoke-virtual/range {v20 .. v24}, Lcom/forthblue/pool/sprite/AimLine;->setLinePosition(FFFF)V

    .line 1606
    .end local v6    # "ballxx":F
    .end local v8    # "ballyy":F
    .end local v9    # "ccos":F
    .end local v11    # "lastAimBallIndex":I
    .end local v12    # "length":F
    .end local v13    # "lengthx":F
    .end local v14    # "lengthy":F
    .end local v17    # "ssin":F
    .end local v19    # "targetBall":Lcom/forthblue/pool/engine/PoolBall;
    :cond_0
    :goto_1
    return-void

    .line 1584
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/forthblue/pool/sprite/AimLine;->setVisible(Z)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object/from16 v20, v0

    add-float v21, v10, v5

    add-float v22, v16, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->getX()F

    move-result v23

    sub-float v23, v23, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->getY()F

    move-result v24

    sub-float v24, v24, v16

    invoke-virtual/range {v20 .. v24}, Lcom/forthblue/pool/sprite/AimLine;->setLinePosition(FFFF)V

    goto/16 :goto_0

    .line 1603
    .restart local v11    # "lastAimBallIndex":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->outLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/forthblue/pool/sprite/AimLine;->setVisible(Z)V

    goto :goto_1
.end method

.method public isInPBall(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v1, 0x42000000

    .line 1609
    const/high16 v0, 0x41e00000

    add-float/2addr p1, v0

    .line 1610
    const/high16 v0, 0x43560000

    sub-float/2addr p2, v0

    .line 1611
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1612
    const/4 v0, 0x1

    .line 1614
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBallIntoHole(IFF)V
    .locals 12
    .param p1, "combo"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 2077
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v1, v1, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    mul-float/2addr v1, p2

    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v2, v2, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    add-float p2, v1, v2

    .line 2078
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v1, v1, Lcom/forthblue/pool/engine/PoolTable;->scaley:F

    mul-float/2addr v1, p3

    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v2, v2, Lcom/forthblue/pool/engine/PoolTable;->centery:F

    add-float p3, v1, v2

    .line 2079
    iget-boolean v1, p0, Lcom/forthblue/pool/ui/GameScene;->show_aim_out_line:Z

    if-eqz v1, :cond_0

    .line 2080
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v9, v1, :cond_0

    .line 2081
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->particle:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->alloc()Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-result-object v10

    .line 2082
    .local v10, "particle_sprite":Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;
    if-nez v10, :cond_2

    .line 2097
    .end local v9    # "i":I
    .end local v10    # "particle_sprite":Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;
    :cond_0
    iget v1, p0, Lcom/forthblue/pool/ui/GameScene;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->reward_container:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1}, Lcom/fruitsmobile/basket/SimpleContainer;->getCount()I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_1

    .line 2099
    mul-int/lit16 v11, p1, 0x3e8

    .line 2100
    .local v11, "value":I
    new-instance v3, Lcom/forthblue/pool/sprite/TextSprite;

    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->reward_font:Lcom/forthblue/pool/sprite/TileTextureFont;

    invoke-direct {v3, v1}, Lcom/forthblue/pool/sprite/TextSprite;-><init>(Lcom/forthblue/pool/sprite/TileTextureFont;)V

    .line 2101
    .local v3, "count":Lcom/forthblue/pool/sprite/TextSprite;
    const/4 v1, 0x5

    iput v1, v3, Lcom/forthblue/pool/sprite/TextSprite;->anchor:I

    .line 2102
    const v1, 0x3f19999a

    iput v1, v3, Lcom/forthblue/pool/sprite/TextSprite;->scaley:F

    iput v1, v3, Lcom/forthblue/pool/sprite/TextSprite;->scalex:F

    .line 2103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/forthblue/pool/sprite/TextSprite;->setText(Ljava/lang/CharSequence;)V

    .line 2105
    new-instance v0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;-><init>(Lcom/forthblue/pool/ui/GameScene;Lcom/fruitsmobile/basket/resources/Texture;Lcom/forthblue/pool/sprite/TextSprite;FFLcom/fruitsmobile/basket/sprites/StaticImageSprite;FF)V

    .line 2106
    .local v0, "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    invoke-virtual {v0, p2, p3}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->setPosition(FF)V

    .line 2107
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->setType(I)V

    .line 2108
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->reward_container:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v0}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 2110
    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    .line 2111
    new-instance v3, Lcom/forthblue/pool/sprite/TextSprite;

    .end local v3    # "count":Lcom/forthblue/pool/sprite/TextSprite;
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->reward_font:Lcom/forthblue/pool/sprite/TileTextureFont;

    invoke-direct {v3, v1}, Lcom/forthblue/pool/sprite/TextSprite;-><init>(Lcom/forthblue/pool/sprite/TileTextureFont;)V

    .line 2112
    .restart local v3    # "count":Lcom/forthblue/pool/sprite/TextSprite;
    const/4 v1, 0x5

    iput v1, v3, Lcom/forthblue/pool/sprite/TextSprite;->anchor:I

    .line 2113
    const v1, 0x3f19999a

    iput v1, v3, Lcom/forthblue/pool/sprite/TextSprite;->scaley:F

    iput v1, v3, Lcom/forthblue/pool/sprite/TextSprite;->scalex:F

    .line 2114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/forthblue/pool/sprite/TextSprite;->setText(Ljava/lang/CharSequence;)V

    .line 2116
    new-instance v0, Lcom/forthblue/pool/ui/GameScene$RewardSprite;

    .end local v0    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    const/4 v2, 0x5

    aget-object v2, v1, v2

    const/high16 v4, -0x3dcc0000

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;-><init>(Lcom/forthblue/pool/ui/GameScene;Lcom/fruitsmobile/basket/resources/Texture;Lcom/forthblue/pool/sprite/TextSprite;FFLcom/fruitsmobile/basket/sprites/StaticImageSprite;FF)V

    .line 2117
    .restart local v0    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    const/high16 v1, 0x41700000

    add-float/2addr v1, p2

    const/high16 v2, 0x41c80000

    add-float/2addr v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->setPosition(FF)V

    .line 2118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->setType(I)V

    .line 2119
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->reward_container:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v0}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 2122
    .end local v0    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    .end local v3    # "count":Lcom/forthblue/pool/sprite/TextSprite;
    .end local v11    # "value":I
    :cond_1
    return-void

    .line 2084
    .restart local v9    # "i":I
    .restart local v10    # "particle_sprite":Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;
    :cond_2
    iput p2, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->x:F

    .line 2085
    iput p3, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->y:F

    .line 2086
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x3f000000

    sub-float/2addr v1, v2

    const/high16 v2, 0x40c00000

    mul-float/2addr v1, v2

    iput v1, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->vx:F

    .line 2087
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x3f000000

    sub-float/2addr v1, v2

    const/high16 v2, 0x40c00000

    mul-float/2addr v1, v2

    iput v1, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->vy:F

    .line 2088
    const/high16 v1, 0x43b40000

    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->angle:F

    .line 2089
    const/high16 v1, 0x40a00000

    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000

    add-float/2addr v1, v2

    iput v1, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    iput v1, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusy:F

    .line 2090
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x3f800000

    mul-float/2addr v1, v2

    const v2, 0x3e4ccccd

    add-float/2addr v1, v2

    iput v1, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->dismiss:F

    .line 2091
    const/high16 v1, 0x3f800000

    iput v1, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    .line 2092
    const v1, 0x3ecccccd

    const v2, 0x3f4ccccd

    iget-object v3, p0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->red:F

    .line 2093
    const v1, 0x3ecccccd

    const v2, 0x3f4ccccd

    iget-object v3, p0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->blue:F

    .line 2094
    const v1, 0x3ecccccd

    const v2, 0x3f4ccccd

    iget-object v3, p0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v10, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->green:F

    .line 2080
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method public onButtonClick(I)V
    .locals 10
    .param p1, "id"    # I

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 152
    sparse-switch p1, :sswitch_data_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 154
    :sswitch_0
    invoke-virtual {p0}, Lcom/forthblue/pool/ui/GameScene;->pause()V

    goto :goto_0

    .line 158
    :sswitch_1
    invoke-virtual {p0}, Lcom/forthblue/pool/ui/GameScene;->resume()V

    goto :goto_0

    .line 162
    :sswitch_2
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    instance-of v2, v2, Lcom/forthblue/pool/rules/LevelRule;

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    invoke-virtual {v2}, Lcom/forthblue/pool/Main;->backToLevelLayer()V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    invoke-virtual {v2}, Lcom/forthblue/pool/Main;->backToMenu()V

    goto :goto_0

    .line 170
    :sswitch_3
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    instance-of v2, v2, Lcom/forthblue/pool/rules/LevelRule;

    if-eqz v2, :cond_2

    .line 171
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    invoke-virtual {v2}, Lcom/forthblue/pool/Main;->backToLevelLayer()V

    goto :goto_0

    .line 173
    :cond_2
    sget-boolean v2, Lcom/forthblue/pool/rules/TimeRuleBase;->isPractice:Z

    if-nez v2, :cond_3

    .line 174
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    iget-object v2, v2, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    iget-object v3, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget-object v3, v3, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget-object v3, v3, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/ui/MenuScene;->saveScore(I)Z

    .line 176
    :cond_3
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    invoke-virtual {v2}, Lcom/forthblue/pool/Main;->backToMenu()V

    goto :goto_0

    .line 181
    :sswitch_4
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    new-instance v3, Lcom/forthblue/pool/ui/GameScene$1;

    invoke-direct {v3, p0}, Lcom/forthblue/pool/ui/GameScene$1;-><init>(Lcom/forthblue/pool/ui/GameScene;)V

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/Main;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 188
    :sswitch_5
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v2, v4}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 189
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->guideback:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v2, v5}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    goto :goto_0

    .line 193
    :sswitch_6
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    iget-object v3, p0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/Main;->startGame(Lcom/forthblue/pool/rules/PoolRule;)V

    .line 194
    invoke-static {}, Lcom/forthblue/pool/DoodleHelper;->hideFeatureGame()V

    goto :goto_0

    .line 198
    :sswitch_7
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget-object v2, v2, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v2, v2, Lcom/forthblue/pool/rules/PoolRule$RoundState;->winner:I

    if-nez v2, :cond_4

    move v0, v5

    .line 199
    .local v0, "level_passed":Z
    :goto_1
    iget v2, p0, Lcom/forthblue/pool/ui/GameScene;->mode:I

    if-ne v2, v7, :cond_5

    if-eqz v0, :cond_5

    .line 200
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    invoke-virtual {v2}, Lcom/forthblue/pool/Main;->nextLevel()V

    goto :goto_0

    .end local v0    # "level_passed":Z
    :cond_4
    move v0, v4

    .line 198
    goto :goto_1

    .line 201
    .restart local v0    # "level_passed":Z
    :cond_5
    iget v2, p0, Lcom/forthblue/pool/ui/GameScene;->mode:I

    if-ne v2, v7, :cond_0

    .line 202
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    iget-wide v2, v2, Lcom/forthblue/pool/Main;->free_count:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_6

    .line 203
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    iget-wide v3, v2, Lcom/forthblue/pool/Main;->free_count:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/forthblue/pool/Main;->free_count:J

    .line 204
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    iget-object v3, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    iget-wide v3, v3, Lcom/forthblue/pool/Main;->free_count:J

    invoke-virtual {v2, v3, v4}, Lcom/forthblue/pool/Main;->saveCount(J)V

    .line 205
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget-object v1, v2, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    .line 206
    .local v1, "state":Lcom/forthblue/pool/rules/PoolRule$RoundState;
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v2, v1}, Lcom/forthblue/pool/rules/PoolRule;->resetRoundStateData(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V

    .line 207
    iput v7, v1, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 208
    invoke-virtual {p0}, Lcom/forthblue/pool/ui/GameScene;->start()V

    .line 209
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    invoke-virtual {v2, v8, v9}, Lcom/forthblue/pool/engine/PoolTable;->tick(J)V

    .line 210
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    invoke-interface {v2, v1}, Lcom/forthblue/pool/rules/PoolRule;->resetRoundStateData(Lcom/forthblue/pool/rules/PoolRule$RoundState;)V

    .line 211
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->level_cue_count:Lcom/forthblue/pool/sprite/IntegerSprite;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    goto/16 :goto_0

    .line 214
    .end local v1    # "state":Lcom/forthblue/pool/rules/PoolRule$RoundState;
    :cond_6
    sget v2, Lcom/forthblue/pool/Main;->API_LEVEL:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_7

    .line 215
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v2, v4}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 216
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->panel_shop:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v2, v5}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    goto/16 :goto_0

    .line 218
    :cond_7
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    new-instance v3, Lcom/forthblue/pool/ui/GameScene$2;

    invoke-direct {v3, p0}, Lcom/forthblue/pool/ui/GameScene$2;-><init>(Lcom/forthblue/pool/ui/GameScene;)V

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/Main;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 235
    .end local v0    # "level_passed":Z
    :sswitch_8
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget-object v2, v2, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget-object v2, v2, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    aget v2, v2, v4

    invoke-static {v2}, Lcom/forthblue/pool/DoodleHelper;->submitScore(I)V

    goto/16 :goto_0

    .line 244
    :sswitch_9
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    const v3, 0x186a1

    const/16 v4, 0x64

    sub-int v4, p1, v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/forthblue/pool/Main;->shopping(I)V

    goto/16 :goto_0

    .line 152
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_4
        0x4 -> :sswitch_6
        0x5 -> :sswitch_2
        0x6 -> :sswitch_5
        0x7 -> :sswitch_8
        0x8 -> :sswitch_7
        0xb -> :sswitch_3
        0x64 -> :sswitch_9
        0x65 -> :sswitch_9
        0x66 -> :sswitch_9
        0x67 -> :sswitch_9
        0x68 -> :sswitch_9
        0x69 -> :sswitch_9
    .end sparse-switch
.end method

.method public onKeyBack()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1912
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->guideback:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1913
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->guideback:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1914
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1935
    :goto_0
    return-void

    .line 1917
    :cond_0
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->panel_shop:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/SimpleContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/SimpleContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1918
    :cond_1
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->panel_shop:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/SimpleContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1919
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->panel_shop:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1920
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1921
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/forthblue/pool/ui/GameScene;->setGameEndButton(IZ)V

    goto :goto_0

    .line 1923
    :cond_2
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    instance-of v0, v0, Lcom/forthblue/pool/rules/LevelRule;

    if-eqz v0, :cond_3

    .line 1924
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    invoke-virtual {v0}, Lcom/forthblue/pool/Main;->backToLevelLayer()V

    goto :goto_0

    .line 1926
    :cond_3
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    invoke-virtual {v0}, Lcom/forthblue/pool/Main;->backToMenu()V

    goto :goto_0

    .line 1930
    :cond_4
    iget-boolean v0, p0, Lcom/forthblue/pool/ui/GameScene;->paused:Z

    if-nez v0, :cond_5

    .line 1931
    invoke-virtual {p0}, Lcom/forthblue/pool/ui/GameScene;->pause()V

    goto :goto_0

    .line 1933
    :cond_5
    invoke-virtual {p0}, Lcom/forthblue/pool/ui/GameScene;->resume()V

    goto :goto_0
.end method

.method public onPotBall(ILcom/forthblue/pool/engine/PoolBall;)V
    .locals 6
    .param p1, "currentPlayer"    # I
    .param p2, "ball"    # Lcom/forthblue/pool/engine/PoolBall;

    .prologue
    .line 1984
    const/4 v1, 0x0

    .line 1985
    .local v1, "cont":Lcom/fruitsmobile/basket/SimpleContainer;
    const/high16 v4, 0x42c80000

    iget-object v5, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v5, v5, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    mul-float v2, v4, v5

    .line 1986
    .local v2, "dx":F
    if-nez p1, :cond_0

    .line 1987
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->potballleft:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 1992
    :goto_0
    invoke-virtual {v1}, Lcom/fruitsmobile/basket/SimpleContainer;->getCount()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v2, v4

    .line 1993
    .local v3, "x":F
    new-instance v0, Lcom/forthblue/pool/engine/BallSprite;

    invoke-virtual {p2}, Lcom/forthblue/pool/engine/PoolBall;->getTexture()Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/forthblue/pool/engine/BallSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 1994
    .local v0, "b":Lcom/forthblue/pool/engine/BallSprite;
    iget v4, p2, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    iget-object v5, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v5, v5, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    mul-float/2addr v4, v5

    iput v4, v0, Lcom/forthblue/pool/engine/BallSprite;->scale:F

    .line 1995
    iput v3, v0, Lcom/forthblue/pool/engine/BallSprite;->x:F

    .line 1996
    invoke-virtual {v1, v0}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 1998
    return-void

    .line 1989
    .end local v0    # "b":Lcom/forthblue/pool/engine/BallSprite;
    .end local v3    # "x":F
    :cond_0
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->potballright:Lcom/fruitsmobile/basket/SimpleContainer;

    .line 1990
    neg-float v2, v2

    goto :goto_0
.end method

.method public onRoundOver(II)V
    .locals 3
    .param p1, "stick_count"    # I
    .param p2, "type"    # I

    .prologue
    .line 2143
    iget v0, p0, Lcom/forthblue/pool/ui/GameScene;->mode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2153
    :cond_0
    :goto_0
    return-void

    .line 2147
    :cond_1
    iget v0, p0, Lcom/forthblue/pool/ui/GameScene;->pending_reward_count:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 2148
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->pending_reward_array:[I

    iget v1, p0, Lcom/forthblue/pool/ui/GameScene;->pending_reward_count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/forthblue/pool/ui/GameScene;->pending_reward_count:I

    aput p2, v0, v1

    .line 2150
    :cond_2
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->level_cue_count:Lcom/forthblue/pool/sprite/IntegerSprite;

    invoke-virtual {v0}, Lcom/forthblue/pool/sprite/IntegerSprite;->getValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2151
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->level_cue_count:Lcom/forthblue/pool/sprite/IntegerSprite;

    invoke-virtual {v0, p1}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    goto :goto_0
.end method

.method public onTouchDown(I)V
    .locals 21
    .param p1, "index"    # I

    .prologue
    .line 1767
    invoke-static/range {p1 .. p1}, Lcom/fruitsmobile/basket/MotionService;->getPoint(I)Lcom/fruitsmobile/basket/MotionService$MotionPoint;

    move-result-object v13

    .line 1769
    .local v13, "point":Lcom/fruitsmobile/basket/MotionService$MotionPoint;
    move-object v0, v13

    iget v0, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->x:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->width:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000

    div-float v17, v17, v18

    sub-float v14, v16, v17

    .line 1770
    .local v14, "x":F
    move-object v0, v13

    iget v0, v0, Lcom/fruitsmobile/basket/MotionService$MotionPoint;->y:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->height:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000

    div-float v17, v17, v18

    sub-float v15, v16, v17

    .line 1772
    .local v15, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->isVisible()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1868
    :cond_0
    :goto_0
    return-void

    .line 1774
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->guideback:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->isVisible()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->guideback:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    goto :goto_0

    .line 1778
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->panel_shop:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fruitsmobile/basket/SimpleContainer;->isVisible()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1779
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    const/16 v16, 0x6

    move v0, v11

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 1780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->button_sale:[Lcom/forthblue/pool/sprite/SaleButton;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    move-object/from16 v0, v16

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/sprite/SaleButton;->isInside(FF)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->button_sale:[Lcom/forthblue/pool/sprite/SaleButton;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->width:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->height:F

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    move/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/fruitsmobile/basket/MotionService;->startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;FF)V

    .line 1779
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1789
    .end local v11    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fruitsmobile/basket/SimpleContainer;->isVisible()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1791
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v11

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 1792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    invoke-virtual/range {v16 .. v16}, Lcom/forthblue/pool/sprite/StaticImageButton;->isVisible()Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    move-object/from16 v0, v16

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->width:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->height:F

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    move/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/fruitsmobile/basket/MotionService;->startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;FF)V

    .line 1791
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1796
    .end local v11    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/forthblue/pool/ui/GameScene;->paused:Z

    move/from16 v16, v0

    if-nez v16, :cond_f

    .line 1798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseButton:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseButton:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->width:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->height:F

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    move/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/fruitsmobile/basket/MotionService;->startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;FF)V

    goto/16 :goto_0

    .line 1803
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    move/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Lcom/forthblue/pool/rules/PoolRule;->getPlayerType(I)I

    move-result v16

    if-nez v16, :cond_8

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/forthblue/pool/rules/PoolRule;->getClickTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;)I

    move-result v17

    aget-object v5, v16, v17

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/forthblue/pool/ui/GameScene;->freeballtarget:Lcom/forthblue/pool/engine/PoolBall;

    .line 1807
    .local v5, "ball0":Lcom/forthblue/pool/engine/PoolBall;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    move/from16 v16, v0

    move-object v0, v5

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v7, v16, v17

    .line 1808
    .local v7, "ballx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->centery:F

    move/from16 v16, v0

    move-object v0, v5

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->scaley:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v8, v16, v17

    .line 1809
    .local v8, "bally":F
    move-object v0, v5

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    move/from16 v17, v0

    mul-float v6, v16, v17

    .line 1811
    .local v6, "ballr":F
    sub-float v9, v14, v7

    .line 1812
    .local v9, "dx":F
    sub-float v10, v15, v8

    .line 1815
    .local v10, "dy":F
    mul-float v16, v9, v9

    mul-float v17, v10, v10

    add-float v16, v16, v17

    mul-float v17, v6, v6

    const/high16 v18, 0x40c80000

    mul-float v17, v17, v18

    cmpg-float v16, v16, v17

    if-gez v16, :cond_9

    .line 1816
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/ui/GameScene;->freeballconfirming:Z

    .line 1820
    :goto_3
    const/high16 v16, 0x40a00000

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->dv:F

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->freeBallMotionHandler:Lcom/fruitsmobile/basket/interfaces/Motionable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->width:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->height:F

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    move/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/fruitsmobile/basket/MotionService;->startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;FF)V

    .line 1824
    .end local v5    # "ball0":Lcom/forthblue/pool/engine/PoolBall;
    .end local v6    # "ballr":F
    .end local v7    # "ballx":F
    .end local v8    # "bally":F
    .end local v9    # "dx":F
    .end local v10    # "dy":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    move/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Lcom/forthblue/pool/rules/PoolRule;->getPlayerType(I)I

    move-result v16

    if-nez v16, :cond_0

    .line 1826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->bigPBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->isVisible()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1828
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->currentBallMotionId:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pBallHandler:Lcom/fruitsmobile/basket/interfaces/Motionable;

    move-object/from16 v16, v0

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/fruitsmobile/basket/MotionService;->startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;)V

    goto/16 :goto_0

    .line 1818
    .restart local v5    # "ball0":Lcom/forthblue/pool/engine/PoolBall;
    .restart local v6    # "ballr":F
    .restart local v7    # "ballx":F
    .restart local v8    # "bally":F
    .restart local v9    # "dx":F
    .restart local v10    # "dy":F
    :cond_9
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/ui/GameScene;->freeballconfirming:Z

    goto/16 :goto_3

    .line 1831
    .end local v5    # "ball0":Lcom/forthblue/pool/engine/PoolBall;
    .end local v6    # "ballr":F
    .end local v7    # "ballx":F
    .end local v8    # "bally":F
    .end local v9    # "dx":F
    .end local v10    # "dy":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->guide:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 1832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->guide:Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->width:F

    move/from16 v17, v0

    const/high16 v18, 0x3f000000

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->height:F

    move/from16 v18, v0

    const/high16 v19, 0x3f000000

    mul-float v18, v18, v19

    move/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/fruitsmobile/basket/MotionService;->startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;FF)V

    goto/16 :goto_0

    .line 1834
    :cond_b
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/ui/GameScene;->isInPBall(FF)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 1836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->bigPBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->bigPPosition:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->bigPPosition:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimPx:F

    move/from16 v17, v0

    const/high16 v18, 0x42c80000

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    move/from16 v18, v0

    const/high16 v19, 0x42c80000

    mul-float v18, v18, v19

    invoke-virtual/range {v16 .. v18}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    goto/16 :goto_0

    .line 1840
    :cond_c
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/forthblue/pool/ui/GameScene;->isInAdjust(FF)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->adjustHandler:Lcom/fruitsmobile/basket/interfaces/Motionable;

    move-object/from16 v16, v0

    move/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/fruitsmobile/basket/MotionService;->startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;)V

    goto/16 :goto_0

    .line 1843
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->strengthbar:Lcom/forthblue/pool/sprite/StrengthBar;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/sprite/StrengthBar;->isInside(FF)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 1845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->strengthbar:Lcom/forthblue/pool/sprite/StrengthBar;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->strengthbar:Lcom/forthblue/pool/sprite/StrengthBar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/forthblue/pool/sprite/StrengthBar;->getLeft()F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->width:F

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->strengthbar:Lcom/forthblue/pool/sprite/StrengthBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/forthblue/pool/sprite/StrengthBar;->getTop()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->height:F

    move/from16 v19, v0

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/fruitsmobile/basket/MotionService;->startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;FF)V

    .line 1847
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/ui/GameScene;->aim_stable_for_time:Z

    .line 1848
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/ui/GameScene;->touch_screened:Z

    goto/16 :goto_0

    .line 1850
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->windoww:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->windowx:F

    move/from16 v17, v0

    add-float v16, v16, v17

    cmpg-float v16, v14, v16

    if-gez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stick:Lcom/forthblue/pool/sprite/PoolStick;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/forthblue/pool/sprite/PoolStick;->isMotioning()Z

    move-result v16

    if-nez v16, :cond_0

    .line 1852
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/ui/GameScene;->aim_stable_for_time:Z

    .line 1853
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/ui/GameScene;->touch_screened:Z

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/forthblue/pool/rules/PoolRule;->getClickTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;)I

    move-result v17

    aget-object v4, v16, v17

    .line 1856
    .local v4, "ball":Lcom/forthblue/pool/engine/PoolBall;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stick:Lcom/forthblue/pool/sprite/PoolStick;

    move-object/from16 v16, v0

    move-object v0, v4

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    move/from16 v18, v0

    add-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->width:F

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    add-float v17, v17, v18

    move-object v0, v4

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->scaley:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/forthblue/pool/engine/PoolTable;->centery:F

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->height:F

    move/from16 v19, v0

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/fruitsmobile/basket/MotionService;->startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;FF)V

    goto/16 :goto_0

    .line 1862
    .end local v4    # "ball":Lcom/forthblue/pool/engine/PoolBall;
    :cond_f
    const/4 v11, 0x0

    .restart local v11    # "i":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move v12, v0

    .local v12, "n":I
    :goto_4
    if-ge v11, v12, :cond_0

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    move-object/from16 v0, v16

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->isInside(FF)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pauseMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object/from16 v16, v0

    aget-object v16, v16, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->width:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000

    div-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->height:F

    move/from16 v18, v0

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    move/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/fruitsmobile/basket/MotionService;->startMotion(ILcom/fruitsmobile/basket/interfaces/Motionable;FF)V

    .line 1862
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_4
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1940
    iget-boolean v0, p0, Lcom/forthblue/pool/ui/GameScene;->paused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget-object v0, v0, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v0, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/forthblue/pool/ui/GameScene;->mode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1941
    iput-boolean v2, p0, Lcom/forthblue/pool/ui/GameScene;->paused:Z

    .line 1942
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1943
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->pauseMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1944
    invoke-static {}, Lcom/forthblue/pool/DoodleHelper;->showFeatureGame()V

    .line 1946
    :cond_0
    return-void
.end method

.method public paused()Z
    .locals 1

    .prologue
    .line 1980
    iget-boolean v0, p0, Lcom/forthblue/pool/ui/GameScene;->paused:Z

    return v0
.end method

.method public resetHoles([Lcom/forthblue/pool/engine/PoolHole;)V
    .locals 11
    .param p1, "holes"    # [Lcom/forthblue/pool/engine/PoolHole;

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x1

    .line 2157
    iget-boolean v2, p0, Lcom/forthblue/pool/ui/GameScene;->hole_effect_pos_setted:Z

    if-nez v2, :cond_1

    .line 2158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_0

    .line 2159
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->hole_effect:[Lcom/forthblue/pool/sprite/HoleEffectSprite;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v3, v3, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/forthblue/pool/engine/PoolHole;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v5, v5, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/forthblue/pool/ui/GameScene;->effect_x_offset:[F

    aget v4, v4, v1

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v4, v4, Lcom/forthblue/pool/engine/PoolTable;->centery:F

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcom/forthblue/pool/engine/PoolHole;->getY()F

    move-result v5

    iget-object v6, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v6, v6, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/forthblue/pool/ui/GameScene;->effect_y_offset:[F

    aget v5, v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/forthblue/pool/sprite/HoleEffectSprite;->setPosition(FF)V

    .line 2158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2162
    :cond_0
    iput-boolean v7, p0, Lcom/forthblue/pool/ui/GameScene;->hole_effect_pos_setted:Z

    .line 2164
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v10, :cond_5

    .line 2165
    aget-object v0, p1, v1

    .line 2166
    .local v0, "hole":Lcom/forthblue/pool/engine/PoolHole;
    iget v2, v0, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    if-ne v2, v7, :cond_2

    .line 2167
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->hole_effect:[Lcom/forthblue/pool/sprite/HoleEffectSprite;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/forthblue/pool/ui/GameScene;->hole_effect_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v7, v3}, Lcom/forthblue/pool/sprite/HoleEffectSprite;->setEffect(ILcom/fruitsmobile/basket/resources/Texture;)V

    .line 2168
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->hole_effect:[Lcom/forthblue/pool/sprite/HoleEffectSprite;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/forthblue/pool/sprite/HoleEffectSprite;->show()V

    .line 2164
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2170
    :cond_2
    iget v2, v0, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    if-ne v2, v8, :cond_3

    .line 2171
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->hole_effect:[Lcom/forthblue/pool/sprite/HoleEffectSprite;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/forthblue/pool/ui/GameScene;->hole_effect_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    aget-object v3, v3, v7

    invoke-virtual {v2, v8, v3}, Lcom/forthblue/pool/sprite/HoleEffectSprite;->setEffect(ILcom/fruitsmobile/basket/resources/Texture;)V

    .line 2172
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->hole_effect:[Lcom/forthblue/pool/sprite/HoleEffectSprite;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/forthblue/pool/sprite/HoleEffectSprite;->show()V

    goto :goto_2

    .line 2174
    :cond_3
    iget v2, v0, Lcom/forthblue/pool/engine/PoolHole;->effect_type:I

    if-ne v2, v9, :cond_4

    .line 2175
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->hole_effect:[Lcom/forthblue/pool/sprite/HoleEffectSprite;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/forthblue/pool/ui/GameScene;->hole_effect_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v9, v3}, Lcom/forthblue/pool/sprite/HoleEffectSprite;->setEffect(ILcom/fruitsmobile/basket/resources/Texture;)V

    .line 2176
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->hole_effect:[Lcom/forthblue/pool/sprite/HoleEffectSprite;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/forthblue/pool/sprite/HoleEffectSprite;->show()V

    goto :goto_2

    .line 2179
    :cond_4
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->hole_effect:[Lcom/forthblue/pool/sprite/HoleEffectSprite;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/forthblue/pool/sprite/HoleEffectSprite;->dismiss()V

    goto :goto_2

    .line 2182
    .end local v0    # "hole":Lcom/forthblue/pool/engine/PoolHole;
    :cond_5
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1949
    iget-boolean v0, p0, Lcom/forthblue/pool/ui/GameScene;->paused:Z

    if-eqz v0, :cond_0

    .line 1950
    iput-boolean v2, p0, Lcom/forthblue/pool/ui/GameScene;->paused:Z

    .line 1951
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1952
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->pauseMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1954
    :cond_0
    invoke-static {}, Lcom/forthblue/pool/DoodleHelper;->hideFeatureGame()V

    .line 1955
    return-void
.end method

.method public setRule(Lcom/forthblue/pool/rules/PoolRule;)V
    .locals 8
    .param p1, "rule"    # Lcom/forthblue/pool/rules/PoolRule;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1479
    iput-object p1, p0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    .line 1480
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    invoke-virtual {v1, p1}, Lcom/forthblue/pool/engine/PoolTable;->setRule(Lcom/forthblue/pool/rules/PoolRule;)V

    .line 1481
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    invoke-virtual {v1}, Lcom/forthblue/pool/engine/PoolTable;->reset()V

    .line 1482
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->outLine:Lcom/forthblue/pool/sprite/AimLine;

    invoke-virtual {v1, v3}, Lcom/forthblue/pool/sprite/AimLine;->setVisible(Z)V

    .line 1483
    invoke-direct {p0, v3}, Lcom/forthblue/pool/ui/GameScene;->resetStars(I)V

    .line 1485
    invoke-interface {p1}, Lcom/forthblue/pool/rules/PoolRule;->getDefaultAimAngle()F

    move-result v1

    iput v1, p0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    .line 1486
    const/4 v1, 0x0

    iput v1, p0, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    iput v1, p0, Lcom/forthblue/pool/ui/GameScene;->aimPx:F

    .line 1488
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    iget-object v1, v1, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    iget-boolean v1, v1, Lcom/forthblue/pool/ui/MenuScene;->show_aim_out_line:Z

    iput-boolean v1, p0, Lcom/forthblue/pool/ui/GameScene;->show_aim_out_line:Z

    .line 1489
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->upper_words:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v1, v3}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1490
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->guide:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v1, v4}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 1492
    instance-of v1, p1, Lcom/forthblue/pool/rules/TimeRuleBase;

    if-eqz v1, :cond_0

    .line 1493
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->score_board:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v4}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1494
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->vs_board:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v3}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1495
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->level_board:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v3}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1496
    iput v3, p0, Lcom/forthblue/pool/ui/GameScene;->mode:I

    .line 1497
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_5

    .line 1498
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->hole_effect:[Lcom/forthblue/pool/sprite/HoleEffectSprite;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/forthblue/pool/sprite/HoleEffectSprite;->setVisible(Z)V

    .line 1497
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1501
    .end local v0    # "i":I
    :cond_0
    instance-of v1, p1, Lcom/forthblue/pool/rules/VsaiRuleBase;

    if-eqz v1, :cond_3

    .line 1502
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->player_icon_left:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-interface {p1, v3}, Lcom/forthblue/pool/rules/PoolRule;->getPlayerType(I)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->playericons:[Lcom/fruitsmobile/basket/resources/Texture;

    aget-object v2, v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setTexture(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 1503
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->player_icon_right:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-interface {p1, v4}, Lcom/forthblue/pool/rules/PoolRule;->getPlayerType(I)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->playericons:[Lcom/fruitsmobile/basket/resources/Texture;

    aget-object v2, v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setTexture(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 1504
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->score_board:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v3}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1505
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->vs_board:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v4}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1506
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->level_board:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v3}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1507
    iput v4, p0, Lcom/forthblue/pool/ui/GameScene;->mode:I

    .line 1508
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v5, :cond_5

    .line 1509
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->hole_effect:[Lcom/forthblue/pool/sprite/HoleEffectSprite;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/forthblue/pool/sprite/HoleEffectSprite;->setVisible(Z)V

    .line 1508
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1502
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->playericons:[Lcom/fruitsmobile/basket/resources/Texture;

    aget-object v2, v2, v6

    goto :goto_1

    .line 1503
    :cond_2
    iget-object v2, p0, Lcom/forthblue/pool/ui/GameScene;->playericons:[Lcom/fruitsmobile/basket/resources/Texture;

    aget-object v2, v2, v6

    goto :goto_2

    .line 1512
    :cond_3
    instance-of v1, p1, Lcom/forthblue/pool/rules/TutorialRule;

    if-eqz v1, :cond_6

    .line 1513
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->guide:Lcom/forthblue/pool/sprite/StaticImageButton;

    invoke-virtual {v1, v3}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 1514
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->score_board:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v3}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1515
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->vs_board:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v3}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1516
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->level_board:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v3}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1517
    iput v7, p0, Lcom/forthblue/pool/ui/GameScene;->mode:I

    .line 1518
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v5, :cond_4

    .line 1519
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->hole_effect:[Lcom/forthblue/pool/sprite/HoleEffectSprite;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/forthblue/pool/sprite/HoleEffectSprite;->setVisible(Z)V

    .line 1518
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1521
    :cond_4
    iput-boolean v3, p0, Lcom/forthblue/pool/ui/GameScene;->touch_screened:Z

    .line 1530
    .end local v0    # "i":I
    :cond_5
    :goto_5
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->sprite_hand:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v1, v3}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1531
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->pauseButton:Lcom/forthblue/pool/sprite/StaticImageButton;

    iget v2, p0, Lcom/forthblue/pool/ui/GameScene;->mode:I

    if-eq v2, v7, :cond_7

    move v2, v4

    :goto_6
    invoke-virtual {v1, v2}, Lcom/forthblue/pool/sprite/StaticImageButton;->setVisible(Z)V

    .line 1532
    iput v3, p0, Lcom/forthblue/pool/ui/GameScene;->pending_reward_count:I

    .line 1533
    return-void

    .line 1524
    :cond_6
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->score_board:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v3}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1525
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->vs_board:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v3}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1526
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->level_board:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v1, v4}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1527
    iput v6, p0, Lcom/forthblue/pool/ui/GameScene;->mode:I

    .line 1528
    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->level_cue_count:Lcom/forthblue/pool/sprite/IntegerSprite;

    invoke-virtual {v1, v5}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    goto :goto_5

    :cond_7
    move v2, v3

    .line 1531
    goto :goto_6
.end method

.method public setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 1537
    iput p1, p0, Lcom/forthblue/pool/ui/GameScene;->width:F

    .line 1538
    iput p2, p0, Lcom/forthblue/pool/ui/GameScene;->height:F

    .line 1540
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    invoke-virtual {v0}, Lcom/forthblue/pool/engine/PoolTable;->resetScale()V

    .line 1541
    return-void
.end method

.method public setTables(I)V
    .locals 8
    .param p1, "table_index"    # I

    .prologue
    const/4 v5, 0x0

    const-string v7, "drawable"

    const-string v6, "bg_table_"

    .line 256
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    .line 257
    invoke-direct {p0}, Lcom/forthblue/pool/ui/GameScene;->_getTableChoosed()I

    move-result v2

    .line 261
    .local v2, "x":I
    :goto_0
    rem-int/lit8 v2, v2, 0x4

    .line 262
    iget v3, p0, Lcom/forthblue/pool/ui/GameScene;->lastX:I

    if-eq v2, v3, :cond_1

    .line 264
    iget v3, p0, Lcom/forthblue/pool/ui/GameScene;->lastX:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/forthblue/pool/ui/GameScene;->lastX:I

    if-gez v3, :cond_0

    .line 265
    const/4 v3, 0x0

    iput v3, p0, Lcom/forthblue/pool/ui/GameScene;->lastX:I

    .line 266
    :cond_0
    const-string v3, "drawable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bg_table_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/forthblue/pool/ui/GameScene;->lastX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v7, v3}, Lcom/forthblue/pool/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 267
    .local v0, "resid":I
    invoke-static {v0}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v1

    .line 268
    .local v1, "texture":Lcom/fruitsmobile/basket/resources/Texture;
    invoke-static {v0}, Lcom/forthblue/pool/PoolHelper;->unLoadTexture(I)V

    .line 269
    iget-object v3, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    iget-object v3, v3, Lcom/forthblue/pool/Main;->engine:Lcom/fruitsmobile/basket/interfaces/Engine;

    invoke-interface {v3, v1}, Lcom/fruitsmobile/basket/interfaces/Engine;->unLoadTexture(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 271
    const-string v3, "drawable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bg_table_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v7, v3}, Lcom/forthblue/pool/ResourceFileManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 272
    iget-object v3, p0, Lcom/forthblue/pool/ui/GameScene;->bg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-static {v0}, Lcom/forthblue/pool/PoolHelper;->loadTexture(I)Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setTexture(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 273
    iput v2, p0, Lcom/forthblue/pool/ui/GameScene;->lastX:I

    .line 276
    .end local v0    # "resid":I
    .end local v1    # "texture":Lcom/fruitsmobile/basket/resources/Texture;
    :cond_1
    iget-object v3, p0, Lcom/forthblue/pool/ui/GameScene;->stick:Lcom/forthblue/pool/sprite/PoolStick;

    const-string v4, "stick_pack"

    invoke-static {v4}, Lcom/forthblue/pool/PoolHelper;->loadTextureAtlas(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureAtlas;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stick_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/forthblue/pool/ui/GameScene;->_getStickChoosed()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fruitsmobile/basket/resources/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/forthblue/pool/sprite/PoolStick;->setTextureRegion(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    .line 278
    return-void

    .line 259
    .end local v2    # "x":I
    :cond_2
    move v2, p1

    .restart local v2    # "x":I
    goto/16 :goto_0
.end method

.method public shoot()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1885
    iget-boolean v0, p0, Lcom/forthblue/pool/ui/GameScene;->paused:Z

    if-nez v0, :cond_0

    .line 1886
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    iget v1, p0, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    iget v2, p0, Lcom/forthblue/pool/ui/GameScene;->aimPx:F

    iget v3, p0, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    iget v4, p0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/forthblue/pool/engine/PoolTable;->click(FFFF)V

    .line 1887
    iput v5, p0, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    .line 1888
    iput v5, p0, Lcom/forthblue/pool/ui/GameScene;->aimPx:F

    .line 1889
    iput v5, p0, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    .line 1891
    :cond_0
    return-void
.end method

.method public showConfirmDialog()V
    .locals 3

    .prologue
    .line 1960
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1961
    .local v0, "alert":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u662f"

    new-instance v2, Lcom/forthblue/pool/ui/GameScene$8;

    invoke-direct {v2, p0}, Lcom/forthblue/pool/ui/GameScene$8;-><init>(Lcom/forthblue/pool/ui/GameScene;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1966
    const-string v1, "\u5426"

    new-instance v2, Lcom/forthblue/pool/ui/GameScene$9;

    invoke-direct {v2, p0}, Lcom/forthblue/pool/ui/GameScene$9;-><init>(Lcom/forthblue/pool/ui/GameScene;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1972
    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1974
    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1976
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1977
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1894
    invoke-virtual {p0}, Lcom/forthblue/pool/ui/GameScene;->resume()V

    .line 1895
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->free_count:Lcom/forthblue/pool/sprite/BitmapFontSprite;

    invoke-virtual {v0, v2}, Lcom/forthblue/pool/sprite/BitmapFontSprite;->setVisible(Z)V

    .line 1896
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1897
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->panel_shop:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1898
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->newbest:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1899
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1900
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->aimBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    invoke-virtual {v0, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1902
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->particle:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->clearAll()V

    .line 1904
    const/4 v0, 0x0

    iput v0, p0, Lcom/forthblue/pool/ui/GameScene;->centery:F

    iput v0, p0, Lcom/forthblue/pool/ui/GameScene;->centerx:F

    .line 1905
    sput-boolean v2, Lcom/fruitsmobile/basket/SpriteBase;->forceNeedRecommit:Z

    .line 1907
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->potballleft:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/SimpleContainer;->clear()V

    .line 1908
    iget-object v0, p0, Lcom/forthblue/pool/ui/GameScene;->potballright:Lcom/fruitsmobile/basket/SimpleContainer;

    invoke-virtual {v0}, Lcom/fruitsmobile/basket/SimpleContainer;->clear()V

    .line 1909
    return-void
.end method

.method public tick(J)V
    .locals 52
    .param p1, "timeSpan"    # J

    .prologue
    .line 865
    invoke-virtual/range {p0 .. p0}, Lcom/forthblue/pool/ui/GameScene;->isVisible()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1474
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->particle:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->tick(J)V

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_container:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->tick(J)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/SimpleContainer;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_board:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->tick(J)V

    .line 874
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/forthblue/pool/ui/GameScene;->pending_time:J

    move-wide v6, v0

    add-long v6, v6, p1

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/forthblue/pool/ui/GameScene;->pending_time:J

    .line 875
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->pending_reward_count:I

    move v6, v0

    if-lez v6, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/forthblue/pool/ui/GameScene;->pending_time:J

    move-wide v6, v0

    const-wide/16 v8, 0x1f4

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 876
    const-wide/16 v6, 0x0

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/forthblue/pool/ui/GameScene;->pending_time:J

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pending_reward_array:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v45, v6, v7

    .line 879
    .local v45, "reward_type":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->pending_reward_count:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->pending_reward_count:I

    .line 880
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->pending_reward_count:I

    move v6, v0

    move/from16 v0, v30

    move v1, v6

    if-ge v0, v1, :cond_3

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pending_reward_array:[I

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pending_reward_array:[I

    move-object v7, v0

    add-int/lit8 v8, v30, 0x1

    aget v7, v7, v8

    aput v7, v6, v30

    .line 880
    add-int/lit8 v30, v30, 0x1

    goto :goto_1

    .line 884
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_container:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/SimpleContainer;->getCount()I

    move-result v6

    const/16 v7, 0x1e

    if-ge v6, v7, :cond_4

    .line 885
    const/4 v5, 0x0

    .line 886
    .local v5, "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    packed-switch v45, :pswitch_data_0

    .line 935
    :goto_2
    if-eqz v5, :cond_4

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_container:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v6, v0

    invoke-virtual {v6, v5}, Lcom/fruitsmobile/basket/SimpleContainer;->addChild(Lcom/fruitsmobile/basket/DrawableObject;)V

    .line 941
    .end local v5    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    .end local v30    # "i":I
    .end local v45    # "reward_type":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 943
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortime:J

    move-wide v6, v0

    add-long v6, v6, p1

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/forthblue/pool/ui/GameScene;->honortime:J

    .line 944
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortime:J

    move-wide v6, v0

    const-wide/16 v8, 0x7d0

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    .line 946
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortime:J

    move-wide v6, v0

    const-wide/16 v8, 0x3e8

    sub-long v49, v6, v8

    .line 947
    .local v49, "t":J
    const-wide/16 v6, 0x0

    cmp-long v6, v49, v6

    if-gez v6, :cond_5

    .line 948
    const-wide/16 v49, 0x0

    .line 949
    :cond_5
    move-wide/from16 v0, v49

    long-to-float v0, v0

    move v6, v0

    const v7, 0x3a83126f

    mul-float v39, v6, v7

    .line 950
    .local v39, "p":F
    const/high16 v6, 0x3f800000

    sub-float v37, v6, v39

    .line 951
    .local v37, "mp":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v7, v0

    iget v7, v7, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    mul-float v7, v7, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v8, v0

    iget v8, v8, Lcom/forthblue/pool/sprite/IntegerSprite;->x:F

    mul-float v8, v8, v39

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setX(F)V

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v7, v0

    iget v7, v7, Lcom/forthblue/pool/engine/PoolTable;->centery:F

    mul-float v7, v7, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v8, v0

    iget v8, v8, Lcom/forthblue/pool/sprite/IntegerSprite;->y:F

    const/high16 v9, 0x41880000

    add-float/2addr v8, v9

    mul-float v8, v8, v39

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setY(F)V

    .line 954
    const-wide/16 v6, 0x4b0

    sub-long v6, v6, v49

    long-to-float v6, v6

    const v7, 0x3a83126f

    mul-float v47, v6, v7

    .line 955
    .local v47, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->honorsTexture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/fruitsmobile/basket/resources/Texture;->getImageWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v47

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setWidth(F)V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->honorsTexture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/fruitsmobile/basket/resources/Texture;->getImageHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v47

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setHeight(F)V

    .line 976
    .end local v37    # "mp":F
    .end local v39    # "p":F
    .end local v47    # "scale":F
    .end local v49    # "t":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget-object v6, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    const/4 v7, 0x0

    aget v33, v6, v7

    .line 977
    .local v33, "iscore":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/forthblue/pool/sprite/IntegerSprite;->getValue()I

    move-result v6

    add-int/lit16 v6, v6, 0xc8

    move v0, v6

    move/from16 v1, v33

    if-ge v0, v1, :cond_a

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->getValue()I

    move-result v7

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move v8, v0

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x7

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    goto/16 :goto_0

    .line 888
    .end local v33    # "iscore":I
    .restart local v5    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    .restart local v30    # "i":I
    .restart local v45    # "reward_type":I
    :pswitch_0
    new-instance v8, Lcom/forthblue/pool/sprite/TextSprite;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_font:Lcom/forthblue/pool/sprite/TileTextureFont;

    move-object v6, v0

    invoke-direct {v8, v6}, Lcom/forthblue/pool/sprite/TextSprite;-><init>(Lcom/forthblue/pool/sprite/TileTextureFont;)V

    .line 889
    .local v8, "count":Lcom/forthblue/pool/sprite/TextSprite;
    const-string v6, "-1"

    invoke-virtual {v8, v6}, Lcom/forthblue/pool/sprite/TextSprite;->setText(Ljava/lang/CharSequence;)V

    .line 890
    const v6, 0x3f666666

    iput v6, v8, Lcom/forthblue/pool/sprite/TextSprite;->scaley:F

    iput v6, v8, Lcom/forthblue/pool/sprite/TextSprite;->scalex:F

    .line 891
    const/4 v6, 0x5

    iput v6, v8, Lcom/forthblue/pool/sprite/TextSprite;->anchor:I

    .line 892
    new-instance v5, Lcom/forthblue/pool/ui/GameScene$RewardSprite;

    .end local v5    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v7, v6, v7

    const/high16 v9, 0x42480000

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;-><init>(Lcom/forthblue/pool/ui/GameScene;Lcom/fruitsmobile/basket/resources/Texture;Lcom/forthblue/pool/sprite/TextSprite;FFLcom/fruitsmobile/basket/sprites/StaticImageSprite;FF)V

    .line 893
    .restart local v5    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    const/high16 v6, -0x3dcc0000

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->setPosition(FF)V

    goto/16 :goto_2

    .line 897
    .end local v8    # "count":Lcom/forthblue/pool/sprite/TextSprite;
    :pswitch_1
    new-instance v8, Lcom/forthblue/pool/sprite/TextSprite;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_font:Lcom/forthblue/pool/sprite/TileTextureFont;

    move-object v6, v0

    invoke-direct {v8, v6}, Lcom/forthblue/pool/sprite/TextSprite;-><init>(Lcom/forthblue/pool/sprite/TileTextureFont;)V

    .line 898
    .restart local v8    # "count":Lcom/forthblue/pool/sprite/TextSprite;
    const-string v6, "-2"

    invoke-virtual {v8, v6}, Lcom/forthblue/pool/sprite/TextSprite;->setText(Ljava/lang/CharSequence;)V

    .line 899
    const/4 v6, 0x5

    iput v6, v8, Lcom/forthblue/pool/sprite/TextSprite;->anchor:I

    .line 900
    new-instance v11, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-direct {v11, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 901
    .local v11, "pre_count":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    new-instance v5, Lcom/forthblue/pool/ui/GameScene$RewardSprite;

    .end local v5    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/high16 v9, 0x420c0000

    const/high16 v10, 0x42200000

    const/high16 v12, -0x3e600000

    const/high16 v13, 0x42200000

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;-><init>(Lcom/forthblue/pool/ui/GameScene;Lcom/fruitsmobile/basket/resources/Texture;Lcom/forthblue/pool/sprite/TextSprite;FFLcom/fruitsmobile/basket/sprites/StaticImageSprite;FF)V

    .line 902
    .restart local v5    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget v6, v6, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    const/high16 v7, -0x3e600000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->setPosition(FF)V

    goto/16 :goto_2

    .line 906
    .end local v8    # "count":Lcom/forthblue/pool/sprite/TextSprite;
    .end local v11    # "pre_count":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    :pswitch_2
    new-instance v5, Lcom/forthblue/pool/ui/GameScene$RewardSprite;

    .end local v5    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v6, v0

    const/4 v7, 0x2

    aget-object v14, v6, v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v5

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v20}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;-><init>(Lcom/forthblue/pool/ui/GameScene;Lcom/fruitsmobile/basket/resources/Texture;Lcom/forthblue/pool/sprite/TextSprite;FFLcom/fruitsmobile/basket/sprites/StaticImageSprite;FF)V

    .line 907
    .restart local v5    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget v6, v6, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v7, v0

    iget v7, v7, Lcom/forthblue/pool/engine/PoolTable;->centery:F

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->setPosition(FF)V

    goto/16 :goto_2

    .line 911
    :pswitch_3
    new-instance v5, Lcom/forthblue/pool/ui/GameScene$RewardSprite;

    .end local v5    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v6, v0

    const/4 v7, 0x3

    aget-object v14, v6, v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v12, v5

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v20}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;-><init>(Lcom/forthblue/pool/ui/GameScene;Lcom/fruitsmobile/basket/resources/Texture;Lcom/forthblue/pool/sprite/TextSprite;FFLcom/fruitsmobile/basket/sprites/StaticImageSprite;FF)V

    .line 912
    .restart local v5    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget v6, v6, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v7, v0

    iget v7, v7, Lcom/forthblue/pool/engine/PoolTable;->centery:F

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->setPosition(FF)V

    goto/16 :goto_2

    .line 917
    :pswitch_4
    new-instance v8, Lcom/forthblue/pool/sprite/TextSprite;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_font:Lcom/forthblue/pool/sprite/TileTextureFont;

    move-object v6, v0

    invoke-direct {v8, v6}, Lcom/forthblue/pool/sprite/TextSprite;-><init>(Lcom/forthblue/pool/sprite/TileTextureFont;)V

    .line 918
    .restart local v8    # "count":Lcom/forthblue/pool/sprite/TextSprite;
    const-string v6, "-1"

    invoke-virtual {v8, v6}, Lcom/forthblue/pool/sprite/TextSprite;->setText(Ljava/lang/CharSequence;)V

    .line 919
    const/4 v6, 0x5

    iput v6, v8, Lcom/forthblue/pool/sprite/TextSprite;->anchor:I

    .line 920
    new-instance v11, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v6, v0

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-direct {v11, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 921
    .restart local v11    # "pre_count":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    new-instance v5, Lcom/forthblue/pool/ui/GameScene$RewardSprite;

    .end local v5    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v6, v0

    const/4 v7, 0x4

    aget-object v7, v6, v7

    const/high16 v9, 0x420c0000

    const/high16 v10, 0x42700000

    const/high16 v12, -0x3e600000

    const/high16 v13, 0x42700000

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;-><init>(Lcom/forthblue/pool/ui/GameScene;Lcom/fruitsmobile/basket/resources/Texture;Lcom/forthblue/pool/sprite/TextSprite;FFLcom/fruitsmobile/basket/sprites/StaticImageSprite;FF)V

    .line 922
    .restart local v5    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget v6, v6, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    const/high16 v7, -0x3e100000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->setPosition(FF)V

    goto/16 :goto_2

    .line 926
    .end local v8    # "count":Lcom/forthblue/pool/sprite/TextSprite;
    .end local v11    # "pre_count":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    :pswitch_5
    new-instance v8, Lcom/forthblue/pool/sprite/TextSprite;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_font:Lcom/forthblue/pool/sprite/TileTextureFont;

    move-object v6, v0

    invoke-direct {v8, v6}, Lcom/forthblue/pool/sprite/TextSprite;-><init>(Lcom/forthblue/pool/sprite/TileTextureFont;)V

    .line 927
    .restart local v8    # "count":Lcom/forthblue/pool/sprite/TextSprite;
    const-string v6, "+1"

    invoke-virtual {v8, v6}, Lcom/forthblue/pool/sprite/TextSprite;->setText(Ljava/lang/CharSequence;)V

    .line 928
    const/4 v6, 0x5

    iput v6, v8, Lcom/forthblue/pool/sprite/TextSprite;->anchor:I

    .line 929
    new-instance v11, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-direct {v11, v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;-><init>(Lcom/fruitsmobile/basket/resources/Texture;)V

    .line 930
    .restart local v11    # "pre_count":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    new-instance v5, Lcom/forthblue/pool/ui/GameScene$RewardSprite;

    .end local v5    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_texture:[Lcom/fruitsmobile/basket/resources/Texture;

    move-object v6, v0

    const/4 v7, 0x3

    aget-object v7, v6, v7

    const/high16 v9, 0x42000000

    const/high16 v10, 0x42700000

    const/high16 v12, -0x3e480000

    const/high16 v13, 0x42700000

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;-><init>(Lcom/forthblue/pool/ui/GameScene;Lcom/fruitsmobile/basket/resources/Texture;Lcom/forthblue/pool/sprite/TextSprite;FFLcom/fruitsmobile/basket/sprites/StaticImageSprite;FF)V

    .line 931
    .restart local v5    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget v6, v6, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    const/high16 v7, -0x3e100000

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/ui/GameScene$RewardSprite;->setPosition(FF)V

    goto/16 :goto_2

    .line 958
    .end local v5    # "x_sprite":Lcom/forthblue/pool/ui/GameScene$RewardSprite;
    .end local v8    # "count":Lcom/forthblue/pool/sprite/TextSprite;
    .end local v11    # "pre_count":Lcom/fruitsmobile/basket/sprites/StaticImageSprite;
    .end local v30    # "i":I
    .end local v45    # "reward_type":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v6, v0

    if-ltz v6, :cond_8

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v6, v0

    instance-of v6, v6, Lcom/forthblue/pool/rules/TimeRuleBase;

    if-eqz v6, :cond_7

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v5, v0

    check-cast v5, Lcom/forthblue/pool/rules/TimeRuleBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/forthblue/pool/rules/TimeRuleBase;->addHonorScore(Lcom/forthblue/pool/rules/PoolRule$RoundState;I)V

    .line 961
    :cond_7
    const/4 v6, -0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/forthblue/pool/engine/PoolTable;->newMatch()V

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->outLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/AimLine;->setVisible(Z)V

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v6, v0

    invoke-interface {v6}, Lcom/forthblue/pool/rules/PoolRule;->getDefaultAimAngle()F

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    .line 965
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimPx:F

    .line 966
    invoke-virtual/range {p0 .. p0}, Lcom/forthblue/pool/ui/GameScene;->calcAimTarget()V

    .line 969
    :cond_8
    const-wide/16 v6, 0xbb8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortime:J

    move-wide v8, v0

    sub-long/2addr v6, v8

    long-to-float v6, v6

    const v7, 0x3a83126f

    mul-float v21, v6, v7

    .line 970
    .local v21, "a":F
    const/4 v6, 0x0

    cmpg-float v6, v21, v6

    if-gtz v6, :cond_9

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    goto/16 :goto_3

    .line 973
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setAlpha(F)V

    goto/16 :goto_3

    .line 979
    .end local v21    # "a":F
    .restart local v33    # "iscore":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/forthblue/pool/sprite/IntegerSprite;->getValue()I

    move-result v6

    move v0, v6

    move/from16 v1, v33

    if-ge v0, v1, :cond_b

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->getValue()I

    move-result v7

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move v8, v0

    div-int/lit8 v8, v8, 0x14

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    goto/16 :goto_0

    .line 981
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/forthblue/pool/sprite/IntegerSprite;->getValue()I

    move-result v6

    move v0, v6

    move/from16 v1, v33

    if-le v0, v1, :cond_0

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    goto/16 :goto_0

    .line 985
    .end local v33    # "iscore":I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->mode:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_count:I

    move v6, v0

    if-lez v6, :cond_f

    .line 986
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_count:I

    move v7, v0

    if-ge v6, v7, :cond_16

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v7, v0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->isVisible()Z

    move-result v6

    if-nez v6, :cond_d

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v7, v0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 989
    const-wide/16 v6, 0x0

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/forthblue/pool/ui/GameScene;->honortime:J

    .line 991
    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortime:J

    move-wide v6, v0

    add-long v6, v6, p1

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/forthblue/pool/ui/GameScene;->honortime:J

    .line 992
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortime:J

    move-wide v6, v0

    const-wide/16 v8, 0x1f4

    cmp-long v6, v6, v8

    if-gez v6, :cond_13

    .line 993
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortime:J

    move-wide v6, v0

    const-wide/16 v8, 0xc8

    sub-long v49, v6, v8

    .line 994
    .restart local v49    # "t":J
    const-wide/16 v6, 0x0

    cmp-long v6, v49, v6

    if-gez v6, :cond_e

    .line 995
    const-wide/16 v49, 0x0

    .line 996
    :cond_e
    move-wide/from16 v0, v49

    long-to-float v0, v0

    move v6, v0

    const v7, 0x3b5a3c21

    mul-float v39, v6, v7

    .line 997
    .restart local v39    # "p":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v7, v0

    aget-object v6, v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got_x:[F

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v8, v0

    aget v7, v7, v8

    mul-float v7, v7, v39

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setX(F)V

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v7, v0

    aget-object v6, v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got_y:[F

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v8, v0

    aget v7, v7, v8

    mul-float v7, v7, v39

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setY(F)V

    .line 1000
    const-wide/16 v6, 0x14d

    sub-long v6, v6, v49

    long-to-float v6, v6

    const v7, 0x3cf5c28f

    mul-float v47, v6, v7

    .line 1001
    .restart local v47    # "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v7, v0

    aget-object v6, v6, v7

    const/high16 v7, 0x41b80000

    mul-float v7, v7, v47

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setWidth(F)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v7, v0

    aget-object v6, v6, v7

    const/high16 v7, 0x41b80000

    mul-float v7, v7, v47

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setHeight(F)V

    .line 1032
    .end local v39    # "p":F
    .end local v47    # "scale":F
    .end local v49    # "t":J
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v6, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2e

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->reward_container:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/SimpleContainer;->getCount()I

    move-result v6

    if-eqz v6, :cond_17

    .line 1417
    :cond_10
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->mode:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_11

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget-object v6, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    const/4 v7, 0x0

    aget v33, v6, v7

    .line 1419
    .restart local v33    # "iscore":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/forthblue/pool/sprite/IntegerSprite;->getValue()I

    move-result v28

    .line 1420
    .local v28, "current_score_show":I
    move/from16 v0, v28

    add-int/lit16 v0, v0, 0x2710

    move v6, v0

    move v0, v6

    move/from16 v1, v33

    if-ge v0, v1, :cond_55

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move v7, v0

    add-int v7, v7, v28

    add-int/lit16 v7, v7, 0x1389

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    .line 1430
    .end local v28    # "current_score_show":I
    .end local v33    # "iscore":I
    :cond_11
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->lastButtonId:I

    move v6, v0

    if-ltz v6, :cond_12

    .line 1431
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->lastButtonId:I

    move v6, v0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->onButtonClick(I)V

    .line 1432
    const/4 v6, -0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->lastButtonId:I

    .line 1441
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v6, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->lastFouledPlayer:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v6, v0

    invoke-interface {v6}, Lcom/forthblue/pool/rules/PoolRule;->getPlayerCount()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    move-object v0, v6

    iget v0, v0, Lcom/forthblue/pool/rules/PoolRule$RoundState;->lastFouledPlayer:I

    move/from16 v43, v0

    .line 1444
    .local v43, "player":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    const/4 v7, -0x1

    iput v7, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->lastFouledPlayer:I

    .line 1446
    sget v6, Lcom/forthblue/pool/rules/VsaiRuleBase;->not_ai_player_count:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_59

    .line 1447
    if-nez v43, :cond_58

    const/4 v6, 0x2

    move/from16 v38, v6

    .line 1451
    .local v38, "msgid":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    move-object v6, v0

    new-instance v7, Lcom/forthblue/pool/ui/GameScene$4;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/forthblue/pool/ui/GameScene$4;-><init>(Lcom/forthblue/pool/ui/GameScene;I)V

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/Main;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1004
    .end local v38    # "msgid":I
    .end local v43    # "player":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v7, v0

    aget-object v6, v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got_x:[F

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v8, v0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got_y:[F

    move-object v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v9, v0

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v7, v0

    aget-object v6, v6, v7

    const/high16 v7, 0x41b80000

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setWidth(F)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v7, v0

    aget-object v6, v6, v7

    const/high16 v7, 0x41b80000

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setHeight(F)V

    .line 1008
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_8
    const/16 v6, 0xa

    move/from16 v0, v30

    move v1, v6

    if-ge v0, v1, :cond_14

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->particle:Lcom/fruitsmobile/basket/particle/StaticImageParticle;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/particle/StaticImageParticle;->alloc()Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;

    move-result-object v40

    .line 1010
    .local v40, "particle_sprite":Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;
    if-nez v40, :cond_15

    .line 1024
    .end local v40    # "particle_sprite":Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    goto/16 :goto_4

    .line 1012
    .restart local v40    # "particle_sprite":Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got_x:[F

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v7, v0

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const/high16 v8, 0x3f000000

    sub-float/2addr v7, v8

    const/high16 v8, 0x41a00000

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, v40

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->x:F

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->star_got_y:[F

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortype:I

    move v7, v0

    aget v6, v6, v7

    move v0, v6

    move-object/from16 v1, v40

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->y:F

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const/high16 v7, 0x3f000000

    sub-float/2addr v6, v7

    const/high16 v7, 0x40800000

    mul-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, v40

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->vx:F

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const/high16 v7, 0x3f000000

    sub-float/2addr v6, v7

    const/high16 v7, 0x41000000

    mul-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, v40

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->vy:F

    .line 1016
    const/high16 v6, 0x43b40000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    mul-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, v40

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->angle:F

    .line 1017
    const/high16 v6, 0x40a00000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x41200000

    add-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, v40

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusx:F

    move v0, v6

    move-object/from16 v1, v40

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->radiusy:F

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const/high16 v7, 0x3f800000

    mul-float/2addr v6, v7

    const v7, 0x3e4ccccd

    add-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, v40

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->dismiss:F

    .line 1019
    const v6, 0x3f666666

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    const/high16 v8, 0x3f000000

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, v40

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->alpha:F

    .line 1020
    const v6, 0x3ecccccd

    const v7, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, v40

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->red:F

    .line 1021
    const v6, 0x3ecccccd

    const v7, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, v40

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->blue:F

    .line 1022
    const v6, 0x3ecccccd

    const v7, 0x3f4ccccd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->random:Ljava/util/Random;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, v40

    iput v0, v1, Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;->green:F

    .line 1008
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_8

    .line 1026
    .end local v30    # "i":I
    .end local v40    # "particle_sprite":Lcom/fruitsmobile/basket/particle/StaticImageParticle$ParticleSprite;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenuButtons:[Lcom/forthblue/pool/sprite/StaticImageButton;

    move-object v6, v0

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/forthblue/pool/sprite/StaticImageButton;->isVisible()Z

    move-result v6

    if-nez v6, :cond_f

    .line 1027
    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/forthblue/pool/ui/GameScene;->setGameEndButton(IZ)V

    .line 1028
    invoke-static {}, Lcom/forthblue/pool/DoodleHelper;->showFeatureGame()V

    goto/16 :goto_4

    .line 1035
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/SimpleContainer;->isVisible()Z

    move-result v6

    if-nez v6, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->panel_shop:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/SimpleContainer;->isVisible()Z

    move-result v6

    if-nez v6, :cond_2a

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v6, v0

    invoke-interface {v6}, Lcom/forthblue/pool/rules/PoolRule;->getPlayerCount()I

    move-result v42

    .line 1037
    .local v42, "play_count":I
    const/4 v6, 0x4

    move/from16 v0, v42

    move v1, v6

    if-ne v0, v1, :cond_19

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/forthblue/pool/Main;->guideShowed:Z

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/forthblue/pool/Main;->savePreference()V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->last_rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v6, v0

    if-nez v6, :cond_18

    .line 1041
    const/4 v6, 0x1

    sput-boolean v6, Lcom/forthblue/pool/rules/RuleImplBase;->isPractice:Z

    .line 1042
    new-instance v46, Lcom/forthblue/pool/rules/Vsai8Ball;

    invoke-direct/range {v46 .. v46}, Lcom/forthblue/pool/rules/Vsai8Ball;-><init>()V

    .line 1043
    .local v46, "rule":Lcom/forthblue/pool/rules/Vsai8Ball;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    iget v6, v6, Lcom/forthblue/pool/ui/MenuScene;->difficulty:I

    move v0, v6

    move-object/from16 v1, v46

    iput v0, v1, Lcom/forthblue/pool/rules/Vsai8Ball;->difficulty:I

    .line 1044
    const/4 v6, 0x1

    sput v6, Lcom/forthblue/pool/rules/VsaiRuleBase;->not_ai_player_count:I

    .line 1045
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->setRule(Lcom/forthblue/pool/rules/PoolRule;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/forthblue/pool/engine/PoolTable;->getRoundState()Lcom/forthblue/pool/rules/PoolRule$RoundState;

    move-result-object v6

    const/4 v7, 0x0

    iput v7, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    .line 1052
    .end local v46    # "rule":Lcom/forthblue/pool/rules/Vsai8Ball;
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->pending_reward_count:I

    move v6, v0

    const/16 v7, 0xa

    if-ge v6, v7, :cond_0

    .line 1053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pending_reward_array:[I

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->pending_reward_count:I

    move v7, v0

    add-int/lit8 v8, v7, 0x1

    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->pending_reward_count:I

    const/4 v8, 0x3

    aput v8, v6, v7

    goto/16 :goto_0

    .line 1049
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->last_rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->setRule(Lcom/forthblue/pool/rules/PoolRule;)V

    goto :goto_9

    .line 1058
    :cond_19
    const/4 v6, 0x2

    move/from16 v0, v42

    move v1, v6

    if-ne v0, v1, :cond_21

    .line 1059
    invoke-static {}, Lcom/forthblue/pool/DoodleHelper;->showFeatureGame()V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->time_up_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->newbest:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1064
    invoke-direct/range {p0 .. p0}, Lcom/forthblue/pool/ui/GameScene;->hideArcadeGameEndSprites()V

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v7, v0

    iget-object v7, v7, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v7, v7, Lcom/forthblue/pool/rules/PoolRule$RoundState;->winner:I

    invoke-interface {v6, v7}, Lcom/forthblue/pool/rules/PoolRule;->getPlayerType(I)I

    move-result v51

    .line 1068
    .local v51, "winnertype":I
    sget v6, Lcom/forthblue/pool/rules/VsaiRuleBase;->not_ai_player_count:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1e

    .line 1069
    const/16 v32, 0x1

    .line 1070
    .local v32, "irule":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v6, v0

    invoke-interface {v6}, Lcom/forthblue/pool/rules/PoolRule;->getBallCount()I

    move-result v6

    const/16 v7, 0x10

    if-ne v6, v7, :cond_1a

    .line 1071
    const/16 v32, 0x0

    .line 1073
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v5, v0

    check-cast v5, Lcom/forthblue/pool/rules/VsaiRuleBase;

    move-object v0, v5

    iget v0, v0, Lcom/forthblue/pool/rules/VsaiRuleBase;->difficulty:I

    move/from16 v36, v0

    .line 1075
    .local v36, "lvl":I
    if-nez v51, :cond_1b

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    move-object v0, v6

    move/from16 v1, v32

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/ui/MenuScene;->onWin(II)V

    .line 1080
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/forthblue/pool/ui/GameScene;->hideVsPlayerGameEndSprites()V

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->you_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    if-nez v51, :cond_1c

    const/4 v7, 0x1

    :goto_b
    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->you_lose_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x1

    move/from16 v0, v51

    move v1, v7

    if-ne v0, v1, :cond_1d

    const/4 v7, 0x1

    :goto_c
    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1089
    .end local v32    # "irule":I
    .end local v36    # "lvl":I
    :goto_d
    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/forthblue/pool/ui/GameScene;->setGameEndButton(IZ)V

    .line 1148
    .end local v51    # "winnertype":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameEndMenu:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/SimpleContainer;->setVisible(Z)V

    goto/16 :goto_5

    .line 1078
    .restart local v32    # "irule":I
    .restart local v36    # "lvl":I
    .restart local v51    # "winnertype":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    move-object v0, v6

    move/from16 v1, v32

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/ui/MenuScene;->onLose(II)V

    goto :goto_a

    .line 1081
    :cond_1c
    const/4 v7, 0x0

    goto :goto_b

    .line 1082
    :cond_1d
    const/4 v7, 0x0

    goto :goto_c

    .line 1085
    .end local v32    # "irule":I
    .end local v36    # "lvl":I
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/forthblue/pool/ui/GameScene;->hideVsComputerGameEndSprites()V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->player_1_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v7, v0

    iget-object v7, v7, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v7, v7, Lcom/forthblue/pool/rules/PoolRule$RoundState;->winner:I

    if-nez v7, :cond_1f

    const/4 v7, 0x1

    :goto_f
    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->player_2_win_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v7, v0

    iget-object v7, v7, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v7, v7, Lcom/forthblue/pool/rules/PoolRule$RoundState;->winner:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_20

    const/4 v7, 0x1

    :goto_10
    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    goto :goto_d

    .line 1086
    :cond_1f
    const/4 v7, 0x0

    goto :goto_f

    .line 1087
    :cond_20
    const/4 v7, 0x0

    goto :goto_10

    .line 1091
    .end local v51    # "winnertype":I
    :cond_21
    const/4 v6, 0x3

    move/from16 v0, v42

    move v1, v6

    if-ne v0, v1, :cond_25

    .line 1092
    invoke-direct/range {p0 .. p0}, Lcom/forthblue/pool/ui/GameScene;->hideVsComputerGameEndSprites()V

    .line 1093
    invoke-direct/range {p0 .. p0}, Lcom/forthblue/pool/ui/GameScene;->hideVsPlayerGameEndSprites()V

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->time_up_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v6, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->winner:I

    if-nez v6, :cond_23

    const/4 v6, 0x1

    move/from16 v35, v6

    .line 1097
    .local v35, "level_passed":Z
    :goto_11
    if-eqz v35, :cond_24

    .line 1098
    const/4 v6, 0x4

    const/high16 v7, 0x3f800000

    invoke-static {v6, v7}, Lcom/fruitsmobile/basket/audio/SoundManager;->playSound(IF)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_complete_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_failed_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_score_bg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->game_over_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->setVisible(Z)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->game_over_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    const/high16 v7, 0x3fc00000

    iput v7, v6, Lcom/forthblue/pool/sprite/IntegerSprite;->alpha:F

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v6, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->restTime:I

    if-lez v6, :cond_22

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget-object v6, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    const/4 v7, 0x0

    aget v8, v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v9, v0

    iget-object v9, v9, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v9, v9, Lcom/forthblue/pool/rules/PoolRule$RoundState;->restTime:I

    mul-int/lit16 v9, v9, 0x2710

    add-int/2addr v8, v9

    aput v8, v6, v7

    .line 1108
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->game_over_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v7, v0

    iget-object v7, v7, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget-object v7, v7, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v7, v0

    iget-object v7, v7, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget-object v7, v7, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/Main;->saveScore(I)I

    move-result v48

    .line 1111
    .local v48, "score_count":I
    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->resetStars(I)V

    goto/16 :goto_e

    .line 1095
    .end local v35    # "level_passed":Z
    .end local v48    # "score_count":I
    :cond_23
    const/4 v6, 0x0

    move/from16 v35, v6

    goto/16 :goto_11

    .line 1114
    .restart local v35    # "level_passed":Z
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_complete_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_failed_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->game_over_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->setVisible(Z)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_score_bg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1118
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->resetStars(I)V

    .line 1119
    const/4 v6, 0x2

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/forthblue/pool/ui/GameScene;->setGameEndButton(IZ)V

    .line 1120
    invoke-static {}, Lcom/forthblue/pool/DoodleHelper;->showFeatureGame()V

    goto/16 :goto_e

    .line 1124
    .end local v35    # "level_passed":Z
    :cond_25
    invoke-static {}, Lcom/forthblue/pool/DoodleHelper;->showFeatureGame()V

    .line 1125
    invoke-direct/range {p0 .. p0}, Lcom/forthblue/pool/ui/GameScene;->hideVsComputerGameEndSprites()V

    .line 1126
    invoke-direct/range {p0 .. p0}, Lcom/forthblue/pool/ui/GameScene;->hideVsPlayerGameEndSprites()V

    .line 1127
    invoke-direct/range {p0 .. p0}, Lcom/forthblue/pool/ui/GameScene;->hideArcadeGameEndSprites()V

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->time_up_title:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1130
    sget-boolean v6, Lcom/forthblue/pool/rules/RuleImplBase;->isPractice:Z

    if-nez v6, :cond_27

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget-object v6, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    const/4 v7, 0x0

    aget v33, v6, v7

    .line 1133
    .restart local v33    # "iscore":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/forthblue/pool/sprite/IntegerSprite;->getValue()I

    move-result v6

    add-int/lit16 v6, v6, 0xc8

    move v0, v6

    move/from16 v1, v33

    if-ge v0, v1, :cond_28

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->getValue()I

    move-result v7

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move v8, v0

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x7

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    .line 1140
    :cond_26
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->main:Lcom/forthblue/pool/Main;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/Main;->menu_scene:Lcom/forthblue/pool/ui/MenuScene;

    move-object v0, v6

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/ui/MenuScene;->saveScore(I)Z

    move-result v23

    .line 1141
    .local v23, "bNewBest":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->newbest:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1142
    if-eqz v23, :cond_27

    .line 1143
    invoke-direct/range {p0 .. p0}, Lcom/forthblue/pool/ui/GameScene;->resetNewBestIcon()V

    .line 1146
    .end local v23    # "bNewBest":Z
    .end local v33    # "iscore":I
    :cond_27
    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/forthblue/pool/ui/GameScene;->setGameEndButton(IZ)V

    goto/16 :goto_e

    .line 1135
    .restart local v33    # "iscore":I
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/forthblue/pool/sprite/IntegerSprite;->getValue()I

    move-result v6

    move v0, v6

    move/from16 v1, v33

    if-ge v0, v1, :cond_29

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->getValue()I

    move-result v7

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move v8, v0

    div-int/lit8 v8, v8, 0x14

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    goto :goto_12

    .line 1137
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/forthblue/pool/sprite/IntegerSprite;->getValue()I

    move-result v6

    move v0, v6

    move/from16 v1, v33

    if-le v0, v1, :cond_26

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    goto :goto_12

    .line 1151
    .end local v33    # "iscore":I
    .end local v42    # "play_count":I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->newbest:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->newbest:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->getAlpha()F

    move-result v22

    .line 1154
    .local v22, "alpha":F
    const/high16 v6, 0x3f800000

    cmpg-float v6, v22, v6

    if-gez v6, :cond_2c

    .line 1155
    move-wide/from16 v0, p1

    long-to-float v0, v0

    move v6, v0

    const v7, 0x3b03126f

    mul-float/2addr v6, v7

    add-float v22, v22, v6

    .line 1156
    const v6, 0x3f733333

    cmpl-float v6, v22, v6

    if-ltz v6, :cond_2b

    .line 1157
    const/high16 v22, 0x3f800000

    .line 1158
    const/4 v6, 0x5

    invoke-static {v6}, Lcom/fruitsmobile/basket/audio/SoundManager;->playSound(I)V

    .line 1160
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->newbest:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setAlpha(F)V

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->newbest:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->getTexture()Lcom/fruitsmobile/basket/resources/Texture;

    move-result-object v49

    .line 1162
    .local v49, "t":Lcom/fruitsmobile/basket/resources/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->newbest:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual/range {v49 .. v49}, Lcom/fruitsmobile/basket/resources/Texture;->getImageWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v22

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setWidth(F)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->newbest:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual/range {v49 .. v49}, Lcom/fruitsmobile/basket/resources/Texture;->getImageHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v22

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setHeight(F)V

    .line 1164
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->shakeTime:F

    .line 1165
    const/high16 v6, 0x41a00000

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->shakeStrength:F

    goto/16 :goto_5

    .line 1166
    .end local v49    # "t":Lcom/fruitsmobile/basket/resources/Texture;
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->shakeStrength:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2d

    .line 1167
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->shakeTime:F

    move v6, v0

    move-wide/from16 v0, p1

    long-to-float v0, v0

    move v7, v0

    const/high16 v8, 0x40200000

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->shakeTime:F

    .line 1168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->shakeTime:F

    move v6, v0

    const v7, 0x3fc90fdb

    mul-float/2addr v6, v7

    invoke-static {v6}, Lcom/fruitsmobile/basket/math/MathUtil;->sin(F)F

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->shakeStrength:F

    move v7, v0

    mul-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->centerx:F

    .line 1169
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->shakeTime:F

    move v6, v0

    invoke-static {v6}, Lcom/fruitsmobile/basket/math/MathUtil;->sin(F)F

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->shakeStrength:F

    move v7, v0

    mul-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->centery:F

    .line 1170
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->shakeStrength:F

    move v6, v0

    move-wide/from16 v0, p1

    long-to-float v0, v0

    move v7, v0

    const v8, 0x3ca3d70a

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->shakeStrength:F

    .line 1171
    const/4 v6, 0x1

    sput-boolean v6, Lcom/fruitsmobile/basket/SpriteBase;->forceNeedRecommit:Z

    goto/16 :goto_5

    .line 1173
    :cond_2d
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->centery:F

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->centerx:F

    goto/16 :goto_5

    .line 1178
    .end local v22    # "alpha":F
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->guideback:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->isVisible()Z

    move-result v6

    if-nez v6, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/forthblue/pool/ui/GameScene;->paused:Z

    move v6, v0

    if-nez v6, :cond_10

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->gameAll:Lcom/fruitsmobile/basket/SimpleContainer;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/SimpleContainer;->tick(J)V

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v6, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    if-nez v6, :cond_36

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->flashleft:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->flashright:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1190
    :goto_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->lastAlpha:F

    move/from16 v22, v0

    .line 1191
    .restart local v22    # "alpha":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->dalpha:F

    move v6, v0

    move-wide/from16 v0, p1

    long-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    const v7, 0x3b03126f

    mul-float/2addr v6, v7

    add-float v22, v22, v6

    .line 1192
    const/4 v6, 0x0

    cmpg-float v6, v22, v6

    if-gez v6, :cond_2f

    .line 1193
    const/16 v22, 0x0

    .line 1194
    const/high16 v6, 0x3f800000

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->dalpha:F

    .line 1196
    :cond_2f
    const/high16 v6, 0x3f800000

    cmpl-float v6, v22, v6

    if-lez v6, :cond_30

    .line 1197
    const/high16 v22, 0x3f800000

    .line 1198
    const/high16 v6, -0x40800000

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->dalpha:F

    .line 1200
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->flashleft:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setAlpha(F)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->flashright:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setAlpha(F)V

    .line 1202
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->lastAlpha:F

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v6, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_38

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v7, v0

    iget-object v7, v7, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v7, v7, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    invoke-interface {v6, v7}, Lcom/forthblue/pool/rules/PoolRule;->getPlayerType(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_32

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/forthblue/pool/engine/PoolTable;->bAIActived:Z

    if-nez v6, :cond_31

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    move v7, v0

    iput v7, v6, Lcom/forthblue/pool/engine/PoolTable;->aiangle:F

    .line 1210
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/engine/PoolTable;->tickAI(J)V

    .line 1213
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v7, v0

    iget-object v7, v7, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    invoke-interface {v6, v7}, Lcom/forthblue/pool/rules/PoolRule;->getClickTarget(Lcom/forthblue/pool/rules/PoolRule$RoundState;)I

    move-result v31

    .line 1214
    .local v31, "ind":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v24, v6, v31

    .line 1215
    .local v24, "ball0":Lcom/forthblue/pool/engine/PoolBall;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget v6, v6, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    move-object/from16 v0, v24

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v8, v0

    iget v8, v8, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    mul-float/2addr v7, v8

    add-float v26, v6, v7

    .line 1216
    .local v26, "ballx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget v6, v6, Lcom/forthblue/pool/engine/PoolTable;->centery:F

    move-object/from16 v0, v24

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v8, v0

    iget v8, v8, Lcom/forthblue/pool/engine/PoolTable;->scaley:F

    mul-float/2addr v7, v8

    add-float v27, v6, v7

    .line 1217
    .local v27, "bally":F
    move-object/from16 v0, v24

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->scale:F

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v7, v0

    iget v7, v7, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    mul-float v25, v6, v7

    .line 1218
    .local v25, "ballr":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->freeball:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->freeball:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->freeball:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/high16 v7, 0x40a00000

    mul-float v7, v7, v25

    const/high16 v8, 0x40a00000

    mul-float v8, v8, v25

    invoke-virtual {v6, v7, v8}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setSize(FF)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->freeball_na:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v8, v0

    iget-object v8, v8, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move v9, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move v10, v0

    move-object v0, v7

    move-object v1, v8

    move/from16 v2, v31

    move v3, v9

    move v4, v10

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/forthblue/pool/rules/PoolRule;->canPut([Lcom/forthblue/pool/engine/PoolBall;IFF)Z

    move-result v7

    if-nez v7, :cond_37

    const/4 v7, 0x1

    :goto_14
    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->freeball_na:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stick:Lcom/forthblue/pool/sprite/PoolStick;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/PoolStick;->setVisible(Z)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stickShadow:Lcom/forthblue/pool/sprite/PoolStick;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/PoolStick;->setVisible(Z)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/AimLine;->setVisible(Z)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->outLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/AimLine;->setVisible(Z)V

    .line 1384
    .end local v24    # "ball0":Lcom/forthblue/pool/engine/PoolBall;
    .end local v25    # "ballr":F
    .end local v26    # "ballx":F
    .end local v27    # "bally":F
    .end local v31    # "ind":I
    :cond_33
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v6, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v6, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_35

    .line 1385
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stick:Lcom/forthblue/pool/sprite/PoolStick;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/PoolStick;->setVisible(Z)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stickShadow:Lcom/forthblue/pool/sprite/PoolStick;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/PoolStick;->setVisible(Z)V

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/AimLine;->setVisible(Z)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->outLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/AimLine;->setVisible(Z)V

    .line 1392
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimPosition:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/high16 v7, -0x3e2c0000

    const/high16 v8, 0x41800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimPx:F

    move v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const v8, 0x43568000

    const/high16 v9, 0x41800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    move v10, v0

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 1394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->mode:I

    move v6, v0

    if-nez v6, :cond_10

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v6, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->restTime:I

    move v0, v6

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v44, v0

    .line 1397
    .local v44, "rest":I
    sget-boolean v6, Lcom/forthblue/pool/rules/TimeRuleBase;->isPractice:Z

    if-eqz v6, :cond_52

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->timeMinute:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    const-string v7, "--"

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(Ljava/lang/CharSequence;)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->timeSecond:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    const-string v7, "--"

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(Ljava/lang/CharSequence;)V

    .line 1405
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget-object v6, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->playerScore:[I

    const/4 v7, 0x0

    aget v33, v6, v7

    .line 1407
    .restart local v33    # "iscore":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/forthblue/pool/sprite/IntegerSprite;->getValue()I

    move-result v6

    add-int/lit16 v6, v6, 0xc8

    move v0, v6

    move/from16 v1, v33

    if-ge v0, v1, :cond_53

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->getValue()I

    move-result v7

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move v8, v0

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x7

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    goto/16 :goto_5

    .line 1186
    .end local v22    # "alpha":F
    .end local v33    # "iscore":I
    .end local v44    # "rest":I
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->flashleft:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->flashright:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    goto/16 :goto_13

    .line 1222
    .restart local v22    # "alpha":F
    .restart local v24    # "ball0":Lcom/forthblue/pool/engine/PoolBall;
    .restart local v25    # "ballr":F
    .restart local v26    # "ballx":F
    .restart local v27    # "bally":F
    .restart local v31    # "ind":I
    :cond_37
    const/4 v7, 0x0

    goto/16 :goto_14

    .line 1230
    .end local v24    # "ball0":Lcom/forthblue/pool/engine/PoolBall;
    .end local v25    # "ballr":F
    .end local v26    # "ballx":F
    .end local v27    # "bally":F
    .end local v31    # "ind":I
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v6, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_33

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->freeball:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->freeball_na:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v6, v0

    invoke-interface {v6}, Lcom/forthblue/pool/rules/PoolRule;->getPlayerCount()I

    move-result v42

    .line 1235
    .restart local v42    # "play_count":I
    const/16 v29, 0x1

    .line 1238
    .local v29, "flag":Z
    const/4 v6, 0x4

    move/from16 v0, v42

    move v1, v6

    if-ne v0, v1, :cond_45

    .line 1239
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/forthblue/pool/ui/GameScene;->touch_screened:Z

    move v6, v0

    if-nez v6, :cond_3e

    .line 1240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aim_angle_accel:F

    move v7, v0

    add-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    .line 1241
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aim_angle_accel:F

    move v6, v0

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    move v6, v0

    const/high16 v7, -0x3e880000

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3b

    .line 1242
    const/high16 v6, -0x3e880000

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    .line 1243
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/forthblue/pool/ui/GameScene;->aim_stable_for_time:Z

    move v6, v0

    if-nez v6, :cond_3a

    .line 1244
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/ui/GameScene;->aim_stable_for_time:Z

    .line 1245
    const-wide/16 v6, 0x7d0

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/forthblue/pool/ui/GameScene;->honortime:J

    .line 1257
    :cond_39
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/forthblue/pool/ui/GameScene;->calcAimTarget()V

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->sprite_hand:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->sprite_hand:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    move v7, v0

    invoke-static {v7}, Lcom/fruitsmobile/basket/math/MathUtil;->cos(F)F

    move-result v7

    const/high16 v8, 0x43960000

    mul-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v8, v0

    iget v8, v8, Lcom/forthblue/pool/engine/PoolTable;->centerx:F

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v8, v0

    iget-object v8, v8, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iget v8, v8, Lcom/forthblue/pool/engine/PoolBall;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v9, v0

    iget v9, v9, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const v8, 0x3f4ccccd

    mul-float/2addr v7, v8

    const/high16 v8, 0x42480000

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    move v8, v0

    invoke-static {v8}, Lcom/fruitsmobile/basket/math/MathUtil;->sin(F)F

    move-result v8

    const/high16 v9, 0x43960000

    mul-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v9, v0

    iget v9, v9, Lcom/forthblue/pool/engine/PoolTable;->centery:F

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v9, v0

    iget-object v9, v9, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Lcom/forthblue/pool/engine/PoolBall;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v10, v0

    iget v10, v10, Lcom/forthblue/pool/engine/PoolTable;->scaley:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const v9, 0x3f4ccccd

    mul-float/2addr v8, v9

    const/high16 v9, 0x41a00000

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->poulerbg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1264
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_18
    const/4 v6, 0x7

    move/from16 v0, v30

    move v1, v6

    if-ge v0, v1, :cond_3c

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pouler:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    aget-object v6, v6, v30

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1264
    add-int/lit8 v30, v30, 0x1

    goto :goto_18

    .line 1247
    .end local v30    # "i":I
    :cond_3a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortime:J

    move-wide v6, v0

    sub-long v6, v6, p1

    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/forthblue/pool/ui/GameScene;->honortime:J

    .line 1248
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/forthblue/pool/ui/GameScene;->honortime:J

    move-wide v6, v0

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_39

    .line 1249
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/forthblue/pool/ui/GameScene;->aim_stable_for_time:Z

    .line 1250
    const v6, 0x3e4ccccd

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aim_angle_accel:F

    goto/16 :goto_17

    .line 1253
    :cond_3b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aim_angle_accel:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    move v6, v0

    const/high16 v7, 0x41200000

    cmpl-float v6, v6, v7

    if-lez v6, :cond_39

    .line 1254
    const/high16 v6, 0x41200000

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    .line 1255
    const v6, -0x41b33333

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aim_angle_accel:F

    goto/16 :goto_17

    .line 1267
    .restart local v30    # "i":I
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->upper_words:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->upper_words:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->region_a:Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getRegionSrcHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/lit16 v8, v8, -0xe6

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->upper_words:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->region_a:Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setTextureRegion(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    .line 1348
    .end local v30    # "i":I
    :cond_3d
    :goto_19
    if-nez v29, :cond_4e

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stick:Lcom/forthblue/pool/sprite/PoolStick;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/PoolStick;->setVisible(Z)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stickShadow:Lcom/forthblue/pool/sprite/PoolStick;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/PoolStick;->setVisible(Z)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/AimLine;->setVisible(Z)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->outLine:Lcom/forthblue/pool/sprite/AimLine;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/AimLine;->setVisible(Z)V

    goto/16 :goto_15

    .line 1272
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->sprite_hand:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->poulerbg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1274
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_1a
    const/4 v6, 0x7

    move/from16 v0, v30

    move v1, v6

    if-ge v0, v1, :cond_3f

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pouler:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    aget-object v6, v6, v30

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1274
    add-int/lit8 v30, v30, 0x1

    goto :goto_1a

    .line 1278
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/forthblue/pool/engine/PoolTable;->getLastAimBallIndex()I

    move-result v34

    .line 1279
    .local v34, "lastAimBallIndex":I
    const/4 v6, -0x1

    move/from16 v0, v34

    move v1, v6

    if-eq v0, v1, :cond_44

    .line 1280
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/forthblue/pool/ui/GameScene;->aim_stable_for_time:Z

    move v6, v0

    if-nez v6, :cond_43

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->sprite_hand:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->poulerbg:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1283
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    move v6, v0

    const/high16 v7, 0x41a00000

    add-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    .line 1284
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v7, v0

    invoke-interface {v7}, Lcom/forthblue/pool/rules/PoolRule;->getMaxStrength()F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_40

    .line 1285
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    .line 1287
    :cond_40
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v7, v0

    invoke-interface {v7}, Lcom/forthblue/pool/rules/PoolRule;->getMaxStrength()F

    move-result v7

    div-float v41, v6, v7

    .line 1288
    .local v41, "percentage":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->sprite_hand:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->strengthbar:Lcom/forthblue/pool/sprite/StrengthBar;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/forthblue/pool/sprite/StrengthBar;->getX()F

    move-result v7

    const/high16 v8, 0x42480000

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->strengthbar:Lcom/forthblue/pool/sprite/StrengthBar;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/forthblue/pool/sprite/StrengthBar;->getY()F

    move-result v8

    const/high16 v9, 0x42480000

    sub-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->strengthbar:Lcom/forthblue/pool/sprite/StrengthBar;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/forthblue/pool/sprite/StrengthBar;->getHeight()F

    move-result v9

    mul-float v9, v9, v41

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 1290
    const v6, 0x3e0f5c29

    div-float v6, v41, v6

    float-to-int v8, v6

    .line 1291
    .local v8, "count":I
    if-gez v8, :cond_41

    const/4 v6, 0x0

    move v8, v6

    .line 1292
    :cond_41
    const/4 v6, 0x7

    if-le v8, v6, :cond_42

    const/4 v6, 0x7

    move v8, v6

    .line 1293
    :cond_42
    const/16 v30, 0x0

    :goto_1b
    move/from16 v0, v30

    move v1, v8

    if-ge v0, v1, :cond_43

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->pouler:[Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    aget-object v6, v6, v30

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1293
    add-int/lit8 v30, v30, 0x1

    goto :goto_1b

    .line 1297
    .end local v8    # "count":I
    .end local v41    # "percentage":F
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->upper_words:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->upper_words:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->region_c:Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getRegionSrcHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/lit16 v8, v8, -0xe6

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->upper_words:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->region_c:Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setTextureRegion(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    goto/16 :goto_19

    .line 1302
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->upper_words:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setVisible(Z)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->upper_words:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->region_b:Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/fruitsmobile/basket/resources/TextureRegion;->getRegionSrcHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/lit16 v8, v8, -0xe6

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setPosition(FF)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->upper_words:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->region_b:Lcom/fruitsmobile/basket/resources/TextureRegion;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->setTextureRegion(Lcom/fruitsmobile/basket/resources/TextureRegion;)V

    .line 1305
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/forthblue/pool/ui/GameScene;->aim_stable_for_time:Z

    move v6, v0

    if-nez v6, :cond_3d

    .line 1306
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    goto/16 :goto_19

    .line 1311
    .end local v30    # "i":I
    .end local v34    # "lastAimBallIndex":I
    :cond_45
    const/4 v6, 0x1

    move/from16 v0, v42

    move v1, v6

    if-ne v0, v1, :cond_48

    .line 1313
    const/16 v30, 0x1

    .restart local v30    # "i":I
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    array-length v6, v6

    move/from16 v0, v30

    move v1, v6

    if-ge v0, v1, :cond_46

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v6, v6, v30

    iget-boolean v6, v6, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-eqz v6, :cond_47

    .line 1317
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    array-length v6, v6

    move/from16 v0, v30

    move v1, v6

    if-ne v0, v1, :cond_3d

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->honor:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->isVisible()Z

    move-result v6

    if-nez v6, :cond_3d

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v5, v0

    check-cast v5, Lcom/forthblue/pool/rules/TimeRuleBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    invoke-virtual {v5, v6}, Lcom/forthblue/pool/rules/TimeRuleBase;->getHonorType(Lcom/forthblue/pool/rules/PoolRule$RoundState;)I

    move-result v6

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/forthblue/pool/ui/GameScene;->resetHonor(I)V

    goto/16 :goto_19

    .line 1313
    :cond_47
    add-int/lit8 v30, v30, 0x1

    goto :goto_1c

    .line 1325
    .end local v30    # "i":I
    :cond_48
    const/4 v6, 0x3

    move/from16 v0, v42

    move v1, v6

    if-ne v0, v1, :cond_3d

    .line 1327
    const/16 v30, 0x1

    .restart local v30    # "i":I
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    array-length v6, v6

    move/from16 v0, v30

    move v1, v6

    if-ge v0, v1, :cond_49

    .line 1328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v6, v6, v30

    iget-boolean v6, v6, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-nez v6, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v6, v6, v30

    invoke-virtual {v6}, Lcom/forthblue/pool/engine/PoolBall;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 1332
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    array-length v6, v6

    move/from16 v0, v30

    move v1, v6

    if-ne v0, v1, :cond_4a

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    const/4 v7, 0x0

    iput v7, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->winner:I

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    const/4 v7, 0x4

    iput v7, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    .line 1335
    const/16 v29, 0x0

    .line 1337
    :cond_4a
    const/16 v30, 0x1

    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    array-length v6, v6

    move/from16 v0, v30

    move v1, v6

    if-ge v0, v1, :cond_4b

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    aget-object v6, v6, v30

    iget-boolean v6, v6, Lcom/forthblue/pool/engine/PoolBall;->isAvailable:Z

    if-eqz v6, :cond_4d

    .line 1339
    const/16 v29, 0x1

    .line 1343
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->balls:[Lcom/forthblue/pool/engine/PoolBall;

    array-length v6, v6

    move/from16 v0, v30

    move v1, v6

    if-ne v0, v1, :cond_3d

    .line 1344
    const/16 v29, 0x0

    goto/16 :goto_19

    .line 1327
    :cond_4c
    add-int/lit8 v30, v30, 0x1

    goto :goto_1d

    .line 1337
    :cond_4d
    add-int/lit8 v30, v30, 0x1

    goto :goto_1e

    .line 1356
    .end local v30    # "i":I
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimBall:Lcom/fruitsmobile/basket/sprites/StaticImageSprite;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/fruitsmobile/basket/sprites/StaticImageSprite;->isVisible()Z

    move-result v6

    if-nez v6, :cond_4f

    .line 1357
    invoke-virtual/range {p0 .. p0}, Lcom/forthblue/pool/ui/GameScene;->calcAimTarget()V

    .line 1359
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stick:Lcom/forthblue/pool/sprite/PoolStick;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/PoolStick;->setVisible(Z)V

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stickShadow:Lcom/forthblue/pool/sprite/PoolStick;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->stick:Lcom/forthblue/pool/sprite/PoolStick;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v8, v0

    invoke-interface {v8}, Lcom/forthblue/pool/rules/PoolRule;->getBallRadius()F

    move-result v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    move v9, v0

    const v10, 0x3dcccccd

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v9, v0

    iget v9, v9, Lcom/forthblue/pool/engine/PoolTable;->scalex:F

    mul-float/2addr v8, v9

    iput v8, v7, Lcom/forthblue/pool/sprite/PoolStick;->distance:F

    iput v8, v6, Lcom/forthblue/pool/sprite/PoolStick;->distance:F

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v7, v0

    iget-object v7, v7, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v7, v7, Lcom/forthblue/pool/rules/PoolRule$RoundState;->currentPlayer:I

    invoke-interface {v6, v7}, Lcom/forthblue/pool/rules/PoolRule;->getPlayerType(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_33

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/forthblue/pool/engine/PoolTable;->bAIActived:Z

    if-nez v6, :cond_50

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    move v7, v0

    iput v7, v6, Lcom/forthblue/pool/engine/PoolTable;->aiangle:F

    .line 1367
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/forthblue/pool/engine/PoolTable;->tickAI(J)V

    .line 1368
    move-object/from16 v0, p0

    iget v0, v0, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v7, v0

    iget v7, v7, Lcom/forthblue/pool/engine/PoolTable;->aiangle:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_51

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget v6, v6, Lcom/forthblue/pool/engine/PoolTable;->aiangle:F

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimAngle:F

    .line 1370
    invoke-virtual/range {p0 .. p0}, Lcom/forthblue/pool/ui/GameScene;->calcAimTarget()V

    .line 1372
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget v6, v6, Lcom/forthblue/pool/engine/PoolTable;->aistrength:F

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    .line 1373
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimPx:F

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->table:Lcom/forthblue/pool/engine/PoolTable;

    move-object v6, v0

    iget-object v6, v6, Lcom/forthblue/pool/engine/PoolTable;->roundstate:Lcom/forthblue/pool/rules/PoolRule$RoundState;

    iget v6, v6, Lcom/forthblue/pool/rules/PoolRule$RoundState;->state:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_33

    .line 1377
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimStrength:F

    .line 1378
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimPx:F

    .line 1379
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/forthblue/pool/ui/GameScene;->aimPy:F

    goto/16 :goto_15

    .line 1401
    .end local v29    # "flag":Z
    .end local v42    # "play_count":I
    .restart local v44    # "rest":I
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->timeMinute:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    div-int/lit8 v7, v44, 0x3c

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->timeSecond:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    rem-int/lit8 v7, v44, 0x3c

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    goto/16 :goto_16

    .line 1409
    .restart local v33    # "iscore":I
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/forthblue/pool/sprite/IntegerSprite;->getValue()I

    move-result v6

    move v0, v6

    move/from16 v1, v33

    if-ge v0, v1, :cond_54

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->getValue()I

    move-result v7

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move v8, v0

    div-int/lit8 v8, v8, 0x14

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    goto/16 :goto_5

    .line 1411
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/forthblue/pool/sprite/IntegerSprite;->getValue()I

    move-result v6

    move v0, v6

    move/from16 v1, v33

    if-le v0, v1, :cond_10

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    goto/16 :goto_5

    .line 1422
    .end local v22    # "alpha":F
    .end local v44    # "rest":I
    .restart local v28    # "current_score_show":I
    :cond_55
    move/from16 v0, v28

    add-int/lit16 v0, v0, 0x7d0

    move v6, v0

    move v0, v6

    move/from16 v1, v33

    if-ge v0, v1, :cond_56

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move v7, v0

    add-int v7, v7, v28

    add-int/lit16 v7, v7, 0x1f5

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    goto/16 :goto_6

    .line 1424
    :cond_56
    move/from16 v0, v28

    move/from16 v1, v33

    if-ge v0, v1, :cond_57

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move v7, v0

    div-int/lit8 v7, v7, 0x14

    add-int v7, v7, v28

    add-int/lit8 v7, v7, 0x1f

    invoke-virtual {v6, v7}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    goto/16 :goto_6

    .line 1426
    :cond_57
    move/from16 v0, v28

    move/from16 v1, v33

    if-le v0, v1, :cond_11

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->level_score:Lcom/forthblue/pool/sprite/IntegerSprite;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/forthblue/pool/sprite/IntegerSprite;->setValue(I)V

    goto/16 :goto_6

    .line 1447
    .end local v28    # "current_score_show":I
    .end local v33    # "iscore":I
    .restart local v43    # "player":I
    :cond_58
    const/4 v6, 0x3

    move/from16 v38, v6

    goto/16 :goto_7

    .line 1449
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/forthblue/pool/ui/GameScene;->rule:Lcom/forthblue/pool/rules/PoolRule;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v43

    invoke-interface {v0, v1}, Lcom/forthblue/pool/rules/PoolRule;->getPlayerType(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5a

    const/4 v6, 0x0

    move/from16 v38, v6

    .restart local v38    # "msgid":I
    :goto_1f
    goto/16 :goto_7

    .end local v38    # "msgid":I
    :cond_5a
    const/4 v6, 0x1

    move/from16 v38, v6

    goto :goto_1f

    .line 886
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
