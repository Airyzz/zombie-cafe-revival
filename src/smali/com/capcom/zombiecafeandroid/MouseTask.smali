.class Lcom/capcom/zombiecafeandroid/MouseTask;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p1, p0, Lcom/capcom/zombiecafeandroid/MouseTask;->a:F

    iput p2, p0, Lcom/capcom/zombiecafeandroid/MouseTask;->b:F

    return-void
.end method

.method public static native mouseUp(FFI)V
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "ASYNCH MOUSE TASK"

    const-string v1, "INSIDE BG THREAD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/capcom/zombiecafeandroid/MouseTask;->a:F

    iget v1, p0, Lcom/capcom/zombiecafeandroid/MouseTask;->b:F

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mouseUp(FFI)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mTouchBusy:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mTouchTime:I

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
