.class public Lcn/domob/android/b/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field final synthetic b:Lcn/domob/android/b/f;


# direct methods
.method protected constructor <init>(Lcn/domob/android/b/f;)V
    .locals 1

    .prologue
    .line 144
    iput-object p1, p0, Lcn/domob/android/b/f$a;->b:Lcn/domob/android/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/b/f$a;->a:Z

    return-void
.end method
