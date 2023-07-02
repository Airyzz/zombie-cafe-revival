.class public Lcom/capcom/zombiecafeandroid/MyApplication;
.super Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    :try_start_0
    const-string v0, "FIKSU"

    const-string v1, "INITIALIZED"

    :try_end_0
    .catch Lcom/fiksu/asotracking/c; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/fiksu/asotracking/c;->printStackTrace()V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    const-string v0, "OH OH!"

    const-string v1, "WE GOT A LOW MEMORY WARNING!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
