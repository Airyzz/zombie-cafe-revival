.class public Lcom/google/android/gms/drive/query/internal/NotFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/query/a;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:Lcom/google/android/gms/drive/query/internal/FilterHolder;

.field final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/j;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/NotFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/query/internal/FilterHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/NotFilter;->b:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/NotFilter;->a:Lcom/google/android/gms/drive/query/internal/FilterHolder;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/j;->a(Lcom/google/android/gms/drive/query/internal/NotFilter;Landroid/os/Parcel;I)V

    return-void
.end method
