.class final Lcom/google/android/gms/common/images/b;
.super Lcom/google/android/gms/internal/lt;


# virtual methods
.method protected a(Lcom/google/android/gms/common/images/f;Landroid/graphics/Bitmap;)I
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method protected synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/gms/common/images/f;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/images/b;->a(Lcom/google/android/gms/common/images/f;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected a(ZLcom/google/android/gms/common/images/f;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/lt;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/common/images/f;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/images/b;->a(ZLcom/google/android/gms/common/images/f;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method
