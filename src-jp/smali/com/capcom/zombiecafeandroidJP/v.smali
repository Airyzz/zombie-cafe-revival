.class Lcom/capcom/zombiecafeandroidJP/v;
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
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ag:Lcom/capcom/zombiecafeandroidJP/SoundManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ah:Z

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ag:Lcom/capcom/zombiecafeandroidJP/SoundManager;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->w:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroidJP/SoundManager;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ag:Lcom/capcom/zombiecafeandroidJP/SoundManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->addSounds()V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ag:Lcom/capcom/zombiecafeandroidJP/SoundManager;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/SoundManager;->a()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ah:Z

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/v;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/v;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
