.class Lcom/amazon/inapp/purchasing/KiwiLogHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/inapp/purchasing/LogHandler;


# static fields
.field private static LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/android/framework/util/KiwiLogger;

    const-string v1, "In App Purchasing SDK - Production Mode"

    invoke-direct {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/inapp/purchasing/KiwiLogHandler;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildLogMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/amazon/inapp/purchasing/KiwiLogHandler;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    invoke-static {p1, p2}, Lcom/amazon/inapp/purchasing/KiwiLogHandler;->buildLogMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public isErrorOn()Z
    .locals 1

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->ERROR_ON:Z

    return v0
.end method

.method public isTestOn()Z
    .locals 1

    invoke-static {}, Lcom/amazon/android/framework/util/KiwiLogger;->isTestEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceOn()Z
    .locals 1

    sget-boolean v0, Lcom/amazon/android/framework/util/KiwiLogger;->TRACE_ON:Z

    return v0
.end method

.method public test(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/amazon/inapp/purchasing/KiwiLogHandler;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    invoke-static {p1, p2}, Lcom/amazon/inapp/purchasing/KiwiLogHandler;->buildLogMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->test(Ljava/lang/String;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/amazon/inapp/purchasing/KiwiLogHandler;->LOGGER:Lcom/amazon/android/framework/util/KiwiLogger;

    invoke-static {p1, p2}, Lcom/amazon/inapp/purchasing/KiwiLogHandler;->buildLogMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/framework/util/KiwiLogger;->trace(Ljava/lang/String;)V

    return-void
.end method
