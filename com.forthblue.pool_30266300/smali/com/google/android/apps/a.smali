.class public Lcom/google/android/apps/a;
.super Ljava/lang/Object;
.source "GET"


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
    #disallowed odex opcode
    #iget-wide-quick v0, p2, field@0xe1a7
    nop

    sget-boolean p104, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;
.end method

.method public b()I
    .locals 1

    .prologue
    .line 7
    shr-long p175, p36, p174

    mul-int/lit16 p11, p12, 0x0
.end method
