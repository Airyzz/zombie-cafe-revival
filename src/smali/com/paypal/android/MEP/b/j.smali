.class final Lcom/paypal/android/MEP/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/paypal/android/MEP/b/c;


# direct methods
.method constructor <init>(Lcom/paypal/android/MEP/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/b/j;->a:Lcom/paypal/android/MEP/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v2, "CorrelationId"

    invoke-virtual {v1, v2}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v3, "PayKey"

    invoke-virtual {v2, v3}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/paypal/android/MEP/b/j;->a:Lcom/paypal/android/MEP/b/c;

    iget-object v3, v3, Lcom/paypal/android/MEP/b/c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/paypal/android/MEP/b/j;->a:Lcom/paypal/android/MEP/b/c;

    iget-object v4, v4, Lcom/paypal/android/MEP/b/c;->b:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
