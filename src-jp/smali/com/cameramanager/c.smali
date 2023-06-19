.class Lcom/cameramanager/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field final synthetic a:Lcom/cameramanager/Cameramanager;


# direct methods
.method constructor <init>(Lcom/cameramanager/Cameramanager;)V
    .locals 0

    iput-object p1, p0, Lcom/cameramanager/c;->a:Lcom/cameramanager/Cameramanager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cameramanager/c;->a:Lcom/cameramanager/Cameramanager;

    invoke-virtual {v0}, Lcom/cameramanager/Cameramanager;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/cameramanager/c;->a:Lcom/cameramanager/Cameramanager;

    const-string v2, "filename"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/cameramanager/Cameramanager;->e:Ljava/lang/String;

    const-string v0, "CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "filename:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cameramanager/c;->a:Lcom/cameramanager/Cameramanager;

    iget-object v2, v2, Lcom/cameramanager/Cameramanager;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    iget-object v1, p0, Lcom/cameramanager/c;->a:Lcom/cameramanager/Cameramanager;

    iget-object v1, v1, Lcom/cameramanager/Cameramanager;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, p1}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_fileWrite(Ljava/lang/String;II[B)Z

    const-string v0, "CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPictureTaken - wrote bytes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/cameramanager/c;->a:Lcom/cameramanager/Cameramanager;

    invoke-virtual {v0}, Lcom/cameramanager/Cameramanager;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "CameraManager"

    const-string v1, "onPictureTaken - jpeg"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
