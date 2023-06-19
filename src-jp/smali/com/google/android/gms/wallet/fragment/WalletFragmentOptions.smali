.class public final Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field private b:I

.field private c:I

.field private d:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/fragment/b;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/fragment/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->a:I

    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/wallet/fragment/WalletFragmentStyle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->a:I

    iput p2, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->b:I

    iput p3, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->c:I

    iput-object p4, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->d:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    iput p5, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->c:I

    return v0
.end method

.method public c()Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->d:Lcom/google/android/gms/wallet/fragment/WalletFragmentStyle;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;->e:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/fragment/b;->a(Lcom/google/android/gms/wallet/fragment/WalletFragmentOptions;Landroid/os/Parcel;I)V

    return-void
.end method
