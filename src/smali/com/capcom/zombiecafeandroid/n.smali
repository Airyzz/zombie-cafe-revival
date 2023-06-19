.class final Lcom/capcom/zombiecafeandroid/n;
.super Ljava/lang/Object;


# instance fields
.field a:Ljavax/microedition/khronos/egl/EGL10;

.field b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field c:Ljavax/microedition/khronos/egl/EGLSurface;

.field d:Ljavax/microedition/khronos/egl/EGLConfig;

.field e:Ljavax/microedition/khronos/egl/EGLContext;

.field final synthetic f:Lcom/capcom/zombiecafeandroid/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/capcom/zombiecafeandroid/GLSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroid/n;->f:Lcom/capcom/zombiecafeandroid/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/n;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/n;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/n;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/n;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/n;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/n;->f:Lcom/capcom/zombiecafeandroid/GLSurfaceView;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->a(Lcom/capcom/zombiecafeandroid/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/n;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/n;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v2}, Landroid/opengl/GLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/n;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/n;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/n;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/n;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/n;->e:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v4, p0, Lcom/capcom/zombiecafeandroid/n;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void
.end method

.method public final b()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/n;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/n;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/n;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/n;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/n;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/n;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iput-object v5, p0, Lcom/capcom/zombiecafeandroid/n;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_0
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/n;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/n;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/n;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/n;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iput-object v5, p0, Lcom/capcom/zombiecafeandroid/n;->e:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_1
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/n;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/n;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/n;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v5, p0, Lcom/capcom/zombiecafeandroid/n;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    return-void
.end method
