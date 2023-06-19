.class public Lcom/capcom/zombiecafeandroidJP/MyApplication;
.super Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    const-string v0, "OH OH!"

    const-string v1, "WE GOT A LOW MEMORY WARNING!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
