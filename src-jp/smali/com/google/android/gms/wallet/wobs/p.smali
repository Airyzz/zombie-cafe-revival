.class public final Lcom/google/android/gms/wallet/wobs/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/google/android/gms/wallet/wobs/l;

.field d:Lcom/google/android/gms/wallet/wobs/n;

.field e:Lcom/google/android/gms/wallet/wobs/n;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/s;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/p;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/wobs/p;->f:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/wobs/l;Lcom/google/android/gms/wallet/wobs/n;Lcom/google/android/gms/wallet/wobs/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/wobs/p;->f:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/p;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/p;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/wobs/p;->c:Lcom/google/android/gms/wallet/wobs/l;

    iput-object p5, p0, Lcom/google/android/gms/wallet/wobs/p;->d:Lcom/google/android/gms/wallet/wobs/n;

    iput-object p6, p0, Lcom/google/android/gms/wallet/wobs/p;->e:Lcom/google/android/gms/wallet/wobs/n;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/p;->f:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/s;->a(Lcom/google/android/gms/wallet/wobs/p;Landroid/os/Parcel;I)V

    return-void
.end method
