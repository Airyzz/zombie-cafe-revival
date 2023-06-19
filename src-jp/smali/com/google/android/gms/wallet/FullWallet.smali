.class public final Lcom/google/android/gms/wallet/FullWallet;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/google/android/gms/wallet/ProxyCard;

.field d:Ljava/lang/String;

.field e:Lcom/google/android/gms/wallet/Address;

.field f:Lcom/google/android/gms/wallet/Address;

.field g:[Ljava/lang/String;

.field h:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field i:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field j:[Lcom/google/android/gms/wallet/InstrumentInfo;

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/f;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/FullWallet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/FullWallet;->k:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/ProxyCard;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Ljava/lang/String;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/identity/intents/model/UserAddress;[Lcom/google/android/gms/wallet/InstrumentInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/FullWallet;->k:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/FullWallet;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/FullWallet;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/FullWallet;->c:Lcom/google/android/gms/wallet/ProxyCard;

    iput-object p5, p0, Lcom/google/android/gms/wallet/FullWallet;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/FullWallet;->e:Lcom/google/android/gms/wallet/Address;

    iput-object p7, p0, Lcom/google/android/gms/wallet/FullWallet;->f:Lcom/google/android/gms/wallet/Address;

    iput-object p8, p0, Lcom/google/android/gms/wallet/FullWallet;->g:[Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/FullWallet;->h:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p10, p0, Lcom/google/android/gms/wallet/FullWallet;->i:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p11, p0, Lcom/google/android/gms/wallet/FullWallet;->j:[Lcom/google/android/gms/wallet/InstrumentInfo;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/FullWallet;->k:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/f;->a(Lcom/google/android/gms/wallet/FullWallet;Landroid/os/Parcel;I)V

    return-void
.end method
