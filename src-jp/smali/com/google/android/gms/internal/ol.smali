.class public abstract Lcom/google/android/gms/internal/ol;
.super Lcom/google/android/gms/internal/om;


# instance fields
.field protected e:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/om;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/oi;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ol;->e:Ljava/util/List;

    if-nez v1, :cond_0

    move v1, v0

    :goto_0
    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ol;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/oo;

    iget v3, v0, Lcom/google/android/gms/internal/oo;->a:I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/oi;->e(I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/oo;->b:[B

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/oi;->b([B)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ol;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected b()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ol;->e:Ljava/util/List;

    if-nez v1, :cond_0

    move v1, v0

    :goto_0
    move v2, v0

    move v3, v0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ol;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/oo;

    iget v4, v0, Lcom/google/android/gms/internal/oo;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/oi;->f(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v0, v0, Lcom/google/android/gms/internal/oo;->b:[B

    array-length v0, v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ol;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    return v3
.end method
