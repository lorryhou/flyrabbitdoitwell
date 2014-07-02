.class final Lcn/domob/android/ads/c/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/c/l;->a(Landroid/view/View;II)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/c/l;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/c/l;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcn/domob/android/ads/c/l$1;->a:Lcn/domob/android/ads/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 356
    const/4 v0, 0x1

    return v0
.end method
