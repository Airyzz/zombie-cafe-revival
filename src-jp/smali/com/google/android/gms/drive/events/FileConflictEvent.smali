.class public final Lcom/google/android/gms/drive/events/FileConflictEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/drive/events/DriveEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Lcom/google/android/gms/drive/DriveId;

.field final c:Ljava/lang/String;

.field final d:Landroid/os/ParcelFileDescriptor;

.field final e:Landroid/os/ParcelFileDescriptor;

.field final f:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final g:Ljava/util/ArrayList;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/events/b;

    invoke-direct {v0}, Lcom/google/android/gms/drive/events/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/events/FileConflictEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/DriveId;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->h:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->i:Z

    iput-boolean v0, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->j:Z

    iput p1, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->a:I

    iput-object p2, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->b:Lcom/google/android/gms/drive/DriveId;

    iput-object p3, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->d:Landroid/os/ParcelFileDescriptor;

    iput-object p5, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->e:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->f:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput-object p7, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "FileConflictEvent [id=%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/drive/events/FileConflictEvent;->b:Lcom/google/android/gms/drive/DriveId;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/events/b;->a(Lcom/google/android/gms/drive/events/FileConflictEvent;Landroid/os/Parcel;I)V

    return-void
.end method
