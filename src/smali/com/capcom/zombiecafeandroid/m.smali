.class final Lcom/capcom/zombiecafeandroid/m;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EnterFacebook Asynchronously="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "String="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/capcom/zombiecafeandroid/m;->a:I

    iput-object p2, p0, Lcom/capcom/zombiecafeandroid/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/capcom/zombiecafeandroid/m;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "ASYNCH FACEBOOK"

    const-string v1, "INSIDE BG THREAD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    iget v1, p0, Lcom/capcom/zombiecafeandroid/m;->a:I

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/m;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/capcom/zombiecafeandroid/m;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "FB POST EXECUTE"

    const-string v1, "CLEAR LOGIN FLAG"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAllowLogin:Z

    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    return-void
.end method
