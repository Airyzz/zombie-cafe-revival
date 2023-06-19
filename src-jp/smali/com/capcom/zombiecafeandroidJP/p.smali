.class Lcom/capcom/zombiecafeandroidJP/p;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/p;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->t:Lcom/capcom/zombiecafeandroidJP/URLManager;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroidJP/URLManager;->a(Ljava/lang/String;)V

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

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/p;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/p;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
