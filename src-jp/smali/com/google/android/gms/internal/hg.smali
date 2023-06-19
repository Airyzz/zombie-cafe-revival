.class public Lcom/google/android/gms/internal/hg;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static final c:Lcom/google/android/gms/internal/hg;


# instance fields
.field public final b:Ljava/lang/String;

.field private final d:Ljava/lang/Object;

.field private final e:Lcom/google/android/gms/internal/hh;

.field private f:Ljava/math/BigInteger;

.field private final g:Ljava/util/HashSet;

.field private final h:Ljava/util/HashMap;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hg;->c:Lcom/google/android/gms/internal/hg;

    sget-object v0, Lcom/google/android/gms/internal/hg;->c:Lcom/google/android/gms/internal/hg;

    iget-object v0, v0, Lcom/google/android/gms/internal/hg;->b:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/hg;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hg;->d:Ljava/lang/Object;

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/hg;->f:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hg;->g:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/hg;->h:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/hg;->i:Z

    invoke-static {}, Lcom/google/android/gms/internal/hq;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/hg;->b:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/hh;

    iget-object v1, p0, Lcom/google/android/gms/internal/hg;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/hh;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/hg;->e:Lcom/google/android/gms/internal/hh;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/hi;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hg;->c:Lcom/google/android/gms/internal/hg;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/hg;->b(Landroid/content/Context;Lcom/google/android/gms/internal/hi;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/google/android/gms/internal/hg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hg;->c:Lcom/google/android/gms/internal/hg;

    return-object v0
.end method

.method public static a(Ljava/util/HashSet;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hg;->c:Lcom/google/android/gms/internal/hg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/hg;->b(Ljava/util/HashSet;)V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hg;->c:Lcom/google/android/gms/internal/hg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hg;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/google/android/gms/internal/hh;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hg;->c:Lcom/google/android/gms/internal/hg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hg;->e()Lcom/google/android/gms/internal/hh;

    move-result-object v0

    return-object v0
.end method

.method public static f()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hg;->c:Lcom/google/android/gms/internal/hg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hg;->g()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/he;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/hg;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hg;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/hj;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/hg;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hg;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Landroid/content/Context;Lcom/google/android/gms/internal/hi;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/hg;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "app"

    iget-object v1, p0, Lcom/google/android/gms/internal/hg;->e:Lcom/google/android/gms/internal/hh;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/gms/internal/hh;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hg;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/hg;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/hj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/hj;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "slots"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/hg;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/he;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/he;->d()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v0, "ads"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hg;->g:Ljava/util/HashSet;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/hi;->a(Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/hg;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v3
.end method

.method public b(Ljava/util/HashSet;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/hg;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hg;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/hg;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hg;->f:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/hg;->f:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/hg;->f:Ljava/math/BigInteger;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Lcom/google/android/gms/internal/hh;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/hg;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hg;->e:Lcom/google/android/gms/internal/hh;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/hg;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/hg;->i:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/hg;->i:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
