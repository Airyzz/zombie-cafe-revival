.class final Lcom/amazon/inapp/purchasing/ContentDownloadRequest;
.super Lcom/amazon/inapp/purchasing/Request;


# instance fields
.field private final _location:Ljava/lang/String;

.field private final _sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/amazon/inapp/purchasing/Request;-><init>()V

    const-string v0, "sku"

    invoke-static {p1, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/ContentDownloadRequest;->_sku:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/ContentDownloadRequest;->_location:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/inapp/purchasing/ContentDownloadRequest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/ContentDownloadRequest;->_sku:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/inapp/purchasing/ContentDownloadRequest;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/ContentDownloadRequest;->_location:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final getRunnable()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/amazon/inapp/purchasing/ContentDownloadRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/inapp/purchasing/ContentDownloadRequest$1;-><init>(Lcom/amazon/inapp/purchasing/ContentDownloadRequest;)V

    return-object v0
.end method
