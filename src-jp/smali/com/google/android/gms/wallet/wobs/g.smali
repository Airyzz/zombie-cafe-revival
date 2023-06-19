.class public final Lcom/google/android/gms/wallet/wobs/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:D

.field d:Ljava/lang/String;

.field e:J

.field f:I

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/k;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/wobs/g;->g:I

    iput v1, p0, Lcom/google/android/gms/wallet/wobs/g;->f:I

    iput v1, p0, Lcom/google/android/gms/wallet/wobs/g;->a:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/wallet/wobs/g;->c:D

    return-void
.end method

.method constructor <init>(IILjava/lang/String;DLjava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/wobs/g;->g:I

    iput p2, p0, Lcom/google/android/gms/wallet/wobs/g;->a:I

    iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/g;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/wallet/wobs/g;->c:D

    iput-object p6, p0, Lcom/google/android/gms/wallet/wobs/g;->d:Ljava/lang/String;

    iput-wide p7, p0, Lcom/google/android/gms/wallet/wobs/g;->e:J

    iput p9, p0, Lcom/google/android/gms/wallet/wobs/g;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/g;->g:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/k;->a(Lcom/google/android/gms/wallet/wobs/g;Landroid/os/Parcel;I)V

    return-void
.end method
