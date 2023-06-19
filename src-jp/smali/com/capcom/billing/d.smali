.class Lcom/capcom/billing/d;
.super Lcom/capcom/billing/c;


# instance fields
.field final synthetic c:Lcom/capcom/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/capcom/billing/BillingService;)V
    .locals 1

    iput-object p1, p0, Lcom/capcom/billing/d;->c:Lcom/capcom/billing/BillingService;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/capcom/billing/c;-><init>(Lcom/capcom/billing/BillingService;I)V

    return-void
.end method


# virtual methods
.method protected d()J
    .locals 2

    sget-wide v0, Lcom/capcom/billing/h;->a:J

    return-wide v0
.end method
