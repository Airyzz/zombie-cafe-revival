.class final Lcom/capcom/billing/c;
.super Lcom/capcom/billing/BillingService$BillingRequest;


# instance fields
.field private a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/capcom/billing/BillingService;I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/capcom/billing/BillingService$BillingRequest;-><init>(Lcom/capcom/billing/BillingService;I)V

    iput-object p3, p0, Lcom/capcom/billing/c;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final run()J
    .locals 4

    const-string v0, "CONFIRM_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lcom/capcom/billing/c;->makeRequestBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NOTIFY_IDS"

    iget-object v2, p0, Lcom/capcom/billing/c;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lcom/capcom/billing/BillingService;->d()Lcom/a/a/a/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/a/a/a/a;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "confirmNotifications"

    invoke-virtual {p0, v1, v0}, Lcom/capcom/billing/c;->logResponseCode(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "REQUEST_ID"

    sget-wide v2, Lcom/capcom/billing/Consts;->BILLING_RESPONSE_INVALID_REQUEST_ID:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
