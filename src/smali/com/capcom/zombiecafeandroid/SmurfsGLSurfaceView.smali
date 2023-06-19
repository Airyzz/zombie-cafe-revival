.class Lcom/capcom/zombiecafeandroid/SmurfsGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;


# static fields
.field public static glObj:Ljavax/microedition/khronos/opengles/GL10;


# instance fields
.field public mRenderer:Lcom/capcom/zombiecafeandroid/CapcomRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/capcom/zombiecafeandroid/SmurfsGLSurfaceView;->glObj:Ljavax/microedition/khronos/opengles/GL10;

    return-void
.end method

.method public constructor <init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/capcom/zombiecafeandroid/CC_Android;->fromNative_IsKindle()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenWidth:I

    const/16 v0, 0x230

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenHeight:I

    :goto_0
    new-instance v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;

    sget v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenWidth:I

    sget v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenHeight:I

    invoke-direct {v0, p1, v1, v2}, Lcom/capcom/zombiecafeandroid/CapcomRenderer;-><init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;II)V

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/SmurfsGLSurfaceView;->mRenderer:Lcom/capcom/zombiecafeandroid/CapcomRenderer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/SmurfsGLSurfaceView;->setEGLContextClientVersion(I)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/SmurfsGLSurfaceView;->mRenderer:Lcom/capcom/zombiecafeandroid/CapcomRenderer;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/SmurfsGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->glObj:Ljavax/microedition/khronos/opengles/GL10;

    sput-object v0, Lcom/capcom/zombiecafeandroid/SmurfsGLSurfaceView;->glObj:Ljavax/microedition/khronos/opengles/GL10;

    return-void

    :cond_0
    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenWidth:I

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenHeight:I

    goto :goto_0
.end method

.method public static native DebugGame()V
.end method


# virtual methods
.method public myTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v0, 0x2

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    sput v4, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->numTouches:I

    if-nez p1, :cond_0

    const-string v0, "BAD EVENT PASSED"

    const-string v1, "TO MOTION EVENT!! causing ANR???"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_4

    :goto_1
    move v5, v4

    move v2, v4

    :goto_2
    if-lt v5, v0, :cond_2

    if-eqz v2, :cond_1

    if-le v0, v3, :cond_1

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->touchVectors:[F

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->touchVectors:[F

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->touchVectors:[F

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->touchVectors:[F

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sget v6, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->scaleX:F

    div-float v6, v1, v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    sget v7, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->scaleY:F

    div-float/2addr v1, v7

    invoke-static {}, Lcom/capcom/zombiecafeandroid/CC_Android;->fromNative_IsKindle()Z

    move-result v7

    if-eqz v7, :cond_3

    const/high16 v7, 0x41a00000    # 20.0f

    sub-float/2addr v1, v7

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    move v1, v2

    :goto_3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v1

    goto :goto_2

    :pswitch_0
    invoke-static {v6, v1, v4}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mouseDown(FFI)V

    move v1, v2

    goto :goto_3

    :pswitch_1
    invoke-static {v6, v1, v8, v8, v5}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mouseMoves(FFFFI)V

    move v1, v3

    goto :goto_3

    :pswitch_2
    invoke-static {v6, v1, v4}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mouseUp(FFI)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/capcom/zombiecafeandroid/SmurfsGLSurfaceView;->myTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method
