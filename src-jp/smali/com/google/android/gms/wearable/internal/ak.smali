.class public Lcom/google/android/gms/wearable/internal/ak;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/h;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/ak;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/ak;->a:I

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/ak;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/ak;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/wearable/internal/ak;->d:J

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/h;->a(Lcom/google/android/gms/wearable/internal/ak;Landroid/os/Parcel;I)V

    return-void
.end method
