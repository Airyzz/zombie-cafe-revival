.class public final enum Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

.field public static final enum ALREADY_ENTITLED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

.field public static final enum FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

.field public static final enum INVALID_SKU:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

.field public static final enum SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    const-string v1, "SUCCESSFUL"

    invoke-direct {v0, v1, v2}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    new-instance v0, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    new-instance v0, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    const-string v1, "INVALID_SKU"

    invoke-direct {v0, v1, v4}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->INVALID_SKU:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    new-instance v0, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    const-string v1, "ALREADY_ENTITLED"

    invoke-direct {v0, v1, v5}, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ALREADY_ENTITLED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->FAILED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->INVALID_SKU:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->ALREADY_ENTITLED:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->$VALUES:[Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;
    .locals 1

    const-class v0, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    return-object v0
.end method

.method public static values()[Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;
    .locals 1

    sget-object v0, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->$VALUES:[Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    invoke-virtual {v0}, [Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    return-object v0
.end method
