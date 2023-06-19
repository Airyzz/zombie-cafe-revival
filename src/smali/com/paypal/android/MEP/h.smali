.class final Lcom/paypal/android/MEP/h;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_pushIntent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_pushIntent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->a()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPalActivity;->a(Lcom/paypal/android/MEP/PayPalActivity;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_popIntent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->a()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/MEP/PayPalActivity;->a(Lcom/paypal/android/MEP/PayPalActivity;)Z

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_replaceIntent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_3

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_replaceIntent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->a()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/paypal/android/MEP/PayPalActivity;->b(Lcom/paypal/android/MEP/PayPalActivity;I)Z

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_updateIntent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->a()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/MEP/PayPalActivity;->b(Lcom/paypal/android/MEP/PayPalActivity;)V

    goto :goto_0
.end method
