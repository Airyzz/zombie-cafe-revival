.class Lcom/capcom/billing/g;
.super Lcom/capcom/billing/c;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field final synthetic e:Lcom/capcom/billing/BillingService;


# direct methods
.method public constructor <init>(Lcom/capcom/billing/BillingService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/capcom/billing/g;->e:Lcom/capcom/billing/BillingService;

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/capcom/billing/c;-><init>(Lcom/capcom/billing/BillingService;I)V

    iput-object p2, p0, Lcom/capcom/billing/g;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/capcom/billing/g;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Lcom/capcom/billing/j;)V
    .locals 1

    iget-object v0, p0, Lcom/capcom/billing/g;->e:Lcom/capcom/billing/BillingService;

    invoke-static {v0, p0, p1}, Lcom/capcom/billing/ad;->a(Landroid/content/Context;Lcom/capcom/billing/g;Lcom/capcom/billing/j;)V

    return-void
.end method

.method protected d()J
    .locals 2

    sget-wide v0, Lcom/capcom/billing/h;->a:J

    return-wide v0
.end method
