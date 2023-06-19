.class public final Lcom/google/android/gms/internal/ah;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Date;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/util/Set;

.field private final f:Landroid/location/Location;

.field private final g:Z

.field private final h:Landroid/os/Bundle;

.field private final i:Ljava/util/Map;

.field private final j:Ljava/lang/String;

.field private final k:Lcom/google/android/gms/ads/search/SearchAdRequest;

.field private final l:I

.field private final m:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "emulator"

    invoke-static {v0}, Lcom/google/android/gms/internal/if;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ah;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/aj;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ah;-><init>(Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/aj;Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/aj;->a(Lcom/google/android/gms/internal/aj;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->b:Ljava/util/Date;

    invoke-static {p1}, Lcom/google/android/gms/internal/aj;->b(Lcom/google/android/gms/internal/aj;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/aj;->c(Lcom/google/android/gms/internal/aj;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ah;->d:I

    invoke-static {p1}, Lcom/google/android/gms/internal/aj;->d(Lcom/google/android/gms/internal/aj;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->e:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/aj;->e(Lcom/google/android/gms/internal/aj;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->f:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/internal/aj;->f(Lcom/google/android/gms/internal/aj;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ah;->g:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/aj;->g(Lcom/google/android/gms/internal/aj;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->h:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/internal/aj;->h(Lcom/google/android/gms/internal/aj;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->i:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/internal/aj;->i(Lcom/google/android/gms/internal/aj;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ah;->k:Lcom/google/android/gms/ads/search/SearchAdRequest;

    invoke-static {p1}, Lcom/google/android/gms/internal/aj;->j(Lcom/google/android/gms/internal/aj;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ah;->l:I

    invoke-static {p1}, Lcom/google/android/gms/internal/aj;->k(Lcom/google/android/gms/internal/aj;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ah;->m:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/mediation/NetworkExtras;

    return-object v0
.end method

.method public a()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->b:Ljava/util/Date;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->m:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/if;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->h:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ah;->d:I

    return v0
.end method

.method public c(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->h:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->e:Ljava/util/Set;

    return-object v0
.end method

.method public e()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->f:Landroid/location/Location;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ah;->g:Z

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->j:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->k:Lcom/google/android/gms/ads/search/SearchAdRequest;

    return-object v0
.end method

.method public i()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->i:Ljava/util/Map;

    return-object v0
.end method

.method public j()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ah;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ah;->l:I

    return v0
.end method
