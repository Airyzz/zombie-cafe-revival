.class final Lcom/amazon/inapp/purchasing/PurchasingManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$purchasingObserver:Lcom/amazon/inapp/purchasing/PurchasingObserver;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/PurchasingObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/PurchasingManager$2;->val$purchasingObserver:Lcom/amazon/inapp/purchasing/PurchasingObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/amazon/inapp/purchasing/PurchasingManager$2$1;

    invoke-direct {v0, p0}, Lcom/amazon/inapp/purchasing/PurchasingManager$2$1;-><init>(Lcom/amazon/inapp/purchasing/PurchasingManager$2;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->getObserverContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
