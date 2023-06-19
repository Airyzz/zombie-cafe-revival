.class public Lcom/google/android/gms/internal/nf;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/android/gms/drive/metadata/a;

.field public static final b:Lcom/google/android/gms/drive/metadata/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v2, 0x419ce0

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/h;

    const-string v1, "contentAvailability"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/nf;->a:Lcom/google/android/gms/drive/metadata/a;

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/d;

    const-string v1, "isPinnable"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/nf;->b:Lcom/google/android/gms/drive/metadata/a;

    return-void
.end method
