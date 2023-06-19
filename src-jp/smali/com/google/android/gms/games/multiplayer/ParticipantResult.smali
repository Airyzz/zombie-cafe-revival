.class public final Lcom/google/android/gms/games/multiplayer/ParticipantResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/multiplayer/e;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/multiplayer/e;

    invoke-direct {v0}, Lcom/google/android/gms/games/multiplayer/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->CREATOR:Lcom/google/android/gms/games/multiplayer/e;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->a:I

    invoke-static {p2}, Lcom/google/android/gms/internal/ls;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->b:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/games/internal/a/a;->a(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ls;->a(Z)V

    iput p3, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->c:I

    iput p4, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/ParticipantResult;-><init>(ILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->d:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/multiplayer/e;->a(Lcom/google/android/gms/games/multiplayer/ParticipantResult;Landroid/os/Parcel;I)V

    return-void
.end method
