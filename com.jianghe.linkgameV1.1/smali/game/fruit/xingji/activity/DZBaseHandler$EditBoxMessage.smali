.class public Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;
.super Ljava/lang/Object;
.source "DZBaseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgame/fruit/xingji/activity/DZBaseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditBoxMessage"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public inputFlag:I

.field public inputMode:I

.field public maxLength:I

.field public returnType:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "inputMode"    # I
    .param p4, "inputFlag"    # I
    .param p5, "returnType"    # I
    .param p6, "maxLength"    # I

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;->content:Ljava/lang/String;

    .line 106
    iput-object p1, p0, Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;->title:Ljava/lang/String;

    .line 107
    iput p3, p0, Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;->inputMode:I

    .line 108
    iput p4, p0, Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;->inputFlag:I

    .line 109
    iput p5, p0, Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;->returnType:I

    .line 110
    iput p6, p0, Lgame/fruit/xingji/activity/DZBaseHandler$EditBoxMessage;->maxLength:I

    .line 111
    return-void
.end method
