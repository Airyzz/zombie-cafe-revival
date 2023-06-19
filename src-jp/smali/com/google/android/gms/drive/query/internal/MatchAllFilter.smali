.class public Lcom/google/android/gms/drive/query/internal/MatchAllFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/query/a;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/drive/query/internal/i;


# instance fields
.field final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/i;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;->CREATOR:Lcom/google/android/gms/drive/query/internal/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;->a:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/i;->a(Lcom/google/android/gms/drive/query/internal/MatchAllFilter;Landroid/os/Parcel;I)V

    return-void
.end method
