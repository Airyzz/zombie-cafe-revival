.class public final Lcom/google/android/gms/common/images/g;
.super Lcom/google/android/gms/common/images/e;


# instance fields
.field private d:Ljava/lang/ref/WeakReference;


# virtual methods
.method protected a(Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 2

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/images/g;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/images/g;->a:Lcom/google/android/gms/common/images/f;

    iget-object v1, v1, Lcom/google/android/gms/common/images/f;->a:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p4}, Lcom/google/android/gms/common/images/a;->a(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    instance-of v0, p1, Lcom/google/android/gms/common/images/g;

    if-nez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    if-ne p0, p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/images/g;

    iget-object v0, p0, Lcom/google/android/gms/common/images/g;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/a;

    iget-object v1, p1, Lcom/google/android/gms/common/images/g;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/images/a;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/common/images/g;->a:Lcom/google/android/gms/common/images/f;

    iget-object v1, p0, Lcom/google/android/gms/common/images/g;->a:Lcom/google/android/gms/common/images/f;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/lo;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/images/g;->a:Lcom/google/android/gms/common/images/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/lo;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
