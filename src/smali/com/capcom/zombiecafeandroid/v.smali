.class final Lcom/capcom/zombiecafeandroid/v;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "BROADCAST RECEIVER FIRED - USER"

    const-string v1, "AMAZING!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BROADCAST RECEIVER FIRED - USER"

    const-string v1, "AMAZING!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BROADCAST RECEIVER FIRED - USER"

    const-string v1, "AMAZING!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenOn:Z

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/CC_Android;->NO_MUSIC:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/CC_Android;->fromNative_startMusic(I)Z

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    invoke-virtual {v0, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->setEnabled(Z)V

    :cond_0
    return-void
.end method
