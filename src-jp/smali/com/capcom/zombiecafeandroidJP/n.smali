.class Lcom/capcom/zombiecafeandroidJP/n;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/n;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/n;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/capcom/zombiecafeandroidJP/n;->b:Ljava/lang/String;

    iput p3, p0, Lcom/capcom/zombiecafeandroidJP/n;->c:I

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    const-string v0, "inside message"

    const-string v1, "loadimage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->t:Lcom/capcom/zombiecafeandroidJP/URLManager;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/n;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/n;->b:Ljava/lang/String;

    iget v3, p0, Lcom/capcom/zombiecafeandroidJP/n;->c:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/capcom/zombiecafeandroidJP/URLManager;->a(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v4
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/n;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/n;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
