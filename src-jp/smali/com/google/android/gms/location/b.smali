.class public Lcom/google/android/gms/location/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/e;


# instance fields
.field a:I

.field b:I

.field c:J

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/e;

    invoke-direct {v0}, Lcom/google/android/gms/location/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/b;->CREATOR:Lcom/google/android/gms/location/e;

    return-void
.end method

.method constructor <init>(IIIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/b;->d:I

    iput p2, p0, Lcom/google/android/gms/location/b;->a:I

    iput p3, p0, Lcom/google/android/gms/location/b;->b:I

    iput-wide p4, p0, Lcom/google/android/gms/location/b;->c:J

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "STATUS_UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "STATUS_SUCCESSFUL"

    goto :goto_0

    :pswitch_2
    const-string v0, "STATUS_TIMED_OUT_ON_SCAN"

    goto :goto_0

    :pswitch_3
    const-string v0, "STATUS_NO_INFO_IN_DATABASE"

    goto :goto_0

    :pswitch_4
    const-string v0, "STATUS_INVALID_SCAN"

    goto :goto_0

    :pswitch_5
    const-string v0, "STATUS_UNABLE_TO_QUERY_DATABASE"

    goto :goto_0

    :pswitch_6
    const-string v0, "STATUS_SCANS_DISABLED_IN_SETTINGS"

    goto :goto_0

    :pswitch_7
    const-string v0, "STATUS_LOCATION_DISABLED_IN_SETTINGS"

    goto :goto_0

    :pswitch_8
    const-string v0, "STATUS_IN_PROGRESS"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/b;->d:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/b;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/b;

    iget v1, p0, Lcom/google/android/gms/location/b;->a:I

    iget v2, p1, Lcom/google/android/gms/location/b;->a:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/b;->b:I

    iget v2, p1, Lcom/google/android/gms/location/b;->b:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/location/b;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/location/b;->c:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/b;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/b;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/b;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/lo;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationStatus[cell status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/b;->a:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/location/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", wifi status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/b;->b:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/location/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", elapsed realtime ns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/location/b;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/e;->a(Lcom/google/android/gms/location/b;Landroid/os/Parcel;I)V

    return-void
.end method
