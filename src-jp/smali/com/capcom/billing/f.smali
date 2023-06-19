.class Lcom/capcom/billing/f;
.super Lcom/capcom/billing/c;


# instance fields
.field final c:[Ljava/lang/String;

.field final synthetic d:Lcom/capcom/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/capcom/billing/BillingService;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/f;->d:Lcom/capcom/billing/BillingService;

    invoke-direct {p0, p1, p2}, Lcom/capcom/billing/c;-><init>(Lcom/capcom/billing/BillingService;I)V

    iput-object p3, p0, Lcom/capcom/billing/f;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/RemoteException;)V
    .locals 0

    return-void
.end method

.method protected d()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
