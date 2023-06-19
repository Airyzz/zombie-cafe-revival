.class final Lcom/amazon/inapp/purchasing/SandboxImplementationRegistry;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/inapp/purchasing/ImplementationRegistry;


# static fields
.field private static final classMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/inapp/purchasing/SandboxImplementationRegistry;->classMap:Ljava/util/Map;

    const-class v1, Lcom/amazon/inapp/purchasing/RequestHandler;

    const-class v2, Lcom/amazon/inapp/purchasing/SandboxRequestHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/inapp/purchasing/SandboxImplementationRegistry;->classMap:Ljava/util/Map;

    const-class v1, Lcom/amazon/inapp/purchasing/ResponseHandler;

    const-class v2, Lcom/amazon/inapp/purchasing/SandboxResponseHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/amazon/inapp/purchasing/SandboxImplementationRegistry;->classMap:Ljava/util/Map;

    const-class v1, Lcom/amazon/inapp/purchasing/LogHandler;

    const-class v2, Lcom/amazon/inapp/purchasing/SandboxLogHandler;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getImplementation(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/amazon/inapp/purchasing/SandboxImplementationRegistry;->classMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method
