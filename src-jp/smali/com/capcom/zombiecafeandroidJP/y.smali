.class Lcom/capcom/zombiecafeandroidJP/y;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/y;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "BROADCAST RECEIVER FIRED - USER"

    const-string v1, "AMAZING!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BROADCAST RECEIVER FIRED - USER"

    const-string v1, "AMAZING!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BROADCAST RECEIVER FIRED - USER"

    const-string v1, "AMAZING!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->f:Z

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->x:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->x:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ai:I

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->GetMusicFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_loadMusic(ILjava/lang/String;)Z

    invoke-static {v2}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_startMusic(I)Z

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ag:Lcom/capcom/zombiecafeandroidJP/SoundManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ag:Lcom/capcom/zombiecafeandroidJP/SoundManager;

    invoke-virtual {v0, v3}, Lcom/capcom/zombiecafeandroidJP/SoundManager;->setEnabled(Z)V

    :cond_0
    return-void
.end method
