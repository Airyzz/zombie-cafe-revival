.class Lcom/cameramanager/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/cameramanager/Cameramanager;


# direct methods
.method constructor <init>(Lcom/cameramanager/Cameramanager;)V
    .locals 0

    iput-object p1, p0, Lcom/cameramanager/d;->a:Lcom/cameramanager/Cameramanager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/cameramanager/d;->a:Lcom/cameramanager/Cameramanager;

    invoke-static {v0}, Lcom/cameramanager/Cameramanager;->a(Lcom/cameramanager/Cameramanager;)Lcom/cameramanager/e;

    move-result-object v0

    iget-object v0, v0, Lcom/cameramanager/e;->e:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/cameramanager/d;->a:Lcom/cameramanager/Cameramanager;

    iget-object v1, v1, Lcom/cameramanager/Cameramanager;->g:Landroid/hardware/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/cameramanager/d;->a:Lcom/cameramanager/Cameramanager;

    iget-object v2, v2, Lcom/cameramanager/Cameramanager;->h:Landroid/hardware/Camera$PictureCallback;

    iget-object v3, p0, Lcom/cameramanager/d;->a:Lcom/cameramanager/Cameramanager;

    iget-object v3, v3, Lcom/cameramanager/Cameramanager;->i:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method
