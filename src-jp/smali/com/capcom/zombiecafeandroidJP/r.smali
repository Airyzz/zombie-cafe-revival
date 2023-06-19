.class Lcom/capcom/zombiecafeandroidJP/r;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/r;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/r;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/r;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/capcom/zombiecafeandroidJP/r;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/r;->c:Ljava/lang/String;

    iput p3, p0, Lcom/capcom/zombiecafeandroidJP/r;->d:I

    const-string v0, "INSIDE NEWREQUESTTASK"

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/r;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HIGUCHI"

    const-string v1, "NewRequestTask 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/r;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/r;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/r;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/capcom/zombiecafeandroidJP/r;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/capcom/zombiecafeandroidJP/r;->c:Ljava/lang/String;

    iput p4, p0, Lcom/capcom/zombiecafeandroidJP/r;->d:I

    const-string v0, "INSIDE NEWREQUESTTASK"

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "INSIDE NEWREQUESTTASK"

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/r;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "INSIDE NEWREQUESTTASK"

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/r;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HIGUCHI"

    const-string v1, "NewRequestTask 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5

    const-string v0, "HIGUCHI"

    const-string v1, "NewRequestTask 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "NEWREQUEST TASK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QUERY="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/r;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "HIGUCHI"

    const-string v1, "NewRequestTask 2 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->t:Lcom/capcom/zombiecafeandroidJP/URLManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->t:Lcom/capcom/zombiecafeandroidJP/URLManager;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/r;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/r;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/r;->c:Ljava/lang/String;

    iget v4, p0, Lcom/capcom/zombiecafeandroidJP/r;->d:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/capcom/zombiecafeandroidJP/URLManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "HIGUCHI"

    const-string v1, "NewRequestTask 3 return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "HIGUCHI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NewRequestTask Exeption!!!!!!!!!!!!!!!!! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/r;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/r;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
