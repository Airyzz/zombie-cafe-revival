.class final Lcom/capcom/zombiecafeandroid/q;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/q;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/capcom/zombiecafeandroid/q;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/capcom/zombiecafeandroid/q;->b:Ljava/lang/String;

    iput p3, p0, Lcom/capcom/zombiecafeandroid/q;->c:I

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mURLManager:Lcom/capcom/zombiecafeandroid/URLManager;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/q;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/q;->b:Ljava/lang/String;

    iget v2, p0, Lcom/capcom/zombiecafeandroid/q;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/URLManager;->a(Ljava/lang/String;I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected final onPreExecute()V
    .locals 0

    return-void
.end method
