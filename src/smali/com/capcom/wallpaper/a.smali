.class final Lcom/capcom/wallpaper/a;
.super Landroid/service/wallpaper/WallpaperService$Engine;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:F

.field private c:F

.field private d:F

.field private e:J

.field private f:F

.field private g:F

.field private final h:Ljava/lang/Runnable;

.field private i:Z

.field private synthetic j:Lcom/capcom/wallpaper/wallpaper;


# direct methods
.method constructor <init>(Lcom/capcom/wallpaper/wallpaper;)V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    iput-object p1, p0, Lcom/capcom/wallpaper/a;->j:Lcom/capcom/wallpaper/wallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/capcom/wallpaper/a;->a:Landroid/graphics/Paint;

    iput v1, p0, Lcom/capcom/wallpaper/a;->c:F

    iput v1, p0, Lcom/capcom/wallpaper/a;->d:F

    new-instance v0, Lcom/capcom/wallpaper/b;

    invoke-direct {v0, p0}, Lcom/capcom/wallpaper/b;-><init>(Lcom/capcom/wallpaper/a;)V

    iput-object v0, p0, Lcom/capcom/wallpaper/a;->h:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/capcom/wallpaper/a;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/capcom/wallpaper/a;->e:J

    return-void
.end method

.method private a(Landroid/graphics/Canvas;IIIIII)V
    .locals 14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/capcom/wallpaper/a;->e:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    iget v3, p0, Lcom/capcom/wallpaper/a;->b:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    move/from16 v0, p4

    int-to-double v5, v0

    mul-double/2addr v3, v5

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    move/from16 v0, p3

    int-to-double v7, v0

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-float v3, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    move/from16 v0, p7

    int-to-double v6, v0

    mul-double/2addr v4, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    move/from16 v0, p6

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v5, v4

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    move/from16 v0, p4

    int-to-double v8, v0

    mul-double/2addr v6, v8

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    move/from16 v0, p3

    int-to-double v10, v0

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v4, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    move/from16 v0, p7

    int-to-double v8, v0

    mul-double/2addr v6, v8

    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    move/from16 v0, p6

    int-to-double v10, v0

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v1, v6

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    float-to-double v8, v4

    mul-double/2addr v6, v8

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move/from16 v0, p2

    int-to-double v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    float-to-double v9, v1

    mul-double/2addr v7, v9

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    move/from16 v0, p5

    int-to-double v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-float v7, v7

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    float-to-double v10, v4

    mul-double/2addr v8, v10

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    move/from16 v0, p2

    int-to-double v12, v0

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    double-to-float v4, v8

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    float-to-double v10, v1

    mul-double/2addr v8, v10

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    move/from16 v0, p5

    int-to-double v10, v0

    mul-double/2addr v1, v10

    sub-double v1, v8, v1

    double-to-float v1, v1

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v8, 0x43c80000    # 400.0f

    div-float v8, v4, v8

    sub-float/2addr v2, v8

    div-float v2, v6, v2

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v8, 0x43c80000    # 400.0f

    div-float/2addr v4, v8

    sub-float v4, v6, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v6, 0x43c80000    # 400.0f

    div-float v6, v1, v6

    sub-float/2addr v4, v6

    div-float v4, v7, v4

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x43c80000    # 400.0f

    div-float/2addr v1, v7

    sub-float v1, v6, v1

    div-float/2addr v5, v1

    iget-object v6, p0, Lcom/capcom/wallpaper/a;->a:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/capcom/wallpaper/a;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v8

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v8}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/capcom/wallpaper/a;->f:F

    iget v2, p0, Lcom/capcom/wallpaper/a;->g:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    const/16 v2, -0x190

    const/16 v3, -0x190

    const/16 v4, -0x190

    const/16 v5, 0x190

    const/16 v6, -0x190

    const/16 v7, -0x190

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/capcom/wallpaper/a;->a(Landroid/graphics/Canvas;IIIIII)V

    const/16 v2, 0x190

    const/16 v3, -0x190

    const/16 v4, -0x190

    const/16 v5, 0x190

    const/16 v6, 0x190

    const/16 v7, -0x190

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/capcom/wallpaper/a;->a(Landroid/graphics/Canvas;IIIIII)V

    const/16 v2, 0x190

    const/16 v3, 0x190

    const/16 v4, -0x190

    const/16 v5, -0x190

    const/16 v6, 0x190

    const/16 v7, -0x190

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/capcom/wallpaper/a;->a(Landroid/graphics/Canvas;IIIIII)V

    const/16 v2, -0x190

    const/16 v3, 0x190

    const/16 v4, -0x190

    const/16 v5, -0x190

    const/16 v6, -0x190

    const/16 v7, -0x190

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/capcom/wallpaper/a;->a(Landroid/graphics/Canvas;IIIIII)V

    const/16 v2, -0x190

    const/16 v3, -0x190

    const/16 v4, 0x190

    const/16 v5, 0x190

    const/16 v6, -0x190

    const/16 v7, 0x190

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/capcom/wallpaper/a;->a(Landroid/graphics/Canvas;IIIIII)V

    const/16 v2, 0x190

    const/16 v3, -0x190

    const/16 v4, 0x190

    const/16 v5, 0x190

    const/16 v6, 0x190

    const/16 v7, 0x190

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/capcom/wallpaper/a;->a(Landroid/graphics/Canvas;IIIIII)V

    const/16 v2, 0x190

    const/16 v3, 0x190

    const/16 v4, 0x190

    const/16 v5, -0x190

    const/16 v6, 0x190

    const/16 v7, 0x190

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/capcom/wallpaper/a;->a(Landroid/graphics/Canvas;IIIIII)V

    const/16 v2, -0x190

    const/16 v3, 0x190

    const/16 v4, 0x190

    const/16 v5, -0x190

    const/16 v6, -0x190

    const/16 v7, 0x190

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/capcom/wallpaper/a;->a(Landroid/graphics/Canvas;IIIIII)V

    const/16 v2, -0x190

    const/16 v3, -0x190

    const/16 v4, 0x190

    const/16 v5, -0x190

    const/16 v6, -0x190

    const/16 v7, -0x190

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/capcom/wallpaper/a;->a(Landroid/graphics/Canvas;IIIIII)V

    const/16 v2, 0x190

    const/16 v3, -0x190

    const/16 v4, 0x190

    const/16 v5, 0x190

    const/16 v6, -0x190

    const/16 v7, -0x190

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/capcom/wallpaper/a;->a(Landroid/graphics/Canvas;IIIIII)V

    const/16 v2, 0x190

    const/16 v3, 0x190

    const/16 v4, 0x190

    const/16 v5, 0x190

    const/16 v6, 0x190

    const/16 v7, -0x190

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/capcom/wallpaper/a;->a(Landroid/graphics/Canvas;IIIIII)V

    const/16 v2, -0x190

    const/16 v3, 0x190

    const/16 v4, 0x190

    const/16 v5, -0x190

    const/16 v6, 0x190

    const/16 v7, -0x190

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/capcom/wallpaper/a;->a(Landroid/graphics/Canvas;IIIIII)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lcom/capcom/wallpaper/a;->c:F

    cmpl-float v0, v0, v9

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/capcom/wallpaper/a;->d:F

    cmpl-float v0, v0, v9

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/capcom/wallpaper/a;->c:F

    iget v2, p0, Lcom/capcom/wallpaper/a;->d:F

    const/high16 v3, 0x42a00000    # 80.0f

    iget-object v4, p0, Lcom/capcom/wallpaper/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v8, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/capcom/wallpaper/a;->j:Lcom/capcom/wallpaper/wallpaper;

    invoke-static {v0}, Lcom/capcom/wallpaper/wallpaper;->a(Lcom/capcom/wallpaper/wallpaper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/wallpaper/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/capcom/wallpaper/a;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/capcom/wallpaper/a;->j:Lcom/capcom/wallpaper/wallpaper;

    invoke-static {v0}, Lcom/capcom/wallpaper/wallpaper;->a(Lcom/capcom/wallpaper/wallpaper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/wallpaper/a;->h:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    invoke-interface {v8, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_3
    throw v0
.end method

.method public final onCreate(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/capcom/wallpaper/a;->setTouchEventsEnabled(Z)V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    iget-object v0, p0, Lcom/capcom/wallpaper/a;->j:Lcom/capcom/wallpaper/wallpaper;

    invoke-static {v0}, Lcom/capcom/wallpaper/wallpaper;->a(Lcom/capcom/wallpaper/wallpaper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/wallpaper/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onOffsetsChanged(FFFFII)V
    .locals 0

    iput p1, p0, Lcom/capcom/wallpaper/a;->b:F

    invoke-virtual {p0}, Lcom/capcom/wallpaper/a;->a()V

    return-void
.end method

.method public final onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    int-to-float v0, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/capcom/wallpaper/a;->f:F

    int-to-float v0, p4

    div-float/2addr v0, v1

    iput v0, p0, Lcom/capcom/wallpaper/a;->g:F

    invoke-virtual {p0}, Lcom/capcom/wallpaper/a;->a()V

    return-void
.end method

.method public final onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/capcom/wallpaper/a;->i:Z

    iget-object v0, p0, Lcom/capcom/wallpaper/a;->j:Lcom/capcom/wallpaper/wallpaper;

    invoke-static {v0}, Lcom/capcom/wallpaper/wallpaper;->a(Lcom/capcom/wallpaper/wallpaper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/wallpaper/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/capcom/wallpaper/a;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/capcom/wallpaper/a;->d:F

    :goto_0
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void

    :cond_0
    iput v2, p0, Lcom/capcom/wallpaper/a;->c:F

    iput v2, p0, Lcom/capcom/wallpaper/a;->d:F

    goto :goto_0
.end method

.method public final onVisibilityChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/capcom/wallpaper/a;->i:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/capcom/wallpaper/a;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/capcom/wallpaper/a;->j:Lcom/capcom/wallpaper/wallpaper;

    invoke-static {v0}, Lcom/capcom/wallpaper/wallpaper;->a(Lcom/capcom/wallpaper/wallpaper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/wallpaper/a;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
