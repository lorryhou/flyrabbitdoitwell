.class public Loms/GameEngine/C_Vibrator;
.super Ljava/lang/Object;
.source "C_Vibrator.java"


# instance fields
.field private cVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public InitVibrator(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 15
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Loms/GameEngine/C_Vibrator;->cVibrator:Landroid/os/Vibrator;

    .line 16
    return-void
.end method

.method public Vibrate(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .prologue
    .line 30
    iget-object v0, p0, Loms/GameEngine/C_Vibrator;->cVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Loms/GameEngine/C_Vibrator;->cVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 32
    :cond_0
    return-void
.end method

.method public Vibrate([J)V
    .locals 2
    .param p1, "pattern"    # [J

    .prologue
    .line 39
    iget-object v0, p0, Loms/GameEngine/C_Vibrator;->cVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Loms/GameEngine/C_Vibrator;->cVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 41
    :cond_0
    return-void
.end method

.method public Vibrate([JI)V
    .locals 1
    .param p1, "pattern"    # [J
    .param p2, "loops"    # I

    .prologue
    .line 49
    iget-object v0, p0, Loms/GameEngine/C_Vibrator;->cVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Loms/GameEngine/C_Vibrator;->cVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 51
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Loms/GameEngine/C_Vibrator;->cVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 20
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Loms/GameEngine/C_Vibrator;->Vibrate(J)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Loms/GameEngine/C_Vibrator;->cVibrator:Landroid/os/Vibrator;

    .line 23
    :cond_0
    return-void
.end method
