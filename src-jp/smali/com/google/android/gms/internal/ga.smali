.class public final Lcom/google/android/gms/internal/ga;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/gb;)Lcom/google/android/gms/internal/hl;
    .locals 1

    iget-object v0, p1, Lcom/google/android/gms/internal/ds;->k:Lcom/google/android/gms/internal/ev;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ev;->e:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ga;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/gb;)Lcom/google/android/gms/internal/hl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ga;->c(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/gb;)Lcom/google/android/gms/internal/hl;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/gb;)Lcom/google/android/gms/internal/hl;
    .locals 1

    const-string v0, "Fetching ad response from local ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/gd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/gd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/gb;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->e()V

    return-object v0
.end method

.method private static c(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/gb;)Lcom/google/android/gms/internal/hl;
    .locals 1

    const-string v0, "Fetching ad response from remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/common/g;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to connect to remote ad request service."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/gf;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/gf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ds;Lcom/google/android/gms/internal/gb;)V

    goto :goto_0
.end method
