.class Lcom/capcom/zombiecafeandroid/ReloadTask;
.super Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "RELOAD TEXTURES TASK"

    const-string v1, "DO IN BG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mFirstTime:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mFirstTime:Z

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "RELOAD TEXTURES"

    const-string v1, "POST EXECUTE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    const-string v0, "RELOAD TEXTURES TASK"

    const-string v1, "PRE EXECUTE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method native reloadTextures()V
.end method
