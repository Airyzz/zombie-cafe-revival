.class abstract Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final _context:Landroid/content/Context;

.field private final _intent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/amazon/inapp/purchasing/KiwiResponseHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/inapp/purchasing/KiwiResponseHandler;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;->this$0:Lcom/amazon/inapp/purchasing/KiwiResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;->_context:Landroid/content/Context;

    iput-object p3, p0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;->_intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;->_context:Landroid/content/Context;

    return-object v0
.end method

.method protected final getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiResponseHandler$ResponseHandlerRunnable;->_intent:Landroid/content/Intent;

    return-object v0
.end method
