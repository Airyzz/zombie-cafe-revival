.class public Lcom/capcom/wallpaper/wallpaper;
.super Landroid/service/wallpaper/WallpaperService;


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/capcom/wallpaper/wallpaper;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/capcom/wallpaper/wallpaper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/capcom/wallpaper/wallpaper;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    new-instance v0, Lcom/capcom/wallpaper/a;

    invoke-direct {v0, p0}, Lcom/capcom/wallpaper/a;-><init>(Lcom/capcom/wallpaper/wallpaper;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    return-void
.end method
