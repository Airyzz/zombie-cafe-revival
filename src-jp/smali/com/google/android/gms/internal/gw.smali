.class public final Lcom/google/android/gms/internal/gw;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;

.field private h:J

.field private i:Z

.field private final j:J

.field private k:Ljava/util/List;

.field private l:J

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/google/android/gms/internal/gw;->h:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gw;->i:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/gw;->j:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/gw;->l:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/gw;->m:I

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/util/Map;Ljava/lang/String;)J
    .locals 3

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse float from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->e(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private b(Ljava/util/Map;)V
    .locals 1

    const-string v0, "X-Afma-Ad-Size"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gw;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->a:Ljava/lang/String;

    return-void
.end method

.method private static c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/util/Map;)V
    .locals 1

    const-string v0, "X-Afma-Click-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gw;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->d:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private d(Ljava/util/Map;)V
    .locals 2

    const-string v0, "X-Afma-Debug-Dialog"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private e(Ljava/util/Map;)V
    .locals 1

    const-string v0, "X-Afma-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gw;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->g:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private f(Ljava/util/Map;)V
    .locals 4

    const-string v0, "X-Afma-Interstitial-Timeout"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gw;->b(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gw;->h:J

    :cond_0
    return-void
.end method

.method private g(Ljava/util/Map;)V
    .locals 1

    const-string v0, "X-Afma-ActiveView"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gw;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->f:Ljava/lang/String;

    return-void
.end method

.method private h(Ljava/util/Map;)V
    .locals 2

    const-string v0, "X-Afma-Mediation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gw;->i:Z

    :cond_0
    return-void
.end method

.method private i(Ljava/util/Map;)V
    .locals 1

    const-string v0, "X-Afma-Manual-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gw;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->k:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private j(Ljava/util/Map;)V
    .locals 4

    const-string v0, "X-Afma-Refresh-Rate"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gw;->b(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gw;->l:J

    :cond_0
    return-void
.end method

.method private k(Ljava/util/Map;)V
    .locals 2

    const-string v0, "X-Afma-Orientation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/hq;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gw;->m:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/hq;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gw;->m:I

    goto :goto_0
.end method


# virtual methods
.method public a(J)Lcom/google/android/gms/internal/du;
    .locals 23

    new-instance v3, Lcom/google/android/gms/internal/du;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/gw;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/gw;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/gw;->d:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/gw;->g:Ljava/util/List;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/internal/gw;->h:J

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/gms/internal/gw;->i:Z

    const-wide/16 v11, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/gw;->k:Ljava/util/List;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gms/internal/gw;->l:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/gw;->m:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/gw;->a:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/gw;->e:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/gw;->f:Ljava/lang/String;

    move-object/from16 v21, v0

    move-wide/from16 v18, p1

    invoke-direct/range {v3 .. v21}, Lcom/google/android/gms/internal/du;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gw;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gw;->c:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gw;->a(Ljava/util/Map;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gw;->b(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gw;->c(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gw;->d(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gw;->e(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gw;->f(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gw;->h(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gw;->i(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gw;->j(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gw;->k(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gw;->g(Ljava/util/Map;)V

    return-void
.end method
