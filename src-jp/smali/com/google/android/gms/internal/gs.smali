.class public final Lcom/google/android/gms/internal/gs;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/internal/bb;

.field public final b:Lcom/google/android/gms/internal/bb;

.field private final c:Ljava/lang/Object;

.field private d:Lcom/google/android/gms/internal/ii;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/google/android/gms/internal/gx;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gs;->c:Ljava/lang/Object;

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/gs;->f:I

    new-instance v0, Lcom/google/android/gms/internal/gt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gt;-><init>(Lcom/google/android/gms/internal/gs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gs;->a:Lcom/google/android/gms/internal/bb;

    new-instance v0, Lcom/google/android/gms/internal/gu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gu;-><init>(Lcom/google/android/gms/internal/gs;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gs;->b:Lcom/google/android/gms/internal/bb;

    iput-object p1, p0, Lcom/google/android/gms/internal/gs;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gs;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/gs;->f:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gs;Lcom/google/android/gms/internal/gx;)Lcom/google/android/gms/internal/gx;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gs;->g:Lcom/google/android/gms/internal/gx;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/gs;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gs;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/gs;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gs;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gs;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/gs;->f:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/ii;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/gs;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/gs;->d:Lcom/google/android/gms/internal/ii;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Lcom/google/android/gms/internal/gx;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/gs;->c:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gs;->g:Lcom/google/android/gms/internal/gx;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/gs;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gs;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "Ad request service was interrupted."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v1

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gs;->g:Lcom/google/android/gms/internal/gx;

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
