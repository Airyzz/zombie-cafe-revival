.class Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;


# static fields
.field public static b:Ljavax/microedition/khronos/opengles/GL10;


# instance fields
.field public a:Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->b:Ljavax/microedition/khronos/opengles/GL10;

    return-void
.end method

.method public constructor <init>(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->s:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->s:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->c:Landroid/content/Context;

    new-instance v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;

    sget v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    sget v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    invoke-direct {v0, p1, v1, v2}, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;-><init>(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;II)V

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->a:Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->setEGLContextClientVersion(I)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->a:Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->a:Ljavax/microedition/khronos/opengles/GL10;

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->b:Ljavax/microedition/khronos/opengles/GL10;

    return-void
.end method

.method public static native DebugGame()V
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sput v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->X:I

    if-nez p1, :cond_0

    const-string v0, "BAD EVENT PASSED"

    const-string v1, "TO MOTION EVENT!! causing ANR???"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    move v5, v4

    move v2, v4

    :goto_1
    if-lt v5, v0, :cond_3

    if-eqz v2, :cond_2

    if-le v0, v3, :cond_2

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->W:[F

    aget v0, v0, v4

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->W:[F

    aget v1, v2, v1

    sub-float/2addr v0, v1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->W:[F

    aget v0, v0, v3

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->W:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    sub-float/2addr v0, v1

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sget v8, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->p:I

    float-to-int v9, v7

    if-lt v8, v9, :cond_4

    sget v8, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->o:I

    float-to-int v9, v6

    if-ge v8, v9, :cond_5

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :pswitch_0
    const-string v8, "ZombieCafeAndroid"

    const-string v9, "/====== myTouchEvent MotionEvent.ACTION_DOWN =====/"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v7, v4}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->mouseDown(FFI)V

    goto :goto_2

    :pswitch_1
    const-string v2, "ZombieCafeAndroid"

    const-string v8, "/====== myTouchEvent MotionEvent.ACTION_MOVE =====/"

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v7, v10, v10, v5}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->mouseMoves(FFFFI)V

    move v2, v3

    goto :goto_2

    :pswitch_2
    const-string v0, "ZombieCafeAndroid"

    const-string v1, "/====== myTouchEvent MotionEvent.ACTION_UP =====/"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->Z:I

    invoke-static {v6, v7, v4}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->mouseUp(FFI)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->g:Z

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroidJP/SmurfsGLSurfaceView;->a(Landroid/view/MotionEvent;)Z

    :cond_1
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method
