.class final Lcom/google/android/gms/internal/ld;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/lc;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/le;

.field private final d:Ljava/util/HashSet;

.field private e:I

.field private f:Z

.field private g:Landroid/os/IBinder;

.field private h:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/lc;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ld;->a:Lcom/google/android/gms/internal/lc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ld;->b:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/le;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/le;-><init>(Lcom/google/android/gms/internal/ld;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ld;->c:Lcom/google/android/gms/internal/le;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ld;->d:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ld;->e:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ld;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ld;->e:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ld;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ld;->h:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ld;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ld;->g:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ld;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ld;->d:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/internal/le;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ld;->c:Lcom/google/android/gms/internal/le;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/kw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ld;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ld;->f:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ld;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/google/android/gms/internal/kw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ld;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ld;->f:Z

    return v0
.end method

.method public c(Lcom/google/android/gms/internal/kw;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ld;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ld;->e:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ld;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public f()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ld;->g:Landroid/os/IBinder;

    return-object v0
.end method

.method public g()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ld;->h:Landroid/content/ComponentName;

    return-object v0
.end method
