.class Lcom/amazon/inapp/purchasing/ItemDataRequest$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/ItemDataRequest;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/ItemDataRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/ItemDataRequest$1;->this$0:Lcom/amazon/inapp/purchasing/ItemDataRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getRequestHandler()Lcom/amazon/inapp/purchasing/RequestHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/ItemDataRequest$1;->this$0:Lcom/amazon/inapp/purchasing/ItemDataRequest;

    invoke-static {v1}, Lcom/amazon/inapp/purchasing/ItemDataRequest;->access$000(Lcom/amazon/inapp/purchasing/ItemDataRequest;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/inapp/purchasing/ItemDataRequest$1;->this$0:Lcom/amazon/inapp/purchasing/ItemDataRequest;

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/ItemDataRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/inapp/purchasing/RequestHandler;->sendItemDataRequest(Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method
