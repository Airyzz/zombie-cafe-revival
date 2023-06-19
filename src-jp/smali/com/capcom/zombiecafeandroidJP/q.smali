.class Lcom/capcom/zombiecafeandroidJP/q;
.super Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    const/4 v2, 0x0

    const-string v0, "----"

    const-string v1, "----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ASYNCH MUSIC TASK"

    const-string v1, "INSIDE BG THREAD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "---"

    const-string v1, "---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ac:Lcom/capcom/zombiecafeandroidJP/CC_Android;

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->x:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->x:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ai:I

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->GetMusicFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_loadMusic(ILjava/lang/String;)Z

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ac:Lcom/capcom/zombiecafeandroidJP/CC_Android;

    invoke-static {v2}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_startMusic(I)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    const-string v0, "======"

    const-string v1, "======"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Music Task Returned"

    const-string v1, "I hope"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "======"

    const-string v1, "======"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/q;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/q;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
