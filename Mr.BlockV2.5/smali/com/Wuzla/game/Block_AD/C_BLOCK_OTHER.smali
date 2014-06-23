.class public Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;
.super Loms/GameEngine/GameEvent;
.source "C_BLOCK_OTHER.java"


# static fields
.field public static final BLOCK_OTHER_BLAST:I = 0x1

.field private static final BLOCK_OTHER_BLAST00:[[I

.field private static final BLOCK_OTHER_BLAST0000:[I

.field public static final BLOCK_OTHER_BLASTCTRL:I = 0x1

.field private static final BLOCK_OTHER_CONCTROL0:[[[I

.field private static final BLOCK_OTHER_CONCTROL00:[[I

.field private static final BLOCK_OTHER_CONCTROL0000:[I

.field private static final BLOCK_OTHER_CONCTROL01:[[I

.field private static final BLOCK_OTHER_CONCTROL0100:[I

.field private static final BLOCK_OTHER_CONCTROL02:[[I

.field private static final BLOCK_OTHER_CONCTROL0200:[I

.field private static final BLOCK_OTHER_CONCTROL03:[[I

.field private static final BLOCK_OTHER_CONCTROL0300:[I

.field private static final BLOCK_OTHER_CONCTROL1:[[[I

.field private static final BLOCK_OTHER_CONCTROL10:[[I

.field private static final BLOCK_OTHER_CONCTROL1000:[I

.field private static final BLOCK_OTHER_CONCTROL11:[[I

.field private static final BLOCK_OTHER_CONCTROL1100:[I

.field private static final BLOCK_OTHER_CONCTROL12:[[I

.field private static final BLOCK_OTHER_CONCTROL1200:[I

.field private static final BLOCK_OTHER_CONCTROL13:[[I

.field private static final BLOCK_OTHER_CONCTROL1300:[I

.field public static final BLOCK_OTHER_CONTROL:I = 0x0

.field public static final BLOCK_OTHER_CONTROLCTRL:I = 0x0

.field public static final BLOCK_OTHER_DIFFICULTY:I = 0x4

.field private static final BLOCK_OTHER_DIFFICULTYA00:[[[I

.field private static final BLOCK_OTHER_DIFFICULTYA000:[[I

.field private static final BLOCK_OTHER_DIFFICULTYA0000:[I

.field private static final BLOCK_OTHER_DIFFICULTYA0001:[I

.field private static final BLOCK_OTHER_DIFFICULTYA0002:[I

.field private static final BLOCK_OTHER_DIFFICULTYA0003:[I

.field private static final BLOCK_OTHER_DIFFICULTYA001:[[I

.field private static final BLOCK_OTHER_DIFFICULTYA002:[[I

.field private static final BLOCK_OTHER_DIFFICULTYA003:[[I

.field private static final BLOCK_OTHER_DIFFICULTYB00:[[[I

.field private static final BLOCK_OTHER_DIFFICULTYB000:[[I

.field private static final BLOCK_OTHER_DIFFICULTYB0000:[I

.field private static final BLOCK_OTHER_DIFFICULTYB0001:[I

.field private static final BLOCK_OTHER_DIFFICULTYB0002:[I

.field private static final BLOCK_OTHER_DIFFICULTYB0003:[I

.field private static final BLOCK_OTHER_DIFFICULTYB001:[[I

.field private static final BLOCK_OTHER_DIFFICULTYB002:[[I

.field private static final BLOCK_OTHER_DIFFICULTYB003:[[I

.field public static final BLOCK_OTHER_DIFFICULTYCTRL:I = 0x4

.field public static final BLOCK_OTHER_LEVEL:I = 0x5

.field private static final BLOCK_OTHER_LEVELA00:[[I

.field private static final BLOCK_OTHER_LEVELA000:[I

.field private static final BLOCK_OTHER_LEVELB00:[[I

.field private static final BLOCK_OTHER_LEVELB000:[I

.field public static final BLOCK_OTHER_LEVELCTRL:I = 0x5

.field public static final BLOCK_OTHER_SLEEP:I = 0x2

.field private static final BLOCK_OTHER_SLEEP00:[[I

.field private static final BLOCK_OTHER_SLEEP0000:[I

.field public static final BLOCK_OTHER_SLEEPCTRL:I = 0x2

.field public static final BLOCK_OTHER_TURN:I = 0x3

.field private static final BLOCK_OTHER_TURN00:[[I

.field private static final BLOCK_OTHER_TURN0000:[I

.field public static final BLOCK_OTHER_TURNCTRL:I = 0x3

.field public static final BitBLOCK_OTHER_EVT:[[I


# instance fields
.field private EVTCtrl:I

.field private EVTType:I

.field private cBlockRecordData:Lcom/Wuzla/game/Block_AD/C_BlockRecordData;

.field private cLib:Loms/GameEngine/C_Lib;

.field public m_BlockControlTouchCtrl:I

.field public m_BlockControlType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x4

    .line 51
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0000:[I

    .line 55
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 56
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0000:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0000:[I

    aput-object v1, v0, v7

    .line 57
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0000:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0000:[I

    aput-object v1, v0, v8

    .line 58
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0000:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0000:[I

    aput-object v2, v0, v1

    .line 55
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL00:[[I

    .line 60
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0100:[I

    .line 64
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 65
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0100:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0100:[I

    aput-object v1, v0, v7

    .line 66
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0100:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0100:[I

    aput-object v1, v0, v8

    .line 67
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0100:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0100:[I

    aput-object v2, v0, v1

    .line 64
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL01:[[I

    .line 69
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0200:[I

    .line 73
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 74
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0200:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0200:[I

    aput-object v1, v0, v7

    .line 75
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0200:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0200:[I

    aput-object v1, v0, v8

    .line 76
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0200:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0200:[I

    aput-object v2, v0, v1

    .line 73
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL02:[[I

    .line 78
    new-array v0, v4, [I

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0300:[I

    .line 82
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 83
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0300:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0300:[I

    aput-object v1, v0, v7

    .line 84
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0300:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0300:[I

    aput-object v1, v0, v8

    .line 85
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0300:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0300:[I

    aput-object v2, v0, v1

    .line 82
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL03:[[I

    .line 87
    new-array v0, v6, [[[I

    const/4 v1, 0x0

    .line 88
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL00:[[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL01:[[I

    aput-object v1, v0, v7

    .line 89
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL02:[[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL03:[[I

    aput-object v1, v0, v8

    .line 90
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL00:[[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL00:[[I

    aput-object v2, v0, v1

    .line 87
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0:[[[I

    .line 92
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1000:[I

    .line 96
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 97
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1000:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1000:[I

    aput-object v1, v0, v7

    .line 98
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1000:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1000:[I

    aput-object v1, v0, v8

    .line 99
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1000:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1000:[I

    aput-object v2, v0, v1

    .line 96
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL10:[[I

    .line 101
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1100:[I

    .line 105
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 106
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1100:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1100:[I

    aput-object v1, v0, v7

    .line 107
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1100:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1100:[I

    aput-object v1, v0, v8

    .line 108
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1100:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1100:[I

    aput-object v2, v0, v1

    .line 105
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL11:[[I

    .line 110
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1200:[I

    .line 114
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 115
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1200:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1200:[I

    aput-object v1, v0, v7

    .line 116
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1200:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1200:[I

    aput-object v1, v0, v8

    .line 117
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1200:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1200:[I

    aput-object v2, v0, v1

    .line 114
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL12:[[I

    .line 119
    new-array v0, v4, [I

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1300:[I

    .line 123
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 124
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1300:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1300:[I

    aput-object v1, v0, v7

    .line 125
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1300:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1300:[I

    aput-object v1, v0, v8

    .line 126
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1300:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1300:[I

    aput-object v2, v0, v1

    .line 123
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL13:[[I

    .line 128
    new-array v0, v6, [[[I

    const/4 v1, 0x0

    .line 129
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL10:[[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL11:[[I

    aput-object v1, v0, v7

    .line 130
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL12:[[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL13:[[I

    aput-object v1, v0, v8

    .line 131
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL10:[[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL10:[[I

    aput-object v2, v0, v1

    .line 128
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1:[[[I

    .line 133
    new-array v0, v4, [I

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_BLAST0000:[I

    .line 137
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 138
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_BLAST0000:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_BLAST0000:[I

    aput-object v1, v0, v7

    .line 139
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_BLAST0000:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_BLAST0000:[I

    aput-object v1, v0, v8

    .line 140
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_BLAST0000:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_BLAST0000:[I

    aput-object v2, v0, v1

    .line 137
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_BLAST00:[[I

    .line 142
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_SLEEP0000:[I

    .line 148
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 149
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_SLEEP0000:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_SLEEP0000:[I

    aput-object v1, v0, v7

    .line 150
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_SLEEP0000:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_SLEEP0000:[I

    aput-object v1, v0, v8

    .line 151
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_SLEEP0000:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_SLEEP0000:[I

    aput-object v2, v0, v1

    .line 148
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_SLEEP00:[[I

    .line 153
    new-array v0, v4, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_TURN0000:[I

    .line 157
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 158
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_TURN0000:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_TURN0000:[I

    aput-object v1, v0, v7

    .line 159
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_TURN0000:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_TURN0000:[I

    aput-object v1, v0, v8

    .line 160
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_TURN0000:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_TURN0000:[I

    aput-object v2, v0, v1

    .line 157
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_TURN00:[[I

    .line 162
    new-array v0, v4, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0000:[I

    .line 166
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 167
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0000:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0000:[I

    aput-object v1, v0, v7

    .line 168
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0000:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0000:[I

    aput-object v1, v0, v8

    .line 169
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0000:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0000:[I

    aput-object v2, v0, v1

    .line 166
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA000:[[I

    .line 171
    new-array v0, v4, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0001:[I

    .line 175
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 176
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0001:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0001:[I

    aput-object v1, v0, v7

    .line 177
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0001:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0001:[I

    aput-object v1, v0, v8

    .line 178
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0001:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0001:[I

    aput-object v2, v0, v1

    .line 175
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA001:[[I

    .line 180
    new-array v0, v4, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0002:[I

    .line 184
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 185
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0002:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0002:[I

    aput-object v1, v0, v7

    .line 186
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0002:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0002:[I

    aput-object v1, v0, v8

    .line 187
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0002:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0002:[I

    aput-object v2, v0, v1

    .line 184
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA002:[[I

    .line 189
    new-array v0, v4, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0003:[I

    .line 193
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 194
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0003:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0003:[I

    aput-object v1, v0, v7

    .line 195
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0003:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0003:[I

    aput-object v1, v0, v8

    .line 196
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0003:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA0003:[I

    aput-object v2, v0, v1

    .line 193
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA003:[[I

    .line 198
    new-array v0, v4, [[[I

    const/4 v1, 0x0

    .line 199
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA000:[[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA001:[[I

    aput-object v1, v0, v7

    .line 200
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA002:[[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA003:[[I

    aput-object v1, v0, v8

    .line 198
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA00:[[[I

    .line 202
    new-array v0, v4, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0000:[I

    .line 206
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 207
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0000:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0000:[I

    aput-object v1, v0, v7

    .line 208
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0000:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0000:[I

    aput-object v1, v0, v8

    .line 209
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0000:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0000:[I

    aput-object v2, v0, v1

    .line 206
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB000:[[I

    .line 211
    new-array v0, v4, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0001:[I

    .line 215
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 216
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0001:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0001:[I

    aput-object v1, v0, v7

    .line 217
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0001:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0001:[I

    aput-object v1, v0, v8

    .line 218
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0001:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0001:[I

    aput-object v2, v0, v1

    .line 215
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB001:[[I

    .line 220
    new-array v0, v4, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0002:[I

    .line 224
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 225
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0002:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0002:[I

    aput-object v1, v0, v7

    .line 226
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0002:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0002:[I

    aput-object v1, v0, v8

    .line 227
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0002:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0002:[I

    aput-object v2, v0, v1

    .line 224
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB002:[[I

    .line 229
    new-array v0, v4, [I

    fill-array-data v0, :array_f

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0003:[I

    .line 233
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 234
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0003:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0003:[I

    aput-object v1, v0, v7

    .line 235
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0003:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0003:[I

    aput-object v1, v0, v8

    .line 236
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0003:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB0003:[I

    aput-object v2, v0, v1

    .line 233
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB003:[[I

    .line 238
    new-array v0, v4, [[[I

    const/4 v1, 0x0

    .line 239
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB000:[[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB001:[[I

    aput-object v1, v0, v7

    .line 240
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB002:[[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB003:[[I

    aput-object v1, v0, v8

    .line 238
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB00:[[[I

    .line 242
    new-array v0, v4, [I

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELA000:[I

    .line 246
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 247
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELA000:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELA000:[I

    aput-object v1, v0, v7

    .line 248
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELA000:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELA000:[I

    aput-object v1, v0, v8

    .line 249
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELA000:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELA000:[I

    aput-object v2, v0, v1

    .line 246
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELA00:[[I

    .line 251
    new-array v0, v4, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELB000:[I

    .line 255
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 256
    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELB000:[I

    aput-object v2, v0, v1

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELB000:[I

    aput-object v1, v0, v7

    .line 257
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELB000:[I

    aput-object v1, v0, v5

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELB000:[I

    aput-object v1, v0, v8

    .line 258
    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELB000:[I

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELB000:[I

    aput-object v2, v0, v1

    .line 255
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELB00:[[I

    .line 260
    new-array v0, v6, [[I

    const/4 v1, 0x0

    .line 261
    const/16 v2, 0x8

    new-array v2, v2, [I

    .line 264
    aput v7, v2, v6

    const/4 v3, 0x7

    aput v4, v2, v3

    aput-object v2, v0, v1

    .line 266
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 269
    aput v5, v1, v6

    const/4 v2, 0x7

    aput v4, v1, v2

    aput-object v1, v0, v7

    .line 271
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 274
    aput v8, v1, v6

    const/4 v2, 0x7

    const/16 v3, 0xa

    aput v3, v1, v2

    aput-object v1, v0, v5

    .line 276
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 279
    aput v5, v1, v6

    const/4 v2, 0x7

    aput v4, v1, v2

    aput-object v1, v0, v8

    .line 281
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 284
    aput v5, v1, v6

    const/4 v2, 0x7

    aput v4, v1, v2

    aput-object v1, v0, v4

    const/4 v1, 0x5

    .line 286
    const/16 v2, 0x8

    new-array v2, v2, [I

    .line 289
    aput v5, v2, v6

    const/4 v3, 0x7

    aput v4, v2, v3

    aput-object v2, v0, v1

    .line 260
    sput-object v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BitBLOCK_OTHER_EVT:[[I

    .line 11
    return-void

    .line 51
    nop

    :array_0
    .array-data 4
        0x7f020022
        0x7f020022
        0x7f020022
        0x7f020022
    .end array-data

    .line 60
    :array_1
    .array-data 4
        0x7f020023
        0x7f020023
        0x7f020023
        0x7f020023
    .end array-data

    .line 69
    :array_2
    .array-data 4
        0x7f020025
        0x7f020025
        0x7f020025
        0x7f020025
    .end array-data

    .line 92
    :array_3
    .array-data 4
        0x7f020024
        0x7f020024
        0x7f020024
        0x7f020024
    .end array-data

    .line 101
    :array_4
    .array-data 4
        0x7f020021
        0x7f020021
        0x7f020021
        0x7f020021
    .end array-data

    .line 110
    :array_5
    .array-data 4
        0x7f020025
        0x7f020025
        0x7f020025
        0x7f020025
    .end array-data

    .line 142
    :array_6
    .array-data 4
        0x7f020141
        0x7f020142
        0x7f020143
        0x7f020144
        0x7f020145
        0x7f020146
        0x7f020145
        0x7f020144
        0x7f020143
        0x7f020142
    .end array-data

    .line 153
    :array_7
    .array-data 4
        0x7f020000
        0x7f020000
        0x7f020000
        0x7f020000
    .end array-data

    .line 162
    :array_8
    .array-data 4
        0x7f020032
        0x7f020032
        0x7f020032
        0x7f020032
    .end array-data

    .line 171
    :array_9
    .array-data 4
        0x7f020033
        0x7f020033
        0x7f020033
        0x7f020033
    .end array-data

    .line 180
    :array_a
    .array-data 4
        0x7f020034
        0x7f020034
        0x7f020034
        0x7f020034
    .end array-data

    .line 189
    :array_b
    .array-data 4
        0x7f020035
        0x7f020035
        0x7f020035
        0x7f020035
    .end array-data

    .line 202
    :array_c
    .array-data 4
        0x7f020036
        0x7f020036
        0x7f020036
        0x7f020036
    .end array-data

    .line 211
    :array_d
    .array-data 4
        0x7f020037
        0x7f020037
        0x7f020037
        0x7f020037
    .end array-data

    .line 220
    :array_e
    .array-data 4
        0x7f020038
        0x7f020038
        0x7f020038
        0x7f020038
    .end array-data

    .line 229
    :array_f
    .array-data 4
        0x7f020039
        0x7f020039
        0x7f020039
        0x7f020039
    .end array-data

    .line 251
    :array_10
    .array-data 4
        0x7f02004f
        0x7f02004f
        0x7f02004f
        0x7f02004f
    .end array-data
.end method

.method public constructor <init>(Loms/GameEngine/C_Lib;)V
    .locals 2
    .param p1, "clib"    # Loms/GameEngine/C_Lib;

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-direct {p0}, Loms/GameEngine/GameEvent;-><init>()V

    .line 294
    iput-object p1, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->cLib:Loms/GameEngine/C_Lib;

    .line 295
    iput v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVTType:I

    .line 296
    iput v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVTCtrl:I

    .line 297
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL00:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    .line 298
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BitBLOCK_OTHER_EVT:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->EVTPtr:[[I

    .line 300
    return-void
.end method

.method private BlockControlEvt00EndFun()V
    .locals 5

    .prologue
    .line 441
    iget-object v2, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v2, Loms/GameEngine/GameEvent$EventDEF;->YVal:I

    shr-int/lit8 v1, v2, 0x10

    .line 442
    .local v1, "CurYVal":I
    iget-object v2, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v2, Loms/GameEngine/GameEvent$EventDEF;->XVal:I

    shr-int/lit8 v0, v2, 0x10

    .line 443
    .local v0, "CurXVal":I
    iget v2, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 444
    iget-object v2, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v2}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v2

    const v3, 0x7f020026

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v0, v1, v4}, Loms/GameEngine/GameCanvas;->WriteSprite(IIII)I

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->CHKEVTACTEnd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    iget v2, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    packed-switch v2, :pswitch_data_0

    .line 452
    :cond_1
    :goto_0
    return-void

    .line 448
    :pswitch_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    goto :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private BlockControlEvt00PtrFun()V
    .locals 3

    .prologue
    .line 428
    iget v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    packed-switch v0, :pswitch_data_0

    .line 437
    :goto_0
    return-void

    .line 430
    :pswitch_0
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL0:[[[I

    iget v2, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlType:I

    aget-object v1, v1, v2

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    goto :goto_0

    .line 433
    :pswitch_1
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL1:[[[I

    iget v2, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlType:I

    aget-object v1, v1, v2

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private BlockDifficultyDownProcess()V
    .locals 14

    .prologue
    const/16 v3, 0xa

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 467
    const/4 v1, 0x0

    .line 468
    .local v1, "mTouchX":I
    const/4 v2, 0x0

    .line 469
    .local v2, "mTouchY":I
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0}, Loms/GameEngine/InputInterface;->CHKTouchDown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    if-nez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0}, Loms/GameEngine/InputInterface;->GetTouchDownX()I

    move-result v1

    .line 472
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0}, Loms/GameEngine/InputInterface;->GetTouchDownY()I

    move-result v2

    .line 473
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    iget-object v4, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v7, v4, Loms/GameEngine/GameEvent$EventDEF;->ACTIdx:I

    iget-object v4, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v4, v4, Loms/GameEngine/GameEvent$EventDEF;->XVal:I

    shr-int/lit8 v8, v4, 0x10

    iget-object v4, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v4, v4, Loms/GameEngine/GameEvent$EventDEF;->YVal:I

    shr-int/lit8 v9, v4, 0x10

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v9}, Loms/GameEngine/GameCanvas;->CHKACTTouch(IIIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/Wuzla/game/Block_AD/C_BlockMedia;->PlaySound(I)V

    .line 476
    iget v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlType:I

    packed-switch v0, :pswitch_data_0

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 479
    :pswitch_0
    iput v11, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 480
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iget-object v0, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;

    aget-object v0, v0, v11

    iput v10, v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 481
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iget-object v0, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;

    aget-object v0, v0, v12

    iput v10, v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 482
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iget-object v0, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;

    aget-object v0, v0, v13

    iput v10, v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 483
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iput v10, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockDifficultyLevel:I

    goto :goto_0

    .line 486
    :pswitch_1
    iput v11, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 487
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iget-object v0, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;

    aget-object v0, v0, v10

    iput v10, v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 488
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iget-object v0, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;

    aget-object v0, v0, v12

    iput v10, v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 489
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iget-object v0, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;

    aget-object v0, v0, v13

    iput v10, v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 490
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iput v11, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockDifficultyLevel:I

    goto :goto_0

    .line 493
    :pswitch_2
    iput v11, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 494
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iget-object v0, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;

    aget-object v0, v0, v10

    iput v10, v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 495
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iget-object v0, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;

    aget-object v0, v0, v11

    iput v10, v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 496
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iget-object v0, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;

    aget-object v0, v0, v13

    iput v10, v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 497
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iput v12, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockDifficultyLevel:I

    goto :goto_0

    .line 500
    :pswitch_3
    iput v11, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 501
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iget-object v0, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;

    aget-object v0, v0, v10

    iput v10, v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 502
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iget-object v0, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;

    aget-object v0, v0, v11

    iput v10, v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 503
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iget-object v0, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->BLOCK_OTHER_EVT:[Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;

    aget-object v0, v0, v12

    iput v10, v0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 504
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iput v13, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockDifficultyLevel:I

    goto :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private BlockDifficultyEvt00PtrFun()V
    .locals 3

    .prologue
    .line 454
    iget v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    packed-switch v0, :pswitch_data_0

    .line 463
    :goto_0
    return-void

    .line 456
    :pswitch_0
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYB00:[[[I

    iget v2, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlType:I

    aget-object v1, v1, v2

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    goto :goto_0

    .line 459
    :pswitch_1
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA00:[[[I

    iget v2, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlType:I

    aget-object v1, v1, v2

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private BlockLevelDownProcess()V
    .locals 10

    .prologue
    const/16 v3, 0xa

    .line 513
    const/4 v1, 0x0

    .line 514
    .local v1, "mTouchX":I
    const/4 v2, 0x0

    .line 515
    .local v2, "mTouchY":I
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0}, Loms/GameEngine/InputInterface;->CHKTouchDown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 517
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0}, Loms/GameEngine/InputInterface;->GetTouchDownX()I

    move-result v1

    .line 518
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getInput()Loms/GameEngine/InputInterface;

    move-result-object v0

    invoke-virtual {v0}, Loms/GameEngine/InputInterface;->GetTouchDownY()I

    move-result v2

    .line 519
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->cLib:Loms/GameEngine/C_Lib;

    invoke-virtual {v0}, Loms/GameEngine/C_Lib;->getGameCanvas()Loms/GameEngine/GameCanvas;

    move-result-object v0

    iget-object v4, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v7, v4, Loms/GameEngine/GameEvent$EventDEF;->ACTIdx:I

    iget-object v4, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v4, v4, Loms/GameEngine/GameEvent$EventDEF;->XVal:I

    shr-int/lit8 v8, v4, 0x10

    iget-object v4, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v4, v4, Loms/GameEngine/GameEvent$EventDEF;->YVal:I

    shr-int/lit8 v9, v4, 0x10

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-virtual/range {v0 .. v9}, Loms/GameEngine/GameCanvas;->CHKACTTouch(IIIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/Wuzla/game/Block_AD/C_BlockMedia;->PlaySound(I)V

    .line 522
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    sget-object v3, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iget v3, v3, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockDifficultyLevel:I

    mul-int/lit8 v3, v3, 0x9

    iget v4, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlType:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockLevel:I

    .line 523
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    const/4 v3, 0x0

    iput v3, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockFlag:I

    .line 524
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    const/4 v3, 0x3

    iput v3, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockCtrl:I

    .line 525
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    const/4 v3, 0x2

    iput v3, v0, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockSetMusicFlag:I

    .line 528
    :cond_0
    return-void
.end method


# virtual methods
.method public BLOCK_OTHER_00EXE()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BlockControlEvt00PtrFun()V

    .line 379
    invoke-direct {p0}, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BlockControlEvt00EndFun()V

    .line 380
    return-void
.end method

.method public BLOCK_OTHER_01EXE()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_BLAST00:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    .line 383
    invoke-virtual {p0}, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->CHKEVTACTEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVTCLR()V

    .line 386
    :cond_0
    return-void
.end method

.method public BLOCK_OTHER_02EXE()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_SLEEP00:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    .line 389
    return-void
.end method

.method public BLOCK_OTHER_03EXE()V
    .locals 4

    .prologue
    const/high16 v3, 0x41200000

    .line 392
    iget-object v1, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_TURN00:[[I

    iput-object v2, v1, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    .line 393
    iget-object v1, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v1, Loms/GameEngine/GameEvent$EventDEF;->YVal:I

    shr-int/lit8 v0, v1, 0x10

    .line 394
    .local v0, "CurYVal":I
    iget v1, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    packed-switch v1, :pswitch_data_0

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 396
    :pswitch_0
    iget-object v1, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/high16 v2, 0x40000

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->YInc:I

    .line 397
    iget-object v1, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Rotate:F

    add-float/2addr v2, v3

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Rotate:F

    .line 398
    const/16 v1, 0x1b8

    if-le v0, v1, :cond_0

    .line 399
    const/4 v1, 0x1

    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v1, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/high16 v2, -0x40000

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->YInc:I

    .line 403
    iget-object v1, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Rotate:F

    sub-float/2addr v2, v3

    iput v2, v1, Loms/GameEngine/GameEvent$EventDEF;->Rotate:F

    .line 404
    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    .line 405
    const/4 v1, 0x0

    iput v1, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    goto :goto_0

    .line 394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public BLOCK_OTHER_04EXE()V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BlockDifficultyEvt00PtrFun()V

    .line 411
    invoke-direct {p0}, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BlockDifficultyDownProcess()V

    .line 412
    return-void
.end method

.method public BLOCK_OTHER_05EXE()V
    .locals 3

    .prologue
    .line 414
    sget-object v0, Lcom/Wuzla/game/Block_AD/C_BlockRecordData;->mUserScore:[I

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iget v1, v1, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockWorld:I

    mul-int/lit8 v1, v1, 0x24

    sget-object v2, Lcom/Wuzla/game/Block_AD/C_BlockMenu;->cBlockMemory:Lcom/Wuzla/game/Block_AD/C_BlockMemory;

    iget v2, v2, Lcom/Wuzla/game/Block_AD/C_BlockMemory;->mBlockDifficultyLevel:I

    mul-int/lit8 v2, v2, 0x9

    add-int/2addr v1, v2

    iget v2, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlType:I

    add-int/2addr v1, v2

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    .line 415
    iget v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->m_BlockControlTouchCtrl:I

    packed-switch v0, :pswitch_data_0

    .line 423
    :goto_0
    invoke-direct {p0}, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BlockLevelDownProcess()V

    .line 424
    return-void

    .line 417
    :pswitch_0
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELA00:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    goto :goto_0

    .line 420
    :pswitch_1
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELB00:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    goto :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public EVTRUN()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v0, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    packed-switch v0, :pswitch_data_0

    .line 372
    :goto_0
    return-void

    .line 353
    :pswitch_0
    invoke-virtual {p0}, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_00EXE()V

    goto :goto_0

    .line 356
    :pswitch_1
    invoke-virtual {p0}, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_01EXE()V

    goto :goto_0

    .line 359
    :pswitch_2
    invoke-virtual {p0}, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_02EXE()V

    goto :goto_0

    .line 362
    :pswitch_3
    invoke-virtual {p0}, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_03EXE()V

    goto :goto_0

    .line 365
    :pswitch_4
    invoke-virtual {p0}, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_04EXE()V

    goto :goto_0

    .line 368
    :pswitch_5
    invoke-virtual {p0}, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_05EXE()V

    goto :goto_0

    .line 351
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

.method public SetCAR_OTHER_Ctrl(I)V
    .locals 2
    .param p1, "Ctrl"    # I

    .prologue
    .line 326
    iput p1, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVTCtrl:I

    .line 327
    iget v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVTCtrl:I

    packed-switch v0, :pswitch_data_0

    .line 348
    :goto_0
    return-void

    .line 330
    :pswitch_0
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v1, 0x0

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    goto :goto_0

    .line 333
    :pswitch_1
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v1, 0x1

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    goto :goto_0

    .line 336
    :pswitch_2
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v1, 0x2

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    goto :goto_0

    .line 339
    :pswitch_3
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v1, 0x3

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    goto :goto_0

    .line 342
    :pswitch_4
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v1, 0x4

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    goto :goto_0

    .line 345
    :pswitch_5
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v1, 0x5

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    goto :goto_0

    .line 327
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

.method public SetCAR_OTHER_Type(I)V
    .locals 2
    .param p1, "Type"    # I

    .prologue
    .line 302
    iput p1, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVTType:I

    .line 303
    iget v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVTType:I

    packed-switch v0, :pswitch_data_0

    .line 324
    :goto_0
    return-void

    .line 306
    :pswitch_0
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_CONCTROL00:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    goto :goto_0

    .line 309
    :pswitch_1
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_BLAST00:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    goto :goto_0

    .line 312
    :pswitch_2
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_SLEEP00:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    goto :goto_0

    .line 315
    :pswitch_3
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_TURN00:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    goto :goto_0

    .line 318
    :pswitch_4
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_DIFFICULTYA000:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    goto :goto_0

    .line 321
    :pswitch_5
    iget-object v0, p0, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/Wuzla/game/Block_AD/C_BLOCK_OTHER;->BLOCK_OTHER_LEVELA00:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    goto :goto_0

    .line 303
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
