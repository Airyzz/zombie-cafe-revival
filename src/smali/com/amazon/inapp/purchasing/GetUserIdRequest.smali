.class final Lcom/amazon/inapp/purchasing/GetUserIdRequest;
.super Lcom/amazon/inapp/purchasing/Request;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/inapp/purchasing/Request;-><init>()V

    return-void
.end method


# virtual methods
.method final getRunnable()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/amazon/inapp/purchasing/GetUserIdRequest$1;

    invoke-direct {v0, p0}, Lcom/amazon/inapp/purchasing/GetUserIdRequest$1;-><init>(Lcom/amazon/inapp/purchasing/GetUserIdRequest;)V

    return-object v0
.end method
