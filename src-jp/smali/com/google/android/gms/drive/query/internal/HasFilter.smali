.class public Lcom/google/android/gms/drive/query/internal/HasFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/query/a;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/drive/query/internal/f;


# instance fields
.field final a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final b:I

.field final c:Lcom/google/android/gms/drive/metadata/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/HasFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/f;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/HasFilter;->b:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/HasFilter;->a:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    invoke-static {p2}, Lcom/google/android/gms/drive/query/internal/e;->a(Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;)Lcom/google/android/gms/drive/metadata/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/HasFilter;->c:Lcom/google/android/gms/drive/metadata/a;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/f;->a(Lcom/google/android/gms/drive/query/internal/HasFilter;Landroid/os/Parcel;I)V

    return-void
.end method
