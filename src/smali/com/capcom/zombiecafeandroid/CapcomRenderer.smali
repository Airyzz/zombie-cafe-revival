.class public Lcom/capcom/zombiecafeandroid/CapcomRenderer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

.field private static b:Z

.field private static c:I

.field private static d:I

.field private static f:J

.field private static g:I

.field public static glObj:Ljavax/microedition/khronos/opengles/GL10;

.field public static mCreated:Z

.field public static scaleX:F

.field public static scaleY:F


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->mCreated:Z

    sput v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;II)V
    .locals 3

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->e:I

    sput v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->scaleX:F

    sput v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->scaleY:F

    sput-boolean v1, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->b:Z

    sput p2, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->c:I

    invoke-static {}, Lcom/capcom/zombiecafeandroid/CC_Android;->fromNative_IsKindle()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CapcomRenderer::Created"

    const-string v1, "AMAZON_KINDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, p3, -0x14

    sput v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->d:I

    :goto_0
    sget v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->c:I

    const/16 v1, 0x500

    if-gt v0, v1, :cond_0

    sget v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->d:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    :cond_0
    sput v2, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->scaleX:F

    sput v2, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->scaleY:F

    :cond_1
    sput-object p1, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    return-void

    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-P7100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "3.0.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, -0x30

    sput v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->d:I

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-P7500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "3.0.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, p3, -0x30

    sput v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->d:I

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-P7510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "3.0.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v0, p3, -0x30

    sput v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->d:I

    goto :goto_0

    :cond_5
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-P7500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "3.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, p3, -0x30

    sput v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->d:I

    goto :goto_0

    :cond_6
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-P7510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "3.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, p3, -0x30

    sput v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->d:I

    goto/16 :goto_0

    :cond_7
    sput p3, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->d:I

    goto/16 :goto_0
.end method

.method private native CreateGame(Ljava/lang/Class;IIFF)V
.end method

.method private static native render(I)V
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->mCreated:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->e:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    sget-wide v2, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->f:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    sput v2, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->g:I

    sput-wide v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->f:J

    sget v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->g:I

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->render(I)V

    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->c:I

    sget v1, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->d:I

    invoke-interface {p1, v2, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7

    sput-object p1, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->glObj:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v0, 0x302

    const/16 v1, 0x303

    :try_start_0
    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/high16 v0, 0x43340000    # 180.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    const/4 v1, 0x0

    sget v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->c:I

    int-to-float v2, v0

    const/4 v3, 0x0

    sget v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->d:I

    int-to-float v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    sget v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->scaleX:F

    sget v1, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->scaleY:F

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->mCreated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->mCreated:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-class v1, Lcom/capcom/zombiecafeandroid/CC_Android;

    const-string v0, "CREATE GAME FROM RENDERER!"

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->c:I

    int-to-float v0, v0

    sget v2, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->scaleX:F

    div-float/2addr v0, v2

    float-to-int v2, v0

    sget v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->d:I

    int-to-float v0, v0

    sget v3, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->scaleY:F

    div-float/2addr v0, v3

    float-to-int v3, v0

    sget v4, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->scaleX:F

    sget v5, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->scaleY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->CreateGame(Ljava/lang/Class;IIFF)V

    const-string v0, "RETURNED FROM CREATE GAME"

    const-string v1, "I hope"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSurfaceDestroyed(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const-string v0, "ONSURFACE DESTROYED"

    const-string v1, "WAS CALLED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
