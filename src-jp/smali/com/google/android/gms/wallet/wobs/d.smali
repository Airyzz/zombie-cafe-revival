.class public final Lcom/google/android/gms/wallet/wobs/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/util/ArrayList;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/i;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/wobs/d;->d:I

    invoke-static {}, Lcom/google/android/gms/internal/mg;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/d;->c:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/wobs/d;->d:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/d;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/wobs/d;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/d;->d:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/i;->a(Lcom/google/android/gms/wallet/wobs/d;Landroid/os/Parcel;I)V

    return-void
.end method
