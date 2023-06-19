.class Lcom/cameramanager/e;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field a:Landroid/view/SurfaceView;

.field b:Landroid/view/SurfaceHolder;

.field c:Landroid/hardware/Camera$Size;

.field d:Ljava/util/List;

.field e:Landroid/hardware/Camera;

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const-string v0, "Preview"

    iput-object v0, p0, Lcom/cameramanager/e;->f:Ljava/lang/String;

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cameramanager/e;->a:Landroid/view/SurfaceView;

    iget-object v0, p0, Lcom/cameramanager/e;->a:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/cameramanager/e;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/cameramanager/e;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/cameramanager/e;->b:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/cameramanager/e;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/cameramanager/e;->b:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method

.method private a(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 16

    move/from16 v0, p2

    int-to-double v2, v0

    move/from16 v0, p3

    int-to-double v4, v0

    div-double v6, v2, v4

    if-nez p1, :cond_1

    const/4 v3, 0x0

    :cond_0
    return-object v3

    :cond_1
    const/4 v4, 0x0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v14, v2

    move-object v3, v4

    move-wide v4, v14

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v3, :cond_0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int v7, v7, p3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v8, v7

    cmpg-double v7, v8, v4

    if-gez v7, :cond_3

    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int v3, v3, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v4, v3

    move-object v3, v2

    goto :goto_1

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v9, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v10, v9

    iget v9, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v12, v9

    div-double/2addr v10, v12

    sub-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3fb999999999999aL    # 0.1

    cmpl-double v9, v10, v12

    if-gtz v9, :cond_2

    iget v9, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int v9, v9, p3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v10, v9

    cmpg-double v9, v10, v4

    if-gez v9, :cond_2

    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    sub-int v3, v3, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v4, v3

    move-object v3, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/hardware/Camera;)V
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0x190

    iput-object p1, p0, Lcom/cameramanager/e;->e:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/cameramanager/e;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cameramanager/e;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cameramanager/e;->d:Ljava/util/List;

    invoke-virtual {p0}, Lcom/cameramanager/e;->requestLayout()V

    iget-object v0, p0, Lcom/cameramanager/e;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const/16 v0, 0x63

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    invoke-virtual {v2, v1, v1}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    const-string v0, "night"

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    new-instance v1, Landroid/hardware/Camera$Size;

    iget-object v3, p0, Lcom/cameramanager/e;->e:Landroid/hardware/Camera;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v3, v7, v7}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move-object v0, v1

    :goto_0
    const-string v1, "==============Set picture size"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "width:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "==============Set picture size"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "height:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v1, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    iget-object v0, p0, Lcom/cameramanager/e;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/cameramanager/e;->e:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/cameramanager/e;->e:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_2
    return-void

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    const-string v4, "==============Available picture size"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "width:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "==============Available picture size"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "height:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    const/16 v5, 0x1f4

    if-ge v4, v5, :cond_0

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-le v3, v7, :cond_1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/cameramanager/e;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v7}, Lcom/cameramanager/e;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    sub-int v3, p4, p2

    sub-int v1, p5, p3

    iget-object v0, p0, Lcom/cameramanager/e;->c:Landroid/hardware/Camera$Size;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cameramanager/e;->c:Landroid/hardware/Camera$Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget-object v0, p0, Lcom/cameramanager/e;->c:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    :goto_0
    mul-int v5, v3, v0

    mul-int v6, v1, v2

    if-le v5, v6, :cond_1

    mul-int/2addr v2, v1

    div-int v0, v2, v0

    sub-int v2, v3, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v2, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    mul-int/2addr v0, v3

    div-int/2addr v0, v2

    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v7, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_2
    move v0, v1

    move v2, v3

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/cameramanager/e;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/cameramanager/e;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/cameramanager/e;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/cameramanager/e;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/cameramanager/e;->setMeasuredDimension(II)V

    iget-object v2, p0, Lcom/cameramanager/e;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/cameramanager/e;->d:Ljava/util/List;

    invoke-direct {p0, v2, v0, v1}, Lcom/cameramanager/e;->a(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/cameramanager/e;->c:Landroid/hardware/Camera$Size;

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    iget-object v0, p0, Lcom/cameramanager/e;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/cameramanager/e;->c:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/cameramanager/e;->c:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-virtual {p0}, Lcom/cameramanager/e;->requestLayout()V

    iget-object v1, p0, Lcom/cameramanager/e;->e:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :try_start_0
    iget-object v0, p0, Lcom/cameramanager/e;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/cameramanager/e;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/cameramanager/e;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cameramanager/e;->e:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Preview"

    const-string v2, "IOException caused by setPreviewDisplay()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/cameramanager/e;->e:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cameramanager/e;->e:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_0
    return-void
.end method
