.class Lcom/amazon/inapp/purchasing/ContentDownloadRequest$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/ContentDownloadRequest;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/ContentDownloadRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/ContentDownloadRequest$1;->this$0:Lcom/amazon/inapp/purchasing/ContentDownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getRequestHandler()Lcom/amazon/inapp/purchasing/RequestHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/ContentDownloadRequest$1;->this$0:Lcom/amazon/inapp/purchasing/ContentDownloadRequest;

    invoke-static {v1}, Lcom/amazon/inapp/purchasing/ContentDownloadRequest;->access$000(Lcom/amazon/inapp/purchasing/ContentDownloadRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/inapp/purchasing/ContentDownloadRequest$1;->this$0:Lcom/amazon/inapp/purchasing/ContentDownloadRequest;

    invoke-static {v2}, Lcom/amazon/inapp/purchasing/ContentDownloadRequest;->access$100(Lcom/amazon/inapp/purchasing/ContentDownloadRequest;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/inapp/purchasing/ContentDownloadRequest$1;->this$0:Lcom/amazon/inapp/purchasing/ContentDownloadRequest;

    invoke-virtual {v3}, Lcom/amazon/inapp/purchasing/ContentDownloadRequest;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/inapp/purchasing/RequestHandler;->sendContentDownloadRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
