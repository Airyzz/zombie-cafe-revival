.class final Lcom/amazon/inapp/purchasing/ContentDownloadResponse;
.super Ljava/lang/Object;


# instance fields
.field private final _contentDownloadRequestStatus:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

.field private final _percentComplete:I

.field private final _requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentDownloadRequestStatus"

    invoke-static {p3, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;->_requestId:Ljava/lang/String;

    iput p2, p0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;->_percentComplete:I

    iput-object p3, p0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;->_contentDownloadRequestStatus:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    return-void
.end method


# virtual methods
.method public final getContentDownloadRequestStatus()Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;->_contentDownloadRequestStatus:Lcom/amazon/inapp/purchasing/ContentDownloadResponse$ContentDownloadRequestStatus;

    return-object v0
.end method

.method public final getPercentComplete()I
    .locals 1

    iget v0, p0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;->_percentComplete:I

    return v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/ContentDownloadResponse;->_requestId:Ljava/lang/String;

    return-object v0
.end method
