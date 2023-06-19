.class public final Lcom/google/android/gms/internal/pg;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/pi;

.field private final b:Ljava/lang/Runnable;

.field private c:Lcom/google/android/gms/internal/ai;

.field private d:Z

.field private e:Z

.field private f:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/oz;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/pi;

    sget-object v1, Lcom/google/android/gms/internal/if;->a:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/pi;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/pg;-><init>(Lcom/google/android/gms/internal/oz;Lcom/google/android/gms/internal/pi;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/oz;Lcom/google/android/gms/internal/pi;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pg;->d:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pg;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/pg;->f:J

    iput-object p2, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pi;

    new-instance v0, Lcom/google/android/gms/internal/ph;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ph;-><init>(Lcom/google/android/gms/internal/pg;Lcom/google/android/gms/internal/oz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/pg;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/pg;)Lcom/google/android/gms/internal/ai;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->c:Lcom/google/android/gms/internal/ai;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/pg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/pg;->d:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pg;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pi;

    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pi;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/ai;)V
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/pg;->a(Lcom/google/android/gms/internal/ai;J)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/ai;J)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pg;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "An ad refresh is already scheduled."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/pg;->c:Lcom/google/android/gms/internal/ai;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pg;->d:Z

    iput-wide p2, p0, Lcom/google/android/gms/internal/pg;->f:J

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pg;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling ad refresh "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " milliseconds from now."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pi;

    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/internal/pi;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pg;->e:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pg;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->a:Lcom/google/android/gms/internal/pi;

    iget-object v1, p0, Lcom/google/android/gms/internal/pg;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pi;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/pg;->e:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/pg;->d:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/pg;->d:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/pg;->c:Lcom/google/android/gms/internal/ai;

    iget-wide v2, p0, Lcom/google/android/gms/internal/pg;->f:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/pg;->a(Lcom/google/android/gms/internal/ai;J)V

    :cond_0
    return-void
.end method
