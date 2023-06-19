.class Lcom/capcom/zombiecafeandroid/NetworkTask;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Z

.field private b:I

.field private c:[B

.field private d:I


# direct methods
.method public constructor <init>(Z[BII)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "Run Long NetworkTask With"

    const-string v1, "Passed Data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/capcom/zombiecafeandroid/NetworkTask;->a:Z

    iput-object p2, p0, Lcom/capcom/zombiecafeandroid/NetworkTask;->c:[B

    iput p3, p0, Lcom/capcom/zombiecafeandroid/NetworkTask;->b:I

    iput p4, p0, Lcom/capcom/zombiecafeandroid/NetworkTask;->d:I

    return-void
.end method

.method public static native NewRequestServerCallback(Z[BII)V
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "ASYNCH TASK"

    const-string v1, "INSIDE BG THREAD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/capcom/zombiecafeandroid/NetworkTask;->a:Z

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/NetworkTask;->c:[B

    iget v2, p0, Lcom/capcom/zombiecafeandroid/NetworkTask;->b:I

    iget v3, p0, Lcom/capcom/zombiecafeandroid/NetworkTask;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/capcom/zombiecafeandroid/NetworkTask;->NewRequestServerCallback(Z[BII)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
