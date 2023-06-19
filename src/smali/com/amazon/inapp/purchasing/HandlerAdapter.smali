.class Lcom/amazon/inapp/purchasing/HandlerAdapter;
.super Ljava/lang/Object;


# instance fields
.field private _handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/HandlerAdapter;->_handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method post(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/HandlerAdapter;->_handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
