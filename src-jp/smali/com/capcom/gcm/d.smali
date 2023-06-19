.class public Lcom/capcom/gcm/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/capcom/gcm/d;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/capcom/gcm/d;->a(Landroid/os/Bundle;)Lcom/capcom/gcm/d;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/capcom/gcm/d;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/capcom/gcm/d;

    invoke-direct {v0}, Lcom/capcom/gcm/d;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "message"

    invoke-static {p0, v1, v2}, Lcom/capcom/gcm/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/capcom/gcm/d;->a:Ljava/lang/String;

    const-string v1, "title"

    invoke-static {p0, v1, v2}, Lcom/capcom/gcm/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/capcom/gcm/d;->b:Ljava/lang/String;

    const-string v1, "ok"

    invoke-static {p0, v1, v2}, Lcom/capcom/gcm/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/capcom/gcm/d;->c:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-static {p0, v1, v2}, Lcom/capcom/gcm/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/capcom/gcm/d;->d:Ljava/lang/String;

    const-string v1, "url"

    invoke-static {p0, v1, v2}, Lcom/capcom/gcm/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/capcom/gcm/d;->e:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/capcom/gcm/d;->b(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/capcom/gcm/d;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p2}, Lcom/capcom/gcm/d;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/capcom/gcm/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/capcom/gcm/d;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/capcom/gcm/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/capcom/gcm/d;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/capcom/gcm/d;->b(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "message"

    iget-object v1, p0, Lcom/capcom/gcm/d;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/capcom/gcm/d;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    iget-object v1, p0, Lcom/capcom/gcm/d;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/capcom/gcm/d;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ok"

    iget-object v1, p0, Lcom/capcom/gcm/d;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/capcom/gcm/d;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cancel"

    iget-object v1, p0, Lcom/capcom/gcm/d;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/capcom/gcm/d;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "url"

    iget-object v1, p0, Lcom/capcom/gcm/d;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/capcom/gcm/d;->b(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/capcom/gcm/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/capcom/gcm/d;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/capcom/gcm/d;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/capcom/gcm/d;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/capcom/gcm/d;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/capcom/gcm/d;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
