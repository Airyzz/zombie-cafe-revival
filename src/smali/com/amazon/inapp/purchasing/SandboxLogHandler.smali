.class Lcom/amazon/inapp/purchasing/SandboxLogHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/inapp/purchasing/LogHandler;


# static fields
.field private static final ERROR_ON:Z = true

.field private static final TEST_ON:Z = true

.field private static final TRACE_ON:Z = true


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildLogMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In App Purchasing SDK - Sandbox Mode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/amazon/inapp/purchasing/SandboxLogHandler;->buildLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isErrorOn()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTestOn()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTraceOn()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public test(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/amazon/inapp/purchasing/SandboxLogHandler;->buildLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/amazon/inapp/purchasing/SandboxLogHandler;->buildLogMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
