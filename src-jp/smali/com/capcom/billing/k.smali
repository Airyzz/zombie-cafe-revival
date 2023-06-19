.class public Lcom/capcom/billing/k;
.super Ljava/lang/Exception;


# instance fields
.field a:Lcom/capcom/billing/x;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/capcom/billing/x;

    invoke-direct {v0, p1, p2}, Lcom/capcom/billing/x;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/capcom/billing/k;-><init>(Lcom/capcom/billing/x;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    new-instance v0, Lcom/capcom/billing/x;

    invoke-direct {v0, p1, p2}, Lcom/capcom/billing/x;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/capcom/billing/k;-><init>(Lcom/capcom/billing/x;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/capcom/billing/x;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/capcom/billing/k;-><init>(Lcom/capcom/billing/x;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/capcom/billing/x;Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p1}, Lcom/capcom/billing/x;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/capcom/billing/k;->a:Lcom/capcom/billing/x;

    return-void
.end method


# virtual methods
.method public a()Lcom/capcom/billing/x;
    .locals 1

    iget-object v0, p0, Lcom/capcom/billing/k;->a:Lcom/capcom/billing/x;

    return-object v0
.end method
