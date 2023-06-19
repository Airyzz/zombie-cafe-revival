.class final Lcom/capcom/zombiecafeandroid/u;
.super Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "Sound Task"

    const-string v1, "Load Sounds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAddingSounds:Z

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroid/SoundManager;->initSounds(Landroid/content/Context;)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->addSounds()V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/SoundManager;->begin()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAddingSounds:Z

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    return-void
.end method
