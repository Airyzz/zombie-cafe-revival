.class public Lcom/cameramanager/Cameramanager;
.super Landroid/app/Activity;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/hardware/Camera$ShutterCallback;

.field c:Landroid/hardware/Camera$PictureCallback;

.field d:Landroid/hardware/Camera$PictureCallback;

.field private e:Lcom/cameramanager/e;

.field private f:Landroid/hardware/Camera;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/cameramanager/a;

    invoke-direct {v0, p0}, Lcom/cameramanager/a;-><init>(Lcom/cameramanager/Cameramanager;)V

    iput-object v0, p0, Lcom/cameramanager/Cameramanager;->b:Landroid/hardware/Camera$ShutterCallback;

    new-instance v0, Lcom/cameramanager/b;

    invoke-direct {v0, p0}, Lcom/cameramanager/b;-><init>(Lcom/cameramanager/Cameramanager;)V

    iput-object v0, p0, Lcom/cameramanager/Cameramanager;->c:Landroid/hardware/Camera$PictureCallback;

    new-instance v0, Lcom/cameramanager/c;

    invoke-direct {v0, p0}, Lcom/cameramanager/c;-><init>(Lcom/cameramanager/Cameramanager;)V

    iput-object v0, p0, Lcom/cameramanager/Cameramanager;->d:Landroid/hardware/Camera$PictureCallback;

    return-void
.end method

.method static synthetic a(Lcom/cameramanager/Cameramanager;)Lcom/cameramanager/e;
    .locals 1

    iget-object v0, p0, Lcom/cameramanager/Cameramanager;->e:Lcom/cameramanager/e;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/cameramanager/Cameramanager;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/cameramanager/Cameramanager;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    new-instance v0, Lcom/cameramanager/e;

    invoke-direct {v0, p0}, Lcom/cameramanager/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cameramanager/Cameramanager;->e:Lcom/cameramanager/e;

    iget-object v0, p0, Lcom/cameramanager/Cameramanager;->e:Lcom/cameramanager/e;

    invoke-virtual {p0, v0}, Lcom/cameramanager/Cameramanager;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/cameramanager/Cameramanager;->e:Lcom/cameramanager/e;

    iget-object v0, v0, Lcom/cameramanager/e;->a:Landroid/hardware/Camera;

    iput-object v0, p0, Lcom/cameramanager/Cameramanager;->f:Landroid/hardware/Camera;

    const/4 v0, 0x0

    new-instance v1, Lcom/cameramanager/d;

    invoke-direct {v1, p0}, Lcom/cameramanager/d;-><init>(Lcom/cameramanager/Cameramanager;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cameramanager/Cameramanager;->g:I

    return-void
.end method

.method protected onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/cameramanager/Cameramanager;->f:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cameramanager/Cameramanager;->e:Lcom/cameramanager/e;

    invoke-virtual {v0, v1}, Lcom/cameramanager/e;->a(Landroid/hardware/Camera;)V

    iget-object v0, p0, Lcom/cameramanager/Cameramanager;->f:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iput-object v1, p0, Lcom/cameramanager/Cameramanager;->f:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/cameramanager/Cameramanager;->f:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/cameramanager/Cameramanager;->e:Lcom/cameramanager/e;

    iget-object v1, p0, Lcom/cameramanager/Cameramanager;->f:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/cameramanager/e;->a(Landroid/hardware/Camera;)V

    return-void
.end method
