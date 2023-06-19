.class public Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Z

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:I

.field final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/event/c;

    invoke-direct {v0}, Lcom/google/android/gms/drive/realtime/internal/event/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->d:Z

    iput-object p5, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->f:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->a:I

    iput p7, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->g:I

    iput p8, p0, Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;->h:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/realtime/internal/event/c;->a(Lcom/google/android/gms/drive/realtime/internal/event/ParcelableObjectChangedEvent;Landroid/os/Parcel;I)V

    return-void
.end method
