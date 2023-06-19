.class final Lcom/paypal/android/MEP/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move v4, v2

    :goto_0
    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v2, v4, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    add-float/2addr v0, v4

    move v4, v0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/paypal/android/MEP/b/b;->c()Lcom/paypal/android/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/a/g;->b()V

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v2

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v1, "PayKey"

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v3, "PaymentExecStatus"

    invoke-virtual {v1, v3}, Lcom/paypal/android/b/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/paypal/android/MEP/PayPalActivity;->paymentSucceeded(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_1
.end method
