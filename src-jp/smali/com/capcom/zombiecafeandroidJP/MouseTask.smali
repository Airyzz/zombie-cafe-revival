.class Lcom/capcom/zombiecafeandroidJP/MouseTask;
.super Landroid/os/AsyncTask;


# instance fields
.field a:F

.field b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p1, p0, Lcom/capcom/zombiecafeandroidJP/MouseTask;->a:F

    iput p2, p0, Lcom/capcom/zombiecafeandroidJP/MouseTask;->b:F

    return-void
.end method

.method public static native mouseUp(FFI)V
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    const-string v0, "ASYNCH MOUSE TASK"

    const-string v1, "INSIDE BG THREAD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/capcom/zombiecafeandroidJP/MouseTask;->a:F

    iget v1, p0, Lcom/capcom/zombiecafeandroidJP/MouseTask;->b:F

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->mouseUp(FFI)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->Y:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->Z:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/MouseTask;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/MouseTask;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
