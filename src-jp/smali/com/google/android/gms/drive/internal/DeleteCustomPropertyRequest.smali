.class public Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Lcom/google/android/gms/drive/DriveId;

.field final c:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/ae;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ae;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/CustomPropertyKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;->a:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;->b:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;->c:Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/ae;->a(Lcom/google/android/gms/drive/internal/DeleteCustomPropertyRequest;Landroid/os/Parcel;I)V

    return-void
.end method
