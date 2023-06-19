.class public abstract Lcom/amazon/inapp/purchasing/PurchasingObserver;
.super Ljava/lang/Object;


# instance fields
.field private _contextReference:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/inapp/purchasing/PurchasingObserver;->_contextReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/PurchasingObserver;->_contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public abstract onGetUserIdResponse(Lcom/amazon/inapp/purchasing/GetUserIdResponse;)V
.end method

.method public abstract onItemDataResponse(Lcom/amazon/inapp/purchasing/ItemDataResponse;)V
.end method

.method public abstract onPurchaseResponse(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
.end method

.method public abstract onPurchaseUpdatesResponse(Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V
.end method

.method public abstract onSdkAvailable(Z)V
.end method
