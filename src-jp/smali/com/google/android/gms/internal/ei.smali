.class public Lcom/google/android/gms/internal/ei;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ei;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/hq;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ILandroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p3}, Lcom/google/android/gms/internal/eh;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcom/google/android/gms/internal/eh;->c(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/internal/eh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v1, "Developer payload not match."

    invoke-static {v1}, Lcom/google/android/gms/internal/ig;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ei;->a:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ei;->a:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Fail to verify signature."

    invoke-static {v1}, Lcom/google/android/gms/internal/ig;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
