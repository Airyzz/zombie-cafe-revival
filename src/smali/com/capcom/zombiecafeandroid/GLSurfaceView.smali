.class public Lcom/capcom/zombiecafeandroid/GLSurfaceView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final a:Ljava/util/concurrent/Semaphore;


# instance fields
.field private b:Lcom/capcom/zombiecafeandroid/o;

.field private c:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field private d:Landroid/opengl/GLSurfaceView$GLWrapper;

.field private e:I

.field private f:I

.field private g:Lcom/capcom/zombiecafeandroid/p;

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->a:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/capcom/zombiecafeandroid/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->c:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic a()Ljava/util/concurrent/Semaphore;
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->a:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic b(Lcom/capcom/zombiecafeandroid/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLWrapper;
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->d:Landroid/opengl/GLSurfaceView$GLWrapper;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->f:I

    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    iget v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->e:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    iget v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->f:I

    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/o;->d()V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/o;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    return-void
.end method

.method public onResume()V
    .locals 3

    new-instance v0, Lcom/capcom/zombiecafeandroid/o;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->g:Lcom/capcom/zombiecafeandroid/p;

    invoke-direct {v0, p0, v1}, Lcom/capcom/zombiecafeandroid/o;-><init>(Lcom/capcom/zombiecafeandroid/GLSurfaceView;Lcom/capcom/zombiecafeandroid/p;)V

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/o;->start()V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    iget v1, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->f:I

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroid/o;->a(I)V

    iget-boolean v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/o;->b()V

    :cond_0
    iget v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->h:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->i:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    iget v1, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->h:I

    iget v2, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->i:I

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/o;->a(II)V

    :cond_1
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/o;->e()V

    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    invoke-virtual {v0, p1}, Lcom/capcom/zombiecafeandroid/o;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/o;->a()V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    iput p1, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->e:I

    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 0

    return-void
.end method

.method public setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V
    .locals 2

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->g:Lcom/capcom/zombiecafeandroid/p;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->c:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 0

    return-void
.end method

.method public setGLWrapper(Landroid/opengl/GLSurfaceView$GLWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->d:Landroid/opengl/GLSurfaceView$GLWrapper;

    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    iput p1, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->f:I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    invoke-virtual {v0, p1}, Lcom/capcom/zombiecafeandroid/o;->a(I)V

    :cond_0
    return-void
.end method

.method public setRenderer(Lcom/capcom/zombiecafeandroid/p;)V
    .locals 2

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->g:Lcom/capcom/zombiecafeandroid/p;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->g:Lcom/capcom/zombiecafeandroid/p;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    invoke-virtual {v0, p3, p4}, Lcom/capcom/zombiecafeandroid/o;->a(II)V

    :cond_0
    iput p3, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->h:I

    iput p4, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->i:I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/o;->b()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->j:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b:Lcom/capcom/zombiecafeandroid/o;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/o;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->j:Z

    return-void
.end method
