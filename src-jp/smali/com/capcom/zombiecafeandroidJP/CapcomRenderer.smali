.class public Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field public static a:Ljavax/microedition/khronos/opengles/GL10;

.field public static b:Z

.field private static d:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

.field private static e:Z

.field private static f:Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;

.field private static g:I

.field private static h:I

.field private static i:Z

.field private static j:J

.field private static k:I


# instance fields
.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->b:Z

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->i:Z

    sput v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;II)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->c:I

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-P7100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "3.0.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p3, p3, -0x30

    :cond_0
    sput-boolean v2, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->e:Z

    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    sput p2, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->g:I

    sput p3, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->h:I

    sput-object p1, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->d:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    sput-object p0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->f:Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;

    return-void
.end method

.method private native CreateGame(Ljava/lang/Class;IILandroid/content/Context;)V
.end method

.method private static native render(I)V
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->b:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->e:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->b:Z

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->d:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    sget-wide v2, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->j:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    sput v2, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->k:I

    sput-wide v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->j:J

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->d:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    sget v1, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->k:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->Tick(F)V

    sget v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->k:I

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->render(I)V

    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 7

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    int-to-float v0, p2

    int-to-float v2, p3

    div-float/2addr v0, v2

    sput p2, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->g:I

    sput p3, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->h:I

    sget v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->g:I

    sget v2, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->h:I

    invoke-interface {p1, v3, v3, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    const/16 v0, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {p1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const v0, 0x8076

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-interface {p1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/high16 v0, 0x43340000    # 180.0f

    invoke-interface {p1, v0, v5, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    sget v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->g:I

    int-to-float v2, v0

    sget v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->h:I

    int-to-float v4, v0

    const/high16 v6, -0x40800000    # -1.0f

    move-object v0, p1

    move v3, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7

    sput-object p1, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/16 v1, 0xd33

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const-string v1, "FIXMEMORYLEAK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MAX TEXTURE SIZE:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const v1, 0x84e2

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    const-string v1, "FIXMEMORYLEAK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MAX TEXTURE UNITS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    sget v2, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->g:I

    sget v3, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->h:I

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->b:Z

    :cond_0
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/16 v2, 0x1e01

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const v0, 0x8076

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

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

    sget v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->g:I

    int-to-float v2, v0

    const/4 v3, 0x0

    sget v0, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->h:I

    int-to-float v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const-class v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;

    const-string v1, "CREATE GAME FROM RENDERER!"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->g:I

    sget v2, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->h:I

    sget-object v3, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->d:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/capcom/zombiecafeandroidJP/CapcomRenderer;->CreateGame(Ljava/lang/Class;IILandroid/content/Context;)V

    const-string v0, "RETURNED FROM CREATE GAME"

    const-string v1, "I hope"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public onSurfaceDestroyed(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    const-string v0, "ONSURFACE DESTROYED"

    const-string v1, "WAS CALLED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
