.class Lcom/amazon/inapp/purchasing/KiwiRequestHandler$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/KiwiRequestHandler;

.field final synthetic val$offset:Lcom/amazon/inapp/purchasing/Offset;

.field final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/KiwiRequestHandler;Lcom/amazon/inapp/purchasing/Offset;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$4;->this$0:Lcom/amazon/inapp/purchasing/KiwiRequestHandler;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$4;->val$offset:Lcom/amazon/inapp/purchasing/Offset;

    iput-object p3, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$4;->val$requestId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$4;->val$offset:Lcom/amazon/inapp/purchasing/Offset;

    iget-object v2, p0, Lcom/amazon/inapp/purchasing/KiwiRequestHandler$4;->val$requestId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazon/inapp/purchasing/KiwiPurchaseUpdatesCommandTask;-><init>(Lcom/amazon/inapp/purchasing/Offset;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/android/Kiwi;->addCommandToCommandTaskPipeline(Lcom/amazon/android/framework/task/command/AbstractCommandTask;)V

    return-void
.end method
