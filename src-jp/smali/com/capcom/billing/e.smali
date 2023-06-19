.class Lcom/capcom/billing/e;
.super Lcom/capcom/billing/c;


# instance fields
.field final c:[Ljava/lang/String;

.field final synthetic d:Lcom/capcom/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/capcom/billing/BillingService;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/e;->d:Lcom/capcom/billing/BillingService;

    invoke-direct {p0, p1, p2}, Lcom/capcom/billing/c;-><init>(Lcom/capcom/billing/BillingService;I)V

    iput-object p3, p0, Lcom/capcom/billing/e;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected d()J
    .locals 2

    sget-wide v0, Lcom/capcom/billing/h;->a:J

    return-wide v0
.end method
