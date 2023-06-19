.class public Lcom/google/android/gms/drive/StorageStats;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:J

.field final c:J

.field final d:J

.field final e:J

.field final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/c;

    invoke-direct {v0}, Lcom/google/android/gms/drive/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/StorageStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJJJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/StorageStats;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/drive/StorageStats;->b:J

    iput-wide p4, p0, Lcom/google/android/gms/drive/StorageStats;->c:J

    iput-wide p6, p0, Lcom/google/android/gms/drive/StorageStats;->d:J

    iput-wide p8, p0, Lcom/google/android/gms/drive/StorageStats;->e:J

    iput p10, p0, Lcom/google/android/gms/drive/StorageStats;->f:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/c;->a(Lcom/google/android/gms/drive/StorageStats;Landroid/os/Parcel;I)V

    return-void
.end method
