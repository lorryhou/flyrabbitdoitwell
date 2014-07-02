.class public Lgame/fruit/xingji/activity/DZBaseHandler$DialogMessage;
.super Ljava/lang/Object;
.source "DZBaseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgame/fruit/xingji/activity/DZBaseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogMessage"
.end annotation


# instance fields
.field public message:Ljava/lang/String;

.field public titile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lgame/fruit/xingji/activity/DZBaseHandler$DialogMessage;->titile:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lgame/fruit/xingji/activity/DZBaseHandler$DialogMessage;->message:Ljava/lang/String;

    .line 93
    return-void
.end method
