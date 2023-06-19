.class Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/framework/task/Task;


# instance fields
.field final synthetic this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$1;->this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;

    iput-object p2, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$1;->this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;->access$000(Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;)Lcom/amazon/android/framework/context/ContextManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/framework/context/ContextManager;->getVisible()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$1;->this$0:Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;->access$000(Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask;)Lcom/amazon/android/framework/context/ContextManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/framework/context/ContextManager;->getRoot()Landroid/app/Activity;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "KiwiPurchaseRequestCommandTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "About to fire intent with activity "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/amazon/inapp/purchasing/KiwiPurchaseRequestCommandTask$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "KiwiPurchaseRequestCommandTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception when attempting to fire intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
