.class final Lcn/domob/android/ads/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/b;->a(Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/b;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/b;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcn/domob/android/ads/a/b$1;->a:Lcn/domob/android/ads/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcn/domob/android/ads/a/b$1;->a:Lcn/domob/android/ads/a/b;

    invoke-static {v0}, Lcn/domob/android/ads/a/b;->b(Lcn/domob/android/ads/a/b;)Z

    .line 240
    return-void
.end method
