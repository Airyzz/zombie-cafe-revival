.class public abstract Lcom/google/android/gms/internal/om;
.super Ljava/lang/Object;


# instance fields
.field protected volatile f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/om;->f:I

    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/om;[BII)V
    .locals 3

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/oi;->a([BII)Lcom/google/android/gms/internal/oi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/om;->a(Lcom/google/android/gms/internal/oi;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/oi;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final a(Lcom/google/android/gms/internal/om;)[B
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/om;->c()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/om;->a(Lcom/google/android/gms/internal/om;[BII)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/oi;)V
    .locals 0

    return-void
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/om;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/om;->f:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/on;->a(Lcom/google/android/gms/internal/om;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
