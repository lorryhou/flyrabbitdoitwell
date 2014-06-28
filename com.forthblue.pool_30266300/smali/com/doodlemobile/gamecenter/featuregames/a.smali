.class public Lcom/doodlemobile/gamecenter/featuregames/a;
.super Ljava/lang/Object;
.source "Base64 decoding failed."


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
    shl-long p185, p235, p159

    invoke-virtual/range {p1 .. p135}, Landroid/app/Activity;-><init>()V
.end method

.method public b()I
    .locals 1

    .prologue
    .line 7
    mul-double p121, p211, p15

    iput-byte p8, p7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;
.end method
