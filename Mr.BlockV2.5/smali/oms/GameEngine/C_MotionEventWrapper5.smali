.class public Loms/GameEngine/C_MotionEventWrapper5;
.super Ljava/lang/Object;
.source "C_MotionEventWrapper5.java"


# static fields
.field public static final ACTION_POINTER_1_DOWN:I = 0x5

.field public static final ACTION_POINTER_1_UP:I = 0x6

.field public static final ACTION_POINTER_2_DOWN:I = 0x105

.field public static final ACTION_POINTER_2_UP:I = 0x106

.field public static final ACTION_POINTER_3_DOWN:I = 0x205

.field public static final ACTION_POINTER_3_UP:I = 0x206


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPointerCount(Landroid/view/MotionEvent;)I
    .locals 1
    .param p0, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
    .locals 1
    .param p0, "motionEvent"    # Landroid/view/MotionEvent;
    .param p1, "index"    # I

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    return v0
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p0, "motionEvent"    # Landroid/view/MotionEvent;
    .param p1, "index"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p0, "motionEvent"    # Landroid/view/MotionEvent;
    .param p1, "index"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method
