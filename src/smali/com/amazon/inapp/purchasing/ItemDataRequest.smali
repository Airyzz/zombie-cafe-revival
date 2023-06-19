.class final Lcom/amazon/inapp/purchasing/ItemDataRequest;
.super Lcom/amazon/inapp/purchasing/Request;


# instance fields
.field private final _skus:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 3

    invoke-direct {p0}, Lcom/amazon/inapp/purchasing/Request;-><init>()V

    const-string v0, "skus"

    invoke-static {p1, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skus"

    invoke-static {p1, v0}, Lcom/amazon/inapp/purchasing/Validator;->validateNotEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty SKU values are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SKUs were provided, but no more than 100"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SKUs are allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/amazon/inapp/purchasing/ItemDataRequest;->_skus:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/inapp/purchasing/ItemDataRequest;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/ItemDataRequest;->_skus:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method final getRunnable()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/amazon/inapp/purchasing/ItemDataRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/inapp/purchasing/ItemDataRequest$1;-><init>(Lcom/amazon/inapp/purchasing/ItemDataRequest;)V

    return-object v0
.end method
