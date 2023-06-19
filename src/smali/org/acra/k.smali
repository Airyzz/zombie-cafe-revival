.class final Lorg/acra/k;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private synthetic f:Lorg/acra/ErrorReporter;


# direct methods
.method public constructor <init>(Lorg/acra/ErrorReporter;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/acra/k;->f:Lorg/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lorg/acra/k;->a:Ljava/lang/String;

    iput-object v0, p0, Lorg/acra/k;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/acra/k;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/acra/k;->d:Z

    iput-boolean v1, p0, Lorg/acra/k;->e:Z

    return-void
.end method

.method public constructor <init>(Lorg/acra/ErrorReporter;Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/acra/k;->f:Lorg/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lorg/acra/k;->a:Ljava/lang/String;

    iput-object v0, p0, Lorg/acra/k;->b:Ljava/lang/String;

    iput-object v0, p0, Lorg/acra/k;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/acra/k;->d:Z

    iput-boolean v1, p0, Lorg/acra/k;->e:Z

    iput-boolean p2, p0, Lorg/acra/k;->d:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/k;->e:Z

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/acra/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/acra/k;->b:Ljava/lang/String;

    return-void
.end method

.method final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/acra/k;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/acra/k;->c:Ljava/lang/String;

    return-void
.end method

.method public final run()V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lorg/acra/ErrorReporter;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "android.permission.WAKE_LOCK"

    invoke-static {}, Lorg/acra/ErrorReporter;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/acra/k;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/acra/k;->f:Lorg/acra/ErrorReporter;

    invoke-virtual {v1}, Lorg/acra/ErrorReporter;->approvePendingReports()V

    iget-object v1, p0, Lorg/acra/k;->a:Ljava/lang/String;

    const-string v2, ".stacktrace"

    const-string v3, "-approved.stacktrace"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/k;->a:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lorg/acra/ErrorReporter;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/k;->a:Ljava/lang/String;

    iget-object v3, p0, Lorg/acra/k;->b:Ljava/lang/String;

    iget-object v4, p0, Lorg/acra/k;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lorg/acra/ErrorReporter;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/acra/k;->f:Lorg/acra/ErrorReporter;

    invoke-static {}, Lorg/acra/ErrorReporter;->a()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lorg/acra/k;->d:Z

    invoke-virtual {v1, v2, v3}, Lorg/acra/ErrorReporter;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lorg/acra/ErrorReporter;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v2, "ACRA wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    throw v1
.end method
