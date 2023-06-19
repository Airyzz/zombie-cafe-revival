.class final enum Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

.field public static final enum item_response:Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

.field public static final enum purchase_response:Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

.field public static final enum updates_response:Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    const-string v1, "purchase_response"

    invoke-direct {v0, v1, v2}, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->purchase_response:Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    const-string v1, "item_response"

    invoke-direct {v0, v1, v3}, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->item_response:Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    const-string v1, "updates_response"

    invoke-direct {v0, v1, v4}, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->updates_response:Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    sget-object v1, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->purchase_response:Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->item_response:Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->updates_response:Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->$VALUES:[Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;
    .locals 1

    const-class v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    return-object v0
.end method

.method public static values()[Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;
    .locals 1

    sget-object v0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->$VALUES:[Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    invoke-virtual {v0}, [Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseType;

    return-object v0
.end method
