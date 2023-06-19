.class public final Lcom/google/android/gms/internal/hv$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/lx;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/lx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/lx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/hv$a;->CREATOR:Lcom/google/android/gms/internal/lx;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/hv$a;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/hv$a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/hv$a;->c:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/hv$a;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/hv$a;->b:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/hv$a;->c:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hv$a;->CREATOR:Lcom/google/android/gms/internal/lx;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/hv$a;->CREATOR:Lcom/google/android/gms/internal/lx;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/lx;->a(Lcom/google/android/gms/internal/hv$a;Landroid/os/Parcel;I)V

    return-void
.end method
