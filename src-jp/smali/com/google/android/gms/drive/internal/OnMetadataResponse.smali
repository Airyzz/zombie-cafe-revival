.class public Lcom/google/android/gms/drive/internal/OnMetadataResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/k;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnMetadataResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnMetadataResponse;->a:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/OnMetadataResponse;->b:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/k;->a(Lcom/google/android/gms/drive/internal/OnMetadataResponse;Landroid/os/Parcel;I)V

    return-void
.end method
