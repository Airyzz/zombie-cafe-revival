.class public final Lnet/adways/appdriver/sdk/a/e;
.super Lnet/adways/appdriver/sdk/a/ag;

# interfaces
.implements Lnet/adways/appdriver/sdk/a/p;


# instance fields
.field private final e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lnet/adways/appdriver/sdk/a/aj;->i:Lnet/adways/appdriver/sdk/a/aj;

    const-string v1, "c"

    invoke-direct {p0, v0, v1}, Lnet/adways/appdriver/sdk/a/ag;-><init>(Lnet/adways/appdriver/sdk/a/aj;Ljava/lang/String;)V

    iput-object p1, p0, Lnet/adways/appdriver/sdk/a/e;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 2

    new-instance v0, Lnet/adways/appdriver/sdk/a/ad;

    invoke-direct {v0}, Lnet/adways/appdriver/sdk/a/ad;-><init>()V

    const-string v1, "APPDRIVER_DIRECT_CLICK_VER"

    invoke-virtual {v0, v1}, Lnet/adways/appdriver/sdk/a/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lnet/adways/appdriver/sdk/a/an;

    const-string v1, "not find api version:APPDRIVER_DIRECT_CLICK_VER"

    invoke-direct {v0, v1}, Lnet/adways/appdriver/sdk/a/an;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method protected final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lnet/adways/appdriver/sdk/a/e;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/adways/appdriver/sdk/a/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/adways/appdriver/sdk/a/v;->a(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    throw v0
.end method

.method public final b()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/e;->e:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/e;->e:Landroid/os/Bundle;

    const-string v3, "media_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    const-string v0, "appdriver-log"

    const-string v2, "media ID is need"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :cond_0
    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/e;->e:Landroid/os/Bundle;

    const-string v3, "campaign_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    const-string v0, "appdriver-log"

    const-string v2, "campain ID is need"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    const-string v0, "appdriver-log"

    const-string v2, "no enough parameters"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method protected final synthetic c(Landroid/content/Context;)Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "media_id"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/e;->e:Landroid/os/Bundle;

    const-string v3, "media_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lnet/adways/appdriver/sdk/a/e;->e:Landroid/os/Bundle;

    const-string v2, "identifier"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "identifier"

    invoke-interface {v0, v2, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "campaign_id"

    iget-object v2, p0, Lnet/adways/appdriver/sdk/a/e;->e:Landroid/os/Bundle;

    const-string v3, "campaign_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
