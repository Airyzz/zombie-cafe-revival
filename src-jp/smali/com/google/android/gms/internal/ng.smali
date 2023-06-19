.class public Lcom/google/android/gms/internal/ng;
.super Lcom/google/android/gms/internal/ma;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ok;Lcom/google/android/gms/internal/oq;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ma;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ok;Lcom/google/android/gms/internal/oq;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/ng;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/gv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gv;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ng;->a(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ok;)V

    new-instance v1, Lcom/google/android/gms/internal/ng;

    new-instance v2, Lcom/google/android/gms/internal/ot;

    const/16 v3, 0xef

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ot;-><init>(I)V

    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ng;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ok;Lcom/google/android/gms/internal/oq;)V

    return-object v1
.end method


# virtual methods
.method protected c(Landroid/content/Context;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ma;->c(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ng;->h(Landroid/content/Context;)Lcom/google/android/gms/internal/nh;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nh;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    :goto_0
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ng;->a(IJ)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nh;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1a

    const-wide/16 v2, 0x5

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/ng;->a(IJ)V

    const/16 v1, 0x18

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ng;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/e; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/mb; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x18

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ng;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ng;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/mb; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected d(Landroid/content/Context;)V
    .locals 5

    const-wide/16 v0, 0x1

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ma;->c(Landroid/content/Context;)V

    const/16 v2, 0x18

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ng;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ng;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/mb; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ng;->h(Landroid/content/Context;)Lcom/google/android/gms/internal/nh;
    :try_end_1
    .catch Lcom/google/android/gms/common/e; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    const/16 v3, 0x1c

    :try_start_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/nh;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ng;->a(IJ)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nh;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x1e

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ng;->a(ILjava/lang/String;)V

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x1c

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ng;->a(IJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method h(Landroid/content/Context;)Lcom/google/android/gms/internal/nh;
    .locals 8

    const/4 v0, 0x0

    const/16 v7, 0x10

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Lcom/google/android/gms/common/f; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v1, "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"

    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v4, v7, [B

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    const/16 v5, 0x8

    if-eq v0, v5, :cond_0

    const/16 v5, 0xd

    if-eq v0, v5, :cond_0

    const/16 v5, 0x12

    if-eq v0, v5, :cond_0

    const/16 v5, 0x17

    if-ne v0, v5, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ng;->c:Lcom/google/android/gms/internal/ok;

    const/4 v1, 0x1

    invoke-interface {v0, v4, v1}, Lcom/google/android/gms/internal/ok;->a([BZ)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/google/android/gms/internal/nh;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/nh;-><init>(Lcom/google/android/gms/internal/ng;Ljava/lang/String;Z)V

    return-object v1

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method
