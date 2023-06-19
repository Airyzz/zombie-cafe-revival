.class Lcom/capcom/zombiecafeandroid/NetworkTaskPost;
.super Landroid/os/AsyncTask;


# direct methods
.method public static native NewRequestServerCallback(Z[BII)V
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "ASYNCH POST TASK"

    const-string v1, "INSIDE BG THREAD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-static {v2, v3, v2, v0}, Lcom/capcom/zombiecafeandroid/NetworkTaskPost;->NewRequestServerCallback(Z[BII)V

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
