.class Lcom/capcom/zombiecafeandroidJP/z;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/z;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/z;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$2(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Lcom/google/android/gms/b/a;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/z;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->w:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/b/a;->a(Landroid/content/Context;)Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$3(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;Lcom/google/android/gms/b/a;)V

    :cond_0
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->w:Landroid/content/Context;

    invoke-static {v0}, Lcom/capcom/gcm/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZombieCafeAndroid-GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sender ID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/z;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/z;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$2(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Lcom/google/android/gms/b/a;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/android/gms/b/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$4(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Device registered, registration ID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/z;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$5(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZombieCafeAndroid-GCM"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/z;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->w:Landroid/content/Context;

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/z;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v3}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$5(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$6(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/z;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/z;->a(Ljava/lang/String;)V

    return-void
.end method
