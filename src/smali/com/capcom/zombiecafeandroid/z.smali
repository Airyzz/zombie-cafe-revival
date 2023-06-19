.class final Lcom/capcom/zombiecafeandroid/z;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroid/z;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "BAD MESSAGE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IS="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/z;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    const-string v1, "BAD MESSAGE RECEIVED BY HANDLER"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :sswitch_1
    const-string v0, "CHARTBOOST"

    const-string v1, "START INTERSTITIAL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "CHARTBOOST"

    const-string v1, "ALL IS FINE, CALL loadInterstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->_cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->showInterstitial()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, "CHARTBOOST"

    const-string v1, "END INTERSTITIAL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "CHARTBOOST"

    const-string v1, "Say what we didn\'t send the request correctly?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/z;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    const-string v2, "text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/capcom/zombiecafeandroid/r;

    const-string v2, "key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/capcom/zombiecafeandroid/r;-><init>(Ljava/lang/String;Z)V

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroid/r;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/capcom/zombiecafeandroid/s;

    const-string v2, "key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/capcom/zombiecafeandroid/s;-><init>(Ljava/lang/String;I)V

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroid/s;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/capcom/zombiecafeandroid/s;

    const-string v2, "key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/capcom/zombiecafeandroid/s;-><init>(Ljava/lang/String;I)V

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroid/s;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/capcom/zombiecafeandroid/t;

    const-string v2, "key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/capcom/zombiecafeandroid/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroid/t;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :sswitch_7
    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CCsettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :sswitch_8
    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->b()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->b()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->b()Landroid/webkit/WebView;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->b()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->b()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->b()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_9
    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->b()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->b()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVisibility(I)V

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->b()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/webkit/WebView;->scrollTo(II)V

    goto/16 :goto_0

    :sswitch_a
    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->b()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->b()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file:///android_asset/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONNECTED:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/z;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_c
    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->USEINTERNET:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONNECTED:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mURLManager:Lcom/capcom/zombiecafeandroid/URLManager;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/capcom/zombiecafeandroid/URLManager;->b(Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_d
    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->USEINTERNET:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONNECTED:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/capcom/zombiecafeandroid/q;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "callback"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/capcom/zombiecafeandroid/q;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroid/q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/z;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    const-string v1, "type"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "title"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "button1"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "button2"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->ShowAlertBox(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/z;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    const-string v1, "type"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "title"

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "button1"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "button2"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->ShowAlertBox(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_10
    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mURLManager:Lcom/capcom/zombiecafeandroid/URLManager;

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/URLManager;->a(Landroid/content/Context;)Z

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->USEINTERNET:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONNECTED:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_2

    sget-boolean v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAllowLogin:Z

    if-nez v1, :cond_1

    const-string v0, "ENTERFACEBOOK"

    const-string v1, "DENIED DUE TO MULTIPLE BUTTON HITS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    sput-boolean v5, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAllowLogin:Z

    :cond_2
    new-instance v1, Lcom/capcom/zombiecafeandroid/m;

    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "option"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "path"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/capcom/zombiecafeandroid/m;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroid/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_3
    const-string v0, "NOT CONNECTED"

    const-string v1, "TO THE INTERNET/SERVER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    sget-boolean v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->toastcreated:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/z;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Browser cannot open the page because it is not connected to the Internet."

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    sput-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->toast:Landroid/widget/Toast;

    sput-boolean v4, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->toastcreated:Z

    :cond_4
    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_0

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/capcom/zombiecafeandroid/MouseTask;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    const-string v3, "y"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/capcom/zombiecafeandroid/MouseTask;-><init>(FF)V

    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroid/MouseTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :sswitch_12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.EMAIL"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "androidsupport@capcomcanada.com"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "SmurfsVillage Android Support"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AndroidId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAndroidID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\nDESCRIBE YOUR ISSUE HERE:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/z;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    const-string v2, "Send mail..."

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/z;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0, v4}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->a(Z)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, "No Email"

    const-string v1, "Now What?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :sswitch_13
    const-string v0, "BuySmurfBerries"

    const-string v1, "Process Message from native"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->ProgressBar(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3039 -> :sswitch_0
        0x303a -> :sswitch_2
        0x303c -> :sswitch_3
        0x303d -> :sswitch_4
        0x303e -> :sswitch_5
        0x303f -> :sswitch_6
        0x3040 -> :sswitch_7
        0x3041 -> :sswitch_8
        0x3042 -> :sswitch_9
        0x3043 -> :sswitch_a
        0x3044 -> :sswitch_b
        0x3045 -> :sswitch_c
        0x3046 -> :sswitch_f
        0x3047 -> :sswitch_e
        0x3049 -> :sswitch_10
        0x304a -> :sswitch_d
        0x304b -> :sswitch_0
        0x304c -> :sswitch_11
        0x304d -> :sswitch_0
        0x304e -> :sswitch_0
        0x304f -> :sswitch_0
        0x3050 -> :sswitch_0
        0x3051 -> :sswitch_0
        0x3052 -> :sswitch_0
        0x3053 -> :sswitch_12
        0x3054 -> :sswitch_0
        0x3055 -> :sswitch_13
        0x3056 -> :sswitch_14
        0x3057 -> :sswitch_1
        0xd903 -> :sswitch_0
    .end sparse-switch
.end method
