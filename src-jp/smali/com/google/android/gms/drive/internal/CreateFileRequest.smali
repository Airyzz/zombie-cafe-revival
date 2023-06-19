.class public Lcom/google/android/gms/drive/internal/CreateFileRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Lcom/google/android/gms/drive/DriveId;

.field final c:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final d:Lcom/google/android/gms/drive/Contents;

.field final e:Ljava/lang/Integer;

.field final f:Z

.field final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/ac;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ac;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Lcom/google/android/gms/drive/Contents;Ljava/lang/Integer;ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->a:I

    invoke-static {p2}, Lcom/google/android/gms/internal/ls;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/DriveId;

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->b:Lcom/google/android/gms/drive/DriveId;

    invoke-static {p3}, Lcom/google/android/gms/internal/ls;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->c:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p4}, Lcom/google/android/gms/internal/ls;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/Contents;

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->d:Lcom/google/android/gms/drive/Contents;

    :goto_0
    iput-object p5, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->e:Ljava/lang/Integer;

    iput-boolean p6, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->f:Z

    iput-object p7, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->g:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/CreateFileRequest;->d:Lcom/google/android/gms/drive/Contents;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/ac;->a(Lcom/google/android/gms/drive/internal/CreateFileRequest;Landroid/os/Parcel;I)V

    return-void
.end method
