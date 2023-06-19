.class public Lcom/capcom/zombiecafeandroidJP/SoundManager;
.super Ljava/lang/Thread;


# instance fields
.field public a:Landroid/media/SoundPool;

.field public b:Z

.field public c:F

.field private d:Ljava/util/HashMap;

.field private e:[Z

.field private f:Landroid/media/AudioManager;

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/SoundManager;->c:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/capcom/zombiecafeandroidJP/SoundManager;->b:Z

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroidJP/SoundManager;->start()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x100

    const/4 v3, 0x3

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/SoundManager;->g:Landroid/content/Context;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "samsung"

    if-ne v0, v2, :cond_0

    const-string v0, "FOUND A SAMSUNG DEVICE"

    const-string v2, "CREATING 1 SOUNDS STREAMS"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/SoundPool;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v3, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/SoundManager;->a:Landroid/media/SoundPool;

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/SoundManager;->d:Ljava/util/HashMap;

    new-array v0, v4, [Z

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/SoundManager;->e:[Z

    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/SoundManager;->g:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/SoundManager;->f:Landroid/media/AudioManager;

    return-void

    :cond_0
    const-string v0, "NOT A SAMSUNG DEVICE"

    const-string v2, "CREATING 5 SOUNDS STREAMS"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/SoundPool;

    const/4 v2, 0x5

    invoke-direct {v0, v2, v3, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/SoundManager;->a:Landroid/media/SoundPool;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/SoundManager;->e:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public native setEnabled(Z)V
.end method
