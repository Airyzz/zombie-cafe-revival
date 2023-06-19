.class public Lcom/google/android/gms/internal/ht;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/lv;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/internal/hv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/lv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ht;->CREATOR:Lcom/google/android/gms/internal/lv;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/hv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ht;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ht;->b:Lcom/google/android/gms/internal/hv;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/hv;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ht;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ht;->b:Lcom/google/android/gms/internal/hv;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ly;)Lcom/google/android/gms/internal/ht;
    .locals 2

    instance-of v0, p0, Lcom/google/android/gms/internal/hv;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ht;

    check-cast p0, Lcom/google/android/gms/internal/hv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ht;-><init>(Lcom/google/android/gms/internal/hv;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported safe parcelable field converter class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ht;->a:I

    return v0
.end method

.method b()Lcom/google/android/gms/internal/hv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->b:Lcom/google/android/gms/internal/hv;

    return-object v0
.end method

.method public c()Lcom/google/android/gms/internal/ly;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->b:Lcom/google/android/gms/internal/hv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ht;->b:Lcom/google/android/gms/internal/hv;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ht;->CREATOR:Lcom/google/android/gms/internal/lv;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ht;->CREATOR:Lcom/google/android/gms/internal/lv;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/lv;->a(Lcom/google/android/gms/internal/ht;Landroid/os/Parcel;I)V

    return-void
.end method
