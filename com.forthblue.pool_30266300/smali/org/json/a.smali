.class public Lorg/json/a;
.super Ljava/lang/Object;
.source "GL_MAX_TEXTURE_UNITS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    xor-int/lit16 v0, p0, 0x4d8a

    #disallowed odex opcode
    #iput-object-volatile v0, p3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;
    nop
.end method

.method public b()I
    .locals 1

    .prologue
    .line 7
    mul-double p84, p85, p83

    sub-int p158, v0, v0
.end method
