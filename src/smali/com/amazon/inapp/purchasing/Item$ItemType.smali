.class public final enum Lcom/amazon/inapp/purchasing/Item$ItemType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/inapp/purchasing/Item$ItemType;

.field public static final enum CONSUMABLE:Lcom/amazon/inapp/purchasing/Item$ItemType;

.field public static final enum ENTITLED:Lcom/amazon/inapp/purchasing/Item$ItemType;

.field public static final enum SUBSCRIPTION:Lcom/amazon/inapp/purchasing/Item$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/amazon/inapp/purchasing/Item$ItemType;

    const-string v1, "CONSUMABLE"

    invoke-direct {v0, v1, v2}, Lcom/amazon/inapp/purchasing/Item$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/Item$ItemType;->CONSUMABLE:Lcom/amazon/inapp/purchasing/Item$ItemType;

    new-instance v0, Lcom/amazon/inapp/purchasing/Item$ItemType;

    const-string v1, "ENTITLED"

    invoke-direct {v0, v1, v3}, Lcom/amazon/inapp/purchasing/Item$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/Item$ItemType;->ENTITLED:Lcom/amazon/inapp/purchasing/Item$ItemType;

    new-instance v0, Lcom/amazon/inapp/purchasing/Item$ItemType;

    const-string v1, "SUBSCRIPTION"

    invoke-direct {v0, v1, v4}, Lcom/amazon/inapp/purchasing/Item$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/inapp/purchasing/Item$ItemType;->SUBSCRIPTION:Lcom/amazon/inapp/purchasing/Item$ItemType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/inapp/purchasing/Item$ItemType;

    sget-object v1, Lcom/amazon/inapp/purchasing/Item$ItemType;->CONSUMABLE:Lcom/amazon/inapp/purchasing/Item$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/inapp/purchasing/Item$ItemType;->ENTITLED:Lcom/amazon/inapp/purchasing/Item$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/inapp/purchasing/Item$ItemType;->SUBSCRIPTION:Lcom/amazon/inapp/purchasing/Item$ItemType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/inapp/purchasing/Item$ItemType;->$VALUES:[Lcom/amazon/inapp/purchasing/Item$ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/inapp/purchasing/Item$ItemType;
    .locals 1

    const-class v0, Lcom/amazon/inapp/purchasing/Item$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amazon/inapp/purchasing/Item$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/amazon/inapp/purchasing/Item$ItemType;
    .locals 1

    sget-object v0, Lcom/amazon/inapp/purchasing/Item$ItemType;->$VALUES:[Lcom/amazon/inapp/purchasing/Item$ItemType;

    invoke-virtual {v0}, [Lcom/amazon/inapp/purchasing/Item$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/inapp/purchasing/Item$ItemType;

    return-object v0
.end method
