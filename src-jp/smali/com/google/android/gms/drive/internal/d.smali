.class public final Lcom/google/android/gms/drive/internal/d;
.super Lcom/google/android/gms/internal/ol;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ol;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/d;->a()Lcom/google/android/gms/drive/internal/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/drive/internal/d;
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/d;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/d;->b:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/d;->c:J

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/d;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/d;->e:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/d;->f:I

    return-object p0
.end method

.method public a(Lcom/google/android/gms/internal/oi;)V
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/d;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/oi;->a(II)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/oi;->a(ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/d;->c:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/oi;->b(IJ)V

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/d;->d:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/oi;->b(IJ)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ol;->a(Lcom/google/android/gms/internal/oi;)V

    return-void
.end method

.method protected b()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ol;->b()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/internal/d;->a:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/oi;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/d;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/oi;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/d;->c:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/oi;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/d;->d:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/oi;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/drive/internal/d;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/drive/internal/d;

    iget v2, p0, Lcom/google/android/gms/drive/internal/d;->a:I

    iget v3, p1, Lcom/google/android/gms/drive/internal/d;->a:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/d;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/drive/internal/d;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/d;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/d;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/d;->d:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/d;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/d;->e:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/d;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/drive/internal/d;->e:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/drive/internal/d;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/drive/internal/d;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/internal/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/d;->e:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/drive/internal/d;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/gms/drive/internal/d;->a:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/d;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/d;->c:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/d;->c:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/d;->d:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/d;->d:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/d;->e:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/d;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method
