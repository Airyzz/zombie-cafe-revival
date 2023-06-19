.class public Lcom/google/android/gms/internal/my;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/internal/mz;

.field public static final b:Lcom/google/android/gms/internal/na;

.field public static final c:Lcom/google/android/gms/internal/nc;

.field public static final d:Lcom/google/android/gms/internal/nb;

.field public static final e:Lcom/google/android/gms/internal/nd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/internal/mz;

    const-string v1, "created"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/mz;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/my;->a:Lcom/google/android/gms/internal/mz;

    new-instance v0, Lcom/google/android/gms/internal/na;

    const-string v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/na;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/my;->b:Lcom/google/android/gms/internal/na;

    new-instance v0, Lcom/google/android/gms/internal/nc;

    const-string v1, "modified"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/nc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/my;->c:Lcom/google/android/gms/internal/nc;

    new-instance v0, Lcom/google/android/gms/internal/nb;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/nb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/my;->d:Lcom/google/android/gms/internal/nb;

    new-instance v0, Lcom/google/android/gms/internal/nd;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/nd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/my;->e:Lcom/google/android/gms/internal/nd;

    return-void
.end method
