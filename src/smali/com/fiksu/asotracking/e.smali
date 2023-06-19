.class Lcom/fiksu/asotracking/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static e:Z


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Lcom/fiksu/asotracking/a;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/fiksu/asotracking/e;->e:Z

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Lcom/fiksu/asotracking/a;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/fiksu/asotracking/e;->c:Z

    iput-boolean v0, p0, Lcom/fiksu/asotracking/e;->d:Z

    iput-object p1, p0, Lcom/fiksu/asotracking/e;->a:Landroid/app/Application;

    iput-object p2, p0, Lcom/fiksu/asotracking/e;->b:Lcom/fiksu/asotracking/a;

    const-class v1, Lcom/fiksu/asotracking/e;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/fiksu/asotracking/e;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "FiksuTracking"

    const-string v2, "Already initialized!. Only call FiksuTrackingManager.initialize() once."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fiksu/asotracking/e;->e:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fiksu/asotracking/e;->a:Landroid/app/Application;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v0, :cond_1

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/fiksu/asotracking/e;->a:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    const-string v0, "FiksuTracking"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ForegroundTester thread started, process: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x1770

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-boolean v0, p0, Lcom/fiksu/asotracking/e;->c:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/fiksu/asotracking/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/fiksu/asotracking/e;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiksu/asotracking/e;->d:Z

    iget-object v0, p0, Lcom/fiksu/asotracking/e;->b:Lcom/fiksu/asotracking/a;

    invoke-virtual {v0}, Lcom/fiksu/asotracking/a;->uploadEvent()V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fiksu/asotracking/e;->c:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "FiksuTracking"

    const-string v1, "Sleep interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Lcom/fiksu/asotracking/a;

    iget-object v1, p0, Lcom/fiksu/asotracking/e;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/fiksu/asotracking/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/fiksu/asotracking/a;->uploadEvent()V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/fiksu/asotracking/e;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/fiksu/asotracking/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fiksu/asotracking/e;->c:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
