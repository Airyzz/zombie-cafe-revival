.class Lcom/amazon/inapp/purchasing/PurchasingManager$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/PurchasingManager$2;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/PurchasingManager$2;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/PurchasingManager$2$1;->this$0:Lcom/amazon/inapp/purchasing/PurchasingManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchasingManager$2$1;->this$0:Lcom/amazon/inapp/purchasing/PurchasingManager$2;

    iget-object v0, v0, Lcom/amazon/inapp/purchasing/PurchasingManager$2;->val$purchasingObserver:Lcom/amazon/inapp/purchasing/PurchasingObserver;

    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->isSandboxMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/inapp/purchasing/PurchasingObserver;->onSdkAvailable(Z)V

    return-void
.end method
