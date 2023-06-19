.class final Lcom/capcom/zombiecafeandroid/o;
.super Ljava/lang/Thread;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private final h:Lcom/capcom/zombiecafeandroid/p;

.field private final i:Ljava/util/ArrayList;

.field private j:Lcom/capcom/zombiecafeandroid/n;

.field private k:Z

.field private synthetic l:Lcom/capcom/zombiecafeandroid/GLSurfaceView;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroid/GLSurfaceView;Lcom/capcom/zombiecafeandroid/p;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroid/o;->l:Lcom/capcom/zombiecafeandroid/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/o;->i:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/capcom/zombiecafeandroid/o;->a:Z

    iput v1, p0, Lcom/capcom/zombiecafeandroid/o;->d:I

    iput v1, p0, Lcom/capcom/zombiecafeandroid/o;->e:I

    iput-boolean v2, p0, Lcom/capcom/zombiecafeandroid/o;->g:Z

    iput v2, p0, Lcom/capcom/zombiecafeandroid/o;->f:I

    iput-object p2, p0, Lcom/capcom/zombiecafeandroid/o;->h:Lcom/capcom/zombiecafeandroid/p;

    iput-boolean v2, p0, Lcom/capcom/zombiecafeandroid/o;->k:Z

    const-string v0, "GLThread"

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/o;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private g()Ljava/lang/Runnable;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/o;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/capcom/zombiecafeandroid/o;->g:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)V
    .locals 2

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/capcom/zombiecafeandroid/o;->f:I

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/capcom/zombiecafeandroid/o;->d:I

    iput p2, p0, Lcom/capcom/zombiecafeandroid/o;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/capcom/zombiecafeandroid/o;->k:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/o;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/capcom/zombiecafeandroid/o;->c:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/capcom/zombiecafeandroid/o;->c:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/capcom/zombiecafeandroid/o;->b:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/capcom/zombiecafeandroid/o;->b:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/capcom/zombiecafeandroid/o;->a:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/o;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public final run()V
    .locals 13

    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {}, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->a()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v0, Lcom/capcom/zombiecafeandroid/n;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/o;->l:Lcom/capcom/zombiecafeandroid/GLSurfaceView;

    invoke-direct {v0, v2}, Lcom/capcom/zombiecafeandroid/n;-><init>(Lcom/capcom/zombiecafeandroid/GLSurfaceView;)V

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/o;->j:Lcom/capcom/zombiecafeandroid/n;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/o;->j:Lcom/capcom/zombiecafeandroid/n;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/n;->a()V

    move v0, v3

    move v4, v3

    :goto_0
    iget-boolean v2, p0, Lcom/capcom/zombiecafeandroid/o;->a:Z

    if-eqz v2, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/o;->j:Lcom/capcom/zombiecafeandroid/n;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/n;->b()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->a()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->a()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    :cond_0
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    :try_start_3
    invoke-direct {p0}, Lcom/capcom/zombiecafeandroid/o;->g()Ljava/lang/Runnable;

    move-result-object v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/capcom/zombiecafeandroid/o;->b:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/o;->j:Lcom/capcom/zombiecafeandroid/n;

    invoke-virtual {v2}, Lcom/capcom/zombiecafeandroid/n;->b()V

    move v5, v3

    :goto_4
    iget-boolean v2, p0, Lcom/capcom/zombiecafeandroid/o;->a:Z

    if-eqz v2, :cond_3

    move v2, v1

    :goto_5
    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/capcom/zombiecafeandroid/o;->a:Z

    if-eqz v2, :cond_8

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->a()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_2

    :cond_1
    :try_start_5
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_4

    :cond_3
    iget-boolean v2, p0, Lcom/capcom/zombiecafeandroid/o;->b:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/capcom/zombiecafeandroid/o;->c:Z

    if-nez v2, :cond_5

    :cond_4
    move v2, v3

    goto :goto_5

    :cond_5
    iget v2, p0, Lcom/capcom/zombiecafeandroid/o;->d:I

    if-lez v2, :cond_7

    iget v2, p0, Lcom/capcom/zombiecafeandroid/o;->e:I

    if-lez v2, :cond_7

    iget-boolean v2, p0, Lcom/capcom/zombiecafeandroid/o;->g:Z

    if-nez v2, :cond_6

    iget v2, p0, Lcom/capcom/zombiecafeandroid/o;->f:I

    if-ne v2, v3, :cond_7

    :cond_6
    move v2, v1

    goto :goto_5

    :cond_7
    move v2, v3

    goto :goto_5

    :cond_8
    iget-boolean v2, p0, Lcom/capcom/zombiecafeandroid/o;->k:Z

    iget v6, p0, Lcom/capcom/zombiecafeandroid/o;->d:I

    iget v7, p0, Lcom/capcom/zombiecafeandroid/o;->e:I

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/capcom/zombiecafeandroid/o;->k:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/capcom/zombiecafeandroid/o;->g:Z

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_f

    :try_start_6
    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/o;->j:Lcom/capcom/zombiecafeandroid/n;

    invoke-virtual {v2}, Lcom/capcom/zombiecafeandroid/n;->a()V

    move v4, v3

    move v2, v3

    :goto_6
    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/capcom/zombiecafeandroid/o;->j:Lcom/capcom/zombiecafeandroid/n;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/o;->l:Lcom/capcom/zombiecafeandroid/GLSurfaceView;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v5, v4, Lcom/capcom/zombiecafeandroid/n;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v5, :cond_9

    iget-object v5, v4, Lcom/capcom/zombiecafeandroid/n;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, v4, Lcom/capcom/zombiecafeandroid/n;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v10, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v11, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v5, v8, v9, v10, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v5, v4, Lcom/capcom/zombiecafeandroid/n;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, v4, Lcom/capcom/zombiecafeandroid/n;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, v4, Lcom/capcom/zombiecafeandroid/n;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v5, v8, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    :cond_9
    iget-object v5, v4, Lcom/capcom/zombiecafeandroid/n;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v8, v4, Lcom/capcom/zombiecafeandroid/n;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v9, v4, Lcom/capcom/zombiecafeandroid/n;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v10, 0x0

    invoke-interface {v5, v8, v9, v0, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, v4, Lcom/capcom/zombiecafeandroid/n;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, v4, Lcom/capcom/zombiecafeandroid/n;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, v4, Lcom/capcom/zombiecafeandroid/n;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v8, v4, Lcom/capcom/zombiecafeandroid/n;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v9, v4, Lcom/capcom/zombiecafeandroid/n;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v10, v4, Lcom/capcom/zombiecafeandroid/n;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v5, v8, v9, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, v4, Lcom/capcom/zombiecafeandroid/n;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    iget-object v5, v4, Lcom/capcom/zombiecafeandroid/n;->f:Lcom/capcom/zombiecafeandroid/GLSurfaceView;

    invoke-static {v5}, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b(Lcom/capcom/zombiecafeandroid/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLWrapper;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v4, v4, Lcom/capcom/zombiecafeandroid/n;->f:Lcom/capcom/zombiecafeandroid/GLSurfaceView;

    invoke-static {v4}, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->b(Lcom/capcom/zombiecafeandroid/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLWrapper;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/opengl/GLSurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    :cond_a
    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mGL10:Ljavax/microedition/khronos/opengles/GL10;

    move v0, v3

    :cond_b
    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/o;->h:Lcom/capcom/zombiecafeandroid/p;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/o;->j:Lcom/capcom/zombiecafeandroid/n;

    iget-object v2, v2, Lcom/capcom/zombiecafeandroid/n;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    move v2, v1

    :cond_c
    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/o;->h:Lcom/capcom/zombiecafeandroid/p;

    move v0, v1

    :cond_d
    if-lez v6, :cond_e

    if-lez v7, :cond_e

    iget-object v4, p0, Lcom/capcom/zombiecafeandroid/o;->h:Lcom/capcom/zombiecafeandroid/p;

    iget-object v4, p0, Lcom/capcom/zombiecafeandroid/o;->j:Lcom/capcom/zombiecafeandroid/n;

    iget-object v5, v4, Lcom/capcom/zombiecafeandroid/n;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, v4, Lcom/capcom/zombiecafeandroid/n;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, v4, Lcom/capcom/zombiecafeandroid/n;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v4, v4, Lcom/capcom/zombiecafeandroid/n;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v4

    const/16 v5, 0x300e

    if-eq v4, v5, :cond_e

    :cond_e
    move v4, v2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/capcom/zombiecafeandroid/GLSurfaceView;->a()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0

    :cond_f
    move v12, v2

    move v2, v4

    move v4, v12

    goto/16 :goto_6

    :cond_10
    move v5, v1

    goto/16 :goto_4
.end method
