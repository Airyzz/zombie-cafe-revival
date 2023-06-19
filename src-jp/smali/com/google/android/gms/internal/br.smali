.class public final Lcom/google/android/gms/internal/br;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/bl;

.field public final c:Lcom/google/android/gms/internal/by;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/google/android/gms/internal/bo;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/br;-><init>(Lcom/google/android/gms/internal/bl;Lcom/google/android/gms/internal/by;Ljava/lang/String;Lcom/google/android/gms/internal/bo;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/bl;Lcom/google/android/gms/internal/by;Ljava/lang/String;Lcom/google/android/gms/internal/bo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/br;->b:Lcom/google/android/gms/internal/bl;

    iput-object p2, p0, Lcom/google/android/gms/internal/br;->c:Lcom/google/android/gms/internal/by;

    iput-object p3, p0, Lcom/google/android/gms/internal/br;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/br;->e:Lcom/google/android/gms/internal/bo;

    iput p5, p0, Lcom/google/android/gms/internal/br;->a:I

    return-void
.end method
