.class public Loms/GameEngine/VibrateManager;
.super Ljava/lang/Object;
.source "VibrateManager.java"


# instance fields
.field private cVibrator:Loms/GameEngine/C_Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Loms/GameEngine/C_Vibrator;

    invoke-direct {v0}, Loms/GameEngine/C_Vibrator;-><init>()V

    iput-object v0, p0, Loms/GameEngine/VibrateManager;->cVibrator:Loms/GameEngine/C_Vibrator;

    .line 10
    return-void
.end method


# virtual methods
.method public OpenVibrate(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 13
    iget-object v0, p0, Loms/GameEngine/VibrateManager;->cVibrator:Loms/GameEngine/C_Vibrator;

    invoke-virtual {v0, p1}, Loms/GameEngine/C_Vibrator;->InitVibrator(Landroid/app/Activity;)V

    .line 14
    return-void
.end method

.method public Vibrate(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .prologue
    .line 17
    iget-object v0, p0, Loms/GameEngine/VibrateManager;->cVibrator:Loms/GameEngine/C_Vibrator;

    invoke-virtual {v0, p1, p2}, Loms/GameEngine/C_Vibrator;->Vibrate(J)V

    .line 18
    return-void
.end method

.method public Vibrate([J)V
    .locals 1
    .param p1, "pattern"    # [J

    .prologue
    .line 21
    iget-object v0, p0, Loms/GameEngine/VibrateManager;->cVibrator:Loms/GameEngine/C_Vibrator;

    invoke-virtual {v0, p1}, Loms/GameEngine/C_Vibrator;->Vibrate([J)V

    .line 22
    return-void
.end method

.method public Vibrate([JI)V
    .locals 1
    .param p1, "pattern"    # [J
    .param p2, "loops"    # I

    .prologue
    .line 25
    iget-object v0, p0, Loms/GameEngine/VibrateManager;->cVibrator:Loms/GameEngine/C_Vibrator;

    invoke-virtual {v0, p1, p2}, Loms/GameEngine/C_Vibrator;->Vibrate([JI)V

    .line 26
    return-void
.end method
