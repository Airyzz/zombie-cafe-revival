.class Lcom/amazon/inapp/purchasing/FailurePrompt;
.super Lcom/amazon/android/framework/prompt/SimplePrompt;


# static fields
.field private static final LINK:Ljava/lang/String; = "http://www.amazon.com/gp/mas/get-appstore/android/ref=mas_mx_mba_iap_dl"

.field private static final PROMPT_TITLE1:Ljava/lang/String; = "Amazon Appstore required"

.field private static final PROMPT_TITLE2:Ljava/lang/String; = "Amazon Appstore Update Required"

.field private static final SHUTDOWN_EXP_TIME:J = 0x1e13380L

.field private static final TAG:Ljava/lang/String; = "FailurePrompt"


# instance fields
.field private contextMgr:Lcom/amazon/android/framework/context/ContextManager;
    .annotation runtime Lcom/amazon/android/framework/resource/Resource;
    .end annotation
.end field

.field private pContent:Lcom/amazon/android/framework/prompt/PromptContent;


# direct methods
.method constructor <init>(Lcom/amazon/android/framework/prompt/PromptContent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/android/framework/prompt/SimplePrompt;-><init>(Lcom/amazon/android/framework/prompt/PromptContent;)V

    iput-object p1, p0, Lcom/amazon/inapp/purchasing/FailurePrompt;->pContent:Lcom/amazon/android/framework/prompt/PromptContent;

    return-void
.end method


# virtual methods
.method protected doAction()V
    .locals 4

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FailurePrompt"

    const-string v1, "doAction"

    invoke-static {v0, v1}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "Amazon Appstore required"

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/FailurePrompt;->pContent:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-virtual {v1}, Lcom/amazon/android/framework/prompt/PromptContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Amazon Appstore Update Required"

    iget-object v1, p0, Lcom/amazon/inapp/purchasing/FailurePrompt;->pContent:Lcom/amazon/android/framework/prompt/PromptContent;

    invoke-virtual {v1}, Lcom/amazon/android/framework/prompt/PromptContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amazon/inapp/purchasing/FailurePrompt;->contextMgr:Lcom/amazon/android/framework/context/ContextManager;

    invoke-interface {v0}, Lcom/amazon/android/framework/context/ContextManager;->getVisible()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/inapp/purchasing/FailurePrompt;->contextMgr:Lcom/amazon/android/framework/context/ContextManager;

    invoke-interface {v0}, Lcom/amazon/android/framework/context/ContextManager;->getRoot()Landroid/app/Activity;

    move-result-object v0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.amazon.com/gp/mas/get-appstore/android/ref=mas_mx_mba_iap_dl"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "FailurePrompt"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in PurchaseItemCommandTask.OnSuccess: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/inapp/purchasing/Logger;->trace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected getExpirationDurationInSeconds()J
    .locals 2

    const-wide/32 v0, 0x1e13380

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "FailurePrompt"

    return-object v0
.end method
