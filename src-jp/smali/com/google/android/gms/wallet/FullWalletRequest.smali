.class public final Lcom/google/android/gms/wallet/FullWalletRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/google/android/gms/wallet/Cart;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/g;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/FullWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->d:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/Cart;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->d:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->c:Lcom/google/android/gms/wallet/Cart;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/FullWalletRequest;->d:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/g;->a(Lcom/google/android/gms/wallet/FullWalletRequest;Landroid/os/Parcel;I)V

    return-void
.end method
