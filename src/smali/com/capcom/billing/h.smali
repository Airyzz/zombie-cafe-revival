.class final Lcom/capcom/billing/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/capcom/billing/g;

.field private final synthetic b:Lcom/capcom/billing/Consts$PurchaseState;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I

.field private final synthetic e:J

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/capcom/billing/g;Lcom/capcom/billing/Consts$PurchaseState;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/billing/h;->a:Lcom/capcom/billing/g;

    iput-object p2, p0, Lcom/capcom/billing/h;->b:Lcom/capcom/billing/Consts$PurchaseState;

    iput-object p3, p0, Lcom/capcom/billing/h;->c:Ljava/lang/String;

    iput p4, p0, Lcom/capcom/billing/h;->d:I

    iput-wide p5, p0, Lcom/capcom/billing/h;->e:J

    iput-object p7, p0, Lcom/capcom/billing/h;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/capcom/billing/h;->a:Lcom/capcom/billing/g;

    iget-object v1, p0, Lcom/capcom/billing/h;->b:Lcom/capcom/billing/Consts$PurchaseState;

    iget-object v2, p0, Lcom/capcom/billing/h;->c:Ljava/lang/String;

    iget v3, p0, Lcom/capcom/billing/h;->d:I

    iget-wide v3, p0, Lcom/capcom/billing/h;->e:J

    iget-object v3, p0, Lcom/capcom/billing/h;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/capcom/billing/g;->a(Lcom/capcom/billing/Consts$PurchaseState;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PurchaseObserver"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/capcom/billing/h;->b:Lcom/capcom/billing/Consts$PurchaseState;

    invoke-virtual {v1}, Lcom/capcom/billing/Consts$PurchaseState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "postPurchaseStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
