.class final Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;
.super Lcom/amazon/inapp/purchasing/Request;


# instance fields
.field private final _offset:Lcom/amazon/inapp/purchasing/Offset;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/Offset;)V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/inapp/purchasing/Request;-><init>()V

    const-string v0, "offset"

    invoke-static {p1, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;->_offset:Lcom/amazon/inapp/purchasing/Offset;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;)Lcom/amazon/inapp/purchasing/Offset;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;->_offset:Lcom/amazon/inapp/purchasing/Offset;

    return-object v0
.end method


# virtual methods
.method final getRunnable()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest$1;-><init>(Lcom/amazon/inapp/purchasing/PurchaseUpdatesRequest;)V

    return-object v0
.end method
