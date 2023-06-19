.class public Lcom/google/android/gms/wearable/internal/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/google/android/gms/wearable/internal/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/z;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/wearable/internal/ai;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/z;->a:I

    iput p2, p0, Lcom/google/android/gms/wearable/internal/z;->b:I

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/z;->c:Lcom/google/android/gms/wearable/internal/ai;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/a;->a(Lcom/google/android/gms/wearable/internal/z;Landroid/os/Parcel;I)V

    return-void
.end method
