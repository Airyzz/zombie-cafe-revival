.class Lcom/capcom/zombiecafeandroidJP/o;
.super Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    const-string v0, "----"

    const-string v1, "----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ZombieCafeAndroid::InitFBTask"

    const-string v1, "INSIDE BG THREAD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "----"

    const-string v1, "----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/capcom/a/f;

    const-string v1, "305409282881599"

    invoke-direct {v0, v1}, Lcom/capcom/a/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ak:Lcom/capcom/a/f;

    new-instance v0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ak:Lcom/capcom/a/f;

    invoke-direct {v0, v1}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;-><init>(Lcom/capcom/a/f;)V

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->V:Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    const-string v0, "======"

    const-string v1, "======"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SnoopysStreetFairActivity::InitFBTaskTask::onPostExecute"

    const-string v1, "Returned I hope"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "======"

    const-string v1, "======"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/o;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/o;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
