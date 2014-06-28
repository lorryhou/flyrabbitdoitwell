.class public Lcom/forthblue/pool/CubeWallpaper1;
.super Landroid/service/wallpaper/WallpaperService;
.source "CubeWallpaper1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/forthblue/pool/CubeWallpaper1;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$100(Lcom/forthblue/pool/CubeWallpaper1;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/forthblue/pool/CubeWallpaper1;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/forthblue/pool/CubeWallpaper1;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 18
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;

    invoke-direct {v0, p0}, Lcom/forthblue/pool/CubeWallpaper1$CubeEngine;-><init>(Lcom/forthblue/pool/CubeWallpaper1;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 23
    return-void
.end method
