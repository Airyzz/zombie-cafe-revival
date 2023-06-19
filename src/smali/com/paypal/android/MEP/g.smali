.class final Lcom/paypal/android/MEP/g;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Lcom/paypal/android/MEP/PayPalActivity;


# direct methods
.method constructor <init>(Lcom/paypal/android/MEP/PayPalActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/g;->a:Lcom/paypal/android/MEP/PayPalActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/paypal/android/MEP/PayPalActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->LOGIN_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {v3}, Lcom/capcom/facebook/a;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "mpl-review"

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->b(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/capcom/facebook/a;->b(I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->LOGIN_FAIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/capcom/facebook/a;->b(I)V

    const-string v0, "ERROR_TIMEOUT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ERROR_TIMEOUT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/MEP/PayPalActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v0

    if-ne v0, v2, :cond_4

    invoke-static {v3}, Lcom/capcom/facebook/a;->b(I)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "mpl-review"

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->b(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/capcom/facebook/a;->b(I)V

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->FATAL_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/g;->a:Lcom/paypal/android/MEP/PayPalActivity;

    invoke-static {v0, p2}, Lcom/paypal/android/MEP/PayPalActivity;->a(Lcom/paypal/android/MEP/PayPalActivity;Landroid/content/Intent;)Landroid/content/Intent;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/capcom/facebook/a;->b(I)V

    goto :goto_0
.end method
