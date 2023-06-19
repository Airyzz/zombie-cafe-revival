.class public final enum Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

.field public static final enum FAILED:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

.field public static final enum SUCCESSFUL:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

.field public static final enum SUCCESSFUL_WITH_UNAVAILABLE_SKUS:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    const-string v1, "SUCCESSFUL"

    invoke-direct {v0, v1, v2}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    new-instance v0, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    new-instance v0, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    const-string v1, "SUCCESSFUL_WITH_UNAVAILABLE_SKUS"

    invoke-direct {v0, v1, v4}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL_WITH_UNAVAILABLE_SKUS:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    sget-object v1, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->SUCCESSFUL_WITH_UNAVAILABLE_SKUS:Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->$VALUES:[Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;
    .locals 1

    const-class v0, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    return-object v0
.end method

.method public static values()[Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;
    .locals 1

    sget-object v0, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->$VALUES:[Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    invoke-virtual {v0}, [Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    return-object v0
.end method
