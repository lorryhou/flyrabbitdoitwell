.class public Lcom/jianghe/blockgame/C_BLOCK_B;
.super Loms/GameEngine/GameEvent;
.source "C_BLOCK_B.java"


# static fields
.field public static final BLOCK_B_CHANGE:I = 0x1

.field public static final BLOCK_B_CHANGECTRL:I = 0x1

.field public static final BLOCK_B_END:I = 0x0

.field public static final BLOCK_B_ENDCTRL:I = 0x0

.field public static final BLOCK_B_SENDEND:I = 0x3

.field public static final BLOCK_B_SENDENDCTRL:I = 0x3

.field public static final BLOCK_B_SENDSTART:I = 0x2

.field public static final BLOCK_B_SENDSTARTCTRL:I = 0x2

.field private static final BLOCK_B_WAIT0:[[[I

.field private static final BLOCK_B_WAIT00:[[I

.field private static final BLOCK_B_WAIT0000:[I

.field private static final BLOCK_B_WAIT01:[[I

.field private static final BLOCK_B_WAIT0100:[I

.field private static final BLOCK_B_WAIT02:[[I

.field private static final BLOCK_B_WAIT0200:[I

.field private static final BLOCK_B_WAIT03:[[I

.field private static final BLOCK_B_WAIT0300:[I

.field private static final BLOCK_B_WAIT04:[[I

.field private static final BLOCK_B_WAIT0400:[I

.field private static final BLOCK_B_WAIT05:[[I

.field private static final BLOCK_B_WAIT0500:[I

.field private static final BLOCK_B_WAIT06:[[I

.field private static final BLOCK_B_WAIT0600:[I

.field private static final BLOCK_B_WAIT07:[[I

.field private static final BLOCK_B_WAIT0700:[I

.field private static final BLOCK_B_WAIT08:[[I

.field private static final BLOCK_B_WAIT0800:[I

.field private static final BLOCK_B_WAIT09:[[I

.field private static final BLOCK_B_WAIT0900:[I

.field private static final BLOCK_B_WAIT0A:[[I

.field private static final BLOCK_B_WAIT0A00:[I

.field private static final BLOCK_B_WAIT0B:[[I

.field private static final BLOCK_B_WAIT0B00:[I

.field private static final BLOCK_B_WAIT0C:[[I

.field private static final BLOCK_B_WAIT0C00:[I

.field private static final BLOCK_B_WAIT0D:[[I

.field private static final BLOCK_B_WAIT0D00:[I

.field public static final BitBLOCK_B_EVT:[[I


# instance fields
.field private EVTCtrl:I

.field private EVTType:I

.field private cLib:Loms/GameEngine/C_Lib;

.field public m_BlockPropAttrib:I

.field public m_BlockPropIndex:I

.field public m_BlockPropPlace:I

.field public m_BlockPropType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0000:[I

    .line 45
    new-array v0, v3, [[I

    .line 46
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0000:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0000:[I

    aput-object v1, v0, v7

    .line 47
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0000:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0000:[I

    aput-object v1, v0, v5

    .line 45
    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT00:[[I

    .line 49
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0100:[I

    .line 54
    new-array v0, v3, [[I

    .line 55
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0100:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0100:[I

    aput-object v1, v0, v7

    .line 56
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0100:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0100:[I

    aput-object v1, v0, v5

    .line 54
    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT01:[[I

    .line 58
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0200:[I

    .line 63
    new-array v0, v3, [[I

    .line 64
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0200:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0200:[I

    aput-object v1, v0, v7

    .line 65
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0200:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0200:[I

    aput-object v1, v0, v5

    .line 63
    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT02:[[I

    .line 67
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0300:[I

    .line 72
    new-array v0, v3, [[I

    .line 73
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0300:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0300:[I

    aput-object v1, v0, v7

    .line 74
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0300:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0300:[I

    aput-object v1, v0, v5

    .line 72
    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT03:[[I

    .line 76
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0400:[I

    .line 81
    new-array v0, v3, [[I

    .line 82
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0400:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0400:[I

    aput-object v1, v0, v7

    .line 83
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0400:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0400:[I

    aput-object v1, v0, v5

    .line 81
    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT04:[[I

    .line 85
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0500:[I

    .line 90
    new-array v0, v3, [[I

    .line 91
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0500:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0500:[I

    aput-object v1, v0, v7

    .line 92
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0500:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0500:[I

    aput-object v1, v0, v5

    .line 90
    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT05:[[I

    .line 94
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0600:[I

    .line 99
    new-array v0, v3, [[I

    .line 100
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0600:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0600:[I

    aput-object v1, v0, v7

    .line 101
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0600:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0600:[I

    aput-object v1, v0, v5

    .line 99
    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT06:[[I

    .line 103
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0700:[I

    .line 107
    new-array v0, v3, [[I

    .line 108
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0700:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0700:[I

    aput-object v1, v0, v7

    .line 109
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0700:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0700:[I

    aput-object v1, v0, v5

    .line 107
    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT07:[[I

    .line 111
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0800:[I

    .line 115
    new-array v0, v3, [[I

    .line 116
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0800:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0800:[I

    aput-object v1, v0, v7

    .line 117
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0800:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0800:[I

    aput-object v1, v0, v5

    .line 115
    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT08:[[I

    .line 119
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0900:[I

    .line 123
    new-array v0, v3, [[I

    .line 124
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0900:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0900:[I

    aput-object v1, v0, v7

    .line 125
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0900:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0900:[I

    aput-object v1, v0, v5

    .line 123
    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT09:[[I

    .line 127
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0A00:[I

    .line 132
    new-array v0, v3, [[I

    .line 133
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0A00:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0A00:[I

    aput-object v1, v0, v7

    .line 134
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0A00:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0A00:[I

    aput-object v1, v0, v5

    .line 132
    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0A:[[I

    .line 136
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0B00:[I

    .line 141
    new-array v0, v3, [[I

    .line 142
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0B00:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0B00:[I

    aput-object v1, v0, v7

    .line 143
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0B00:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0B00:[I

    aput-object v1, v0, v5

    .line 141
    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0B:[[I

    .line 145
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0C00:[I

    .line 150
    new-array v0, v3, [[I

    .line 151
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0C00:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0C00:[I

    aput-object v1, v0, v7

    .line 152
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0C00:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0C00:[I

    aput-object v1, v0, v5

    .line 150
    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0C:[[I

    .line 155
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0D00:[I

    .line 160
    new-array v0, v3, [[I

    .line 161
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0D00:[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0D00:[I

    aput-object v1, v0, v7

    .line 162
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0D00:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0D00:[I

    aput-object v1, v0, v5

    .line 160
    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0D:[[I

    .line 164
    const/16 v0, 0xe

    new-array v0, v0, [[[I

    .line 165
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT00:[[I

    aput-object v1, v0, v6

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT01:[[I

    aput-object v1, v0, v7

    .line 166
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT02:[[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT03:[[I

    aput-object v1, v0, v5

    .line 167
    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT04:[[I

    aput-object v1, v0, v3

    const/4 v1, 0x5

    sget-object v2, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT05:[[I

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 168
    sget-object v2, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT06:[[I

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT07:[[I

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 169
    sget-object v2, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT08:[[I

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT09:[[I

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 170
    sget-object v2, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0A:[[I

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0B:[[I

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 171
    sget-object v2, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0C:[[I

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0D:[[I

    aput-object v2, v0, v1

    .line 164
    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0:[[[I

    .line 173
    new-array v0, v3, [[I

    .line 174
    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x6

    .line 177
    aput v4, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x9

    aput v3, v1, v2

    aput-object v1, v0, v6

    .line 179
    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x6

    .line 182
    aput v4, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x9

    aput v3, v1, v2

    aput-object v1, v0, v7

    .line 184
    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x6

    .line 187
    aput v5, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x5

    aput v3, v1, v2

    aput-object v1, v0, v4

    .line 189
    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x6

    .line 192
    aput v5, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x8

    aput v3, v1, v2

    aput-object v1, v0, v5

    .line 173
    sput-object v0, Lcom/jianghe/blockgame/C_BLOCK_B;->BitBLOCK_B_EVT:[[I

    .line 7
    return-void

    .line 40
    nop

    :array_0
    .array-data 4
        0x7f0200ca
        0x7f0200cb
        0x7f0200cc
        0x7f0200cd
        0x7f0200ce
        0x7f0200cf
        0x7f0200d0
        0x7f0200d1
        0x7f0200d2
    .end array-data

    .line 49
    :array_1
    .array-data 4
        0x7f020138
        0x7f020139
        0x7f02013a
        0x7f02013b
        0x7f02013c
        0x7f02013d
        0x7f02013e
        0x7f02013f
        0x7f020140
    .end array-data

    .line 58
    :array_2
    .array-data 4
        0x7f020009
        0x7f02000a
        0x7f02000b
        0x7f02000c
        0x7f02000d
        0x7f02000e
        0x7f02000f
        0x7f020010
        0x7f020011
    .end array-data

    .line 67
    :array_3
    .array-data 4
        0x7f0200d9
        0x7f0200da
        0x7f0200db
        0x7f0200dc
        0x7f0200dd
        0x7f0200de
        0x7f0200df
        0x7f0200e0
        0x7f0200e1
    .end array-data

    .line 76
    :array_4
    .array-data 4
        0x7f020147
        0x7f020148
        0x7f020149
        0x7f02014a
        0x7f02014b
        0x7f02014c
        0x7f02014d
        0x7f02014e
        0x7f02014f
    .end array-data

    .line 85
    :array_5
    .array-data 4
        0x7f020018
        0x7f020019
        0x7f02001a
        0x7f02001b
        0x7f02001c
        0x7f02001d
        0x7f02001e
        0x7f02001f
        0x7f020020
    .end array-data

    .line 94
    :array_6
    .array-data 4
        0x7f02011d
        0x7f02011e
        0x7f02011f
        0x7f020120
        0x7f020121
        0x7f020122
        0x7f020123
        0x7f020124
        0x7f020125
    .end array-data

    .line 103
    :array_7
    .array-data 4
        0x7f0200e2
        0x7f0200e3
        0x7f0200e4
        0x7f0200e5
        0x7f0200e6
    .end array-data

    .line 111
    :array_8
    .array-data 4
        0x7f0200ef
        0x7f0200f0
        0x7f0200f1
        0x7f0200f2
        0x7f0200f3
    .end array-data

    .line 119
    :array_9
    .array-data 4
        0x7f0200fc
        0x7f0200fd
        0x7f0200fe
        0x7f0200ff
        0x7f020100
    .end array-data

    .line 127
    :array_a
    .array-data 4
        0x7f0200e7
        0x7f0200e8
        0x7f0200e9
        0x7f0200ea
        0x7f0200eb
        0x7f0200ec
        0x7f0200ed
        0x7f0200ee
    .end array-data

    .line 136
    :array_b
    .array-data 4
        0x7f0200f4
        0x7f0200f5
        0x7f0200f6
        0x7f0200f7
        0x7f0200f8
        0x7f0200f9
        0x7f0200fa
        0x7f0200fb
    .end array-data

    .line 145
    :array_c
    .array-data 4
        0x7f020101
        0x7f020102
        0x7f020103
        0x7f020104
        0x7f020105
        0x7f020106
        0x7f020107
        0x7f020108
    .end array-data

    .line 155
    :array_d
    .array-data 4
        0x7f020126
        0x7f020127
        0x7f020128
        0x7f020129
        0x7f02012a
        0x7f02012b
        0x7f02012c
        0x7f02012d
        0x7f02012e
    .end array-data
.end method

.method public constructor <init>(Loms/GameEngine/C_Lib;)V
    .locals 2
    .param p1, "clib"    # Loms/GameEngine/C_Lib;

    .prologue
    const/4 v0, 0x0

    .line 196
    invoke-direct {p0}, Loms/GameEngine/GameEvent;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->cLib:Loms/GameEngine/C_Lib;

    .line 198
    iput v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVTType:I

    .line 199
    iput v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVTCtrl:I

    .line 200
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT00:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    .line 201
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BitBLOCK_B_EVT:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->EVTPtr:[[I

    .line 202
    return-void
.end method


# virtual methods
.method public BLOCK_B_00EXE()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 263
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0:[[[I

    iget v2, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropType:I

    aget-object v1, v1, v2

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    .line 267
    return-void
.end method

.method public BLOCK_B_01EXE()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 270
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0:[[[I

    iget v2, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropType:I

    aget-object v1, v1, v2

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    .line 271
    return-void
.end method

.method public BLOCK_B_02EXE()V
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Status:I

    .line 274
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0:[[[I

    iget v2, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropType:I

    aget-object v1, v1, v2

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    .line 275
    return-void
.end method

.method public BLOCK_B_03EXE()V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT0:[[[I

    iget v2, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->m_BlockPropType:I

    aget-object v1, v1, v2

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    .line 278
    return-void
.end method

.method public EVTRUN()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    iget v0, v0, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 245
    :pswitch_0
    invoke-virtual {p0}, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_00EXE()V

    goto :goto_0

    .line 248
    :pswitch_1
    invoke-virtual {p0}, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_01EXE()V

    goto :goto_0

    .line 251
    :pswitch_2
    invoke-virtual {p0}, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_02EXE()V

    goto :goto_0

    .line 254
    :pswitch_3
    invoke-virtual {p0}, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_03EXE()V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public SetBLOCK_A_Ctrl(I)V
    .locals 2
    .param p1, "Ctrl"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVTCtrl:I

    .line 224
    iget v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVTCtrl:I

    packed-switch v0, :pswitch_data_0

    .line 238
    :goto_0
    return-void

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v1, 0x0

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v1, 0x1

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    goto :goto_0

    .line 232
    :pswitch_2
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v1, 0x2

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    goto :goto_0

    .line 235
    :pswitch_3
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    const/4 v1, 0x3

    iput v1, v0, Loms/GameEngine/GameEvent$EventDEF;->Ctrl:I

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public SetBLOCK_A_Type(I)V
    .locals 2
    .param p1, "Type"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVTType:I

    .line 206
    iget v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVTType:I

    packed-switch v0, :pswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT00:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    goto :goto_0

    .line 211
    :pswitch_1
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT00:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT00:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    goto :goto_0

    .line 217
    :pswitch_3
    iget-object v0, p0, Lcom/jianghe/blockgame/C_BLOCK_B;->EVT:Loms/GameEngine/GameEvent$EventDEF;

    sget-object v1, Lcom/jianghe/blockgame/C_BLOCK_B;->BLOCK_B_WAIT00:[[I

    iput-object v1, v0, Loms/GameEngine/GameEvent$EventDEF;->ACTPtr:[[I

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
