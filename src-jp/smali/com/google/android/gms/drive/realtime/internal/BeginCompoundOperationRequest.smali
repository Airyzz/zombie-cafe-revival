.class public Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Z

.field final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->a:I

    iput-boolean p2, p0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->b:Z

    iput-object p3, p0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->c:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/a;->a(Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;Landroid/os/Parcel;I)V

    return-void
.end method
