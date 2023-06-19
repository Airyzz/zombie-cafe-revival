.class final Lcom/paypal/android/b/c;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/paypal/android/b/b;


# direct methods
.method constructor <init>(Lcom/paypal/android/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x4

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v0}, Lcom/paypal/android/b/b;->a(Lcom/paypal/android/b/b;)Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/MEP/e;

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->b(Lcom/paypal/android/b/b;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->c(Lcom/paypal/android/b/b;)I

    :try_start_1
    iget-object v4, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->a(Lcom/paypal/android/b/b;)Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "usernameOrPhone"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v2}, Lcom/paypal/android/b/b;->a(Lcom/paypal/android/b/b;)Ljava/util/Hashtable;

    move-result-object v2

    const-string v5, "passwordOrPin"

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v1, v2}, Lcom/paypal/android/b/b;->a(Lcom/paypal/android/b/b;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :goto_2
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v2}, Lcom/paypal/android/b/b;->d(Lcom/paypal/android/b/b;)I

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v0, v3, v6}, Lcom/paypal/android/MEP/e;->a(ILjava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Login"

    const-string v4, "Error during call to log in."

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-virtual {v1}, Lcom/paypal/android/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/MEP/e;->a(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->c(Lcom/paypal/android/b/b;)I

    :try_start_2
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->e(Lcom/paypal/android/b/b;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    :try_start_3
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->f(Lcom/paypal/android/b/b;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v2

    :goto_3
    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->d(Lcom/paypal/android/b/b;)I

    :cond_2
    if-eqz v2, :cond_3

    const/16 v1, 0xa

    invoke-interface {v0, v1, v6}, Lcom/paypal/android/MEP/e;->a(ILjava/lang/Object;)V

    goto :goto_1

    :catch_2
    move-exception v1

    move v2, v3

    :goto_4
    const-string v4, "Login"

    const-string v5, "Error during call to log in."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-virtual {v1}, Lcom/paypal/android/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/MEP/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->c(Lcom/paypal/android/b/b;)I

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->g(Lcom/paypal/android/b/b;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->d(Lcom/paypal/android/b/b;)I

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-virtual {v1}, Lcom/paypal/android/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/MEP/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v2}, Lcom/paypal/android/b/b;->a(Lcom/paypal/android/b/b;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/paypal/android/MEP/e;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->c(Lcom/paypal/android/b/b;)I

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v2, "FundingPlanId"

    const-string v4, "0"

    invoke-virtual {v1, v2, v4}, Lcom/paypal/android/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v2, "FundingPlans"

    invoke-virtual {v1, v2, v6}, Lcom/paypal/android/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/b/b;

    const-string v2, "DefaultFundingPlan"

    invoke-virtual {v1, v2, v6}, Lcom/paypal/android/b/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->h(Lcom/paypal/android/b/b;)Ljava/util/Hashtable;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->d(Lcom/paypal/android/b/b;)I

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-virtual {v1}, Lcom/paypal/android/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/MEP/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v1, "ActionType"

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "PAY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "-1"

    invoke-interface {v0, v7, v1}, Lcom/paypal/android/MEP/e;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x3

    invoke-interface {v0, v1, v2}, Lcom/paypal/android/MEP/e;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->c(Lcom/paypal/android/b/b;)I

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->i(Lcom/paypal/android/b/b;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    const-string v4, "mpl-success"

    invoke-virtual {v2, v4}, Lcom/paypal/android/b/b;->b(Ljava/lang/String;)V

    :goto_5
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    const/16 v2, 0x9

    invoke-interface {v0, v2, v1}, Lcom/paypal/android/MEP/e;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v2}, Lcom/paypal/android/b/b;->d(Lcom/paypal/android/b/b;)I

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-virtual {v1}, Lcom/paypal/android/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/MEP/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->c(Lcom/paypal/android/b/b;)I

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->j(Lcom/paypal/android/b/b;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-virtual {v1}, Lcom/paypal/android/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/MEP/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "CHANGE_STRING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->k(Lcom/paypal/android/b/b;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    iget-object v2, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    const-string v4, "mpl-success"

    invoke-virtual {v2, v4}, Lcom/paypal/android/b/b;->b(Ljava/lang/String;)V

    :goto_6
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    invoke-interface {v0, v7, v1}, Lcom/paypal/android/MEP/e;->a(ILjava/lang/Object;)V

    :goto_7
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "CHANGE_STRING"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v2}, Lcom/paypal/android/b/b;->d(Lcom/paypal/android/b/b;)I

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-virtual {v1}, Lcom/paypal/android/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/MEP/e;->a(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_7
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->c(Lcom/paypal/android/b/b;)I

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->l(Lcom/paypal/android/b/b;)Ljava/util/Hashtable;

    move-result-object v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->d(Lcom/paypal/android/b/b;)I

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-virtual {v1}, Lcom/paypal/android/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/MEP/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const/4 v2, 0x5

    invoke-interface {v0, v2, v1}, Lcom/paypal/android/MEP/e;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->c(Lcom/paypal/android/b/b;)I

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->m(Lcom/paypal/android/b/b;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v2}, Lcom/paypal/android/b/b;->a(Lcom/paypal/android/b/b;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/paypal/android/MEP/e;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_d
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->d(Lcom/paypal/android/b/b;)I

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-virtual {v1}, Lcom/paypal/android/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/MEP/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->c(Lcom/paypal/android/b/b;)I

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->n(Lcom/paypal/android/b/b;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v2}, Lcom/paypal/android/b/b;->a(Lcom/paypal/android/b/b;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/paypal/android/MEP/e;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->d(Lcom/paypal/android/b/b;)I

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-virtual {v1}, Lcom/paypal/android/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/MEP/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v0}, Lcom/paypal/android/b/b;->c(Lcom/paypal/android/b/b;)I

    iget-object v0, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v0}, Lcom/paypal/android/b/b;->e(Lcom/paypal/android/b/b;)Z

    goto/16 :goto_1

    :pswitch_b
    iget-object v0, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v0}, Lcom/paypal/android/b/b;->c(Lcom/paypal/android/b/b;)I

    iget-object v0, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v0}, Lcom/paypal/android/b/b;->o(Lcom/paypal/android/b/b;)Z

    goto/16 :goto_1

    :pswitch_c
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->c(Lcom/paypal/android/b/b;)I

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->p(Lcom/paypal/android/b/b;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->d(Lcom/paypal/android/b/b;)I

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-virtual {v1}, Lcom/paypal/android/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/MEP/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    const/16 v1, 0xd

    invoke-interface {v0, v1, v6}, Lcom/paypal/android/MEP/e;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->c(Lcom/paypal/android/b/b;)I

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->q(Lcom/paypal/android/b/b;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->d(Lcom/paypal/android/b/b;)I

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-virtual {v1}, Lcom/paypal/android/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/MEP/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    const/16 v1, 0xe

    invoke-interface {v0, v1, v6}, Lcom/paypal/android/MEP/e;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->r(Lcom/paypal/android/b/b;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-static {v1}, Lcom/paypal/android/b/b;->d(Lcom/paypal/android/b/b;)I

    iget-object v1, p0, Lcom/paypal/android/b/c;->a:Lcom/paypal/android/b/b;

    invoke-virtual {v1}, Lcom/paypal/android/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/paypal/android/MEP/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    const/16 v1, 0xf

    invoke-interface {v0, v1, v6}, Lcom/paypal/android/MEP/e;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :catch_3
    move-exception v1

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_a
        :pswitch_5
        :pswitch_2
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
