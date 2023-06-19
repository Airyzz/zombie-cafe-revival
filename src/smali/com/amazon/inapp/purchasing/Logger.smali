.class Lcom/amazon/inapp/purchasing/Logger;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isErrorOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getLogHandler()Lcom/amazon/inapp/purchasing/LogHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/amazon/inapp/purchasing/LogHandler;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static isErrorOn()Z
    .locals 1

    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getLogHandler()Lcom/amazon/inapp/purchasing/LogHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/inapp/purchasing/LogHandler;->isErrorOn()Z

    move-result v0

    return v0
.end method

.method static isTestOn()Z
    .locals 1

    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getLogHandler()Lcom/amazon/inapp/purchasing/LogHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/inapp/purchasing/LogHandler;->isTestOn()Z

    move-result v0

    return v0
.end method

.method static isTraceOn()Z
    .locals 1

    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getLogHandler()Lcom/amazon/inapp/purchasing/LogHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/inapp/purchasing/LogHandler;->isTraceOn()Z

    move-result v0

    return v0
.end method

.method static test(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTestOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getLogHandler()Lcom/amazon/inapp/purchasing/LogHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/amazon/inapp/purchasing/LogHandler;->test(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static trace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/amazon/inapp/purchasing/Logger;->isTraceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/inapp/purchasing/ImplementationFactory;->getLogHandler()Lcom/amazon/inapp/purchasing/LogHandler;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/amazon/inapp/purchasing/LogHandler;->trace(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
