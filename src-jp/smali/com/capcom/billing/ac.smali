.class public abstract Lcom/capcom/billing/ac;
.super Ljava/lang/Object;


# static fields
.field private static final e:[Ljava/lang/Class;


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/os/Handler;

.field private c:Ljava/lang/reflect/Method;

.field private d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/IntentSender;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Intent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/capcom/billing/ac;->e:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/capcom/billing/ac;->d:[Ljava/lang/Object;

    iput-object p1, p0, Lcom/capcom/billing/ac;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/capcom/billing/ac;->b:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/capcom/billing/ac;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/capcom/billing/ac;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startIntentSender"

    sget-object v2, Lcom/capcom/billing/ac;->e:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/capcom/billing/ac;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/capcom/billing/ac;->c:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v3, p0, Lcom/capcom/billing/ac;->c:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Lcom/capcom/billing/g;Lcom/capcom/billing/j;)V
.end method
