.class public Lcom/google/android/gms/drive/Contents;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Landroid/os/ParcelFileDescriptor;

.field final c:I

.field final d:I

.field final e:Lcom/google/android/gms/drive/DriveId;

.field f:Ljava/lang/String;

.field g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/a;

    invoke-direct {v0}, Lcom/google/android/gms/drive/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;IILcom/google/android/gms/drive/DriveId;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->h:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->i:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->j:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/Contents;->k:Z

    iput p1, p0, Lcom/google/android/gms/drive/Contents;->a:I

    iput-object p2, p0, Lcom/google/android/gms/drive/Contents;->b:Landroid/os/ParcelFileDescriptor;

    iput p3, p0, Lcom/google/android/gms/drive/Contents;->c:I

    iput p4, p0, Lcom/google/android/gms/drive/Contents;->d:I

    iput-object p5, p0, Lcom/google/android/gms/drive/Contents;->e:Lcom/google/android/gms/drive/DriveId;

    iput-object p6, p0, Lcom/google/android/gms/drive/Contents;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/drive/Contents;->g:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/a;->a(Lcom/google/android/gms/drive/Contents;Landroid/os/Parcel;I)V

    return-void
.end method
