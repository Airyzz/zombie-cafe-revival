.class public final Lcom/google/android/gms/internal/li;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:[Ljava/lang/String;

.field b:[[B

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/og;

    invoke-direct {v0}, Lcom/google/android/gms/internal/og;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/li;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v1, v2, [Ljava/lang/String;

    new-array v2, v2, [[B

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/li;-><init>(I[Ljava/lang/String;[[B)V

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/li;->c:I

    iput-object p2, p0, Lcom/google/android/gms/internal/li;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/li;->b:[[B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/li;->c:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/og;->a(Lcom/google/android/gms/internal/li;Landroid/os/Parcel;I)V

    return-void
.end method
