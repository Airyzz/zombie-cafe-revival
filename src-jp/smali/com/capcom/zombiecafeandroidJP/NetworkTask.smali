.class Lcom/capcom/zombiecafeandroidJP/NetworkTask;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Z

.field b:I

.field c:[B

.field d:I


# direct methods
.method public constructor <init>(Z[BII)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "Run Long NetworkTask With"

    const-string v1, "Passed Data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/capcom/zombiecafeandroidJP/NetworkTask;->a:Z

    iput-object p2, p0, Lcom/capcom/zombiecafeandroidJP/NetworkTask;->c:[B

    iput p3, p0, Lcom/capcom/zombiecafeandroidJP/NetworkTask;->b:I

    iput p4, p0, Lcom/capcom/zombiecafeandroidJP/NetworkTask;->d:I

    return-void
.end method

.method public static native NewRequestServerCallback(Z[BII)V
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    const-string v0, "ASYNCH TASK"

    const-string v1, "INSIDE BG THREAD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/capcom/zombiecafeandroidJP/NetworkTask;->a:Z

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/NetworkTask;->c:[B

    iget v2, p0, Lcom/capcom/zombiecafeandroidJP/NetworkTask;->b:I

    iget v3, p0, Lcom/capcom/zombiecafeandroidJP/NetworkTask;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/capcom/zombiecafeandroidJP/NetworkTask;->NewRequestServerCallback(Z[BII)V

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

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/NetworkTask;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/NetworkTask;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
