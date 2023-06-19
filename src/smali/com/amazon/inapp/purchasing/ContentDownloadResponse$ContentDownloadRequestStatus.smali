.class public final enum Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

.field public static final enum COMPLETE:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

.field public static final enum FAILED:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

.field public static final enum INVALID_LOCATION:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

.field public static final enum INVALID_SKU:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

.field public static final enum IN_PROGRESS:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    const-string v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v2}, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->IN_PROGRESS:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    new-instance v0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v3}, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->COMPLETE:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    new-instance v0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    new-instance v0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    const-string v1, "INVALID_LOCATION"

    invoke-direct {v0, v1, v5}, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->INVALID_LOCATION:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    new-instance v0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    const-string v1, "INVALID_SKU"

    invoke-direct {v0, v1, v6}, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->INVALID_SKU:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    sget-object v1, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->IN_PROGRESS:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->COMPLETE:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->INVALID_LOCATION:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->INVALID_SKU:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->$VALUES:[Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;
    .locals 1

    const-class v0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    return-object v0
.end method

.method public static values()[Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;
    .locals 1

    sget-object v0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->$VALUES:[Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    invoke-virtual {v0}, [Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    return-object v0
.end method
